; ModuleID = '/llk/IR_all_yes/sound/soc/tegra/tegra210_admaif.c_pt.bc'
source_filename = "../sound/soc/tegra/tegra210_admaif.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tegra_admaif_soc_data = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.reg_default = type { i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.tegra_admaif = type { ptr, ptr, ptr, [2 x ptr], [2 x ptr], ptr }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.80, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.80 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.75, [128 x i8] }
%union.anon.75 = type { %union.anon.77 }
%union.anon.77 = type { [64 x i64] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@__initcall__kmod_snd_soc_tegra210_admaif__241_868_tegra_admaif_driver_init6 = internal global ptr @tegra_admaif_driver_init, section ".initcall6.init", align 4
@tegra_admaif_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_admaif_probe, ptr @tegra_admaif_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_admaif_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_admaif_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_admaif_driver_exit = internal global ptr @tegra_admaif_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author242 = internal constant [63 x i8] c"snd_soc_tegra210_admaif.author=Songhee Baek <sbaek@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [64 x i8] c"snd_soc_tegra210_admaif.description=Tegra210 ASoC ADMAIF driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [69 x i8] c"snd_soc_tegra210_admaif.file=sound/soc/tegra/snd-soc-tegra210-admaif\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [39 x i8] c"snd_soc_tegra210_admaif.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra210-admaif\00", [16 x i8] zeroinitializer }, align 32
@tegra_admaif_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-admaif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_tegra210 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-admaif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @soc_data_tegra186 }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tegra_admaif_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_admaif_runtime_suspend, ptr @tegra_admaif_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_admaif_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"tegra210_admaif:788:(admaif->soc_data->regmap_conf)->lock\00", [38 x i8] zeroinitializer }, align 32
@tegra_admaif_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 790, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regmap init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_admaif_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sound/soc/tegra/tegra210_admaif.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_admaif_probe._entry_ptr = internal global ptr @tegra_admaif_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dma-names\00", [22 x i8] zeroinitializer }, align 32
@tegra_admaif_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 812, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"missing property nvidia,dma-names\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_admaif_probe._entry_ptr.10 = internal global ptr @tegra_admaif_probe._entry.8, section ".printk_index", align 4
@tegra_admaif_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 824, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tegra_admaif_probe._entry_ptr.12 = internal global ptr @tegra_admaif_probe._entry.11, section ".printk_index", align 4
@tegra_admaif_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 836, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"can't register ADMAIF component, err: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@tegra_admaif_probe._entry_ptr.15 = internal global ptr @tegra_admaif_probe._entry.13, section ".printk_index", align 4
@soc_data_tegra210 = internal constant { %struct.tegra_admaif_soc_data, [36 x i8] } { %struct.tegra_admaif_soc_data { ptr @tegra210_admaif_cmpnt, ptr @tegra210_admaif_regmap_config, ptr @tegra210_admaif_cmpnt_dais, i32 1792, i32 768, i32 0, i32 10 }, [36 x i8] zeroinitializer }, align 32
@soc_data_tegra186 = internal constant { %struct.tegra_admaif_soc_data, [36 x i8] } { %struct.tegra_admaif_soc_data { ptr @tegra186_admaif_cmpnt, ptr @tegra186_admaif_regmap_config, ptr @tegra186_admaif_cmpnt_dais, i32 3328, i32 1280, i32 0, i32 20 }, [36 x i8] zeroinitializer }, align 32
@tegra210_admaif_cmpnt = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @tegra210_admaif_controls, i32 40, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_pcm_construct, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_pcm_open, ptr @tegra_pcm_close, ptr null, ptr @tegra_pcm_hw_params, ptr null, ptr null, ptr null, ptr null, ptr @tegra_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@tegra210_admaif_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @tegra_admaif_wr_reg, ptr @tegra_admaif_rd_reg, ptr @tegra_admaif_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1887, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_admaif_reg_defaults, i32 61, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@tegra210_admaif_cmpnt_dais = internal global { [10 x %struct.snd_soc_dai_driver], [432 x i8] } { [10 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.100, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.101, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.102, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.103, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.104, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.105, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.106, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.107, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.108, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.109, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.110, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.111, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.112, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.113, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.114, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.115, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.116, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.117, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.118, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.119, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.120, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.121, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.122, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.123, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.124, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.125, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.126, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.127, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.128, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.129, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }], [432 x i8] zeroinitializer }, align 32
@tegra210_admaif_controls = internal global { [40 x %struct.snd_kcontrol_new], [480 x i8] } { [40 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }], [480 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF1 Playback Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@tegra_admaif_mono_conv_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.95, ptr @.str.96], [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF1 Playback Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@tegra_admaif_stereo_conv_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.97, ptr @.str.98, ptr @.str.99], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADMAIF1 Capture Mono To Stereo\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADMAIF1 Capture Stereo To Mono\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF2 Playback Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF2 Playback Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADMAIF2 Capture Mono To Stereo\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADMAIF2 Capture Stereo To Mono\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF3 Playback Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF3 Playback Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADMAIF3 Capture Mono To Stereo\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADMAIF3 Capture Stereo To Mono\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF4 Playback Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 3, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF4 Playback Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 3, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADMAIF4 Capture Mono To Stereo\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 3, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADMAIF4 Capture Stereo To Mono\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 3, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF5 Playback Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 4, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF5 Playback Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 4, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADMAIF5 Capture Mono To Stereo\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 4, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADMAIF5 Capture Stereo To Mono\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 4, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF6 Playback Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 5, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF6 Playback Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 5, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADMAIF6 Capture Mono To Stereo\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 5, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADMAIF6 Capture Stereo To Mono\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 5, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF7 Playback Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 6, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF7 Playback Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 6, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADMAIF7 Capture Mono To Stereo\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 6, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADMAIF7 Capture Stereo To Mono\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 6, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF8 Playback Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF8 Playback Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADMAIF8 Capture Mono To Stereo\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADMAIF8 Capture Stereo To Mono\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF9 Playback Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF9 Playback Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADMAIF9 Capture Mono To Stereo\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ADMAIF9 Capture Stereo To Mono\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF10 Playback Mono To Stereo\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF10 Playback Stereo To Mono\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF10 Capture Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF10 Capture Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Zero\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Copy\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH0\00", [28 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH1\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AVG\00", [28 x i8] zeroinitializer }, align 32
@tegra210_admaif_reg_defaults = internal constant { [61 x %struct.reg_default], [120 x i8] } { [61 x %struct.reg_default] [%struct.reg_default { i32 1800, i32 3 }, %struct.reg_default { i32 20, i32 1 }, %struct.reg_default { i32 32, i32 30464 }, %struct.reg_default { i32 40, i32 768 }, %struct.reg_default { i32 788, i32 1 }, %struct.reg_default { i32 800, i32 30464 }, %struct.reg_default { i32 808, i32 33555200 }, %struct.reg_default { i32 84, i32 1 }, %struct.reg_default { i32 96, i32 30464 }, %struct.reg_default { i32 104, i32 772 }, %struct.reg_default { i32 852, i32 1 }, %struct.reg_default { i32 864, i32 30464 }, %struct.reg_default { i32 872, i32 33555204 }, %struct.reg_default { i32 148, i32 1 }, %struct.reg_default { i32 160, i32 30464 }, %struct.reg_default { i32 168, i32 520 }, %struct.reg_default { i32 916, i32 1 }, %struct.reg_default { i32 928, i32 30464 }, %struct.reg_default { i32 936, i32 25166344 }, %struct.reg_default { i32 212, i32 1 }, %struct.reg_default { i32 224, i32 30464 }, %struct.reg_default { i32 232, i32 523 }, %struct.reg_default { i32 980, i32 1 }, %struct.reg_default { i32 992, i32 30464 }, %struct.reg_default { i32 1000, i32 25166347 }, %struct.reg_default { i32 276, i32 1 }, %struct.reg_default { i32 288, i32 30464 }, %struct.reg_default { i32 296, i32 526 }, %struct.reg_default { i32 1044, i32 1 }, %struct.reg_default { i32 1056, i32 30464 }, %struct.reg_default { i32 1064, i32 25166350 }, %struct.reg_default { i32 340, i32 1 }, %struct.reg_default { i32 352, i32 30464 }, %struct.reg_default { i32 360, i32 529 }, %struct.reg_default { i32 1108, i32 1 }, %struct.reg_default { i32 1120, i32 30464 }, %struct.reg_default { i32 1128, i32 25166353 }, %struct.reg_default { i32 404, i32 1 }, %struct.reg_default { i32 416, i32 30464 }, %struct.reg_default { i32 424, i32 532 }, %struct.reg_default { i32 1172, i32 1 }, %struct.reg_default { i32 1184, i32 30464 }, %struct.reg_default { i32 1192, i32 25166356 }, %struct.reg_default { i32 468, i32 1 }, %struct.reg_default { i32 480, i32 30464 }, %struct.reg_default { i32 488, i32 535 }, %struct.reg_default { i32 1236, i32 1 }, %struct.reg_default { i32 1248, i32 30464 }, %struct.reg_default { i32 1256, i32 25166359 }, %struct.reg_default { i32 532, i32 1 }, %struct.reg_default { i32 544, i32 30464 }, %struct.reg_default { i32 552, i32 538 }, %struct.reg_default { i32 1300, i32 1 }, %struct.reg_default { i32 1312, i32 30464 }, %struct.reg_default { i32 1320, i32 25166362 }, %struct.reg_default { i32 596, i32 1 }, %struct.reg_default { i32 608, i32 30464 }, %struct.reg_default { i32 616, i32 541 }, %struct.reg_default { i32 1364, i32 1 }, %struct.reg_default { i32 1376, i32 30464 }, %struct.reg_default { i32 1384, i32 25166365 }], [120 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADMAIF1\00", [24 x i8] zeroinitializer }, align 32
@tegra_admaif_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_admaif_hw_params, ptr null, ptr null, ptr @tegra_admaif_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADMAIF1 Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF1 Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADMAIF2\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADMAIF2 Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF2 Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADMAIF3\00", [24 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADMAIF3 Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF3 Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADMAIF4\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADMAIF4 Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF4 Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADMAIF5\00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADMAIF5 Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF5 Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADMAIF6\00", [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADMAIF6 Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF6 Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADMAIF7\00", [24 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADMAIF7 Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF7 Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADMAIF8\00", [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADMAIF8 Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF8 Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADMAIF9\00", [24 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADMAIF9 Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF9 Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADMAIF10\00", [23 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF10 Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADMAIF10 Playback\00", [46 x i8] zeroinitializer }, align 32
@tegra_admaif_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.4, i32 294, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unsupported format!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_admaif_hw_params\00", [41 x i8] zeroinitializer }, align 32
@tegra_admaif_hw_params._entry_ptr = internal global ptr @tegra_admaif_hw_params._entry, section ".printk_index", align 4
@.str.132 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra_admaif_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.4, i32 381, ptr @.str.136, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"timeout: failed to disable ADMAIF%d_%s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra_admaif_stop\00", [46 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tegra_admaif_stop._entry_ptr = internal global ptr @tegra_admaif_stop._entry, section ".printk_index", align 4
@tegra_admaif_stop._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.135, ptr @.str.4, i32 392, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"timeout: SW reset failed for ADMAIF%d_%s\0A\00", [54 x i8] zeroinitializer }, align 32
@tegra_admaif_stop._entry_ptr.139 = internal global ptr @tegra_admaif_stop._entry.137, section ".printk_index", align 4
@tegra186_admaif_cmpnt = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @tegra186_admaif_controls, i32 80, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_pcm_construct, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_pcm_open, ptr @tegra_pcm_close, ptr null, ptr @tegra_pcm_hw_params, ptr null, ptr null, ptr null, ptr null, ptr @tegra_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@tegra186_admaif_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @tegra_admaif_wr_reg, ptr @tegra_admaif_rd_reg, ptr @tegra_admaif_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 3423, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra186_admaif_reg_defaults, i32 121, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@tegra186_admaif_cmpnt_dais = internal global { [20 x %struct.snd_soc_dai_driver], [832 x i8] } { [20 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.100, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.101, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.102, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.103, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.104, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.105, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.106, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.107, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.108, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.109, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.110, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.111, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.112, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.113, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.114, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.115, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.116, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.117, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.118, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.119, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.120, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.121, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.122, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.123, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.124, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.125, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.126, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.127, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.128, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.129, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.260, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.261, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.262, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.263, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.264, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.265, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.266, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.267, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.268, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.269, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.270, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.271, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.272, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.273, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.274, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.275, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.276, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.277, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.278, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.279, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.280, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.281, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.282, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.283, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.284, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.285, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.286, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.287, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @tegra_admaif_dai_probe, ptr null, ptr null, ptr null, ptr @tegra_admaif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.288, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.289, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }], [832 x i8] zeroinitializer }, align 32
@tegra186_admaif_controls = internal global { [80 x %struct.snd_kcontrol_new], [960 x i8] } { [80 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.140 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.141 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.142 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.143 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.144 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.145 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.146 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.147 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.148 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.149 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.150 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.151 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.152 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.153 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.154 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.155 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.156 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.157 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.158 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.159 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.160 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.161 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.162 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.164 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.165 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.166 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.167 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.168 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.169 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.170 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.171 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.172 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.173 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.174 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.175 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.176 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.177 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.178 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.179 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.181 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.183 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.185 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.188, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.189 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.190, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.191 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.192, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.193 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.194, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.195 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.197 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.199 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.200, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.201 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.202, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.203 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.204, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.205 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.206, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.207 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.208, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.209 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.211 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.212, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.213 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.214, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.215 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.216, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.217 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.218, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.219 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.220, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.221 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.222, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.223 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.224, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.225 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.226, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.227 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.228, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.229 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.230, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.231 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.233 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.234, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.235 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.236, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.237 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.239 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.240, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.241 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.242, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.243 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.244, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.245 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.246, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.247 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.248, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.249 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.250, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.251 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.252, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_mono_to_stereo, ptr @tegra210_admaif_pput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.253 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.254, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_pget_stereo_to_mono, ptr @tegra210_admaif_pput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.255 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.256, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_mono_to_stereo, ptr @tegra210_admaif_cput_mono_to_stereo, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.257 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.258, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_admaif_cget_stereo_to_mono, ptr @tegra210_admaif_cput_stereo_to_mono, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.259 to i32) }], [960 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.144 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.146 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.148 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.150 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 3, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.153 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 3, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.154 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 3, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 3, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.156 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 4, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 4, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 4, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.159 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 4, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 5, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 5, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.162 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 5, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 5, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 6, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 6, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 6, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 6, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.168 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.170 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.173 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.175 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.176 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.177 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.178 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.179 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF11 Playback Mono To Stereo\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.181 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 10, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF11 Playback Stereo To Mono\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.183 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 10, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF11 Capture Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 10, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF11 Capture Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 10, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF12 Playback Mono To Stereo\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.189 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 11, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF12 Playback Stereo To Mono\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.191 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 11, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF12 Capture Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.193 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 11, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF12 Capture Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.195 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 11, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF13 Playback Mono To Stereo\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.197 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 12, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF13 Playback Stereo To Mono\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.199 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 12, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF13 Capture Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.201 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 12, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF13 Capture Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.203 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 12, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF14 Playback Mono To Stereo\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.205 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 13, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF14 Playback Stereo To Mono\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.207 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 13, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF14 Capture Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.209 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 13, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF14 Capture Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.211 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 13, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF15 Playback Mono To Stereo\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.213 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 14, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF15 Playback Stereo To Mono\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.215 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 14, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF15 Capture Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.217 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 14, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF15 Capture Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.219 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 14, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF16 Playback Mono To Stereo\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.221 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 15, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF16 Playback Stereo To Mono\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.223 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 15, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF16 Capture Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.225 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 15, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF16 Capture Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.227 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 15, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF17 Playback Mono To Stereo\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.229 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 16, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF17 Playback Stereo To Mono\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.231 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 16, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF17 Capture Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.233 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 16, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF17 Capture Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.235 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 16, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF18 Playback Mono To Stereo\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.237 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 17, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF18 Playback Stereo To Mono\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.239 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 17, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF18 Capture Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.241 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 17, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF18 Capture Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.243 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 17, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF19 Playback Mono To Stereo\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.245 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 18, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF19 Playback Stereo To Mono\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.247 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 18, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF19 Capture Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.249 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 18, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF19 Capture Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.251 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 18, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF20 Playback Mono To Stereo\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.253 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ADMAIF20 Playback Stereo To Mono\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.255 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF20 Capture Mono To Stereo\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.257 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19, i8 0, i8 0, i32 2, i32 1, ptr @tegra_admaif_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMAIF20 Capture Stereo To Mono\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.259 = internal global { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19, i8 0, i8 0, i32 3, i32 3, ptr @tegra_admaif_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@tegra186_admaif_reg_defaults = internal constant { [121 x %struct.reg_default], [248 x i8] } { [121 x %struct.reg_default] [%struct.reg_default { i32 3336, i32 3 }, %struct.reg_default { i32 20, i32 1 }, %struct.reg_default { i32 32, i32 30464 }, %struct.reg_default { i32 40, i32 768 }, %struct.reg_default { i32 1300, i32 1 }, %struct.reg_default { i32 1312, i32 30464 }, %struct.reg_default { i32 1320, i32 33555200 }, %struct.reg_default { i32 84, i32 1 }, %struct.reg_default { i32 96, i32 30464 }, %struct.reg_default { i32 104, i32 772 }, %struct.reg_default { i32 1364, i32 1 }, %struct.reg_default { i32 1376, i32 30464 }, %struct.reg_default { i32 1384, i32 33555204 }, %struct.reg_default { i32 148, i32 1 }, %struct.reg_default { i32 160, i32 30464 }, %struct.reg_default { i32 168, i32 776 }, %struct.reg_default { i32 1428, i32 1 }, %struct.reg_default { i32 1440, i32 30464 }, %struct.reg_default { i32 1448, i32 33555208 }, %struct.reg_default { i32 212, i32 1 }, %struct.reg_default { i32 224, i32 30464 }, %struct.reg_default { i32 232, i32 780 }, %struct.reg_default { i32 1492, i32 1 }, %struct.reg_default { i32 1504, i32 30464 }, %struct.reg_default { i32 1512, i32 33555212 }, %struct.reg_default { i32 276, i32 1 }, %struct.reg_default { i32 288, i32 30464 }, %struct.reg_default { i32 296, i32 528 }, %struct.reg_default { i32 1556, i32 1 }, %struct.reg_default { i32 1568, i32 30464 }, %struct.reg_default { i32 1576, i32 25166352 }, %struct.reg_default { i32 340, i32 1 }, %struct.reg_default { i32 352, i32 30464 }, %struct.reg_default { i32 360, i32 531 }, %struct.reg_default { i32 1620, i32 1 }, %struct.reg_default { i32 1632, i32 30464 }, %struct.reg_default { i32 1640, i32 25166355 }, %struct.reg_default { i32 404, i32 1 }, %struct.reg_default { i32 416, i32 30464 }, %struct.reg_default { i32 424, i32 534 }, %struct.reg_default { i32 1684, i32 1 }, %struct.reg_default { i32 1696, i32 30464 }, %struct.reg_default { i32 1704, i32 25166358 }, %struct.reg_default { i32 468, i32 1 }, %struct.reg_default { i32 480, i32 30464 }, %struct.reg_default { i32 488, i32 537 }, %struct.reg_default { i32 1748, i32 1 }, %struct.reg_default { i32 1760, i32 30464 }, %struct.reg_default { i32 1768, i32 25166361 }, %struct.reg_default { i32 532, i32 1 }, %struct.reg_default { i32 544, i32 30464 }, %struct.reg_default { i32 552, i32 540 }, %struct.reg_default { i32 1812, i32 1 }, %struct.reg_default { i32 1824, i32 30464 }, %struct.reg_default { i32 1832, i32 25166364 }, %struct.reg_default { i32 596, i32 1 }, %struct.reg_default { i32 608, i32 30464 }, %struct.reg_default { i32 616, i32 543 }, %struct.reg_default { i32 1876, i32 1 }, %struct.reg_default { i32 1888, i32 30464 }, %struct.reg_default { i32 1896, i32 25166367 }, %struct.reg_default { i32 660, i32 1 }, %struct.reg_default { i32 672, i32 30464 }, %struct.reg_default { i32 680, i32 546 }, %struct.reg_default { i32 1940, i32 1 }, %struct.reg_default { i32 1952, i32 30464 }, %struct.reg_default { i32 1960, i32 25166370 }, %struct.reg_default { i32 724, i32 1 }, %struct.reg_default { i32 736, i32 30464 }, %struct.reg_default { i32 744, i32 549 }, %struct.reg_default { i32 2004, i32 1 }, %struct.reg_default { i32 2016, i32 30464 }, %struct.reg_default { i32 2024, i32 25166373 }, %struct.reg_default { i32 788, i32 1 }, %struct.reg_default { i32 800, i32 30464 }, %struct.reg_default { i32 808, i32 552 }, %struct.reg_default { i32 2068, i32 1 }, %struct.reg_default { i32 2080, i32 30464 }, %struct.reg_default { i32 2088, i32 25166376 }, %struct.reg_default { i32 852, i32 1 }, %struct.reg_default { i32 864, i32 30464 }, %struct.reg_default { i32 872, i32 555 }, %struct.reg_default { i32 2132, i32 1 }, %struct.reg_default { i32 2144, i32 30464 }, %struct.reg_default { i32 2152, i32 25166379 }, %struct.reg_default { i32 916, i32 1 }, %struct.reg_default { i32 928, i32 30464 }, %struct.reg_default { i32 936, i32 558 }, %struct.reg_default { i32 2196, i32 1 }, %struct.reg_default { i32 2208, i32 30464 }, %struct.reg_default { i32 2216, i32 25166382 }, %struct.reg_default { i32 980, i32 1 }, %struct.reg_default { i32 992, i32 30464 }, %struct.reg_default { i32 1000, i32 561 }, %struct.reg_default { i32 2260, i32 1 }, %struct.reg_default { i32 2272, i32 30464 }, %struct.reg_default { i32 2280, i32 25166385 }, %struct.reg_default { i32 1044, i32 1 }, %struct.reg_default { i32 1056, i32 30464 }, %struct.reg_default { i32 1064, i32 564 }, %struct.reg_default { i32 2324, i32 1 }, %struct.reg_default { i32 2336, i32 30464 }, %struct.reg_default { i32 2344, i32 25166388 }, %struct.reg_default { i32 1108, i32 1 }, %struct.reg_default { i32 1120, i32 30464 }, %struct.reg_default { i32 1128, i32 567 }, %struct.reg_default { i32 2388, i32 1 }, %struct.reg_default { i32 2400, i32 30464 }, %struct.reg_default { i32 2408, i32 25166391 }, %struct.reg_default { i32 1172, i32 1 }, %struct.reg_default { i32 1184, i32 30464 }, %struct.reg_default { i32 1192, i32 570 }, %struct.reg_default { i32 2452, i32 1 }, %struct.reg_default { i32 2464, i32 30464 }, %struct.reg_default { i32 2472, i32 25166394 }, %struct.reg_default { i32 1236, i32 1 }, %struct.reg_default { i32 1248, i32 30464 }, %struct.reg_default { i32 1256, i32 573 }, %struct.reg_default { i32 2516, i32 1 }, %struct.reg_default { i32 2528, i32 30464 }, %struct.reg_default { i32 2536, i32 25166397 }], [248 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADMAIF11\00", [23 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF11 Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADMAIF11 Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADMAIF12\00", [23 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF12 Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADMAIF12 Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADMAIF13\00", [23 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF13 Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADMAIF13 Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADMAIF14\00", [23 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF14 Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADMAIF14 Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADMAIF15\00", [23 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF15 Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADMAIF15 Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADMAIF16\00", [23 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF16 Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADMAIF16 Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADMAIF17\00", [23 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF17 Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADMAIF17 Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADMAIF18\00", [23 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF18 Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADMAIF18 Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADMAIF19\00", [23 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF19 Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADMAIF19 Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADMAIF20\00", [23 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADMAIF20 Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADMAIF20 Playback\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4, i64 32, i64 40]
@__sancov_gen_cov_switch_values.290 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4, i64 32, i64 40]
@__sancov_gen_cov_switch_values.291 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 10]
@__sancov_gen_cov_switch_values.292 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.293 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.294 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.295 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.296 = private unnamed_addr constant [20 x i8] c"tegra_admaif_driver\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 859, i32 31 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 863, i32 11 }
@___asan_gen_.302 = private unnamed_addr constant [22 x i8] c"tegra_admaif_of_match\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 731, i32 34 }
@___asan_gen_.305 = private unnamed_addr constant [20 x i8] c"tegra_admaif_pm_ops\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 852, i32 32 }
@___asan_gen_.308 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 787, i32 19 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 790, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 809, i32 5 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 811, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 823, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 835, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant [18 x i8] c"soc_data_tegra210\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 711, i32 43 }
@___asan_gen_.353 = private unnamed_addr constant [18 x i8] c"soc_data_tegra186\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 721, i32 43 }
@___asan_gen_.356 = private unnamed_addr constant [22 x i8] c"tegra210_admaif_cmpnt\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 691, i32 46 }
@___asan_gen_.359 = private unnamed_addr constant [30 x i8] c"tegra210_admaif_regmap_config\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 196, i32 35 }
@___asan_gen_.362 = private unnamed_addr constant [27 x i8] c"tegra210_admaif_cmpnt_dais\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 578, i32 34 }
@___asan_gen_.365 = private unnamed_addr constant [25 x i8] c"tegra210_admaif_controls\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 655, i32 32 }
@___asan_gen_.371 = private unnamed_addr constant [28 x i8] c"tegra_admaif_mono_conv_text\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 618, i32 27 }
@___asan_gen_.374 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [30 x i8] c"tegra_admaif_stereo_conv_text\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 614, i32 27 }
@___asan_gen_.381 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.385 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 656, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.397 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.401 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 657, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.413 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.417 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 658, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.425 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.433 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 659, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.445 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.449 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 660, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.461 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 661, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.477 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.481 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 662, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.493 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.497 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 663, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.505 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.509 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.513 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 664, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.521 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.525 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.529 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 665, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 619, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 619, i32 10 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 615, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 615, i32 9 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 615, i32 16 }
@___asan_gen_.549 = private unnamed_addr constant [29 x i8] c"tegra210_admaif_reg_defaults\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 66, i32 33 }
@___asan_gen_.555 = private unnamed_addr constant [21 x i8] c"tegra_admaif_dai_ops\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 422, i32 37 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 579, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 580, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 581, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 582, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 583, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 584, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 585, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 586, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 587, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 588, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 294, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 356, i32 14 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 364, i32 14 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 380, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 391, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant [22 x i8] c"tegra186_admaif_cmpnt\00", align 1
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 701, i32 46 }
@___asan_gen_.681 = private unnamed_addr constant [30 x i8] c"tegra186_admaif_regmap_config\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 209, i32 35 }
@___asan_gen_.684 = private unnamed_addr constant [27 x i8] c"tegra186_admaif_cmpnt_dais\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 591, i32 34 }
@___asan_gen_.687 = private unnamed_addr constant [25 x i8] c"tegra186_admaif_controls\00", align 1
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 668, i32 32 }
@___asan_gen_.690 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.691 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.692 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.693 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.694 = private unnamed_addr constant [21 x i8] c".compoundliteral.144\00", align 1
@___asan_gen_.695 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.696 = private unnamed_addr constant [21 x i8] c".compoundliteral.146\00", align 1
@___asan_gen_.697 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.698 = private unnamed_addr constant [21 x i8] c".compoundliteral.148\00", align 1
@___asan_gen_.699 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.700 = private unnamed_addr constant [21 x i8] c".compoundliteral.150\00", align 1
@___asan_gen_.701 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.702 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.703 = private unnamed_addr constant [21 x i8] c".compoundliteral.153\00", align 1
@___asan_gen_.704 = private unnamed_addr constant [21 x i8] c".compoundliteral.154\00", align 1
@___asan_gen_.705 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.706 = private unnamed_addr constant [21 x i8] c".compoundliteral.156\00", align 1
@___asan_gen_.707 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.708 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.709 = private unnamed_addr constant [21 x i8] c".compoundliteral.159\00", align 1
@___asan_gen_.710 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.711 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.712 = private unnamed_addr constant [21 x i8] c".compoundliteral.162\00", align 1
@___asan_gen_.713 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.714 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.715 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.716 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.717 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.718 = private unnamed_addr constant [21 x i8] c".compoundliteral.168\00", align 1
@___asan_gen_.719 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.720 = private unnamed_addr constant [21 x i8] c".compoundliteral.170\00", align 1
@___asan_gen_.721 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.722 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.723 = private unnamed_addr constant [21 x i8] c".compoundliteral.173\00", align 1
@___asan_gen_.724 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.725 = private unnamed_addr constant [21 x i8] c".compoundliteral.175\00", align 1
@___asan_gen_.726 = private unnamed_addr constant [21 x i8] c".compoundliteral.176\00", align 1
@___asan_gen_.727 = private unnamed_addr constant [21 x i8] c".compoundliteral.177\00", align 1
@___asan_gen_.728 = private unnamed_addr constant [21 x i8] c".compoundliteral.178\00", align 1
@___asan_gen_.729 = private unnamed_addr constant [21 x i8] c".compoundliteral.179\00", align 1
@___asan_gen_.733 = private unnamed_addr constant [21 x i8] c".compoundliteral.181\00", align 1
@___asan_gen_.737 = private unnamed_addr constant [21 x i8] c".compoundliteral.183\00", align 1
@___asan_gen_.741 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 679, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.749 = private unnamed_addr constant [21 x i8] c".compoundliteral.189\00", align 1
@___asan_gen_.753 = private unnamed_addr constant [21 x i8] c".compoundliteral.191\00", align 1
@___asan_gen_.757 = private unnamed_addr constant [21 x i8] c".compoundliteral.193\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 680, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant [21 x i8] c".compoundliteral.195\00", align 1
@___asan_gen_.765 = private unnamed_addr constant [21 x i8] c".compoundliteral.197\00", align 1
@___asan_gen_.769 = private unnamed_addr constant [21 x i8] c".compoundliteral.199\00", align 1
@___asan_gen_.773 = private unnamed_addr constant [21 x i8] c".compoundliteral.201\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 681, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant [21 x i8] c".compoundliteral.203\00", align 1
@___asan_gen_.781 = private unnamed_addr constant [21 x i8] c".compoundliteral.205\00", align 1
@___asan_gen_.785 = private unnamed_addr constant [21 x i8] c".compoundliteral.207\00", align 1
@___asan_gen_.789 = private unnamed_addr constant [21 x i8] c".compoundliteral.209\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 682, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant [21 x i8] c".compoundliteral.211\00", align 1
@___asan_gen_.797 = private unnamed_addr constant [21 x i8] c".compoundliteral.213\00", align 1
@___asan_gen_.801 = private unnamed_addr constant [21 x i8] c".compoundliteral.215\00", align 1
@___asan_gen_.805 = private unnamed_addr constant [21 x i8] c".compoundliteral.217\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 683, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant [21 x i8] c".compoundliteral.219\00", align 1
@___asan_gen_.813 = private unnamed_addr constant [21 x i8] c".compoundliteral.221\00", align 1
@___asan_gen_.817 = private unnamed_addr constant [21 x i8] c".compoundliteral.223\00", align 1
@___asan_gen_.821 = private unnamed_addr constant [21 x i8] c".compoundliteral.225\00", align 1
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 684, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant [21 x i8] c".compoundliteral.227\00", align 1
@___asan_gen_.829 = private unnamed_addr constant [21 x i8] c".compoundliteral.229\00", align 1
@___asan_gen_.833 = private unnamed_addr constant [21 x i8] c".compoundliteral.231\00", align 1
@___asan_gen_.837 = private unnamed_addr constant [21 x i8] c".compoundliteral.233\00", align 1
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 685, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant [21 x i8] c".compoundliteral.235\00", align 1
@___asan_gen_.845 = private unnamed_addr constant [21 x i8] c".compoundliteral.237\00", align 1
@___asan_gen_.849 = private unnamed_addr constant [21 x i8] c".compoundliteral.239\00", align 1
@___asan_gen_.853 = private unnamed_addr constant [21 x i8] c".compoundliteral.241\00", align 1
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 686, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant [21 x i8] c".compoundliteral.243\00", align 1
@___asan_gen_.861 = private unnamed_addr constant [21 x i8] c".compoundliteral.245\00", align 1
@___asan_gen_.865 = private unnamed_addr constant [21 x i8] c".compoundliteral.247\00", align 1
@___asan_gen_.869 = private unnamed_addr constant [21 x i8] c".compoundliteral.249\00", align 1
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 687, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant [21 x i8] c".compoundliteral.251\00", align 1
@___asan_gen_.877 = private unnamed_addr constant [21 x i8] c".compoundliteral.253\00", align 1
@___asan_gen_.881 = private unnamed_addr constant [21 x i8] c".compoundliteral.255\00", align 1
@___asan_gen_.885 = private unnamed_addr constant [21 x i8] c".compoundliteral.257\00", align 1
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 688, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant [21 x i8] c".compoundliteral.259\00", align 1
@___asan_gen_.890 = private unnamed_addr constant [29 x i8] c"tegra186_admaif_reg_defaults\00", align 1
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 42, i32 33 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 602, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 603, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 604, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 605, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 606, i32 2 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 607, i32 2 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 608, i32 2 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 609, i32 2 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 610, i32 2 }
@___asan_gen_.980 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.981 = private constant [37 x i8] c"../sound/soc/tegra/tegra210_admaif.c\00", align 1
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.981, i32 611, i32 2 }
@llvm.compiler.used = appending global [323 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_tegra_admaif_driver_exit, ptr @__initcall__kmod_snd_soc_tegra210_admaif__241_868_tegra_admaif_driver_init6, ptr @tegra_admaif_driver_exit, ptr @tegra_admaif_hw_params._entry, ptr @tegra_admaif_hw_params._entry_ptr, ptr @tegra_admaif_probe._entry, ptr @tegra_admaif_probe._entry.11, ptr @tegra_admaif_probe._entry.13, ptr @tegra_admaif_probe._entry.8, ptr @tegra_admaif_probe._entry_ptr, ptr @tegra_admaif_probe._entry_ptr.10, ptr @tegra_admaif_probe._entry_ptr.12, ptr @tegra_admaif_probe._entry_ptr.15, ptr @tegra_admaif_stop._entry, ptr @tegra_admaif_stop._entry.137, ptr @tegra_admaif_stop._entry_ptr, ptr @tegra_admaif_stop._entry_ptr.139, ptr @tegra_admaif_driver, ptr @.str, ptr @tegra_admaif_of_match, ptr @tegra_admaif_pm_ops, ptr @tegra_admaif_probe._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.14, ptr @soc_data_tegra210, ptr @soc_data_tegra186, ptr @tegra210_admaif_cmpnt, ptr @tegra210_admaif_regmap_config, ptr @tegra210_admaif_cmpnt_dais, ptr @tegra210_admaif_controls, ptr @.str.16, ptr @tegra_admaif_mono_conv_text, ptr @.compoundliteral, ptr @.str.17, ptr @tegra_admaif_stereo_conv_text, ptr @.compoundliteral.18, ptr @.str.19, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @.compoundliteral.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.compoundliteral.86, ptr @.str.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @.compoundliteral.90, ptr @.str.91, ptr @.compoundliteral.92, ptr @.str.93, ptr @.compoundliteral.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @tegra210_admaif_reg_defaults, ptr @.str.100, ptr @tegra_admaif_dai_ops, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @tegra186_admaif_cmpnt, ptr @tegra186_admaif_regmap_config, ptr @tegra186_admaif_cmpnt_dais, ptr @tegra186_admaif_controls, ptr @.compoundliteral.140, ptr @.compoundliteral.141, ptr @.compoundliteral.142, ptr @.compoundliteral.143, ptr @.compoundliteral.144, ptr @.compoundliteral.145, ptr @.compoundliteral.146, ptr @.compoundliteral.147, ptr @.compoundliteral.148, ptr @.compoundliteral.149, ptr @.compoundliteral.150, ptr @.compoundliteral.151, ptr @.compoundliteral.152, ptr @.compoundliteral.153, ptr @.compoundliteral.154, ptr @.compoundliteral.155, ptr @.compoundliteral.156, ptr @.compoundliteral.157, ptr @.compoundliteral.158, ptr @.compoundliteral.159, ptr @.compoundliteral.160, ptr @.compoundliteral.161, ptr @.compoundliteral.162, ptr @.compoundliteral.163, ptr @.compoundliteral.164, ptr @.compoundliteral.165, ptr @.compoundliteral.166, ptr @.compoundliteral.167, ptr @.compoundliteral.168, ptr @.compoundliteral.169, ptr @.compoundliteral.170, ptr @.compoundliteral.171, ptr @.compoundliteral.172, ptr @.compoundliteral.173, ptr @.compoundliteral.174, ptr @.compoundliteral.175, ptr @.compoundliteral.176, ptr @.compoundliteral.177, ptr @.compoundliteral.178, ptr @.compoundliteral.179, ptr @.str.180, ptr @.compoundliteral.181, ptr @.str.182, ptr @.compoundliteral.183, ptr @.str.184, ptr @.compoundliteral.185, ptr @.str.186, ptr @.compoundliteral.187, ptr @.str.188, ptr @.compoundliteral.189, ptr @.str.190, ptr @.compoundliteral.191, ptr @.str.192, ptr @.compoundliteral.193, ptr @.str.194, ptr @.compoundliteral.195, ptr @.str.196, ptr @.compoundliteral.197, ptr @.str.198, ptr @.compoundliteral.199, ptr @.str.200, ptr @.compoundliteral.201, ptr @.str.202, ptr @.compoundliteral.203, ptr @.str.204, ptr @.compoundliteral.205, ptr @.str.206, ptr @.compoundliteral.207, ptr @.str.208, ptr @.compoundliteral.209, ptr @.str.210, ptr @.compoundliteral.211, ptr @.str.212, ptr @.compoundliteral.213, ptr @.str.214, ptr @.compoundliteral.215, ptr @.str.216, ptr @.compoundliteral.217, ptr @.str.218, ptr @.compoundliteral.219, ptr @.str.220, ptr @.compoundliteral.221, ptr @.str.222, ptr @.compoundliteral.223, ptr @.str.224, ptr @.compoundliteral.225, ptr @.str.226, ptr @.compoundliteral.227, ptr @.str.228, ptr @.compoundliteral.229, ptr @.str.230, ptr @.compoundliteral.231, ptr @.str.232, ptr @.compoundliteral.233, ptr @.str.234, ptr @.compoundliteral.235, ptr @.str.236, ptr @.compoundliteral.237, ptr @.str.238, ptr @.compoundliteral.239, ptr @.str.240, ptr @.compoundliteral.241, ptr @.str.242, ptr @.compoundliteral.243, ptr @.str.244, ptr @.compoundliteral.245, ptr @.str.246, ptr @.compoundliteral.247, ptr @.str.248, ptr @.compoundliteral.249, ptr @.str.250, ptr @.compoundliteral.251, ptr @.str.252, ptr @.compoundliteral.253, ptr @.str.254, ptr @.compoundliteral.255, ptr @.str.256, ptr @.compoundliteral.257, ptr @.str.258, ptr @.compoundliteral.259, ptr @tegra186_admaif_reg_defaults, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289], section "llvm.metadata"
@0 = internal global [309 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_admaif_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_admaif_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_admaif_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_admaif_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_admaif_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_admaif_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_admaif_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_admaif_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_tegra210 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_data_tegra186 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_admaif_cmpnt to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_admaif_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_admaif_cmpnt_dais to i32), i32 1680, i32 2112, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_admaif_controls to i32), i32 1920, i32 2400, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_admaif_mono_conv_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_admaif_stereo_conv_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_admaif_reg_defaults to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_admaif_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_admaif_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_admaif_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_admaif_stop._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_admaif_cmpnt to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_admaif_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_admaif_cmpnt_dais to i32), i32 3360, i32 4192, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_admaif_controls to i32), i32 3840, i32 4800, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.144 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.146 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.148 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.150 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.153 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.154 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.156 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.159 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.162 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.168 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.170 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.173 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.175 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.176 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.177 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.178 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.179 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.181 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.183 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.189 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.191 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.193 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.195 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.197 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.199 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.201 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.203 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.205 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.207 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.209 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.211 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.213 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.215 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.217 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.219 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.221 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.223 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.225 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.227 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.229 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.231 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.233 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.235 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.237 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.239 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.241 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.243 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.245 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.247 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.249 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.251 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.253 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.255 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.257 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.259 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_admaif_reg_defaults to i32), i32 968, i32 1216, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_admaif_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_admaif_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_admaif_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_admaif_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_admaif_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #8
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !290
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %soc_data = getelementptr inbounds %struct.tegra_admaif, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %soc_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %soc_data, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %num_ch = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %call2, i32 0, i32 6
  %3 = ptrtoint ptr %num_ch to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_ch, align 4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 36) #8
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !291

devm_kcalloc.exit.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %call.i, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end
  %8 = extractvalue { i32, i1 } %5, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %8, i32 noundef 3520) #8
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i.i, ptr %call.i, align 4
  %tobool8.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool8.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end10

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %devm_kcalloc.exit
  %10 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc_data, align 4
  %num_ch13 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %num_ch13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_ch13, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 36) #8
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %devm_kcalloc.exit203.thread, label %devm_kcalloc.exit203, !prof !291

devm_kcalloc.exit203.thread:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %playback_dma_data219 = getelementptr inbounds %struct.tegra_admaif, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %playback_dma_data219 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %playback_dma_data219, align 4
  br label %cleanup

devm_kcalloc.exit203:                             ; preds = %if.end10
  %17 = extractvalue { i32, i1 } %14, 0
  %call5.i.i200 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %17, i32 noundef 3520) #8
  %playback_dma_data = getelementptr inbounds %struct.tegra_admaif, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5.i.i200, ptr %playback_dma_data, align 4
  %tobool16.not = icmp eq ptr %call5.i.i200, null
  br i1 %tobool16.not, label %devm_kcalloc.exit203.cleanup_crit_edge, label %for.body.preheader

devm_kcalloc.exit203.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit203
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %devm_kcalloc.exit203
  %19 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %soc_data, align 4
  %num_ch21 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %num_ch21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_ch21, align 4
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 4) #8
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %for.body.preheader.devm_kcalloc.exit207.thread_crit_edge, label %devm_kcalloc.exit207, !prof !291

for.body.preheader.devm_kcalloc.exit207.thread_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_kcalloc.exit207.thread

devm_kcalloc.exit207.thread:                      ; preds = %for.inc.devm_kcalloc.exit207.thread_crit_edge, %for.body.preheader.devm_kcalloc.exit207.thread_crit_edge
  %i.0235.lcssa = phi i32 [ 0, %for.body.preheader.devm_kcalloc.exit207.thread_crit_edge ], [ 1, %for.inc.devm_kcalloc.exit207.thread_crit_edge ]
  %arrayidx222 = getelementptr %struct.tegra_admaif, ptr %call.i, i32 0, i32 3, i32 %i.0235.lcssa
  %25 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx222, align 4
  br label %cleanup

devm_kcalloc.exit207:                             ; preds = %for.body.preheader
  %26 = extractvalue { i32, i1 } %23, 0
  %call5.i.i204 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %26, i32 noundef 3520) #8
  %arrayidx = getelementptr %struct.tegra_admaif, ptr %call.i, i32 0, i32 3, i32 0
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5.i.i204, ptr %arrayidx, align 4
  %tobool25.not = icmp eq ptr %call5.i.i204, null
  br i1 %tobool25.not, label %devm_kcalloc.exit207.cleanup_crit_edge, label %if.end27

devm_kcalloc.exit207.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit207
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %devm_kcalloc.exit207
  %28 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %soc_data, align 4
  %num_ch30 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %num_ch30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_ch30, align 4
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %31, i32 4) #8
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %if.end27.devm_kcalloc.exit211.thread_crit_edge, label %devm_kcalloc.exit211, !prof !291

if.end27.devm_kcalloc.exit211.thread_crit_edge:   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_kcalloc.exit211.thread

devm_kcalloc.exit211.thread:                      ; preds = %if.end27.1.devm_kcalloc.exit211.thread_crit_edge, %if.end27.devm_kcalloc.exit211.thread_crit_edge
  %i.0235.lcssa243 = phi i32 [ 0, %if.end27.devm_kcalloc.exit211.thread_crit_edge ], [ 1, %if.end27.1.devm_kcalloc.exit211.thread_crit_edge ]
  %arrayidx32225 = getelementptr %struct.tegra_admaif, ptr %call.i, i32 0, i32 4, i32 %i.0235.lcssa243
  %34 = ptrtoint ptr %arrayidx32225 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx32225, align 4
  br label %cleanup

devm_kcalloc.exit211:                             ; preds = %if.end27
  %35 = extractvalue { i32, i1 } %32, 0
  %call5.i.i208 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %35, i32 noundef 3520) #8
  %arrayidx32 = getelementptr %struct.tegra_admaif, ptr %call.i, i32 0, i32 4, i32 0
  %36 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call5.i.i208, ptr %arrayidx32, align 4
  %tobool35.not = icmp eq ptr %call5.i.i208, null
  br i1 %tobool35.not, label %devm_kcalloc.exit211.cleanup_crit_edge, label %for.inc

devm_kcalloc.exit211.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit211
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %devm_kcalloc.exit211
  %37 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %soc_data, align 4
  %num_ch21.1 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %num_ch21.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_ch21.1, align 4
  %41 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %40, i32 4) #8
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %for.inc.devm_kcalloc.exit207.thread_crit_edge, label %devm_kcalloc.exit207.1, !prof !291

for.inc.devm_kcalloc.exit207.thread_crit_edge:    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_kcalloc.exit207.thread

devm_kcalloc.exit207.1:                           ; preds = %for.inc
  %43 = extractvalue { i32, i1 } %41, 0
  %call5.i.i204.1 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %43, i32 noundef 3520) #8
  %arrayidx.1 = getelementptr %struct.tegra_admaif, ptr %call.i, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call5.i.i204.1, ptr %arrayidx.1, align 4
  %tobool25.not.1 = icmp eq ptr %call5.i.i204.1, null
  br i1 %tobool25.not.1, label %devm_kcalloc.exit207.1.cleanup_crit_edge, label %if.end27.1

devm_kcalloc.exit207.1.cleanup_crit_edge:         ; preds = %devm_kcalloc.exit207.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27.1:                                       ; preds = %devm_kcalloc.exit207.1
  %45 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %soc_data, align 4
  %num_ch30.1 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %num_ch30.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_ch30.1, align 4
  %49 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %48, i32 4) #8
  %50 = extractvalue { i32, i1 } %49, 1
  br i1 %50, label %if.end27.1.devm_kcalloc.exit211.thread_crit_edge, label %devm_kcalloc.exit211.1, !prof !291

if.end27.1.devm_kcalloc.exit211.thread_crit_edge: ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_kcalloc.exit211.thread

devm_kcalloc.exit211.1:                           ; preds = %if.end27.1
  %51 = extractvalue { i32, i1 } %49, 0
  %call5.i.i208.1 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %51, i32 noundef 3520) #8
  %arrayidx32.1 = getelementptr %struct.tegra_admaif, ptr %call.i, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call5.i.i208.1, ptr %arrayidx32.1, align 4
  %tobool35.not.1 = icmp eq ptr %call5.i.i208.1, null
  br i1 %tobool35.not.1, label %devm_kcalloc.exit211.1.cleanup_crit_edge, label %for.inc.1

devm_kcalloc.exit211.1.cleanup_crit_edge:         ; preds = %devm_kcalloc.exit211.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.1:                                        ; preds = %devm_kcalloc.exit211.1
  %call38 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #8
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then40, label %if.end42

if.then40:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %call38 to i32
  br label %cleanup

if.end42:                                         ; preds = %for.inc.1
  %54 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %soc_data, align 4
  %regmap_conf = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %regmap_conf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap_conf, align 4
  %call45 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call38, ptr noundef %57, ptr noundef nonnull @tegra_admaif_probe._key, ptr noundef nonnull @.str.1) #8
  %regmap = getelementptr inbounds %struct.tegra_admaif, ptr %call.i, i32 0, i32 5
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call45, ptr %regmap, align 4
  %cmp.i212 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %do.end, label %if.end52

do.end:                                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %61 = ptrtoint ptr %60 to i32
  br label %cleanup

if.end52:                                         ; preds = %if.end42
  call void @regcache_cache_only(ptr noundef %call45, i1 noundef zeroext true) #8
  %62 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap, align 4
  %64 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %soc_data, align 4
  %global_base = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %global_base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %global_base, align 4
  %call.i213 = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef %67, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %68 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %soc_data, align 4
  %num_ch59236 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %num_ch59236 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_ch59236, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp60237.not = icmp eq i32 %71, 0
  br i1 %cmp60237.not, label %if.end52.for.end111_crit_edge, label %for.body61.lr.ph

if.end52.for.end111_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end111

for.body61.lr.ph:                                 ; preds = %if.end52
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  br label %for.body61

for.cond57:                                       ; preds = %if.end91
  %inc110 = add nuw i32 %i.1238, 1
  %72 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %soc_data, align 4
  %num_ch59 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %num_ch59 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_ch59, align 4
  %cmp60 = icmp ult i32 %inc110, %75
  br i1 %cmp60, label %for.cond57.for.body61_crit_edge, label %for.cond57.for.end111_crit_edge

for.cond57.for.end111_crit_edge:                  ; preds = %for.cond57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end111

for.cond57.for.body61_crit_edge:                  ; preds = %for.cond57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body61

for.body61:                                       ; preds = %for.cond57.for.body61_crit_edge, %for.body61.lr.ph
  %76 = phi ptr [ %69, %for.body61.lr.ph ], [ %73, %for.cond57.for.body61_crit_edge ]
  %i.1238 = phi i32 [ 0, %for.body61.lr.ph ], [ %inc110, %for.cond57.for.body61_crit_edge ]
  %77 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %res, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %tx_base = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %76, i32 0, i32 4
  %81 = ptrtoint ptr %tx_base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_base, align 4
  %mul = shl i32 %i.1238, 6
  %add63 = or i32 %mul, 44
  %add64 = add i32 %add63, %80
  %add65 = add i32 %add64, %82
  %83 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %playback_dma_data, align 4
  %arrayidx67 = getelementptr %struct.snd_dmaengine_dai_dma_data, ptr %84, i32 %i.1238
  %85 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add65, ptr %arrayidx67, align 4
  %86 = load ptr, ptr %res, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  %89 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %soc_data, align 4
  %rx_base = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %rx_base to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rx_base, align 4
  %add72 = add i32 %add63, %88
  %add73 = add i32 %add72, %92
  %93 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call.i, align 4
  %arrayidx75 = getelementptr %struct.snd_dmaengine_dai_dma_data, ptr %94, i32 %i.1238
  %95 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add73, ptr %arrayidx75, align 4
  %96 = load ptr, ptr %playback_dma_data, align 4
  %addr_width = getelementptr %struct.snd_dmaengine_dai_dma_data, ptr %96, i32 %i.1238, i32 1
  %97 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 32, ptr %addr_width, align 4
  %98 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %of_node, align 8
  %mul80 = shl i32 %i.1238, 1
  %add81 = or i32 %mul80, 1
  %100 = load ptr, ptr %playback_dma_data, align 4
  %chan_name = getelementptr %struct.snd_dmaengine_dai_dma_data, ptr %100, i32 %i.1238, i32 4
  %call.i214 = call i32 @of_property_read_string_helper(ptr noundef %99, ptr noundef nonnull @.str.7, ptr noundef %chan_name, i32 noundef 1, i32 noundef %add81) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %cmp85 = icmp slt i32 %call.i214, 0
  br i1 %cmp85, label %do.end89, label %if.end91

do.end89:                                         ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end91:                                         ; preds = %for.body61
  %101 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call.i, align 4
  %addr_width94 = getelementptr %struct.snd_dmaengine_dai_dma_data, ptr %102, i32 %i.1238, i32 1
  %103 = ptrtoint ptr %addr_width94 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 32, ptr %addr_width94, align 4
  %104 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %of_node, align 8
  %106 = load ptr, ptr %call.i, align 4
  %chan_name100 = getelementptr %struct.snd_dmaengine_dai_dma_data, ptr %106, i32 %i.1238, i32 4
  %call.i215 = call i32 @of_property_read_string_helper(ptr noundef %105, ptr noundef nonnull @.str.7, ptr noundef %chan_name100, i32 noundef 1, i32 noundef %mul80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %cmp102 = icmp slt i32 %call.i215, 0
  br i1 %cmp102, label %do.end106, label %for.cond57

do.end106:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %cleanup

for.end111:                                       ; preds = %for.cond57.for.end111_crit_edge, %if.end52.for.end111_crit_edge
  %.lcssa229 = phi ptr [ %69, %if.end52.for.end111_crit_edge ], [ %73, %for.cond57.for.end111_crit_edge ]
  %.lcssa = phi i32 [ 0, %if.end52.for.end111_crit_edge ], [ %75, %for.cond57.for.end111_crit_edge ]
  %107 = ptrtoint ptr %.lcssa229 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %.lcssa229, align 4
  %dais = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %.lcssa229, i32 0, i32 2
  %109 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dais, align 4
  %call117 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef %108, ptr noundef %110, i32 noundef %.lcssa) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end124, label %do.end122

do.end122:                                        ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call117) #11
  br label %cleanup

if.end124:                                        ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #10
  call void @pm_runtime_enable(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %do.end122, %do.end106, %do.end89, %do.end, %if.then40, %devm_kcalloc.exit211.1.cleanup_crit_edge, %devm_kcalloc.exit207.1.cleanup_crit_edge, %devm_kcalloc.exit211.cleanup_crit_edge, %devm_kcalloc.exit211.thread, %devm_kcalloc.exit207.cleanup_crit_edge, %devm_kcalloc.exit207.thread, %devm_kcalloc.exit203.cleanup_crit_edge, %devm_kcalloc.exit203.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %53, %if.then40 ], [ %61, %do.end ], [ -19, %do.end89 ], [ -19, %do.end106 ], [ %call117, %do.end122 ], [ 0, %if.end124 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit203.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit203.thread ], [ -12, %devm_kcalloc.exit207.thread ], [ -12, %devm_kcalloc.exit211.thread ], [ -12, %devm_kcalloc.exit211.1.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit207.1.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit207.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit211.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_admaif_remove(ptr noundef %pdev) #2 align 64 {
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
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pcm_construct(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pcm_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pcm_close(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pcm_hw_params(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pcm_pointer(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_admaif_pget_mono_to_stereo(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %arrayidx = getelementptr %struct.tegra_admaif, ptr %5, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %arrayidx2 = getelementptr i32, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_admaif_pput_mono_to_stereo(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value2, align 8
  %arrayidx3 = getelementptr %struct.tegra_admaif, ptr %5, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx3, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %8, align 4
  %arrayidx4 = getelementptr i32, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %16)
  %cmp = icmp eq i32 %10, %16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %10, ptr %arrayidx4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_admaif_pget_stereo_to_mono(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %arrayidx = getelementptr %struct.tegra_admaif, ptr %5, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %arrayidx2 = getelementptr i32, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_admaif_pput_stereo_to_mono(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value2, align 8
  %arrayidx3 = getelementptr %struct.tegra_admaif, ptr %5, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx3, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %8, align 4
  %arrayidx4 = getelementptr i32, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %16)
  %cmp = icmp eq i32 %10, %16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %10, ptr %arrayidx4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_admaif_cget_mono_to_stereo(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %mono_to_stereo = getelementptr inbounds %struct.tegra_admaif, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %mono_to_stereo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mono_to_stereo, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %arrayidx2 = getelementptr i32, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_admaif_cput_mono_to_stereo(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value2, align 8
  %mono_to_stereo = getelementptr inbounds %struct.tegra_admaif, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %mono_to_stereo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mono_to_stereo, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %8, align 4
  %arrayidx4 = getelementptr i32, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %16)
  %cmp = icmp eq i32 %10, %16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %10, ptr %arrayidx4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_admaif_cget_stereo_to_mono(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %stereo_to_mono = getelementptr inbounds %struct.tegra_admaif, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %stereo_to_mono to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stereo_to_mono, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %arrayidx2 = getelementptr i32, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_admaif_cput_stereo_to_mono(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value2, align 8
  %stereo_to_mono = getelementptr inbounds %struct.tegra_admaif, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %stereo_to_mono to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stereo_to_mono, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %8, align 4
  %arrayidx4 = getelementptr i32, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %16)
  %cmp = icmp eq i32 %10, %16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %10, ptr %arrayidx4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra_admaif_wr_reg(ptr nocapture noundef readonly %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %soc_data = getelementptr inbounds %struct.tegra_admaif, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_data, align 4
  %num_ch1 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %num_ch1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ch1, align 4
  %rx_base3 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %rx_base3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_base3, align 4
  %tx_base5 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %tx_base5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_base5, align 4
  %global_base7 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %global_base7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %global_base7, align 4
  %regmap_conf = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %regmap_conf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap_conf, align 4
  %max_register = getelementptr inbounds %struct.regmap_config, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %max_register to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_register, align 4
  %mul = shl i32 %5, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %reg)
  %cmp.not = icmp ule i32 %7, %reg
  %add = add i32 %7, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %reg)
  %cmp11 = icmp ugt i32 %add, %reg
  %or.cond = select i1 %cmp.not, i1 %cmp11, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = sub i32 %reg, %7
  %rem = and i32 %sub, 63
  %16 = zext i32 %rem to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rem, label %if.then.if.end45_crit_edge [
    i32 0, label %if.then.cleanup_crit_edge
    i32 40, label %if.then.cleanup_crit_edge88
    i32 4, label %if.then.cleanup_crit_edge89
    i32 32, label %if.then.cleanup_crit_edge90
  ]

if.then.cleanup_crit_edge90:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.cleanup_crit_edge89:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.cleanup_crit_edge88:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end45_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.else:                                          ; preds = %entry
  %add10 = add i32 %9, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %reg)
  %cmp19.not = icmp ule i32 %9, %reg
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %reg)
  %cmp21 = icmp ugt i32 %add10, %reg
  %or.cond85 = select i1 %cmp19.not, i1 %cmp21, i1 false
  br i1 %or.cond85, label %if.then22, label %if.else34

if.then22:                                        ; preds = %if.else
  %sub23 = sub i32 %reg, %9
  %rem24 = and i32 %sub23, 63
  %17 = zext i32 %rem24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.290)
  switch i32 %rem24, label %if.then22.if.end45_crit_edge [
    i32 0, label %if.then22.cleanup_crit_edge
    i32 40, label %if.then22.cleanup_crit_edge91
    i32 4, label %if.then22.cleanup_crit_edge92
    i32 32, label %if.then22.cleanup_crit_edge93
  ]

if.then22.cleanup_crit_edge93:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22.cleanup_crit_edge92:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22.cleanup_crit_edge91:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22.if.end45_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.else34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %reg)
  %cmp37 = icmp ugt i32 %15, %reg
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %reg)
  %cmp40 = icmp eq i32 %11, %reg
  %or.cond87 = select i1 %cmp40, i1 %cmp37, i1 false
  br i1 %or.cond87, label %if.else34.cleanup_crit_edge, label %if.else34.if.end45_crit_edge

if.else34.if.end45_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.else34.cleanup_crit_edge:                      ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end45:                                         ; preds = %if.else34.if.end45_crit_edge, %if.then22.if.end45_crit_edge, %if.then.if.end45_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.else34.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %if.then22.cleanup_crit_edge91, %if.then22.cleanup_crit_edge92, %if.then22.cleanup_crit_edge93, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge88, %if.then.cleanup_crit_edge89, %if.then.cleanup_crit_edge90
  %retval.0 = phi i1 [ false, %if.end45 ], [ true, %if.then.cleanup_crit_edge ], [ true, %if.then.cleanup_crit_edge88 ], [ true, %if.then.cleanup_crit_edge89 ], [ true, %if.then.cleanup_crit_edge90 ], [ true, %if.then22.cleanup_crit_edge ], [ true, %if.then22.cleanup_crit_edge91 ], [ true, %if.then22.cleanup_crit_edge92 ], [ true, %if.then22.cleanup_crit_edge93 ], [ true, %if.else34.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra_admaif_rd_reg(ptr nocapture noundef readonly %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %soc_data = getelementptr inbounds %struct.tegra_admaif, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_data, align 4
  %num_ch1 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %num_ch1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ch1, align 4
  %rx_base3 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %rx_base3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_base3, align 4
  %tx_base5 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %tx_base5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_base5, align 4
  %global_base7 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %global_base7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %global_base7, align 4
  %regmap_conf = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %regmap_conf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap_conf, align 4
  %max_register = getelementptr inbounds %struct.regmap_config, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %max_register to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_register, align 4
  %mul = shl i32 %5, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %reg)
  %cmp.not = icmp ule i32 %7, %reg
  %add = add i32 %7, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %reg)
  %cmp11 = icmp ugt i32 %add, %reg
  %or.cond = select i1 %cmp.not, i1 %cmp11, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = sub i32 %reg, %7
  %rem = lshr i32 %sub, 2
  %16 = and i32 %rem, 15
  %17 = shl i32 %sub, 30
  %18 = or i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %18)
  %19 = icmp ult i32 %18, 11
  br i1 %19, label %switch.lookup, label %if.then.if.end65_crit_edge

if.then.if.end65_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.else:                                          ; preds = %entry
  %add10 = add i32 %9, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %reg)
  %cmp23.not = icmp ule i32 %9, %reg
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %reg)
  %cmp25 = icmp ugt i32 %add10, %reg
  %or.cond117 = select i1 %cmp23.not, i1 %cmp25, i1 false
  br i1 %or.cond117, label %if.then26, label %if.else42

if.then26:                                        ; preds = %if.else
  %sub27 = sub i32 %reg, %9
  %rem28 = lshr i32 %sub27, 2
  %20 = and i32 %rem28, 15
  %21 = shl i32 %sub27, 30
  %22 = or i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %22)
  %23 = icmp ult i32 %22, 11
  br i1 %23, label %switch.lookup123, label %if.then26.if.end65_crit_edge

if.then26.if.end65_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.else42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %reg)
  %cmp43.not = icmp ule i32 %11, %reg
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %reg)
  %cmp45 = icmp ugt i32 %15, %reg
  %or.cond118 = select i1 %cmp43.not, i1 %cmp45, i1 false
  br i1 %or.cond118, label %if.then46, label %if.else42.if.end65_crit_edge

if.else42.if.end65_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then46:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %reg)
  %cmp48 = icmp eq i32 %11, %reg
  %add50 = add i32 %11, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %reg)
  %cmp51 = icmp eq i32 %add50, %reg
  %or.cond119 = or i1 %cmp48, %cmp51
  %add53 = add i32 %11, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add53, i32 %reg)
  %cmp54 = icmp eq i32 %add53, %reg
  %or.cond120 = or i1 %cmp54, %or.cond119
  %add56 = add i32 %11, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add56, i32 %reg)
  %cmp57 = icmp eq i32 %add56, %reg
  %or.cond121 = select i1 %or.cond120, i1 true, i1 %cmp57
  %add59 = add i32 %11, 36
  call void @__sanitizer_cov_trace_cmp4(i32 %add59, i32 %reg)
  %cmp60 = icmp eq i32 %add59, %reg
  %or.cond122 = select i1 %or.cond121, i1 true, i1 %cmp60
  br i1 %or.cond122, label %if.then46.cleanup_crit_edge, label %if.then46.if.end65_crit_edge

if.then46.if.end65_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end65:                                         ; preds = %if.then46.if.end65_crit_edge, %if.else42.if.end65_crit_edge, %if.then26.if.end65_crit_edge, %if.then.if.end65_crit_edge
  br label %cleanup

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %switch.cast = trunc i32 %16 to i11
  %switch.downshift = lshr i11 -741, %switch.cast
  %24 = and i11 %switch.downshift, 1
  %25 = sext i11 %24 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %switch.masked = icmp ne i11 %24, 0
  br label %cleanup

switch.lookup123:                                 ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %switch.cast124 = trunc i32 %20 to i11
  %switch.downshift126 = lshr i11 -741, %switch.cast124
  %26 = and i11 %switch.downshift126, 1
  %27 = sext i11 %26 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %switch.masked127 = icmp ne i11 %26, 0
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup123, %switch.lookup, %if.end65, %if.then46.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end65 ], [ true, %if.then46.cleanup_crit_edge ], [ %switch.masked, %switch.lookup ], [ %switch.masked127, %switch.lookup123 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra_admaif_volatile_reg(ptr nocapture noundef readonly %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %soc_data = getelementptr inbounds %struct.tegra_admaif, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_data, align 4
  %num_ch1 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %num_ch1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ch1, align 4
  %rx_base3 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %rx_base3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_base3, align 4
  %tx_base5 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %tx_base5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_base5, align 4
  %global_base7 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %global_base7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %global_base7, align 4
  %regmap_conf = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %regmap_conf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap_conf, align 4
  %max_register = getelementptr inbounds %struct.regmap_config, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %max_register to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_register, align 4
  %mul = shl i32 %5, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %reg)
  %cmp.not = icmp ule i32 %7, %reg
  %add = add i32 %7, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %reg)
  %cmp11 = icmp ugt i32 %add, %reg
  %or.cond = select i1 %cmp.not, i1 %cmp11, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = sub i32 %reg, %7
  %rem = lshr i32 %sub, 2
  %16 = and i32 %rem, 15
  %17 = shl i32 %sub, 30
  %18 = or i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %18)
  %19 = icmp ult i32 %18, 5
  br i1 %19, label %switch.lookup, label %if.then.if.end51_crit_edge

if.then.if.end51_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.else:                                          ; preds = %entry
  %add10 = add i32 %9, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %reg)
  %cmp19.not = icmp ule i32 %9, %reg
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %reg)
  %cmp21 = icmp ugt i32 %add10, %reg
  %or.cond95 = select i1 %cmp19.not, i1 %cmp21, i1 false
  br i1 %or.cond95, label %if.then22, label %if.else34

if.then22:                                        ; preds = %if.else
  %sub23 = sub i32 %reg, %9
  %rem24 = lshr i32 %sub23, 2
  %20 = and i32 %rem24, 15
  %21 = shl i32 %sub23, 30
  %22 = or i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %22)
  %23 = icmp ult i32 %22, 5
  br i1 %23, label %switch.lookup99, label %if.then22.if.end51_crit_edge

if.then22.if.end51_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.else34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %reg)
  %cmp35.not = icmp ule i32 %11, %reg
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %reg)
  %cmp37 = icmp ugt i32 %15, %reg
  %or.cond96 = select i1 %cmp35.not, i1 %cmp37, i1 false
  br i1 %or.cond96, label %if.then38, label %if.else34.if.end51_crit_edge

if.else34.if.end51_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then38:                                        ; preds = %if.else34
  %add39 = add i32 %11, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add39, i32 %reg)
  %cmp40 = icmp eq i32 %add39, %reg
  %add42 = add i32 %11, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add42, i32 %reg)
  %cmp43 = icmp eq i32 %add42, %reg
  %or.cond97 = or i1 %cmp40, %cmp43
  %add45 = add i32 %11, 36
  call void @__sanitizer_cov_trace_cmp4(i32 %add45, i32 %reg)
  %cmp46 = icmp eq i32 %add45, %reg
  %or.cond98 = select i1 %or.cond97, i1 true, i1 %cmp46
  br i1 %or.cond98, label %if.then38.cleanup_crit_edge, label %if.then38.if.end51_crit_edge

if.then38.if.end51_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %if.then38.if.end51_crit_edge, %if.else34.if.end51_crit_edge, %if.then22.if.end51_crit_edge, %if.then.if.end51_crit_edge
  br label %cleanup

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %switch.cast = trunc i32 %16 to i5
  %switch.downshift = lshr i5 -5, %switch.cast
  %24 = and i5 %switch.downshift, 1
  %25 = sext i5 %24 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %switch.masked = icmp ne i5 %24, 0
  br label %cleanup

switch.lookup99:                                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %switch.cast100 = trunc i32 %20 to i5
  %switch.downshift102 = lshr i5 -5, %switch.cast100
  %26 = and i5 %switch.downshift102, 1
  %27 = sext i5 %26 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %switch.masked103 = icmp ne i5 %26, 0
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup99, %switch.lookup, %if.end51, %if.then38.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end51 ], [ true, %if.then38.cleanup_crit_edge ], [ %switch.masked, %switch.lookup ], [ %switch.masked103, %switch.lookup99 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_admaif_dai_probe(ptr nocapture noundef %dai) #6 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.snd_dmaengine_dai_dma_data, ptr %5, i32 %7
  %capture_dma_data1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %8 = ptrtoint ptr %capture_dma_data1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx, ptr %capture_dma_data1, align 4
  %playback_dma_data = getelementptr inbounds %struct.tegra_admaif, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %playback_dma_data, align 4
  %arrayidx3 = getelementptr %struct.snd_dmaengine_dai_dma_data, ptr %10, i32 %7
  %playback_dma_data4 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %11 = ptrtoint ptr %playback_dma_data4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx3, ptr %playback_dma_data4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_admaif_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.params_format.exit_crit_edge

entry.params_format.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.1.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.sw.epilog_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

for.inc.i.i.sw.epilog_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %entry.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %5, %entry.params_format.exit_crit_edge ], [ %7, %for.inc.i.i.params_format.exit_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #8, !range !292
  %add.i.i = or i32 %8, %i.09.lcssa.i.i
  %9 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.291)
  switch i32 %add.i.i, label %do.end [
    i32 0, label %params_format.exit.sw.epilog_crit_edge
    i32 2, label %sw.bb3
    i32 10, label %sw.bb6
  ]

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.130) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb3, %params_format.exit.sw.epilog_crit_edge, %for.inc.i.i.sw.epilog_crit_edge
  %cif_conf.sroa.9.0 = phi i32 [ 7, %sw.bb6 ], [ 3, %sw.bb3 ], [ 1, %params_format.exit.sw.epilog_crit_edge ], [ 1, %for.inc.i.i.sw.epilog_crit_edge ]
  %valid_bit.0 = phi i32 [ 2, %sw.bb6 ], [ 1, %sw.bb3 ], [ %add.i.i, %params_format.exit.sw.epilog_crit_edge ], [ 0, %for.inc.i.i.sw.epilog_crit_edge ]
  %arrayidx.i.i43 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx.i.i43 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i43, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %12 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  %soc_data = getelementptr inbounds %struct.tegra_admaif, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soc_data, align 4
  %rx_base = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %15, i32 0, i32 5
  %tx_base = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %15, i32 0, i32 4
  %rx_base.sink = select i1 %cmp, ptr %tx_base, ptr %rx_base
  %path.0 = zext i1 %cmp to i32
  %16 = ptrtoint ptr %rx_base.sink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_base.sink, align 4
  %add12 = add i32 %17, 32
  %id13 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %18 = ptrtoint ptr %id13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id13, align 4
  %mul14 = shl i32 %19, 6
  %add15 = add i32 %add12, %mul14
  %arrayidx = getelementptr %struct.tegra_admaif, ptr %3, i32 0, i32 3, i32 %path.0
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %arrayidx17 = getelementptr i32, ptr %21, i32 %19
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr %struct.tegra_admaif, ptr %3, i32 0, i32 4, i32 %path.0
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr i32, ptr %25, i32 %19
  %26 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx20, align 4
  %regmap = getelementptr inbounds %struct.tegra_admaif, ptr %3, i32 0, i32 5
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %30 = zext i32 %valid_bit.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.292)
  switch i32 %valid_bit.0, label %sw.epilog.tegra_admaif_set_pack_mode.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb5.i
  ]

sw.epilog.tegra_admaif_set_pack_mode.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_admaif_set_pack_mode.exit

sw.bb.i:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %add15, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %return.sink.split.i

sw.bb2.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call.i2.i = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %add15, i32 noundef 1073741824, i32 noundef 1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %return.sink.split.i

sw.bb5.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %add15, i32 noundef 1073741824, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb5.i, %sw.bb2.i, %sw.bb.i
  %.sink.i = phi i32 [ 1073741824, %sw.bb.i ], [ -2147483648, %sw.bb2.i ], [ -2147483648, %sw.bb5.i ]
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %add15, i32 noundef %.sink.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %tegra_admaif_set_pack_mode.exit

tegra_admaif_set_pack_mode.exit:                  ; preds = %return.sink.split.i, %sw.epilog.tegra_admaif_set_pack_mode.exit_crit_edge
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %sub.i = shl i32 %11, 20
  %shl1.i = add i32 %sub.i, -1048576
  %sub2.i = shl i32 %11, 16
  %shl3.i = add i32 %sub2.i, -65536
  %or4.i = or i32 %shl1.i, %shl3.i
  %shl5.i = shl nuw nsw i32 %cif_conf.sroa.9.0, 12
  %or6.i = or i32 %or4.i, %shl5.i
  %shl7.i = shl nuw nsw i32 %cif_conf.sroa.9.0, 8
  %or8.i = or i32 %or6.i, %shl7.i
  %shl11.i = shl i32 %27, 4
  %or12.i = or i32 %23, %or8.i
  %or18.i = or i32 %or12.i, %shl11.i
  %call.i.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %add15, i32 noundef 1073741819, i32 noundef %or18.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %tegra_admaif_set_pack_mode.exit, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %tegra_admaif_set_pack_mode.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_admaif_trigger(ptr noundef %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_dmaengine_pcm_trigger(ptr noundef %substream, i32 noundef %cmd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.293)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 4, label %if.end.sw.bb_crit_edge21
    i32 6, label %if.end.sw.bb_crit_edge22
    i32 0, label %if.end.sw.bb2_crit_edge
    i32 3, label %if.end.sw.bb2_crit_edge23
    i32 5, label %if.end.sw.bb2_crit_edge24
  ]

if.end.sw.bb2_crit_edge24:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

if.end.sw.bb2_crit_edge23:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

if.end.sw.bb_crit_edge22:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge21:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge21, %if.end.sw.bb_crit_edge22
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %1 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %stream, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %7 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.294)
  switch i32 %2, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %soc_data.i = getelementptr inbounds %struct.tegra_admaif, ptr %6, i32 0, i32 2
  %8 = ptrtoint ptr %soc_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc_data.i, align 4
  %tx_base.i = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %9, i32 0, i32 4
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %soc_data3.i = getelementptr inbounds %struct.tegra_admaif, ptr %6, i32 0, i32 2
  %10 = ptrtoint ptr %soc_data3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc_data3.i, align 4
  %rx_base.i = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %11, i32 0, i32 5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i
  %rx_base.sink.i = phi ptr [ %rx_base.i, %sw.bb2.i ], [ %tx_base.i, %sw.bb.i ]
  %12 = ptrtoint ptr %rx_base.sink.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_base.sink.i, align 4
  %id5.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %14 = ptrtoint ptr %id5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id5.i, align 4
  %mul6.i = shl i32 %15, 6
  %add7.i = add i32 %mul6.i, %13
  %regmap.i = getelementptr inbounds %struct.tegra_admaif, ptr %6, i32 0, i32 5
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %add7.i, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge23, %if.end.sw.bb2_crit_edge24
  %stream3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %18 = ptrtoint ptr %stream3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream3, align 4
  %dev.i.i10 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %20 = ptrtoint ptr %dev.i.i10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i10, align 4
  %driver_data.i.i.i11 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %val.i, align 4, !annotation !290
  %25 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.295)
  switch i32 %19, label %sw.bb2.tegra_admaif_stop.exit_crit_edge [
    i32 0, label %sw.bb.i14
    i32 1, label %sw.bb14.i
  ]

sw.bb2.tegra_admaif_stop.exit_crit_edge:          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_admaif_stop.exit

sw.bb.i14:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %soc_data.i12 = getelementptr inbounds %struct.tegra_admaif, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %soc_data.i12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %soc_data.i12, align 4
  %tx_base.i13 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %27, i32 0, i32 4
  br label %sw.epilog.i19

sw.bb14.i:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %soc_data15.i = getelementptr inbounds %struct.tegra_admaif, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %soc_data15.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %soc_data15.i, align 4
  %rx_base.i15 = getelementptr inbounds %struct.tegra_admaif_soc_data, ptr %29, i32 0, i32 5
  br label %sw.epilog.i19

sw.epilog.i19:                                    ; preds = %sw.bb14.i, %sw.bb.i14
  %rx_base.sink.i16 = phi ptr [ %rx_base.i15, %sw.bb14.i ], [ %tx_base.i13, %sw.bb.i14 ]
  %dir_name.0.i = phi ptr [ @.str.133, %sw.bb14.i ], [ @.str.132, %sw.bb.i14 ]
  %30 = ptrtoint ptr %rx_base.sink.i16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_base.sink.i16, align 4
  %id17.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %32 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id17.i, align 4
  %mul18.i = shl i32 %33, 6
  %add19.i = add i32 %mul18.i, %31
  %reset_reg.0.i = add i32 %add19.i, 4
  %status_reg.0.i = add i32 %add19.i, 12
  %regmap.i17 = getelementptr inbounds %struct.tegra_admaif, ptr %23, i32 0, i32 5
  %34 = ptrtoint ptr %regmap.i17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i17, align 4
  %call.i.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef %add19.i, i32 noundef 1, i32 noundef -2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call33.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call33.i, 10000000
  %36 = ptrtoint ptr %regmap.i17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i17, align 4
  %call36205.i = call i32 @regmap_read(ptr noundef %37, i32 noundef %status_reg.0.i, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36205.i)
  %tobool.not206.i = icmp eq i32 %call36205.i, 0
  br i1 %tobool.not206.i, label %sw.epilog.i19.if.end.i_crit_edge, label %sw.epilog.i19.cond.end60.i_crit_edge

sw.epilog.i19.cond.end60.i_crit_edge:             ; preds = %sw.epilog.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end60.i

sw.epilog.i19.if.end.i_crit_edge:                 ; preds = %sw.epilog.i19
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false.i.if.end.i_crit_edge, %sw.epilog.i19.if.end.i_crit_edge
  %38 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val.i, align 4
  %and.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool37.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool37.not.i, label %if.end.i.cond.false57.i_crit_edge, label %land.lhs.true.i

if.end.i.cond.false57.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false57.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call41.i = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call41.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call41.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 2147480) #8
  %41 = ptrtoint ptr %regmap.i17 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap.i17, align 4
  %call36.i = call i32 @regmap_read(ptr noundef %42, i32 noundef %status_reg.0.i, ptr noundef nonnull %val.i) #8
  %tobool.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool.not.i, label %cond.false.i.if.end.i_crit_edge, label %cond.false.i.cond.end60.i_crit_edge

cond.false.i.cond.end60.i_crit_edge:              ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end60.i

cond.false.i.if.end.i_crit_edge:                  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %43 = ptrtoint ptr %regmap.i17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i17, align 4
  %call45.i = call i32 @regmap_read(ptr noundef %44, i32 noundef %status_reg.0.i, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool55.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool55.not.i, label %for.end.i.cond.false57.i_crit_edge, label %for.end.i.cond.end60.i_crit_edge

for.end.i.cond.end60.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end60.i

for.end.i.cond.false57.i_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false57.i

cond.false57.i:                                   ; preds = %for.end.i.cond.false57.i_crit_edge, %if.end.i.cond.false57.i_crit_edge
  %45 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val.i, align 4
  %and58.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %cond.false57.i.if.end66.i_crit_edge, label %cond.false57.i.do.end.i_crit_edge

cond.false57.i.do.end.i_crit_edge:                ; preds = %cond.false57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

cond.false57.i.if.end66.i_crit_edge:              ; preds = %cond.false57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

cond.end60.i:                                     ; preds = %for.end.i.cond.end60.i_crit_edge, %cond.false.i.cond.end60.i_crit_edge, %sw.epilog.i19.cond.end60.i_crit_edge
  %cond61.i = phi i32 [ %call45.i, %for.end.i.cond.end60.i_crit_edge ], [ %call36205.i, %sw.epilog.i19.cond.end60.i_crit_edge ], [ %call36.i, %cond.false.i.cond.end60.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond61.i)
  %cmp62.i = icmp slt i32 %cond61.i, 0
  br i1 %cmp62.i, label %cond.end60.i.do.end.i_crit_edge, label %cond.end60.i.if.end66.i_crit_edge

cond.end60.i.if.end66.i_crit_edge:                ; preds = %cond.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i

cond.end60.i.do.end.i_crit_edge:                  ; preds = %cond.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %cond.end60.i.do.end.i_crit_edge, %cond.false57.i.do.end.i_crit_edge
  %47 = ptrtoint ptr %dev.i.i10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i.i10, align 4
  %49 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id17.i, align 4
  %add65.i = add i32 %50, 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.134, i32 noundef %add65.i, ptr noundef nonnull %dir_name.0.i) #11
  br label %if.end66.i

if.end66.i:                                       ; preds = %do.end.i, %cond.end60.i.if.end66.i_crit_edge, %cond.false57.i.if.end66.i_crit_edge
  %51 = ptrtoint ptr %regmap.i17 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i17, align 4
  %call.i176.i = call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef %reset_reg.0.i, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call72.i = call i64 @ktime_get() #8
  %add.i177.i = add i64 %call72.i, 10000000
  %53 = ptrtoint ptr %regmap.i17 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap.i17, align 4
  %call77207.i = call i32 @regmap_read(ptr noundef %54, i32 noundef %reset_reg.0.i, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77207.i)
  %tobool78.not208.i = icmp eq i32 %call77207.i, 0
  br i1 %tobool78.not208.i, label %if.end66.i.if.end80.i_crit_edge, label %if.end66.i.do.end122.i_crit_edge

if.end66.i.do.end122.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end122.i

if.end66.i.if.end80.i_crit_edge:                  ; preds = %if.end66.i
  br label %if.end80.i

if.end80.i:                                       ; preds = %cond.false100.i.if.end80.i_crit_edge, %if.end66.i.if.end80.i_crit_edge
  %55 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %val.i, align 4
  %and81.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool83.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool83.not.i, label %if.end80.i.cond.false110.i_crit_edge, label %land.lhs.true87.i

if.end80.i.cond.false110.i_crit_edge:             ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false110.i

land.lhs.true87.i:                                ; preds = %if.end80.i
  %call88.i = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call88.i, i64 %add.i177.i)
  %cmp3.i179.i = icmp sgt i64 %call88.i, %add.i177.i
  br i1 %cmp3.i179.i, label %for.end106.i, label %cond.false100.i

cond.false100.i:                                  ; preds = %land.lhs.true87.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %57(i32 noundef 2147480) #8
  %58 = ptrtoint ptr %regmap.i17 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap.i17, align 4
  %call77.i = call i32 @regmap_read(ptr noundef %59, i32 noundef %reset_reg.0.i, ptr noundef nonnull %val.i) #8
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %cond.false100.i.if.end80.i_crit_edge, label %cond.false100.i.do.end122.i_crit_edge

cond.false100.i.do.end122.i_crit_edge:            ; preds = %cond.false100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end122.i

cond.false100.i.if.end80.i_crit_edge:             ; preds = %cond.false100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80.i

for.end106.i:                                     ; preds = %land.lhs.true87.i
  %60 = ptrtoint ptr %regmap.i17 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap.i17, align 4
  %call93.i = call i32 @regmap_read(ptr noundef %61, i32 noundef %reset_reg.0.i, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %tobool108.not.i = icmp eq i32 %call93.i, 0
  br i1 %tobool108.not.i, label %for.end106.i.cond.false110.i_crit_edge, label %for.end106.i.do.end122.i_crit_edge

for.end106.i.do.end122.i_crit_edge:               ; preds = %for.end106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end122.i

for.end106.i.cond.false110.i_crit_edge:           ; preds = %for.end106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false110.i

cond.false110.i:                                  ; preds = %for.end106.i.cond.false110.i_crit_edge, %if.end80.i.cond.false110.i_crit_edge
  %62 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val.i, align 4
  %and111.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111.i)
  %tobool113.not.i = icmp eq i32 %and111.i, 0
  br i1 %tobool113.not.i, label %cond.false110.i.tegra_admaif_stop.exit_crit_edge, label %cond.false110.i.do.end122.i_crit_edge

cond.false110.i.do.end122.i_crit_edge:            ; preds = %cond.false110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end122.i

cond.false110.i.tegra_admaif_stop.exit_crit_edge: ; preds = %cond.false110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_admaif_stop.exit

do.end122.i:                                      ; preds = %cond.false110.i.do.end122.i_crit_edge, %for.end106.i.do.end122.i_crit_edge, %cond.false100.i.do.end122.i_crit_edge, %if.end66.i.do.end122.i_crit_edge
  %cond117.ph.i = phi i32 [ %call93.i, %for.end106.i.do.end122.i_crit_edge ], [ -110, %cond.false110.i.do.end122.i_crit_edge ], [ %call77207.i, %if.end66.i.do.end122.i_crit_edge ], [ %call77.i, %cond.false100.i.do.end122.i_crit_edge ]
  %64 = ptrtoint ptr %dev.i.i10 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i.i10, align 4
  %66 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %id17.i, align 4
  %add125.i = add i32 %67, 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.138, i32 noundef %add125.i, ptr noundef nonnull %dir_name.0.i) #11
  br label %tegra_admaif_stop.exit

tegra_admaif_stop.exit:                           ; preds = %do.end122.i, %cond.false110.i.tegra_admaif_stop.exit_crit_edge, %sw.bb2.tegra_admaif_stop.exit_crit_edge
  %retval.0.i20 = phi i32 [ %cond117.ph.i, %do.end122.i ], [ -22, %sw.bb2.tegra_admaif_stop.exit_crit_edge ], [ 0, %cond.false110.i.tegra_admaif_stop.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %cleanup

cleanup:                                          ; preds = %tegra_admaif_stop.exit, %sw.epilog.i, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i20, %tegra_admaif_stop.exit ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.epilog.i ], [ -22, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_trigger(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_admaif_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.tegra_admaif, ptr %1, i32 0, i32 5
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
define internal i32 @tegra_admaif_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.tegra_admaif, ptr %1, i32 0, i32 5
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

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 309)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 309)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !34, !36, !37, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !158, !160, !161, !162, !163, !165, !167, !169, !170, !171, !172, !173, !175, !176, !177, !179, !181, !183, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !231, !233, !235, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279}
!llvm.module.flags = !{!281, !282, !283, !284, !285, !286, !287, !288}
!llvm.ident = !{!289}

!0 = !{ptr @__initcall__kmod_snd_soc_tegra210_admaif__241_868_tegra_admaif_driver_init6, !1, !"__initcall__kmod_snd_soc_tegra210_admaif__241_868_tegra_admaif_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 868, i32 1}
!2 = !{ptr @__exitcall_tegra_admaif_driver_exit, !1, !"__exitcall_tegra_admaif_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author242, !4, !"__UNIQUE_ID_author242", i1 false, i1 false}
!4 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 870, i32 1}
!5 = !{ptr @__UNIQUE_ID_description243, !6, !"__UNIQUE_ID_description243", i1 false, i1 false}
!6 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 871, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 872, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 863, i32 11}
!12 = !{ptr @tegra_admaif_driver, !13, !"tegra_admaif_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 859, i32 31}
!14 = !{ptr @tegra_admaif_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 787, i32 19}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 790, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tegra_admaif_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @tegra_admaif_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 809, i32 5}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 811, i32 4}
!29 = !{ptr @tegra_admaif_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @tegra_admaif_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @tegra_admaif_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 823, i32 4}
!33 = !{ptr @tegra_admaif_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 835, i32 3}
!36 = !{ptr @tegra_admaif_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tegra_admaif_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @tegra_admaif_of_match, !39, !"tegra_admaif_of_match", i1 false, i1 false}
!39 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 731, i32 34}
!40 = !{ptr @soc_data_tegra210, !41, !"soc_data_tegra210", i1 false, i1 false}
!41 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 711, i32 43}
!42 = !{ptr @tegra210_admaif_cmpnt, !43, !"tegra210_admaif_cmpnt", i1 false, i1 false}
!43 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 691, i32 46}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 656, i32 2}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 657, i32 2}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 658, i32 2}
!56 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.37, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.39, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 659, i32 2}
!61 = !{ptr @.str.41, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.43, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.45, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.47, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 660, i32 2}
!66 = !{ptr @.str.49, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.51, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.53, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.55, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 661, i32 2}
!71 = !{ptr @.str.57, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.59, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.61, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.63, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 662, i32 2}
!76 = !{ptr @.str.65, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.67, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.69, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.71, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 663, i32 2}
!81 = !{ptr @.str.73, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.75, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.77, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.79, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 664, i32 2}
!86 = !{ptr @.str.81, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.83, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.85, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.87, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 665, i32 2}
!91 = !{ptr @.str.89, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.91, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.93, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @tegra210_admaif_controls, !95, !"tegra210_admaif_controls", i1 false, i1 false}
!95 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 655, i32 32}
!96 = !{ptr @.str.95, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 619, i32 2}
!98 = !{ptr @.str.96, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 619, i32 10}
!100 = !{ptr @tegra_admaif_mono_conv_text, !101, !"tegra_admaif_mono_conv_text", i1 false, i1 false}
!101 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 618, i32 27}
!102 = !{ptr @.str.97, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 615, i32 2}
!104 = !{ptr @.str.98, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 615, i32 9}
!106 = !{ptr @.str.99, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 615, i32 16}
!108 = !{ptr @tegra_admaif_stereo_conv_text, !109, !"tegra_admaif_stereo_conv_text", i1 false, i1 false}
!109 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 614, i32 27}
!110 = !{ptr @tegra210_admaif_regmap_config, !111, !"tegra210_admaif_regmap_config", i1 false, i1 false}
!111 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 196, i32 35}
!112 = !{ptr @tegra210_admaif_reg_defaults, !113, !"tegra210_admaif_reg_defaults", i1 false, i1 false}
!113 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 66, i32 33}
!114 = !{ptr @.str.100, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 579, i32 2}
!116 = !{ptr @.str.101, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.102, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.103, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 580, i32 2}
!120 = !{ptr @.str.104, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.105, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.106, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 581, i32 2}
!124 = !{ptr @.str.107, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.108, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.109, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 582, i32 2}
!128 = !{ptr @.str.110, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.111, !127, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.112, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 583, i32 2}
!132 = !{ptr @.str.113, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.114, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.115, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 584, i32 2}
!136 = !{ptr @.str.116, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.117, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.118, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 585, i32 2}
!140 = !{ptr @.str.119, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.120, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.121, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 586, i32 2}
!144 = !{ptr @.str.122, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.123, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.124, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 587, i32 2}
!148 = !{ptr @.str.125, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.126, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.127, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 588, i32 2}
!152 = !{ptr @.str.128, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.129, !151, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @tegra210_admaif_cmpnt_dais, !155, !"tegra210_admaif_cmpnt_dais", i1 false, i1 false}
!155 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 578, i32 34}
!156 = !{ptr @tegra_admaif_dai_ops, !157, !"tegra_admaif_dai_ops", i1 false, i1 false}
!157 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 422, i32 37}
!158 = !{ptr @.str.130, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 294, i32 3}
!160 = !{ptr @.str.131, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @tegra_admaif_hw_params._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @tegra_admaif_hw_params._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.132, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 356, i32 14}
!165 = !{ptr @.str.133, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 364, i32 14}
!167 = !{ptr @.str.134, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 380, i32 3}
!169 = !{ptr @.str.135, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.136, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @tegra_admaif_stop._entry, !168, !"_entry", i1 false, i1 false}
!172 = !{ptr @tegra_admaif_stop._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.138, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 391, i32 3}
!175 = !{ptr @tegra_admaif_stop._entry.137, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @tegra_admaif_stop._entry_ptr.139, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @soc_data_tegra186, !178, !"soc_data_tegra186", i1 false, i1 false}
!178 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 721, i32 43}
!179 = !{ptr @tegra186_admaif_cmpnt, !180, !"tegra186_admaif_cmpnt", i1 false, i1 false}
!180 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 701, i32 46}
!181 = !{ptr @.str.180, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 679, i32 2}
!183 = !{ptr @.str.182, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.184, !182, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.186, !182, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.188, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 680, i32 2}
!188 = !{ptr @.str.190, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.192, !187, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.194, !187, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.196, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 681, i32 2}
!193 = !{ptr @.str.198, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.200, !192, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.202, !192, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.204, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 682, i32 2}
!198 = !{ptr @.str.206, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.208, !197, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.210, !197, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.212, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 683, i32 2}
!203 = !{ptr @.str.214, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.216, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.218, !202, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.220, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 684, i32 2}
!208 = !{ptr @.str.222, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.224, !207, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.226, !207, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.228, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 685, i32 2}
!213 = !{ptr @.str.230, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.232, !212, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.234, !212, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.236, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 686, i32 2}
!218 = !{ptr @.str.238, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.240, !217, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.242, !217, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.244, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 687, i32 2}
!223 = !{ptr @.str.246, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.248, !222, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.250, !222, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.252, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 688, i32 2}
!228 = !{ptr @.str.254, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.256, !227, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.258, !227, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @tegra186_admaif_controls, !232, !"tegra186_admaif_controls", i1 false, i1 false}
!232 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 668, i32 32}
!233 = !{ptr @tegra186_admaif_regmap_config, !234, !"tegra186_admaif_regmap_config", i1 false, i1 false}
!234 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 209, i32 35}
!235 = !{ptr @tegra186_admaif_reg_defaults, !236, !"tegra186_admaif_reg_defaults", i1 false, i1 false}
!236 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 42, i32 33}
!237 = !{ptr @.str.260, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 602, i32 2}
!239 = !{ptr @.str.261, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.262, !238, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.263, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 603, i32 2}
!243 = !{ptr @.str.264, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.265, !242, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.266, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 604, i32 2}
!247 = !{ptr @.str.267, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.268, !246, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.269, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 605, i32 2}
!251 = !{ptr @.str.270, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.271, !250, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.272, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 606, i32 2}
!255 = !{ptr @.str.273, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.274, !254, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.275, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 607, i32 2}
!259 = !{ptr @.str.276, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.277, !258, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.278, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 608, i32 2}
!263 = !{ptr @.str.279, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.280, !262, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.281, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 609, i32 2}
!267 = !{ptr @.str.282, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.283, !266, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.284, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 610, i32 2}
!271 = !{ptr @.str.285, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.286, !270, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.287, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 611, i32 2}
!275 = !{ptr @.str.288, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @.str.289, !274, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @tegra186_admaif_cmpnt_dais, !278, !"tegra186_admaif_cmpnt_dais", i1 false, i1 false}
!278 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 591, i32 34}
!279 = !{ptr @tegra_admaif_pm_ops, !280, !"tegra_admaif_pm_ops", i1 false, i1 false}
!280 = !{!"../sound/soc/tegra/tegra210_admaif.c", i32 852, i32 32}
!281 = !{i32 1, !"wchar_size", i32 2}
!282 = !{i32 1, !"min_enum_size", i32 4}
!283 = !{i32 8, !"branch-target-enforcement", i32 0}
!284 = !{i32 8, !"sign-return-address", i32 0}
!285 = !{i32 8, !"sign-return-address-all", i32 0}
!286 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!287 = !{i32 7, !"uwtable", i32 1}
!288 = !{i32 7, !"frame-pointer", i32 2}
!289 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!290 = !{!"auto-init"}
!291 = !{!"branch_weights", i32 1, i32 2000}
!292 = !{i32 0, i32 33}
