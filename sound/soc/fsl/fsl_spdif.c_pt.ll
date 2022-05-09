; ModuleID = '/llk/IR_all_yes/sound/soc/fsl/fsl_spdif.c_pt.bc'
source_filename = "../sound/soc/fsl/fsl_spdif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.reg_default = type { i32, i32 }
%struct.fsl_spdif_soc_data = type { i8, i8, i8, i32, i32, i32, i64 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fsl_spdif_priv = type { ptr, %struct.spdif_mixer_control, %struct.snd_soc_dai_driver, ptr, ptr, i8, [7 x i32], [7 x i8], [7 x i16], [7 x i8], i8, [7 x ptr], ptr, ptr, ptr, ptr, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, i32, i8 }
%struct.spdif_mixer_control = type { %struct.spinlock, [4 x i8], [192 x i8], [24 x i8], i32, i32, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.82, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { %struct.anon.85, [40 x i8] }
%struct.anon.85 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.81, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.81 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.76, [128 x i8] }
%union.anon.76 = type { %union.anon.78 }
%union.anon.78 = type { [64 x i64] }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@__initcall__kmod_snd_soc_fsl_spdif__269_1662_fsl_spdif_driver_init6 = internal global ptr @fsl_spdif_driver_init, section ".initcall6.init", align 4
@fsl_spdif_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_spdif_probe, ptr @fsl_spdif_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_spdif_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_spdif_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_spdif_driver_exit = internal global ptr @fsl_spdif_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author270 = internal constant [55 x i8] c"snd_soc_fsl_spdif.author=Freescale Semiconductor, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description271 = internal constant [62 x i8] c"snd_soc_fsl_spdif.description=Freescale S/PDIF CPU DAI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file272 = internal constant [55 x i8] c"snd_soc_fsl_spdif.file=sound/soc/fsl/snd-soc-fsl-spdif\00", section ".modinfo", align 1
@__UNIQUE_ID_license273 = internal constant [33 x i8] c"snd_soc_fsl_spdif.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias274 = internal constant [47 x i8] c"snd_soc_fsl_spdif.alias=platform:fsl-spdif-dai\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl-spdif-dai\00", [18 x i8] zeroinitializer }, align 32
@fsl_spdif_dt_ids = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx35-spdif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_spdif_imx35 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-spdif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_spdif_vf610 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-spdif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_spdif_imx6sx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qm-spdif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_spdif_imx8qm }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mm-spdif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_spdif_imx8mm }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8ulp-spdif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_spdif_imx8ulp }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@fsl_spdif_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_spdif_runtime_suspend, ptr @fsl_spdif_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@fsl_spdif_dai = internal constant { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @fsl_spdif_dai_probe, ptr null, ptr null, ptr null, ptr @fsl_spdif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.32, i64 64, i32 8168, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.33, i64 68719476804, i32 7904, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@fsl_spdif_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@fsl_spdif_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @fsl_spdif_writeable_reg, ptr @fsl_spdif_readable_reg, ptr @fsl_spdif_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 80, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_spdif_reg_defaults, i32 8, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"fsl_spdif:1446:(&fsl_spdif_regmap_config)->lock\00", [48 x i8] zeroinitializer }, align 32
@fsl_spdif_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1448, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regmap init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl_spdif_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/fsl/fsl_spdif.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_spdif_probe._entry_ptr = internal global ptr @fsl_spdif_probe._entry, section ".printk_index", align 4
@fsl_spdif_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1460, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not claim irq %u\0A\00", [40 x i8] zeroinitializer }, align 32
@fsl_spdif_probe._entry_ptr.9 = internal global ptr @fsl_spdif_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxtx5\00", [26 x i8] zeroinitializer }, align 32
@fsl_spdif_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1468, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no sys clock (rxtx5) in devicetree\0A\00", [60 x i8] zeroinitializer }, align 32
@fsl_spdif_probe._entry_ptr.13 = internal global ptr @fsl_spdif_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@fsl_spdif_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 1475, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no core clock in devicetree\0A\00", [35 x i8] zeroinitializer }, align 32
@fsl_spdif_probe._entry_ptr.17 = internal global ptr @fsl_spdif_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spba\00", [27 x i8] zeroinitializer }, align 32
@fsl_spdif_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 1481, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no spba clock in devicetree\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fsl_spdif_probe._entry_ptr.22 = internal global ptr @fsl_spdif_probe._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxtx1\00", [26 x i8] zeroinitializer }, align 32
@fsl_spdif_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 1486, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no rxtx1 clock in devicetree\0A\00", [34 x i8] zeroinitializer }, align 32
@fsl_spdif_probe._entry_ptr.26 = internal global ptr @fsl_spdif_probe._entry.24, section ".printk_index", align 4
@fsl_spdif_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ctrl->ctl_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imx_pcm_dma_init failed\0A\00", [39 x i8] zeroinitializer }, align 32
@fsl_spdif_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.107, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@fsl_spdif_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 1534, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register DAI: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@fsl_spdif_probe._entry_ptr.31 = internal global ptr @fsl_spdif_probe._entry.29, section ".printk_index", align 4
@fsl_spdif_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_spdif_startup, ptr @fsl_spdif_shutdown, ptr @fsl_spdif_hw_params, ptr null, ptr null, ptr @fsl_spdif_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CPU-Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CPU-Playback\00", [19 x i8] zeroinitializer }, align 32
@fsl_spdif_ctrls = internal global { [9 x %struct.snd_kcontrol_new], [112 x i8] } { [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 7, i32 0, ptr @fsl_spdif_info, ptr @fsl_spdif_pb_get, ptr @fsl_spdif_pb_put, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.35, i32 0, i32 5, i32 0, ptr @fsl_spdif_info, ptr @fsl_spdif_capture_get, ptr null, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.36, i32 0, i32 5, i32 0, ptr @fsl_spdif_info, ptr @fsl_spdif_subcode_get, ptr null, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.37, i32 0, i32 5, i32 0, ptr @fsl_spdif_qinfo, ptr @fsl_spdif_qget, ptr null, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.38, i32 0, i32 5, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @fsl_spdif_rx_vbit_get, ptr null, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.39, i32 0, i32 7, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @fsl_spdif_tx_vbit_get, ptr @fsl_spdif_tx_vbit_put, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.40, i32 0, i32 5, i32 0, ptr @fsl_spdif_rxrate_info, ptr @fsl_spdif_rxrate_get, ptr null, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.41, i32 0, i32 3, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @fsl_spdif_bypass_get, ptr @fsl_spdif_bypass_put, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.42, i32 0, i32 7, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @fsl_spdif_usync_get, ptr @fsl_spdif_usync_put, %union.anon.86 zeroinitializer, i32 0 }], [112 x i8] zeroinitializer }, align 32
@fsl_spdif_ctrls_rcm = internal global { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.53, i32 0, i32 7, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @fsl_spdif_rx_rcm_get, ptr @fsl_spdif_rx_rcm_put, %union.anon.86 zeroinitializer, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Capture Default\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IEC958 Subcode Capture Default\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IEC958 Q-subcode Capture Default\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 RX V-Bit Errors\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IEC958 TX V-Bit\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX Sample Rate\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Bypass Mode\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 USyncMode CDText\00", [40 x i8] zeroinitializer }, align 32
@spdif_write_channel_status.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.44, ptr @.str.4, ptr @.str.45, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_soc_fsl_spdif\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"spdif_write_channel_status\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"STCSCH: 0x%06x\0A\00", [16 x i8] zeroinitializer }, align 32
@spdif_write_channel_status.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.44, ptr @.str.4, ptr @.str.46, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"STCSCL: 0x%06x\0A\00", [16 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@spdif_get_rxclk_rate.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.47, ptr @.str.4, ptr @.str.48, i8 0, i8 -3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spdif_get_rxclk_rate\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FreqMeas: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@spdif_get_rxclk_rate.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.47, ptr @.str.4, ptr @.str.49, i8 0, i8 -3, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BusclkFreq: %lld\0A\00", [46 x i8] zeroinitializer }, align 32
@spdif_get_rxclk_rate.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.47, ptr @.str.4, ptr @.str.50, i8 0, i8 -3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RxRate: %lld\0A\00", [18 x i8] zeroinitializer }, align 32
@fsl_spdif_bypass_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 939, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Cannot change BYPASS mode while stream is running.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl_spdif_bypass_put\00", [43 x i8] zeroinitializer }, align 32
@fsl_spdif_bypass_put._entry_ptr = internal global ptr @fsl_spdif_bypass_put._entry, section ".printk_index", align 4
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Raw Capture Mode\00", [40 x i8] zeroinitializer }, align 32
@fsl_spdif_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 572, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to soft reset\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl_spdif_startup\00", [46 x i8] zeroinitializer }, align 32
@fsl_spdif_startup._entry_ptr = internal global ptr @fsl_spdif_startup._entry, section ".printk_index", align 4
@fsl_spdif_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.4, i32 643, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: set sample rate failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl_spdif_hw_params\00", [44 x i8] zeroinitializer }, align 32
@fsl_spdif_hw_params._entry_ptr = internal global ptr @fsl_spdif_hw_params._entry, section ".printk_index", align 4
@spdif_set_sample_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.4, i32 507, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported sample rate %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spdif_set_sample_rate\00", [42 x i8] zeroinitializer }, align 32
@spdif_set_sample_rate._entry_ptr = internal global ptr @spdif_set_sample_rate._entry, section ".printk_index", align 4
@spdif_set_sample_rate._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.4, i32 513, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tx clock source is out of range\0A\00", [63 x i8] zeroinitializer }, align 32
@spdif_set_sample_rate._entry_ptr.62 = internal global ptr @spdif_set_sample_rate._entry.60, section ".printk_index", align 4
@spdif_set_sample_rate._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.4, i32 519, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"the txclk_df can't be zero\0A\00", [36 x i8] zeroinitializer }, align 32
@spdif_set_sample_rate._entry_ptr.65 = internal global ptr @spdif_set_sample_rate._entry.63, section ".printk_index", align 4
@spdif_set_sample_rate._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.4, i32 532, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set tx clock rate\0A\00", [35 x i8] zeroinitializer }, align 32
@spdif_set_sample_rate._entry_ptr.68 = internal global ptr @spdif_set_sample_rate._entry.66, section ".printk_index", align 4
@spdif_set_sample_rate.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.59, ptr @.str.4, ptr @.str.69, i8 0, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"expected clock rate = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@spdif_set_sample_rate.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.59, ptr @.str.4, ptr @.str.70, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"actual clock rate = %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@spdif_set_sample_rate.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.59, ptr @.str.4, ptr @.str.71, i8 0, i8 -118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"set sample rate to %dHz for %dHz playback\0A\00", [53 x i8] zeroinitializer }, align 32
@fsl_spdif_reg_defaults = internal constant { [8 x %struct.reg_default], [32 x i8] } { [8 x %struct.reg_default] [%struct.reg_default { i32 0, i32 1024 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 80, i32 134912 }], [32 x i8] zeroinitializer }, align 32
@spdif_isr.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.72, ptr @.str.4, ptr @.str.73, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif_isr\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"isr: Tx FIFO under/overrun\0A\00", [36 x i8] zeroinitializer }, align 32
@spdif_isr.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.72, ptr @.str.4, ptr @.str.74, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isr: Tx FIFO resync\0A\00", [43 x i8] zeroinitializer }, align 32
@spdif_isr.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.72, ptr @.str.4, ptr @.str.75, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isr: cstatus new\0A\00", [46 x i8] zeroinitializer }, align 32
@spdif_isr.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.72, ptr @.str.4, ptr @.str.76, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"isr: validity flag no good\0A\00", [36 x i8] zeroinitializer }, align 32
@spdif_isr.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.72, ptr @.str.4, ptr @.str.77, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"isr: receiver found parity bit error\0A\00", [58 x i8] zeroinitializer }, align 32
@spdif_isr.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.72, ptr @.str.4, ptr @.str.78, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"isr: U Channel receive register overrun\0A\00", [55 x i8] zeroinitializer }, align 32
@spdif_isr.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.72, ptr @.str.4, ptr @.str.79, i8 0, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"isr: Q Channel receive register overrun\0A\00", [55 x i8] zeroinitializer }, align 32
@spdif_isr.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.72, ptr @.str.4, ptr @.str.80, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"isr: Rx FIFO under/overrun\0A\00", [36 x i8] zeroinitializer }, align 32
@spdif_isr.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.72, ptr @.str.4, ptr @.str.81, i8 0, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isr: Rx FIFO resync\0A\00", [43 x i8] zeroinitializer }, align 32
@spdif_isr.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.72, ptr @.str.4, ptr @.str.82, i8 0, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isr: Tx FIFO empty\0A\00", [44 x i8] zeroinitializer }, align 32
@spdif_isr.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.72, ptr @.str.4, ptr @.str.83, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isr: Rx FIFO full\0A\00", [45 x i8] zeroinitializer }, align 32
@spdif_irq_dpll_lock.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.84, ptr @.str.4, ptr @.str.85, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spdif_irq_dpll_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isr: Rx dpll %s \0A\00", [46 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"locked\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"loss lock\00", [22 x i8] zeroinitializer }, align 32
@spdif_irq_sym_error.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.88, ptr @.str.4, ptr @.str.89, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spdif_irq_sym_error\00", [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"isr: receiver found illegal symbol\0A\00", [60 x i8] zeroinitializer }, align 32
@spdif_irq_uqrx_full._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.4, i32 256, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported channel name\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spdif_irq_uqrx_full\00", [44 x i8] zeroinitializer }, align 32
@spdif_irq_uqrx_full._entry_ptr = internal global ptr @spdif_irq_uqrx_full._entry, section ".printk_index", align 4
@spdif_irq_uqrx_full.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.91, ptr @.str.4, ptr @.str.92, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"isr: %c Channel receive register full\0A\00", [57 x i8] zeroinitializer }, align 32
@spdif_irq_uqrx_full._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.91, ptr @.str.4, i32 265, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"User bit receive buffer overflow\0A\00", [62 x i8] zeroinitializer }, align 32
@spdif_irq_uqrx_full._entry_ptr.95 = internal global ptr @spdif_irq_uqrx_full._entry.93, section ".printk_index", align 4
@spdif_irq_uq_sync.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.96, ptr @.str.4, ptr @.str.97, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spdif_irq_uq_sync\00", [46 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"isr: U/Q Channel sync found\0A\00", [35 x i8] zeroinitializer }, align 32
@spdif_irq_uq_err.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.98, ptr @.str.4, ptr @.str.99, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spdif_irq_uq_err\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"isr: U/Q Channel framing error\0A\00", [32 x i8] zeroinitializer }, align 32
@fsl_spdif_probe_txclk.rate = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], [36 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rxtx%d\00", [25 x i8] zeroinitializer }, align 32
@fsl_spdif_probe_txclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.4, i32 1386, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no rxtx%d clock in devicetree\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl_spdif_probe_txclk\00", [42 x i8] zeroinitializer }, align 32
@fsl_spdif_probe_txclk._entry_ptr = internal global ptr @fsl_spdif_probe_txclk._entry, section ".printk_index", align 4
@fsl_spdif_probe_txclk.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.102, ptr @.str.4, ptr @.str.103, i8 1, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"use rxtx%d as tx clock source for %dHz sample rate\0A\00", [44 x i8] zeroinitializer }, align 32
@fsl_spdif_probe_txclk.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.102, ptr @.str.4, ptr @.str.104, i8 1, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"use txclk df %d for %dHz sample rate\0A\00", [58 x i8] zeroinitializer }, align 32
@fsl_spdif_probe_txclk.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.102, ptr @.str.4, ptr @.str.105, i8 1, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"use sysclk df %d for %dHz sample rate\0A\00", [57 x i8] zeroinitializer }, align 32
@fsl_spdif_probe_txclk.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.102, ptr @.str.4, ptr @.str.106, i8 1, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"the best rate for %dHz sample rate is %dHz\0A\00", [52 x i8] zeroinitializer }, align 32
@fsl_spdif_txclk_caldiv.rate = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], [36 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsl-spdif\00", [22 x i8] zeroinitializer }, align 32
@fsl_spdif_imx35 = internal global { %struct.fsl_spdif_soc_data, [40 x i8] } { %struct.fsl_spdif_soc_data { i8 1, i8 0, i8 0, i32 1, i32 8, i32 8, i64 68719476804 }, [40 x i8] zeroinitializer }, align 32
@fsl_spdif_vf610 = internal global { %struct.fsl_spdif_soc_data, [40 x i8] } { %struct.fsl_spdif_soc_data { i8 0, i8 0, i8 0, i32 1, i32 8, i32 8, i64 68719476804 }, [40 x i8] zeroinitializer }, align 32
@fsl_spdif_imx6sx = internal global { %struct.fsl_spdif_soc_data, [40 x i8] } { %struct.fsl_spdif_soc_data { i8 1, i8 1, i8 0, i32 1, i32 8, i32 8, i64 68719476804 }, [40 x i8] zeroinitializer }, align 32
@fsl_spdif_imx8qm = internal global { %struct.fsl_spdif_soc_data, [40 x i8] } { %struct.fsl_spdif_soc_data { i8 1, i8 1, i8 0, i32 2, i32 2, i32 2, i64 64 }, [40 x i8] zeroinitializer }, align 32
@fsl_spdif_imx8mm = internal global { %struct.fsl_spdif_soc_data, [40 x i8] } { %struct.fsl_spdif_soc_data { i8 1, i8 0, i8 1, i32 1, i32 8, i32 8, i64 68719476804 }, [40 x i8] zeroinitializer }, align 32
@fsl_spdif_imx8ulp = internal global { %struct.fsl_spdif_soc_data, [40 x i8] } { %struct.fsl_spdif_soc_data { i8 1, i8 1, i8 0, i32 1, i32 2, i32 2, i64 64 }, [40 x i8] zeroinitializer }, align 32
@fsl_spdif_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.4, i32 1585, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable core clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fsl_spdif_runtime_resume\00", [39 x i8] zeroinitializer }, align 32
@fsl_spdif_runtime_resume._entry_ptr = internal global ptr @fsl_spdif_runtime_resume._entry, section ".printk_index", align 4
@fsl_spdif_runtime_resume._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.4, i32 1592, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable spba clock\0A\00", [35 x i8] zeroinitializer }, align 32
@fsl_spdif_runtime_resume._entry_ptr.112 = internal global ptr @fsl_spdif_runtime_resume._entry.110, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.113 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 8, i64 81, i64 85]
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"fsl_spdif_driver\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1652, i32 31 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1654, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"fsl_spdif_dt_ids\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1641, i32 34 }
@___asan_gen_.124 = private unnamed_addr constant [13 x i8] c"fsl_spdif_pm\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1634, i32 32 }
@___asan_gen_.127 = private unnamed_addr constant [14 x i8] c"fsl_spdif_dai\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1198, i32 34 }
@___asan_gen_.130 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [24 x i8] c"fsl_spdif_regmap_config\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1294, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1446, i32 23 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1448, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1460, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1466, i32 48 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1468, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1473, i32 49 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1475, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1479, i32 49 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1481, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1484, i32 47 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1486, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1499, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1527, i32 34 }
@___asan_gen_.211 = private unnamed_addr constant [20 x i8] c"fsl_spdif_component\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1217, i32 46 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1534, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [18 x i8] c"fsl_spdif_dai_ops\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 687, i32 37 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1208, i32 18 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1201, i32 18 }
@___asan_gen_.229 = private unnamed_addr constant [16 x i8] c"fsl_spdif_ctrls\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1078, i32 32 }
@___asan_gen_.232 = private unnamed_addr constant [20 x i8] c"fsl_spdif_ctrls_rcm\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1165, i32 32 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1082, i32 11 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1092, i32 11 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1101, i32 11 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1109, i32 11 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1118, i32 11 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1126, i32 11 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1137, i32 11 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1146, i32 11 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1155, i32 11 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 438, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 443, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1013, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1014, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1015, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 939, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1168, i32 11 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 572, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 642, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 507, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 513, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 519, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 532, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 537, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 539, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 552, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [23 x i8] c"fsl_spdif_reg_defaults\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1222, i32 33 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 337, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 340, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 343, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 346, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 352, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 358, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 364, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 373, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 376, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 383, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 387, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 217, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 229, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 256, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 260, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 265, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 281, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 299, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1373, i32 19 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1383, i32 16 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1386, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1406, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1408, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1411, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1413, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1312, i32 19 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1218, i32 11 }
@___asan_gen_.472 = private unnamed_addr constant [16 x i8] c"fsl_spdif_imx35\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 150, i32 34 }
@___asan_gen_.475 = private unnamed_addr constant [16 x i8] c"fsl_spdif_vf610\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 140, i32 34 }
@___asan_gen_.478 = private unnamed_addr constant [17 x i8] c"fsl_spdif_imx6sx\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 160, i32 34 }
@___asan_gen_.481 = private unnamed_addr constant [17 x i8] c"fsl_spdif_imx8qm\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 171, i32 34 }
@___asan_gen_.484 = private unnamed_addr constant [17 x i8] c"fsl_spdif_imx8mm\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 181, i32 34 }
@___asan_gen_.487 = private unnamed_addr constant [18 x i8] c"fsl_spdif_imx8ulp\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 191, i32 34 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1585, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.502 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.503 = private constant [29 x i8] c"../sound/soc/fsl/fsl_spdif.c\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 1592, i32 4 }
@llvm.compiler.used = appending global [157 x ptr] [ptr @__UNIQUE_ID_alias274, ptr @__UNIQUE_ID_author270, ptr @__UNIQUE_ID_description271, ptr @__UNIQUE_ID_file272, ptr @__UNIQUE_ID_license273, ptr @__exitcall_fsl_spdif_driver_exit, ptr @__initcall__kmod_snd_soc_fsl_spdif__269_1662_fsl_spdif_driver_init6, ptr @fsl_spdif_bypass_put._entry, ptr @fsl_spdif_bypass_put._entry_ptr, ptr @fsl_spdif_driver_exit, ptr @fsl_spdif_hw_params._entry, ptr @fsl_spdif_hw_params._entry_ptr, ptr @fsl_spdif_probe._entry, ptr @fsl_spdif_probe._entry.11, ptr @fsl_spdif_probe._entry.15, ptr @fsl_spdif_probe._entry.19, ptr @fsl_spdif_probe._entry.24, ptr @fsl_spdif_probe._entry.29, ptr @fsl_spdif_probe._entry.7, ptr @fsl_spdif_probe._entry_ptr, ptr @fsl_spdif_probe._entry_ptr.13, ptr @fsl_spdif_probe._entry_ptr.17, ptr @fsl_spdif_probe._entry_ptr.22, ptr @fsl_spdif_probe._entry_ptr.26, ptr @fsl_spdif_probe._entry_ptr.31, ptr @fsl_spdif_probe._entry_ptr.9, ptr @fsl_spdif_probe_txclk._entry, ptr @fsl_spdif_probe_txclk._entry_ptr, ptr @fsl_spdif_runtime_resume._entry, ptr @fsl_spdif_runtime_resume._entry.110, ptr @fsl_spdif_runtime_resume._entry_ptr, ptr @fsl_spdif_runtime_resume._entry_ptr.112, ptr @fsl_spdif_startup._entry, ptr @fsl_spdif_startup._entry_ptr, ptr @spdif_irq_uqrx_full._entry, ptr @spdif_irq_uqrx_full._entry.93, ptr @spdif_irq_uqrx_full._entry_ptr, ptr @spdif_irq_uqrx_full._entry_ptr.95, ptr @spdif_set_sample_rate._entry, ptr @spdif_set_sample_rate._entry.60, ptr @spdif_set_sample_rate._entry.63, ptr @spdif_set_sample_rate._entry.66, ptr @spdif_set_sample_rate._entry_ptr, ptr @spdif_set_sample_rate._entry_ptr.62, ptr @spdif_set_sample_rate._entry_ptr.65, ptr @spdif_set_sample_rate._entry_ptr.68, ptr @fsl_spdif_driver, ptr @.str, ptr @fsl_spdif_dt_ids, ptr @fsl_spdif_pm, ptr @fsl_spdif_dai, ptr @fsl_spdif_probe._key, ptr @fsl_spdif_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @fsl_spdif_probe.__key, ptr @.str.27, ptr @.str.28, ptr @fsl_spdif_component, ptr @.str.30, ptr @fsl_spdif_dai_ops, ptr @.str.32, ptr @.str.33, ptr @fsl_spdif_ctrls, ptr @fsl_spdif_ctrls_rcm, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @fsl_spdif_reg_defaults, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @fsl_spdif_probe_txclk.rate, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @fsl_spdif_txclk_caldiv.rate, ptr @.str.107, ptr @fsl_spdif_imx35, ptr @fsl_spdif_vf610, ptr @fsl_spdif_imx6sx, ptr @fsl_spdif_imx8qm, ptr @fsl_spdif_imx8mm, ptr @fsl_spdif_imx8ulp, ptr @.str.108, ptr @.str.109, ptr @.str.111], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_dt_ids to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_ctrls to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_ctrls_rcm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_bypass_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_set_sample_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_set_sample_rate._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_set_sample_rate._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_set_sample_rate._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_reg_defaults to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_irq_uqrx_full._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_irq_uqrx_full._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_probe_txclk.rate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_probe_txclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_txclk_caldiv.rate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_imx35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_vf610 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_imx6sx to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_imx8qm to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_imx8mm to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_imx8ulp to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spdif_runtime_resume._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_spdif_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_spdif_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_spdif_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #10
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !289
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 648, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev1 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %pdev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pdev1, align 8
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #10
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %call.i, align 8
  %cpu_dai_drv = getelementptr inbounds %struct.fsl_spdif_priv, ptr %call.i, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %cpu_dai_drv, ptr @fsl_spdif_dai, i32 168)
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end.dev_name.exit_crit_edge ]
  %8 = ptrtoint ptr %cpu_dai_drv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %retval.0.i, ptr %cpu_dai_drv, align 8
  %tx_formats = getelementptr inbounds %struct.fsl_spdif_soc_data, ptr %call3, i32 0, i32 6
  %9 = ptrtoint ptr %tx_formats to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tx_formats, align 8
  %formats = getelementptr inbounds %struct.fsl_spdif_priv, ptr %call.i, i32 0, i32 2, i32 11, i32 1
  %11 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %formats, align 8
  %call9 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #10
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %dev_name.exit
  %call15 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call9, ptr noundef nonnull @fsl_spdif_regmap_config, ptr noundef nonnull @fsl_spdif_probe._key, ptr noundef nonnull @.str.1) #10
  %regmap = getelementptr inbounds %struct.fsl_spdif_priv, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call15, ptr %regmap, align 4
  %cmp.i222 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end13
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 8
  %interrupts235 = getelementptr inbounds %struct.fsl_spdif_soc_data, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %interrupts235 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %interrupts235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp236.not = icmp eq i32 %17, 0
  br i1 %cmp236.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #13
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %cleanup

for.cond:                                         ; preds = %dev_name.exit227
  %inc = add nuw i32 %i.0237, 1
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 8
  %interrupts = getelementptr inbounds %struct.fsl_spdif_soc_data, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %interrupts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %interrupts, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0237 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call24 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0237) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %for.body.cleanup_crit_edge, label %if.end27

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %for.body
  %25 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i224 = icmp eq ptr %26, null
  br i1 %tobool.not.i224, label %if.end.i225, label %if.end27.dev_name.exit227_crit_edge

if.end27.dev_name.exit227_crit_edge:              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit227

if.end.i225:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  br label %dev_name.exit227

dev_name.exit227:                                 ; preds = %if.end.i225, %if.end27.dev_name.exit227_crit_edge
  %retval.0.i226 = phi ptr [ %28, %if.end.i225 ], [ %26, %if.end27.dev_name.exit227_crit_edge ]
  %call.i228 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call24, ptr noundef nonnull @spdif_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i226, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228)
  %tobool32.not = icmp eq i32 %call.i228, 0
  br i1 %tobool32.not, label %for.cond, label %do.end36

do.end36:                                         ; preds = %dev_name.exit227
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call24) #13
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call40 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  %sysclk = getelementptr inbounds %struct.fsl_spdif_priv, ptr %call.i, i32 0, i32 14
  %29 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call40, ptr %sysclk, align 4
  %cmp.i229 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i229, label %do.end46, label %if.end50

do.end46:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #13
  %30 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sysclk, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %cleanup

if.end50:                                         ; preds = %for.end
  %call52 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  %coreclk = getelementptr inbounds %struct.fsl_spdif_priv, ptr %call.i, i32 0, i32 13
  %33 = ptrtoint ptr %coreclk to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call52, ptr %coreclk, align 8
  %cmp.i230 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i230, label %do.end58, label %if.end62

do.end58:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #13
  %34 = ptrtoint ptr %coreclk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %coreclk, align 8
  %36 = ptrtoint ptr %35 to i32
  br label %cleanup

if.end62:                                         ; preds = %if.end50
  %call64 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  %spbaclk = getelementptr inbounds %struct.fsl_spdif_priv, ptr %call.i, i32 0, i32 15
  %37 = ptrtoint ptr %spbaclk to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call64, ptr %spbaclk, align 8
  %cmp.i231 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i231, label %do.end70, label %if.end62.if.end72_crit_edge

if.end62.if.end72_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.20) #13
  br label %if.end72

if.end72:                                         ; preds = %do.end70, %if.end62.if.end72_crit_edge
  %call74 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  %rxclk = getelementptr inbounds %struct.fsl_spdif_priv, ptr %call.i, i32 0, i32 12
  %38 = ptrtoint ptr %rxclk to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call74, ptr %rxclk, align 4
  %cmp.i232 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i232, label %do.end80, label %if.end84

do.end80:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #13
  %39 = ptrtoint ptr %rxclk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rxclk, align 4
  %41 = ptrtoint ptr %40 to i32
  br label %cleanup

if.end84:                                         ; preds = %if.end72
  %rxclk_src = getelementptr inbounds %struct.fsl_spdif_priv, ptr %call.i, i32 0, i32 10
  %42 = ptrtoint ptr %rxclk_src to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %rxclk_src, align 1
  %call88 = call fastcc i32 @fsl_spdif_probe_txclk(ptr noundef nonnull %call.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %for.cond85, label %if.end84.cleanup_crit_edge

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond85:                                       ; preds = %if.end84
  %call88.1 = call fastcc i32 @fsl_spdif_probe_txclk(ptr noundef nonnull %call.i, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.1)
  %tobool89.not.1 = icmp eq i32 %call88.1, 0
  br i1 %tobool89.not.1, label %for.cond85.1, label %for.cond85.cleanup_crit_edge

for.cond85.cleanup_crit_edge:                     ; preds = %for.cond85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond85.1:                                     ; preds = %for.cond85
  %call88.2 = call fastcc i32 @fsl_spdif_probe_txclk(ptr noundef nonnull %call.i, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.2)
  %tobool89.not.2 = icmp eq i32 %call88.2, 0
  br i1 %tobool89.not.2, label %for.cond85.2, label %for.cond85.1.cleanup_crit_edge

for.cond85.1.cleanup_crit_edge:                   ; preds = %for.cond85.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond85.2:                                     ; preds = %for.cond85.1
  %call88.3 = call fastcc i32 @fsl_spdif_probe_txclk(ptr noundef nonnull %call.i, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.3)
  %tobool89.not.3 = icmp eq i32 %call88.3, 0
  br i1 %tobool89.not.3, label %for.cond85.3, label %for.cond85.2.cleanup_crit_edge

for.cond85.2.cleanup_crit_edge:                   ; preds = %for.cond85.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond85.3:                                     ; preds = %for.cond85.2
  %call88.4 = call fastcc i32 @fsl_spdif_probe_txclk(ptr noundef nonnull %call.i, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.4)
  %tobool89.not.4 = icmp eq i32 %call88.4, 0
  br i1 %tobool89.not.4, label %for.cond85.4, label %for.cond85.3.cleanup_crit_edge

for.cond85.3.cleanup_crit_edge:                   ; preds = %for.cond85.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond85.4:                                     ; preds = %for.cond85.3
  %call88.5 = call fastcc i32 @fsl_spdif_probe_txclk(ptr noundef nonnull %call.i, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.5)
  %tobool89.not.5 = icmp eq i32 %call88.5, 0
  br i1 %tobool89.not.5, label %for.cond85.5, label %for.cond85.4.cleanup_crit_edge

for.cond85.4.cleanup_crit_edge:                   ; preds = %for.cond85.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond85.5:                                     ; preds = %for.cond85.4
  %call88.6 = call fastcc i32 @fsl_spdif_probe_txclk(ptr noundef nonnull %call.i, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.6)
  %tobool89.not.6 = icmp eq i32 %call88.6, 0
  br i1 %tobool89.not.6, label %for.cond85.6, label %for.cond85.5.cleanup_crit_edge

for.cond85.5.cleanup_crit_edge:                   ; preds = %for.cond85.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond85.6:                                     ; preds = %for.cond85.5
  %fsl_spdif_control = getelementptr inbounds %struct.fsl_spdif_priv, ptr %call.i, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %fsl_spdif_control, ptr noundef nonnull @.str.27, ptr noundef nonnull @fsl_spdif_probe.__key, i16 noundef signext 3) #10
  %ch_status = getelementptr inbounds %struct.fsl_spdif_priv, ptr %call.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %ch_status to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 12, ptr %ch_status, align 4
  %arrayidx100 = getelementptr %struct.fsl_spdif_priv, ptr %call.i, i32 0, i32 1, i32 1, i32 1
  %44 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 2, ptr %arrayidx100, align 1
  %arrayidx102 = getelementptr %struct.fsl_spdif_priv, ptr %call.i, i32 0, i32 1, i32 1, i32 2
  %45 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx102, align 2
  %arrayidx104 = getelementptr %struct.fsl_spdif_priv, ptr %call.i, i32 0, i32 1, i32 1, i32 3
  %46 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %arrayidx104, align 1
  %dpll_locked = getelementptr inbounds %struct.fsl_spdif_priv, ptr %call.i, i32 0, i32 5
  %47 = ptrtoint ptr %dpll_locked to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %dpll_locked, align 8
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 8
  %tx_burst = getelementptr inbounds %struct.fsl_spdif_soc_data, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %tx_burst to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_burst, align 8
  %dma_params_tx = getelementptr inbounds %struct.fsl_spdif_priv, ptr %call.i, i32 0, i32 16
  %maxburst = getelementptr inbounds %struct.fsl_spdif_priv, ptr %call.i, i32 0, i32 16, i32 2
  %52 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %maxburst, align 4
  %rx_burst = getelementptr inbounds %struct.fsl_spdif_soc_data, ptr %49, i32 0, i32 5
  %53 = ptrtoint ptr %rx_burst to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_burst, align 4
  %dma_params_rx = getelementptr inbounds %struct.fsl_spdif_priv, ptr %call.i, i32 0, i32 17
  %maxburst107 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %call.i, i32 0, i32 17, i32 2
  %55 = ptrtoint ptr %maxburst107 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %maxburst107, align 8
  %56 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %res, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %add = add i32 %59, 44
  %60 = ptrtoint ptr %dma_params_tx to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add, ptr %dma_params_tx, align 4
  %61 = load i32, ptr %57, align 4
  %add110 = add i32 %61, 20
  %62 = ptrtoint ptr %dma_params_rx to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add110, ptr %dma_params_rx, align 8
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %63 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %driver_data.i, align 4
  call void @pm_runtime_enable(ptr noundef %dev) #10
  %64 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap, align 4
  call void @regcache_cache_only(ptr noundef %65, i1 noundef zeroext true) #10
  %call116 = call i32 @imx_pcm_dma_init(ptr noundef %pdev, i32 noundef 65536) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end121, label %if.then118

if.then118:                                       ; preds = %for.cond85.6
  call void @__sanitizer_cov_trace_pc() #12
  %call120 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call116, ptr noundef nonnull @.str.28) #10
  br label %err_pm_disable

if.end121:                                        ; preds = %for.cond85.6
  %call124 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @fsl_spdif_component, ptr noundef %cpu_dai_drv, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end121.cleanup_crit_edge, label %do.end129

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end129:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %call124) #13
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %do.end129, %if.then118
  %ret.0 = phi i32 [ %call116, %if.then118 ], [ %call124, %do.end129 ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %if.end121.cleanup_crit_edge, %for.cond85.5.cleanup_crit_edge, %for.cond85.4.cleanup_crit_edge, %for.cond85.3.cleanup_crit_edge, %for.cond85.2.cleanup_crit_edge, %for.cond85.1.cleanup_crit_edge, %for.cond85.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %do.end80, %do.end58, %do.end46, %do.end36, %for.body.cleanup_crit_edge, %do.end, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then11 ], [ %20, %do.end ], [ %call.i228, %do.end36 ], [ %32, %do.end46 ], [ %36, %do.end58 ], [ %41, %do.end80 ], [ %ret.0, %err_pm_disable ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end121.cleanup_crit_edge ], [ %call88, %if.end84.cleanup_crit_edge ], [ %call88.1, %for.cond85.cleanup_crit_edge ], [ %call88.2, %for.cond85.1.cleanup_crit_edge ], [ %call88.3, %for.cond85.2.cleanup_crit_edge ], [ %call88.4, %for.cond85.3.cleanup_crit_edge ], [ %call88.5, %for.cond85.4.cleanup_crit_edge ], [ %call88.6, %for.cond85.5.cleanup_crit_edge ], [ %call24, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
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
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spdif_isr(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  %locked.i330 = alloca i32, align 4
  %val.i322 = alloca i32, align 4
  %locked.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %val2.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %devid, i32 0, i32 3
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %regmap1.i = getelementptr inbounds %struct.fsl_spdif_priv, ptr %devid, i32 0, i32 4
  %2 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !289
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val2.i) #10
  %5 = ptrtoint ptr %val2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val2.i, align 4, !annotation !289
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 16, ptr noundef nonnull %val.i) #10
  %call2.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 12, ptr noundef nonnull %val2.i) #10
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i, align 4
  %8 = ptrtoint ptr %val2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val2.i, align 4
  %and.i = and i32 %9, %7
  %call3.i = call i32 @regmap_write(ptr noundef %3, i32 noundef 16, i32 noundef %and.i) #10
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %and = and i32 %11, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap1.i, align 4
  %14 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %locked.i) #10
  %16 = ptrtoint ptr %locked.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %locked.i, align 4, !annotation !289
  %call.i312 = call i32 @regmap_read(ptr noundef %13, i32 noundef 8, ptr noundef nonnull %locked.i) #10
  %17 = ptrtoint ptr %locked.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %locked.i, align 4
  %and.i313 = and i32 %18, 64
  store i32 %and.i313, ptr %locked.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_irq_dpll_lock.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_isr, %if.then.i)) #10
          to label %spdif_irq_dpll_lock.exit [label %if.then.i], !srcloc !290

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %19 = ptrtoint ptr %locked.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %locked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not.i = icmp eq i32 %20, 0
  %cond.i = select i1 %tobool6.not.i, ptr @.str.87, ptr @.str.86
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_irq_dpll_lock.__UNIQUE_ID_ddebug241, ptr noundef %dev.i, ptr noundef nonnull @.str.85, ptr noundef nonnull %cond.i) #10
  br label %spdif_irq_dpll_lock.exit

spdif_irq_dpll_lock.exit:                         ; preds = %if.then.i, %if.then
  %21 = ptrtoint ptr %locked.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %locked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool7.i = icmp ne i32 %22, 0
  %dpll_locked.i = getelementptr inbounds %struct.fsl_spdif_priv, ptr %devid, i32 0, i32 5
  %frombool10.i = zext i1 %tobool7.i to i8
  %23 = ptrtoint ptr %dpll_locked.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool10.i, ptr %dpll_locked.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %locked.i) #10
  br label %if.end

if.end:                                           ; preds = %spdif_irq_dpll_lock.exit, %entry.if.end_crit_edge
  %and2 = and i32 %11, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %do.body

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_isr.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_isr, %if.then9)) #10
          to label %if.end11 [label %if.then9], !srcloc !290

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_isr.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.73) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %do.body, %if.end.if.end11_crit_edge
  %and12 = and i32 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end32_crit_edge, label %do.body15

if.end11.if.end32_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.body15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_isr.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_isr, %if.then27)) #10
          to label %if.end32 [label %if.then27], !srcloc !290

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  %dev28 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_isr.__UNIQUE_ID_ddebug247, ptr noundef %dev28, ptr noundef nonnull @.str.74) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %do.body15, %if.end11.if.end32_crit_edge
  %and33 = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end53_crit_edge, label %do.body36

if.end32.if.end53_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

do.body36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_isr.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_isr, %if.then48)) #10
          to label %if.end53 [label %if.then48], !srcloc !290

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %dev49 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_isr.__UNIQUE_ID_ddebug248, ptr noundef %dev49, ptr noundef nonnull @.str.75) #10
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %do.body36, %if.end32.if.end53_crit_edge
  %and54 = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end53.if.end74_crit_edge, label %do.body57

if.end53.if.end74_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

do.body57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_isr.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_isr, %if.then69)) #10
          to label %if.end74 [label %if.then69], !srcloc !290

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  %dev70 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_isr.__UNIQUE_ID_ddebug249, ptr noundef %dev70, ptr noundef nonnull @.str.76) #10
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %do.body57, %if.end53.if.end74_crit_edge
  %and75 = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.if.end78_crit_edge, label %if.then77

if.end74.if.end78_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then77:                                        ; preds = %if.end74
  %24 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap1.i, align 4
  %26 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_irq_sym_error.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_isr, %if.then.i317)) #10
          to label %do.end.i [label %if.then.i317], !srcloc !290

if.then.i317:                                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i316 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_irq_sym_error.__UNIQUE_ID_ddebug242, ptr noundef %dev.i316, ptr noundef nonnull @.str.89) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i317, %if.then77
  %dpll_locked.i318 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %devid, i32 0, i32 5
  %28 = ptrtoint ptr %dpll_locked.i318 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dpll_locked.i318, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool5.not.i = icmp eq i8 %29, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %do.end.i.if.end78_crit_edge

do.end.i.if.end78_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then6.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 12, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end78

if.end78:                                         ; preds = %if.then6.i, %do.end.i.if.end78_crit_edge, %if.end74.if.end78_crit_edge
  %and79 = and i32 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.if.end99_crit_edge, label %do.body82

if.end78.if.end99_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

do.body82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_isr.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_isr, %if.then94)) #10
          to label %if.end99 [label %if.then94], !srcloc !290

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #12
  %dev95 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_isr.__UNIQUE_ID_ddebug250, ptr noundef %dev95, ptr noundef nonnull @.str.77) #10
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %do.body82, %if.end78.if.end99_crit_edge
  %and100 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end99.if.end103_crit_edge, label %if.then102

if.end99.if.end103_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @spdif_irq_uqrx_full(ptr noundef %devid, i8 noundef zeroext 85)
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end99.if.end103_crit_edge
  %and104 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end103.if.end124_crit_edge, label %do.body107

if.end103.if.end124_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

do.body107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_isr.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_isr, %if.then119)) #10
          to label %if.end124 [label %if.then119], !srcloc !290

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #12
  %dev120 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_isr.__UNIQUE_ID_ddebug251, ptr noundef %dev120, ptr noundef nonnull @.str.78) #10
  br label %if.end124

if.end124:                                        ; preds = %if.then119, %do.body107, %if.end103.if.end124_crit_edge
  %and125 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.end124.if.end128_crit_edge, label %if.then127

if.end124.if.end128_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then127:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @spdif_irq_uqrx_full(ptr noundef %devid, i8 noundef zeroext 81)
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %if.end124.if.end128_crit_edge
  %and129 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end128.if.end149_crit_edge, label %do.body132

if.end128.if.end149_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

do.body132:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_isr.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_isr, %if.then144)) #10
          to label %if.end149 [label %if.then144], !srcloc !290

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #12
  %dev145 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_isr.__UNIQUE_ID_ddebug252, ptr noundef %dev145, ptr noundef nonnull @.str.79) #10
  br label %if.end149

if.end149:                                        ; preds = %if.then144, %do.body132, %if.end128.if.end149_crit_edge
  %and150 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end149.if.end153_crit_edge, label %if.then152

if.end149.if.end153_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

if.then152:                                       ; preds = %if.end149
  %30 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_irq_uq_sync.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_isr, %if.then.i320)) #10
          to label %do.end.i321 [label %if.then.i320], !srcloc !290

if.then.i320:                                     ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i319 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_irq_uq_sync.__UNIQUE_ID_ddebug244, ptr noundef %dev.i319, ptr noundef nonnull @.str.97) #10
  br label %do.end.i321

do.end.i321:                                      ; preds = %if.then.i320, %if.then152
  %qpos.i = getelementptr inbounds %struct.fsl_spdif_priv, ptr %devid, i32 0, i32 1, i32 5
  %32 = ptrtoint ptr %qpos.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qpos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i = icmp eq i32 %33, 0
  br i1 %cmp.i, label %do.end.i321.if.end153_crit_edge, label %if.end5.i

do.end.i321.if.end153_crit_edge:                  ; preds = %do.end.i321
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

if.end5.i:                                        ; preds = %do.end.i321
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %33, -1
  %div.i = udiv i32 %sub.i, 12
  %add.i = add nuw nsw i32 %div.i, 1
  %ready_buf.i = getelementptr inbounds %struct.fsl_spdif_priv, ptr %devid, i32 0, i32 1, i32 6
  %34 = ptrtoint ptr %ready_buf.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add.i, ptr %ready_buf.i, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.end5.i, %do.end.i321.if.end153_crit_edge, %if.end149.if.end153_crit_edge
  %and154 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end153.if.end157_crit_edge, label %if.then156

if.end153.if.end157_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

if.then156:                                       ; preds = %if.end153
  %35 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap1.i, align 4
  %37 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i322) #10
  %39 = ptrtoint ptr %val.i322 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %val.i322, align 4, !annotation !289
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_irq_uq_err.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_isr, %if.then.i326)) #10
          to label %spdif_irq_uq_err.exit [label %if.then.i326], !srcloc !290

if.then.i326:                                     ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i325 = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_irq_uq_err.__UNIQUE_ID_ddebug245, ptr noundef %dev.i325, ptr noundef nonnull @.str.99) #10
  br label %spdif_irq_uq_err.exit

spdif_irq_uq_err.exit:                            ; preds = %if.then.i326, %if.then156
  %call5.i = call i32 @regmap_read(ptr noundef %36, i32 noundef 36, ptr noundef nonnull %val.i322) #10
  %call6.i = call i32 @regmap_read(ptr noundef %36, i32 noundef 40, ptr noundef nonnull %val.i322) #10
  %ready_buf.i327 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %devid, i32 0, i32 1, i32 6
  %40 = ptrtoint ptr %ready_buf.i327 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %ready_buf.i327, align 4
  %upos.i = getelementptr inbounds %struct.fsl_spdif_priv, ptr %devid, i32 0, i32 1, i32 4
  %41 = ptrtoint ptr %upos.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %upos.i, align 4
  %qpos.i328 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %devid, i32 0, i32 1, i32 5
  %42 = ptrtoint ptr %qpos.i328 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %qpos.i328, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i322) #10
  br label %if.end157

if.end157:                                        ; preds = %spdif_irq_uq_err.exit, %if.end153.if.end157_crit_edge
  %and158 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.end157.if.end178_crit_edge, label %do.body161

if.end157.if.end178_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

do.body161:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_isr.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_isr, %if.then173)) #10
          to label %if.end178 [label %if.then173], !srcloc !290

if.then173:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #12
  %dev174 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_isr.__UNIQUE_ID_ddebug253, ptr noundef %dev174, ptr noundef nonnull @.str.80) #10
  br label %if.end178

if.end178:                                        ; preds = %if.then173, %do.body161, %if.end157.if.end178_crit_edge
  %and179 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %if.end178.if.end199_crit_edge, label %do.body182

if.end178.if.end199_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199

do.body182:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_isr.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_isr, %if.then194)) #10
          to label %if.end199 [label %if.then194], !srcloc !290

if.then194:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #12
  %dev195 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_isr.__UNIQUE_ID_ddebug254, ptr noundef %dev195, ptr noundef nonnull @.str.81) #10
  br label %if.end199

if.end199:                                        ; preds = %if.then194, %do.body182, %if.end178.if.end199_crit_edge
  %and200 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %if.end199.if.end203_crit_edge, label %if.then202

if.end199.if.end203_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end203

if.then202:                                       ; preds = %if.end199
  %43 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap1.i, align 4
  %45 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %locked.i330) #10
  %47 = ptrtoint ptr %locked.i330 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %locked.i330, align 4, !annotation !289
  %call.i333 = call i32 @regmap_read(ptr noundef %44, i32 noundef 8, ptr noundef nonnull %locked.i330) #10
  %48 = ptrtoint ptr %locked.i330 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %locked.i330, align 4
  %and.i334 = and i32 %49, 64
  store i32 %and.i334, ptr %locked.i330, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_irq_dpll_lock.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_isr, %if.then.i338)) #10
          to label %spdif_irq_dpll_lock.exit343 [label %if.then.i338], !srcloc !290

if.then.i338:                                     ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i335 = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  %50 = ptrtoint ptr %locked.i330 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %locked.i330, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool6.not.i336 = icmp eq i32 %51, 0
  %cond.i337 = select i1 %tobool6.not.i336, ptr @.str.87, ptr @.str.86
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_irq_dpll_lock.__UNIQUE_ID_ddebug241, ptr noundef %dev.i335, ptr noundef nonnull @.str.85, ptr noundef nonnull %cond.i337) #10
  br label %spdif_irq_dpll_lock.exit343

spdif_irq_dpll_lock.exit343:                      ; preds = %if.then.i338, %if.then202
  %52 = ptrtoint ptr %locked.i330 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %locked.i330, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool7.i339 = icmp ne i32 %53, 0
  %dpll_locked.i340 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %devid, i32 0, i32 5
  %frombool10.i341 = zext i1 %tobool7.i339 to i8
  %54 = ptrtoint ptr %dpll_locked.i340 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %frombool10.i341, ptr %dpll_locked.i340, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %locked.i330) #10
  br label %if.end203

if.end203:                                        ; preds = %spdif_irq_dpll_lock.exit343, %if.end199.if.end203_crit_edge
  %and204 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  br i1 %tobool205.not, label %if.end203.if.end224_crit_edge, label %do.body207

if.end203.if.end224_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end224

do.body207:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_isr.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_isr, %if.then219)) #10
          to label %if.end224 [label %if.then219], !srcloc !290

if.then219:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #12
  %dev220 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_isr.__UNIQUE_ID_ddebug255, ptr noundef %dev220, ptr noundef nonnull @.str.82) #10
  br label %if.end224

if.end224:                                        ; preds = %if.then219, %do.body207, %if.end203.if.end224_crit_edge
  %and225 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %if.end224.if.end245_crit_edge, label %do.body228

if.end224.if.end245_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end245

do.body228:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_isr.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_isr, %if.then240)) #10
          to label %if.end245 [label %if.then240], !srcloc !290

if.then240:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #12
  %dev241 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_isr.__UNIQUE_ID_ddebug256, ptr noundef %dev241, ptr noundef nonnull @.str.83) #10
  br label %if.end245

if.end245:                                        ; preds = %if.then240, %do.body228, %if.end224.if.end245_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_spdif_probe_txclk(ptr nocapture noundef %spdif_priv, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 3
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  %sysclk.i = getelementptr inbounds %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 14
  %arrayidx.i = getelementptr [7 x i32], ptr @fsl_spdif_txclk_caldiv.rate, i32 0, i32 %index
  %arrayidx486.i = getelementptr %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 7, i32 %index
  %arrayidx488.i = getelementptr %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 8, i32 %index
  %arrayidx490.i = getelementptr %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 6, i32 %index
  %arrayidx = getelementptr %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 11, i32 %index
  %arrayidx17 = getelementptr %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 9, i32 %index
  %2 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %savesub.0161 = phi i64 [ 100000, %entry ], [ %savesub.1, %for.inc.for.body_crit_edge ]
  %i.0159 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.100, i32 noundef %i.0159)
  %call4 = call ptr @devm_clk_get(ptr noundef %dev2, ptr noundef nonnull %tmp) #10
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.101, i32 noundef %i.0159) #13
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call7 = call i32 @clk_get_rate(ptr noundef %call4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.end9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0159)
  %cmp.i150 = icmp eq i32 %i.0159, 1
  br i1 %cmp.i150, label %land.rhs.i, label %if.end9.fsl_spdif_can_set_clk_rate.exit_crit_edge

if.end9.fsl_spdif_can_set_clk_rate.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_spdif_can_set_clk_rate.exit

land.rhs.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %spdif_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spdif_priv, align 8
  %shared_root_clock.i = getelementptr inbounds %struct.fsl_spdif_soc_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %shared_root_clock.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shared_root_clock.i, align 1, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br label %fsl_spdif_can_set_clk_rate.exit

fsl_spdif_can_set_clk_rate.exit:                  ; preds = %land.rhs.i, %if.end9.fsl_spdif_can_set_clk_rate.exit_crit_edge
  %8 = phi i1 [ false, %if.end9.fsl_spdif_can_set_clk_rate.exit_crit_edge ], [ %tobool.not.i, %land.rhs.i ]
  %9 = ptrtoint ptr %sysclk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sysclk.i, align 4
  %call.i = call zeroext i1 @clk_is_match(ptr noundef %call4, ptr noundef %10) #10
  %conv7.i = select i1 %call.i, i32 512, i32 1
  %conv6797.i = select i1 %call.i, i32 2, i32 1
  %umax = call i32 @llvm.umax.i32(i32 %conv6797.i, i32 %conv7.i)
  br label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %for.inc494.i.for.cond9.preheader.i_crit_edge, %fsl_spdif_can_set_clk_rate.exit
  %indvars.iv804.i = phi i32 [ %conv6797.i, %fsl_spdif_can_set_clk_rate.exit ], [ %indvars.iv.next805.i, %for.inc494.i.for.cond9.preheader.i_crit_edge ]
  %savesub.addr.0799.i = phi i64 [ %savesub.0161, %fsl_spdif_can_set_clk_rate.exit ], [ %savesub.addr.2.i, %for.inc494.i.for.cond9.preheader.i_crit_edge ]
  %.sink.i = trunc i32 %indvars.iv804.i to i16
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.inc.i.for.body13.i_crit_edge, %for.cond9.preheader.i
  %indvars.iv.i = phi i32 [ 1, %for.cond9.preheader.i ], [ %indvars.iv.next.i, %for.inc.i.for.body13.i_crit_edge ]
  %savesub.addr.1794.i = phi i64 [ %savesub.addr.0799.i, %for.cond9.preheader.i ], [ %savesub.addr.2.i, %for.inc.i.for.body13.i_crit_edge ]
  br i1 %8, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %mul.i = shl nuw nsw i32 %indvars.iv.i, 6
  %mul16.i = mul i32 %mul.i, %12
  %call19.i = call i32 @clk_round_rate(ptr noundef %call4, i32 noundef %mul16.i) #10
  %extract.t711.i = ashr i32 %call19.i, 6
  br label %if.end.i

if.else.i:                                        ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i = call i32 @clk_get_rate(ptr noundef %call4) #10
  %13 = lshr i32 %call21.i, 6
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.i = load i32, ptr %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %15 = phi i32 [ %.pr.i, %if.else.i ], [ %12, %if.then.i ]
  %rate_actual.0.off6.i = phi i32 [ %13, %if.else.i ], [ %extract.t711.i, %if.then.i ]
  %mul26.i = mul nuw nsw i32 %indvars.iv.i, %indvars.iv804.i
  %div27.i = udiv i32 %rate_actual.0.off6.i, %mul26.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div27.i, i32 %15)
  %cmp29.i = icmp eq i32 %div27.i, %15
  br i1 %cmp29.i, label %fsl_spdif_txclk_caldiv.exit.thread, label %if.else37.i

if.else37.i:                                      ; preds = %if.end.i
  %div39.i = udiv i32 %div27.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div39.i)
  %cmp40.i = icmp eq i32 %div39.i, 1
  br i1 %cmp40.i, label %if.then42.i, label %if.else249.i

if.then42.i:                                      ; preds = %if.else37.i
  %sub44.i = sub i32 %div27.i, %15
  %conv45.i = zext i32 %sub44.i to i64
  %mul46.i = mul nuw nsw i64 %conv45.i, 100000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul46.i)
  %cmp223.i = icmp ult i64 %mul46.i, 4294967296
  br i1 %cmp223.i, label %if.then227.i, label %if.else233.i, !prof !292

if.then227.i:                                     ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv228.i = trunc i64 %mul46.i to i32
  %div231.i = udiv i32 %conv228.i, %15
  %conv232.i = zext i32 %div231.i to i64
  br label %if.end237.i

if.else233.i:                                     ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %mul46.i) #14, !srcloc !293
  %asmresult1.i.i = extractvalue { i64, i64 } %16, 1
  br label %if.end237.i

if.end237.i:                                      ; preds = %if.else233.i, %if.then227.i
  %sub.0.i = phi i64 [ %conv232.i, %if.then227.i ], [ %asmresult1.i.i, %if.else233.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.0.i, i64 %savesub.addr.1794.i)
  %cmp239.not.i = icmp ult i64 %sub.0.i, %savesub.addr.1794.i
  br i1 %cmp239.not.i, label %if.end237.i.for.inc.sink.split.i_crit_edge, label %if.end237.i.for.inc.i_crit_edge

if.end237.i.for.inc.i_crit_edge:                  ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end237.i.for.inc.sink.split.i_crit_edge:       ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.i

if.else249.i:                                     ; preds = %if.else37.i
  %div251.i = udiv i32 %15, %div27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div251.i)
  %cmp252.i = icmp eq i32 %div251.i, 1
  br i1 %cmp252.i, label %if.then254.i, label %if.else249.i.for.inc.i_crit_edge

if.else249.i.for.inc.i_crit_edge:                 ; preds = %if.else249.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then254.i:                                     ; preds = %if.else249.i
  %sub256.i = sub i32 %15, %div27.i
  %conv257.i = zext i32 %sub256.i to i64
  %mul258.i = mul nuw nsw i64 %conv257.i, 100000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul258.i)
  %cmp461.i = icmp ult i64 %mul258.i, 4294967296
  br i1 %cmp461.i, label %if.then469.i, label %if.else475.i, !prof !292

if.then469.i:                                     ; preds = %if.then254.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv470.i = trunc i64 %mul258.i to i32
  %div473.i = udiv i32 %conv470.i, %15
  %conv474.i = zext i32 %div473.i to i64
  br label %if.end479.i

if.else475.i:                                     ; preds = %if.then254.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %mul258.i) #14, !srcloc !293
  %asmresult1.i741.i = extractvalue { i64, i64 } %17, 1
  br label %if.end479.i

if.end479.i:                                      ; preds = %if.else475.i, %if.then469.i
  %sub.1.i = phi i64 [ %conv474.i, %if.then469.i ], [ %asmresult1.i741.i, %if.else475.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.1.i, i64 %savesub.addr.1794.i)
  %cmp481.not.i = icmp ult i64 %sub.1.i, %savesub.addr.1794.i
  br i1 %cmp481.not.i, label %if.end479.i.for.inc.sink.split.i_crit_edge, label %if.end479.i.for.inc.i_crit_edge

if.end479.i.for.inc.i_crit_edge:                  ; preds = %if.end479.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end479.i.for.inc.sink.split.i_crit_edge:       ; preds = %if.end479.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.end479.i.for.inc.sink.split.i_crit_edge, %if.end237.i.for.inc.sink.split.i_crit_edge
  %savesub.addr.2.ph.i = phi i64 [ %sub.0.i, %if.end237.i.for.inc.sink.split.i_crit_edge ], [ %sub.1.i, %if.end479.i.for.inc.sink.split.i_crit_edge ]
  %18 = trunc i32 %indvars.iv.i to i8
  %19 = ptrtoint ptr %arrayidx486.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx486.i, align 1
  %20 = ptrtoint ptr %arrayidx488.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %.sink.i, ptr %arrayidx488.i, align 2
  %21 = ptrtoint ptr %arrayidx490.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div27.i, ptr %arrayidx490.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.end479.i.for.inc.i_crit_edge, %if.else249.i.for.inc.i_crit_edge, %if.end237.i.for.inc.i_crit_edge
  %savesub.addr.2.i = phi i64 [ %savesub.addr.1794.i, %if.end237.i.for.inc.i_crit_edge ], [ %savesub.addr.1794.i, %if.end479.i.for.inc.i_crit_edge ], [ %savesub.addr.1794.i, %if.else249.i.for.inc.i_crit_edge ], [ %savesub.addr.2.ph.i, %for.inc.sink.split.i ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 129
  br i1 %exitcond.not.i, label %for.inc494.i, label %for.inc.i.for.body13.i_crit_edge

for.inc.i.for.body13.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13.i

for.inc494.i:                                     ; preds = %for.inc.i
  %indvars.iv.next805.i = add nuw nsw i32 %indvars.iv804.i, 1
  %exitcond.not = icmp eq i32 %indvars.iv804.i, %umax
  br i1 %exitcond.not, label %fsl_spdif_txclk_caldiv.exit, label %for.inc494.i.for.cond9.preheader.i_crit_edge

for.inc494.i.for.cond9.preheader.i_crit_edge:     ; preds = %for.inc494.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond9.preheader.i

fsl_spdif_txclk_caldiv.exit:                      ; preds = %for.inc494.i
  %conv = and i64 %savesub.addr.2.i, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %savesub.0161, i64 %conv)
  %cmp12 = icmp eq i64 %savesub.0161, %conv
  br i1 %cmp12, label %fsl_spdif_txclk_caldiv.exit.for.inc_crit_edge, label %if.end15

fsl_spdif_txclk_caldiv.exit.for.inc_crit_edge:    ; preds = %fsl_spdif_txclk_caldiv.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

fsl_spdif_txclk_caldiv.exit.thread:               ; preds = %if.end.i
  %.sink.i.le = trunc i32 %indvars.iv804.i to i16
  %22 = trunc i32 %indvars.iv.i to i8
  %23 = ptrtoint ptr %arrayidx486.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx486.i, align 1
  %24 = ptrtoint ptr %arrayidx488.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %.sink.i.le, ptr %arrayidx488.i, align 2
  %25 = ptrtoint ptr %arrayidx490.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %15, ptr %arrayidx490.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %savesub.0161)
  %cmp12170 = icmp eq i64 %savesub.0161, 0
  br i1 %cmp12170, label %fsl_spdif_txclk_caldiv.exit.thread.for.inc_crit_edge, label %if.end15.thread

fsl_spdif_txclk_caldiv.exit.thread.for.inc_crit_edge: ; preds = %fsl_spdif_txclk_caldiv.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end15.thread:                                  ; preds = %fsl_spdif_txclk_caldiv.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call4, ptr %arrayidx, align 4
  %conv16175 = trunc i32 %i.0159 to i8
  %27 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv16175, ptr %arrayidx17, align 1
  br label %do.body22

if.end15:                                         ; preds = %fsl_spdif_txclk_caldiv.exit
  %extract.t.le.i = trunc i64 %savesub.addr.2.i to i32
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call4, ptr %arrayidx, align 4
  %conv16 = trunc i32 %i.0159 to i8
  %29 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv16, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %extract.t.le.i)
  %cmp18 = icmp ult i32 %extract.t.le.i, 100
  br i1 %cmp18, label %if.end15.do.body22_crit_edge, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end15.do.body22_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body22

for.inc:                                          ; preds = %if.end15.for.inc_crit_edge, %fsl_spdif_txclk_caldiv.exit.thread.for.inc_crit_edge, %fsl_spdif_txclk_caldiv.exit.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %savesub.1 = phi i64 [ %savesub.0161, %fsl_spdif_txclk_caldiv.exit.for.inc_crit_edge ], [ %conv, %if.end15.for.inc_crit_edge ], [ %savesub.0161, %if.end.for.inc_crit_edge ], [ 0, %fsl_spdif_txclk_caldiv.exit.thread.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0159, 1
  %exitcond167.not = icmp eq i32 %inc, 8
  br i1 %exitcond167.not, label %for.inc.do.body22_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.body22_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body22

do.body22:                                        ; preds = %for.inc.do.body22_crit_edge, %if.end15.do.body22_crit_edge, %if.end15.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_spdif_probe_txclk.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_spdif_probe_txclk, %if.then28)) #10
          to label %do.body36 [label %if.then28], !srcloc !290

if.then28:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx17, align 1
  %conv31 = zext i8 %31 to i32
  %arrayidx32 = getelementptr [7 x i32], ptr @fsl_spdif_probe_txclk.rate, i32 0, i32 %index
  %32 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx32, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_spdif_probe_txclk.__UNIQUE_ID_ddebug265, ptr noundef %dev2, ptr noundef nonnull @.str.103, i32 noundef %conv31, i32 noundef %33) #10
  br label %do.body36

do.body36:                                        ; preds = %if.then28, %do.body22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_spdif_probe_txclk.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_spdif_probe_txclk, %if.then48)) #10
          to label %do.end54 [label %if.then48], !srcloc !290

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %arrayidx486.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx486.i, align 1
  %conv50 = zext i8 %35 to i32
  %arrayidx51 = getelementptr [7 x i32], ptr @fsl_spdif_probe_txclk.rate, i32 0, i32 %index
  %36 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx51, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_spdif_probe_txclk.__UNIQUE_ID_ddebug266, ptr noundef %dev2, ptr noundef nonnull @.str.104, i32 noundef %conv50, i32 noundef %37) #10
  br label %do.end54

do.end54:                                         ; preds = %if.then48, %do.body36
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %40 = ptrtoint ptr %sysclk.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sysclk.i, align 4
  %call57 = call zeroext i1 @clk_is_match(ptr noundef %39, ptr noundef %41) #10
  br i1 %call57, label %do.body59, label %do.end54.do.body79_crit_edge

do.end54.do.body79_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body79

do.body59:                                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_spdif_probe_txclk.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_spdif_probe_txclk, %if.then71)) #10
          to label %do.body79 [label %if.then71], !srcloc !290

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %arrayidx488.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx488.i, align 2
  %conv73 = zext i16 %43 to i32
  %arrayidx74 = getelementptr [7 x i32], ptr @fsl_spdif_probe_txclk.rate, i32 0, i32 %index
  %44 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx74, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_spdif_probe_txclk.__UNIQUE_ID_ddebug267, ptr noundef %dev2, ptr noundef nonnull @.str.105, i32 noundef %conv73, i32 noundef %45) #10
  br label %do.body79

do.body79:                                        ; preds = %if.then71, %do.body59, %do.end54.do.body79_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_spdif_probe_txclk.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_spdif_probe_txclk, %if.then91)) #10
          to label %cleanup [label %if.then91], !srcloc !290

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx92 = getelementptr [7 x i32], ptr @fsl_spdif_probe_txclk.rate, i32 0, i32 %index
  %46 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx92, align 4
  %48 = ptrtoint ptr %arrayidx490.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx490.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_spdif_probe_txclk.__UNIQUE_ID_ddebug268, ptr noundef %dev2, ptr noundef nonnull @.str.106, i32 noundef %47, i32 noundef %49) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %do.body79, %do.end
  %retval.0 = phi i32 [ %3, %do.end ], [ 0, %if.then91 ], [ 0, %do.body79 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_pcm_dma_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_dai_probe(ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dma_params_tx = getelementptr inbounds %struct.fsl_spdif_priv, ptr %3, i32 0, i32 16
  %dma_params_rx = getelementptr inbounds %struct.fsl_spdif_priv, ptr %3, i32 0, i32 17
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dma_params_tx, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %5 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dma_params_rx, ptr %capture_dma_data.i, align 4
  %call1 = tail call i32 @snd_soc_add_dai_controls(ptr noundef %dai, ptr noundef nonnull @fsl_spdif_ctrls, i32 noundef 9) #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %raw_capture_mode = getelementptr inbounds %struct.fsl_spdif_soc_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %raw_capture_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %raw_capture_mode, align 2, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @snd_soc_add_dai_controls(ptr noundef %dai, ptr noundef nonnull @fsl_spdif_ctrls_rcm, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regmap = getelementptr inbounds %struct.fsl_spdif_priv, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_dai_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fsl_spdif_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_spdif_pb_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uvalue) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %ch_status = getelementptr inbounds %struct.fsl_spdif_priv, ptr %5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %ch_status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ch_status, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uvalue, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %value, align 8
  %arrayidx3 = getelementptr %struct.fsl_spdif_priv, ptr %5, i32 0, i32 1, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx3, align 1
  %arrayidx6 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr %struct.fsl_spdif_priv, ptr %5, i32 0, i32 1, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx8, align 2
  %arrayidx11 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx11, align 2
  %arrayidx13 = getelementptr %struct.fsl_spdif_priv, ptr %5, i32 0, i32 1, i32 1, i32 3
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx13, align 1
  %arrayidx16 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx16, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_pb_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %uvalue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uvalue, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %value, align 8
  %ch_status = getelementptr inbounds %struct.fsl_spdif_priv, ptr %5, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %ch_status to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %ch_status, align 4
  %arrayidx4 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr %struct.fsl_spdif_priv, ptr %5, i32 0, i32 1, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx6, align 1
  %arrayidx9 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9, align 2
  %arrayidx11 = getelementptr %struct.fsl_spdif_priv, ptr %5, i32 0, i32 1, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx11, align 2
  %arrayidx14 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx14, align 1
  %arrayidx16 = getelementptr %struct.fsl_spdif_priv, ptr %5, i32 0, i32 1, i32 1, i32 3
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx16, align 1
  tail call fastcc void @spdif_write_channel_status(ptr noundef %5)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_capture_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %cstatus = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regmap1 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cstatus) #10
  %8 = ptrtoint ptr %cstatus to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %cstatus, align 4, !annotation !289
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val, align 4, !annotation !289
  %call2 = call i32 @regmap_read(ptr noundef %7, i32 noundef 16, ptr noundef nonnull %val) #10
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %and = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = call i32 @regmap_read(ptr noundef %7, i32 noundef 28, ptr noundef nonnull %cstatus) #10
  %12 = ptrtoint ptr %cstatus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cstatus, align 4
  %shr = lshr i32 %13, 16
  %conv = trunc i32 %shr to i8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %value, align 8
  %shr5 = lshr i32 %13, 8
  %conv7 = trunc i32 %shr5 to i8
  %arrayidx10 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv7, ptr %arrayidx10, align 1
  %conv12 = trunc i32 %13 to i8
  %arrayidx15 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv12, ptr %arrayidx15, align 2
  %call16 = call i32 @regmap_read(ptr noundef %7, i32 noundef 32, ptr noundef nonnull %cstatus) #10
  %17 = ptrtoint ptr %cstatus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cstatus, align 4
  %shr17 = lshr i32 %18, 16
  %conv19 = trunc i32 %shr17 to i8
  %arrayidx22 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv19, ptr %arrayidx22, align 1
  %shr23 = lshr i32 %18, 8
  %conv25 = trunc i32 %shr23 to i8
  %arrayidx28 = getelementptr [24 x i8], ptr %value, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv25, ptr %arrayidx28, align 4
  %conv30 = trunc i32 %18 to i8
  %arrayidx33 = getelementptr [24 x i8], ptr %value, i32 0, i32 5
  %21 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv30, ptr %arrayidx33, align 1
  %call34 = call i32 @regmap_write(ptr noundef %7, i32 noundef 16, i32 noundef 131072) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -11, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cstatus) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_subcode_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %fsl_spdif_control = getelementptr inbounds %struct.fsl_spdif_priv, ptr %5, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fsl_spdif_control) #10
  %ready_buf = getelementptr inbounds %struct.fsl_spdif_priv, ptr %5, i32 0, i32 1, i32 6
  %6 = ptrtoint ptr %ready_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ready_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = mul i32 %7, 96
  %mul = add i32 %8, -96
  %subcode = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 3
  %arrayidx8 = getelementptr %struct.fsl_spdif_priv, ptr %5, i32 0, i32 1, i32 2, i32 %mul
  %9 = call ptr @memcpy(ptr %subcode, ptr %arrayidx8, i32 96)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ -11, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fsl_spdif_control, i32 noundef %call3) #10
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fsl_spdif_qinfo(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 12, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_qget(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %fsl_spdif_control = getelementptr inbounds %struct.fsl_spdif_priv, ptr %5, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fsl_spdif_control) #10
  %ready_buf = getelementptr inbounds %struct.fsl_spdif_priv, ptr %5, i32 0, i32 1, i32 6
  %6 = ptrtoint ptr %ready_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ready_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = mul i32 %7, 12
  %mul = add i32 %8, -12
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx7 = getelementptr %struct.fsl_spdif_priv, ptr %5, i32 0, i32 1, i32 3, i32 %mul
  %9 = call ptr @memcpy(ptr %value, ptr %arrayidx7, i32 12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ -11, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fsl_spdif_control, i32 noundef %call3) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_rx_vbit_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regmap1 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val, align 4, !annotation !289
  %call2 = call i32 @regmap_read(ptr noundef %7, i32 noundef 16, ptr noundef nonnull %val) #10
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and = lshr i32 %10, 16
  %and.lobit = and i32 %and, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.lobit, ptr %value, align 8
  %call3 = call i32 @regmap_write(ptr noundef %7, i32 noundef 16, i32 noundef 65536) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_tx_vbit_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regmap1 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val, align 4, !annotation !289
  %call2 = call i32 @regmap_read(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %val) #10
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = shl i32 %10, 26
  %12 = ashr i32 %11, 31
  %sub = add nsw i32 %12, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %value, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_tx_vbit_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regmap1 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap1, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %.neg = mul i32 %9, -32
  %shl = add i32 %.neg, 32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 32, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fsl_spdif_rxrate_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16000, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 192000, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_rxrate_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %dpll_locked = getelementptr inbounds %struct.fsl_spdif_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dpll_locked to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dpll_locked, align 8, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc i32 @spdif_get_rxclk_rate(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rate.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rate.0, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_spdif_bypass_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %bypass = getelementptr inbounds %struct.fsl_spdif_priv, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %bypass to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bypass, align 8, !range !291
  %8 = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_bypass_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %component, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card1, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp ne i32 %11, 0
  %frombool = zext i1 %cmp to i8
  %regmap2 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap2, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 24
  %14 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dai_link, align 4
  %call3 = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %9, ptr noundef %15) #10
  %bypass = getelementptr inbounds %struct.fsl_spdif_priv, ptr %5, i32 0, i32 19
  %16 = ptrtoint ptr %bypass to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bypass, align 8, !range !291
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %frombool)
  %cmp6 = icmp eq i8 %17, %frombool
  br i1 %cmp6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call i32 @snd_soc_dai_active(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  br i1 %tobool9.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.51) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %19, i32 noundef 4) #10
  br i1 %cmp, label %if.then15, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call.i52 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 12, i32 noundef 16777215, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end11.if.end17_crit_edge
  %scr.0 = phi i32 [ 4194308, %if.then15 ], [ 8192, %if.end11.if.end17_crit_edge ]
  %mask.0 = phi i32 [ 14426140, %if.then15 ], [ 8220, %if.end11.if.end17_crit_edge ]
  %call.i53 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef %mask.0, i32 noundef %scr.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %not.cmp = xor i1 %cmp, true
  %cond = zext i1 %not.cmp to i32
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call3, i32 0, i32 7
  %20 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcm, align 4
  %substream_count = getelementptr %struct.snd_pcm, ptr %21, i32 0, i32 8, i32 0, i32 2
  %22 = ptrtoint ptr %substream_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond, ptr %substream_count, align 8
  %23 = load ptr, ptr %pcm, align 4
  %substream_count.1 = getelementptr %struct.snd_pcm, ptr %23, i32 0, i32 8, i32 1, i32 2
  %24 = ptrtoint ptr %substream_count.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond, ptr %substream_count.1, align 8
  %25 = ptrtoint ptr %bypass to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %bypass, align 8
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %call.i54 = tail call i32 @__pm_runtime_idle(ptr noundef %27, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end17 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_usync_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regmap1 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val, align 4, !annotation !289
  %call2 = call i32 @regmap_read(ptr noundef %7, i32 noundef 4, ptr noundef nonnull %val) #10
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and = lshr i32 %10, 1
  %and.lobit = and i32 %and, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.lobit, ptr %value, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_usync_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regmap1 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap1, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %shl = shl i32 %9, 1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 4, i32 noundef 2, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spdif_write_channel_status(ptr nocapture noundef readonly %spdif_priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 4
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %pdev2 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 3
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 8
  %ch_status3 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ch_status3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ch_status3, align 4
  %idxprom.i = zext i8 %5 to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %cond = zext i8 %7 to i32
  %shl24 = shl nuw nsw i32 %cond, 16
  %arrayidx27 = getelementptr %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx27, align 1
  %idxprom.i205 = zext i8 %9 to i32
  %arrayidx.i206 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i205
  %10 = ptrtoint ptr %arrayidx.i206 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i206, align 1
  %cond59 = zext i8 %11 to i32
  %shl60 = shl nuw nsw i32 %cond59, 8
  %or61 = or i32 %shl60, %shl24
  %arrayidx64 = getelementptr %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 1, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx64, align 2
  %idxprom.i207 = zext i8 %13 to i32
  %arrayidx.i208 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i207
  %14 = ptrtoint ptr %arrayidx.i208 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i208, align 1
  %cond96 = zext i8 %15 to i32
  %or97 = or i32 %or61, %cond96
  %call98 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 52, i32 noundef %or97) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_write_channel_status.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_write_channel_status, %if.then)) #10
          to label %cond.end136 [label %if.then], !srcloc !290

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_write_channel_status.__UNIQUE_ID_ddebug257, ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %or97) #10
  br label %cond.end136

cond.end136:                                      ; preds = %if.then, %entry
  %arrayidx105 = getelementptr %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 1, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx105, align 1
  %idxprom.i209 = zext i8 %17 to i32
  %arrayidx.i210 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i209
  %18 = ptrtoint ptr %arrayidx.i210 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i210, align 1
  %cond137 = zext i8 %19 to i32
  %shl138 = shl nuw nsw i32 %cond137, 16
  %call139 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 56, i32 noundef %shl138) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_write_channel_status.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_write_channel_status, %if.then152)) #10
          to label %do.end156 [label %if.then152], !srcloc !290

if.then152:                                       ; preds = %cond.end136
  call void @__sanitizer_cov_trace_pc() #12
  %dev153 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_write_channel_status.__UNIQUE_ID_ddebug258, ptr noundef %dev153, ptr noundef nonnull @.str.46, i32 noundef %shl138) #10
  br label %do.end156

do.end156:                                        ; preds = %if.then152, %cond.end136
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spdif_get_rxclk_rate(ptr nocapture noundef readonly %spdif_priv) unnamed_addr #2 align 64 {
entry:
  %freqmeas = alloca i32, align 4
  %phaseconf = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 4
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %pdev2 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 3
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freqmeas) #10
  %4 = ptrtoint ptr %freqmeas to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %freqmeas, align 4, !annotation !289
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phaseconf) #10
  %5 = ptrtoint ptr %phaseconf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %phaseconf, align 4, !annotation !289
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 68, ptr noundef nonnull %freqmeas) #10
  %call3 = call i32 @regmap_read(ptr noundef %1, i32 noundef 8, ptr noundef nonnull %phaseconf) #10
  %6 = ptrtoint ptr %phaseconf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phaseconf, align 4
  %8 = and i32 %7, 1920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %and5 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = or i1 %tobool.not, %tobool6.not
  br i1 %or.cond, label %entry.if.end420_crit_edge, label %if.then

entry.if.end420_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sysclk = getelementptr inbounds %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 14
  %9 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sysclk, align 4
  %call7 = call i32 @clk_get_rate(ptr noundef %10) #10
  %conv8 = zext i32 %call7 to i64
  br label %if.end420

if.end420:                                        ; preds = %if.then, %entry.if.end420_crit_edge
  %busclk_freq.0 = phi i64 [ %conv8, %if.then ], [ 0, %entry.if.end420_crit_edge ]
  %11 = ptrtoint ptr %freqmeas to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %freqmeas, align 4
  %conv9 = zext i32 %12 to i64
  %mul = mul nuw i64 %busclk_freq.0, %conv9
  %shr27 = lshr i64 %mul, 30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_get_rxclk_rate.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_get_rxclk_rate, %if.then431)) #10
          to label %do.body433 [label %if.then431], !srcloc !290

if.then431:                                       ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %freqmeas to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %freqmeas, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_get_rxclk_rate.__UNIQUE_ID_ddebug262, ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef %14) #10
  br label %do.body433

do.body433:                                       ; preds = %if.then431, %if.end420
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_get_rxclk_rate.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_get_rxclk_rate, %if.then445)) #10
          to label %do.body450 [label %if.then445], !srcloc !290

if.then445:                                       ; preds = %do.body433
  call void @__sanitizer_cov_trace_pc() #12
  %dev446 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_get_rxclk_rate.__UNIQUE_ID_ddebug263, ptr noundef %dev446, ptr noundef nonnull @.str.49, i64 noundef %busclk_freq.0) #10
  br label %do.body450

do.body450:                                       ; preds = %if.then445, %do.body433
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_get_rxclk_rate.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_get_rxclk_rate, %if.then462)) #10
          to label %do.end466 [label %if.then462], !srcloc !290

if.then462:                                       ; preds = %do.body450
  call void @__sanitizer_cov_trace_pc() #12
  %dev463 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_get_rxclk_rate.__UNIQUE_ID_ddebug264, ptr noundef %dev463, ptr noundef nonnull @.str.50, i64 noundef %shr27) #10
  br label %do.end466

do.end466:                                        ; preds = %if.then462, %do.body450
  %conv467 = trunc i64 %shr27 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phaseconf) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freqmeas) #10
  ret i32 %conv467
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_get_pcm_runtime(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_rx_rcm_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regmap1 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val, align 4, !annotation !289
  %call2 = call i32 @regmap_read(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %val) #10
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and = lshr i32 %10, 14
  %and.lobit = and i32 %and, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.lobit, ptr %value, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_rx_rcm_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regmap1 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap1, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %driver3 = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %driver3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver3, align 4
  %formats5 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %11, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %formats5 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %formats5, align 8
  %and = and i64 %13, -1025
  %masksel = select i1 %tobool.not, i64 0, i64 1024
  %and.sink = or i64 %and, %masksel
  %cond = select i1 %tobool.not, i32 0, i32 16384
  store i64 %and.sink, ptr %formats5, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 16384, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_startup(ptr nocapture noundef readonly %substream, ptr noundef %cpu_dai) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %pdev1 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev1, align 8
  %regmap2 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap2, align 4
  %call3 = tail call i32 @snd_soc_dai_active(ptr noundef %cpu_dai) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %14 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i, align 4, !annotation !289
  tail call void @regcache_cache_bypass(ptr noundef %15, i1 noundef zeroext true) #10
  %call.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 0, i32 noundef 4096) #10
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %if.then
  %cycle.0.i = phi i32 [ 1000, %if.then ], [ %dec.i, %land.rhs.i.do.body.i_crit_edge ]
  %call2.i = call i32 @regmap_read(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %val.i) #10
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i, align 4
  %and.i = and i32 %18, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.spdif_softreset.exit_crit_edge, label %land.rhs.i

do.body.i.spdif_softreset.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spdif_softreset.exit

land.rhs.i:                                       ; preds = %do.body.i
  %dec.i = add nsw i32 %cycle.0.i, -1
  %tobool3.not.i = icmp eq i32 %cycle.0.i, 0
  br i1 %tobool3.not.i, label %land.rhs.i.spdif_softreset.exit_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

land.rhs.i.spdif_softreset.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spdif_softreset.exit

spdif_softreset.exit:                             ; preds = %land.rhs.i.spdif_softreset.exit_crit_edge, %do.body.i.spdif_softreset.exit_crit_edge
  %cycle.1.i = phi i32 [ -1, %land.rhs.i.spdif_softreset.exit_crit_edge ], [ %cycle.0.i, %do.body.i.spdif_softreset.exit_crit_edge ]
  call void @regcache_cache_bypass(ptr noundef %15, i1 noundef zeroext false) #10
  call void @regcache_mark_dirty(ptr noundef %15) #10
  %call4.i = call i32 @regcache_sync(ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cycle.1.i)
  %tobool5.not.i = icmp eq i32 %cycle.1.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br i1 %tobool5.not.i, label %do.end, label %if.end

do.end:                                           ; preds = %spdif_softreset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54) #13
  br label %cleanup

if.end:                                           ; preds = %spdif_softreset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i26 = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 12, i32 noundef 16777215, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %19 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  %. = select i1 %cmp, i32 197655, i32 1310720
  %.25 = select i1 %cmp, i32 232479, i32 14417920
  %call.i27 = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef %.25, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %call.i28 = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -16, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_spdif_shutdown(ptr nocapture noundef readonly %substream, ptr noundef %cpu_dai) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val2.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %regmap1 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap1, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %12 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  %. = select i1 %cmp, i32 0, i32 12582912
  %.11 = select i1 %cmp, i32 232479, i32 14417920
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef %.11, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %call3 = tail call i32 @snd_soc_dai_active(ptr noundef %cpu_dai) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then4, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i, align 4, !annotation !289
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val2.i) #10
  %17 = ptrtoint ptr %val2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val2.i, align 4, !annotation !289
  %call.i12 = call i32 @regmap_read(ptr noundef %15, i32 noundef 16, ptr noundef nonnull %val.i) #10
  %call2.i = call i32 @regmap_read(ptr noundef %15, i32 noundef 12, ptr noundef nonnull %val2.i) #10
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i, align 4
  %20 = ptrtoint ptr %val2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val2.i, align 4
  %and.i = and i32 %21, %19
  %call3.i = call i32 @regmap_write(ptr noundef %15, i32 noundef 16, i32 noundef %and.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %call.i13 = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %pdev1 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev1, align 8
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = tail call fastcc i32 @spdif_set_sample_rate(ptr noundef %substream, i32 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef %13) #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.fsl_spdif_priv, ptr %9, i32 0, i32 1, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %and.i = and i8 %17, -49
  store i8 %and.i, ptr %arrayidx.i, align 1
  tail call fastcc void @spdif_write_channel_status(ptr noundef %9)
  br label %cleanup

if.else:                                          ; preds = %entry
  %rxclk_src.i = getelementptr inbounds %struct.fsl_spdif_priv, ptr %9, i32 0, i32 10
  %18 = ptrtoint ptr %rxclk_src.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rxclk_src.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %19)
  %cmp.i = icmp ugt i8 %19, 15
  br i1 %cmp.i, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %19 to i32
  %regmap1.i = getelementptr inbounds %struct.fsl_spdif_priv, ptr %9, i32 0, i32 4
  %20 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap1.i, align 4
  %shl.i = shl nuw nsw i32 %conv.i, 7
  %and.i20 = and i32 %shl.i, 1920
  %or.i = or i32 %and.i20, 24
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 8, i32 noundef 1976, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.else.cleanup_crit_edge, %if.end, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %if.end ], [ 0, %if.end.i ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %regmap1 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap1, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %12 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  %cond = select i1 %cmp, i32 262144, i32 1099756
  %cond3 = select i1 %cmp, i32 256, i32 512
  %14 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge26
    i32 4, label %entry.sw.bb_crit_edge27
    i32 0, label %entry.sw.bb6_crit_edge
    i32 5, label %entry.sw.bb6_crit_edge28
    i32 3, label %entry.sw.bb6_crit_edge29
  ]

entry.sw.bb6_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

entry.sw.bb6_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

entry.sw.bb_crit_edge27:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge26:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge26, %entry.sw.bb_crit_edge27
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 12, i32 noundef %cond, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %call.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef %cond3, i32 noundef %cond3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge28, %entry.sw.bb6_crit_edge29
  %call.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef %cond3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %call.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 12, i32 noundef %cond, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb6 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spdif_set_sample_rate(ptr nocapture noundef readonly %substream, i32 noundef %sample_rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %regmap1 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap1, align 4
  %pdev2 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev2, align 8
  %14 = zext i32 %sample_rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %sample_rate, label %do.end [
    i32 32000, label %entry.sw.epilog_crit_edge
    i32 44100, label %sw.bb3
    i32 48000, label %sw.bb4
    i32 88200, label %sw.bb5
    i32 96000, label %sw.bb6
    i32 176400, label %sw.bb7
    i32 192000, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %sample_rate) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %entry.sw.epilog_crit_edge
  %rate.0 = phi i32 [ 6, %sw.bb8 ], [ 5, %sw.bb7 ], [ 4, %sw.bb6 ], [ 3, %sw.bb5 ], [ 2, %sw.bb4 ], [ 1, %sw.bb3 ], [ 0, %entry.sw.epilog_crit_edge ]
  %csfs.0 = phi i8 [ 14, %sw.bb8 ], [ 12, %sw.bb7 ], [ 10, %sw.bb6 ], [ 8, %sw.bb5 ], [ 2, %sw.bb4 ], [ 0, %sw.bb3 ], [ 3, %entry.sw.epilog_crit_edge ]
  %arrayidx9 = getelementptr %struct.fsl_spdif_priv, ptr %9, i32 0, i32 9, i32 %rate.0
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx9, align 1
  %conv = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %16)
  %cmp = icmp ugt i8 %16, 7
  br i1 %cmp, label %do.end13, label %if.end

do.end13:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %dev14 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.61) #13
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %arrayidx16 = getelementptr %struct.fsl_spdif_priv, ptr %9, i32 0, i32 7, i32 %rate.0
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp18 = icmp eq i8 %18, 0
  br i1 %cmp18, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev24 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.64) #13
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %arrayidx27 = getelementptr %struct.fsl_spdif_priv, ptr %9, i32 0, i32 8, i32 %rate.0
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx27, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp.i = icmp eq i8 %16, 1
  br i1 %cmp.i, label %fsl_spdif_can_set_clk_rate.exit, label %if.end25.do.body42_crit_edge

if.end25.do.body42_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body42

fsl_spdif_can_set_clk_rate.exit:                  ; preds = %if.end25
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %9, align 8
  %shared_root_clock.i = getelementptr inbounds %struct.fsl_spdif_soc_data, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %shared_root_clock.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %shared_root_clock.i, align 1, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.end31, label %fsl_spdif_can_set_clk_rate.exit.do.body42_crit_edge

fsl_spdif_can_set_clk_rate.exit.do.body42_crit_edge: ; preds = %fsl_spdif_can_set_clk_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body42

if.end31:                                         ; preds = %fsl_spdif_can_set_clk_rate.exit
  %arrayidx32 = getelementptr %struct.fsl_spdif_priv, ptr %9, i32 0, i32 11, i32 %rate.0
  %25 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx32, align 4
  %mul = shl nuw nsw i32 %sample_rate, 6
  %mul34 = mul nuw i32 %mul, %conv17
  %call35 = tail call i32 @clk_set_rate(ptr noundef %26, i32 noundef %mul34) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool.not = icmp eq i32 %call35, 0
  br i1 %tobool.not, label %if.end31.do.body42_crit_edge, label %do.end39

if.end31.do.body42_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body42

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %dev40 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.67) #13
  br label %cleanup

do.body42:                                        ; preds = %if.end31.do.body42_crit_edge, %fsl_spdif_can_set_clk_rate.exit.do.body42_crit_edge, %if.end25.do.body42_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_set_sample_rate.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_set_sample_rate, %if.then47)) #10
          to label %do.body57 [label %if.then47], !srcloc !290

if.then47:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  %dev48 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %mul49 = shl nuw nsw i32 %sample_rate, 6
  %mul51 = mul nuw i32 %mul49, %conv17
  %conv52 = zext i16 %20 to i32
  %mul53 = mul i32 %mul51, %conv52
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_set_sample_rate.__UNIQUE_ID_ddebug259, ptr noundef %dev48, ptr noundef nonnull @.str.69, i32 noundef %mul53) #10
  br label %do.body57

do.body57:                                        ; preds = %if.then47, %do.body42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_set_sample_rate.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_set_sample_rate, %if.then69)) #10
          to label %do.end76 [label %if.then69], !srcloc !290

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  %dev70 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %arrayidx72 = getelementptr %struct.fsl_spdif_priv, ptr %9, i32 0, i32 11, i32 %rate.0
  %27 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx72, align 4
  %call73 = tail call i32 @clk_get_rate(ptr noundef %28) #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_set_sample_rate.__UNIQUE_ID_ddebug260, ptr noundef %dev70, ptr noundef nonnull @.str.70, i32 noundef %call73) #10
  br label %do.end76

do.end76:                                         ; preds = %if.then69, %do.body57
  %arrayidx.i = getelementptr %struct.fsl_spdif_priv, ptr %9, i32 0, i32 1, i32 1, i32 3
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1
  %and.i = and i8 %30, -16
  %or13.i = or i8 %and.i, %csfs.0
  store i8 %or13.i, ptr %arrayidx.i, align 1
  %shl = shl nuw nsw i32 %conv, 8
  %and = and i32 %shl, 1792
  %sub = add nuw nsw i32 %conv17, 127
  %and81 = and i32 %sub, 127
  %conv83 = zext i16 %20 to i32
  %sub84 = shl nuw nsw i32 %conv83, 11
  %shl85 = add nuw nsw i32 %sub84, 1046528
  %and86 = and i32 %shl85, 1046528
  %or = or i32 %and, %and81
  %or82 = or i32 %or, %and86
  %or87 = or i32 %or82, 128
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 80, i32 noundef 1048575, i32 noundef %or87, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_set_sample_rate.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_set_sample_rate, %if.then101)) #10
          to label %cleanup [label %if.then101], !srcloc !290

if.then101:                                       ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #12
  %dev102 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %arrayidx103 = getelementptr %struct.fsl_spdif_priv, ptr %9, i32 0, i32 6, i32 %rate.0
  %31 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx103, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_set_sample_rate.__UNIQUE_ID_ddebug261, ptr noundef %dev102, ptr noundef nonnull @.str.71, i32 noundef %32, i32 noundef %sample_rate) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then101, %do.end76, %do.end39, %do.end23, %do.end13, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end13 ], [ -22, %do.end23 ], [ %call35, %do.end39 ], [ 0, %if.then101 ], [ 0, %do.end76 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_spdif_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.fshl.i32(i32 %reg, i32 %reg, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %0)
  %1 = icmp ult i32 %0, 21
  %switch.cast = trunc i32 %0 to i21
  %switch.downshift = lshr i21 -1017825, %switch.cast
  %2 = and i21 %switch.downshift, 1
  %switch.masked = icmp ne i21 %2, 0
  %retval.0 = select i1 %1, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_spdif_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.fshl.i32(i32 %reg, i32 %reg, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %0)
  %1 = icmp ult i32 %0, 21
  %switch.cast = trunc i32 %0 to i21
  %switch.downshift = lshr i21 -890881, %switch.cast
  %2 = and i21 %switch.downshift, 1
  %switch.masked = icmp ne i21 %2, 0
  %retval.0 = select i1 %1, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_spdif_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -8
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %2 = icmp ult i32 %1, 16
  %switch.cast = trunc i32 %1 to i16
  %switch.downshift = lshr i16 -32259, %switch.cast
  %3 = and i16 %switch.downshift, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %switch.masked = icmp ne i16 %3, 0
  %retval.0 = select i1 %2, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spdif_irq_uqrx_full(ptr nocapture noundef %spdif_priv, i8 noundef zeroext %name) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 4
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %pdev2 = getelementptr inbounds %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 3
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !289
  %conv = zext i8 %name to i32
  %5 = zext i8 %name to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %name, label %do.end [
    i8 85, label %sw.bb
    i8 81, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %upos = getelementptr inbounds %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 1, i32 4
  br label %do.body4

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %qpos = getelementptr inbounds %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 1, i32 5
  br label %do.body4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.90) #13
  br label %cleanup

do.body4:                                         ; preds = %sw.bb3, %sw.bb
  %pos.0 = phi ptr [ %qpos, %sw.bb3 ], [ %upos, %sw.bb ]
  %size.0 = phi i32 [ 12, %sw.bb3 ], [ 96, %sw.bb ]
  %reg.0 = phi i32 [ 40, %sw.bb3 ], [ 36, %sw.bb ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_irq_uqrx_full.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_irq_uqrx_full, %if.then)) #10
          to label %do.end10 [label %if.then], !srcloc !290

if.then:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_irq_uqrx_full.__UNIQUE_ID_ddebug243, ptr noundef %dev7, ptr noundef nonnull @.str.92, i32 noundef %conv) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then, %do.body4
  %6 = ptrtoint ptr %pos.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pos.0, align 4
  %mul = shl nuw nsw i32 %size.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mul)
  %cmp.not = icmp ult i32 %7, %mul
  br i1 %cmp.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %pos.0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pos.0, align 4
  br label %if.end27

if.else:                                          ; preds = %do.end10
  %rem = urem i32 %7, %size.0
  %add = add nuw nsw i32 %rem, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %size.0)
  %cmp13 = icmp ugt i32 %add, %size.0
  br i1 %cmp13, label %do.end24, label %if.else.if.end27_crit_edge, !prof !294

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.end24:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev25 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.94) #13
  br label %cleanup

if.end27:                                         ; preds = %if.else.if.end27_crit_edge, %if.then12
  %call28 = call i32 @regmap_read(ptr noundef %1, i32 noundef %reg.0, ptr noundef nonnull %val) #10
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %shr = lshr i32 %10, 16
  %conv29 = trunc i32 %shr to i8
  %incdec.ptr = getelementptr i32, ptr %pos.0, i32 1
  %11 = ptrtoint ptr %pos.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pos.0, align 4
  %arrayidx = getelementptr %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 1, i32 2, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv29, ptr %arrayidx, align 1
  %shr30 = lshr i32 %10, 8
  %conv31 = trunc i32 %shr30 to i8
  %incdec.ptr33 = getelementptr i32, ptr %pos.0, i32 2
  %14 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr, align 4
  %arrayidx34 = getelementptr %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 1, i32 2, i32 %15
  %16 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv31, ptr %arrayidx34, align 1
  %conv35 = trunc i32 %10 to i8
  %17 = ptrtoint ptr %incdec.ptr33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr33, align 4
  %arrayidx38 = getelementptr %struct.fsl_spdif_priv, ptr %spdif_priv, i32 0, i32 1, i32 2, i32 %18
  %19 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv35, ptr %arrayidx38, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end24, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_is_match(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.fsl_spdif_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 12, i32 noundef 16777215, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %regcache_srpc = getelementptr inbounds %struct.fsl_spdif_priv, ptr %1, i32 0, i32 18
  %call3 = tail call i32 @regmap_read(ptr noundef %5, i32 noundef 8, ptr noundef %regcache_srpc) #10
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext true) #10
  %rxclk = getelementptr inbounds %struct.fsl_spdif_priv, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %rxclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rxclk, align 4
  tail call void @clk_disable(ptr noundef %9) #10
  tail call void @clk_unprepare(ptr noundef %9) #10
  %arrayidx = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %11) #10
  tail call void @clk_unprepare(ptr noundef %11) #10
  %arrayidx.1 = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  tail call void @clk_disable(ptr noundef %13) #10
  tail call void @clk_unprepare(ptr noundef %13) #10
  %arrayidx.2 = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  tail call void @clk_disable(ptr noundef %15) #10
  tail call void @clk_unprepare(ptr noundef %15) #10
  %arrayidx.3 = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.3, align 4
  tail call void @clk_disable(ptr noundef %17) #10
  tail call void @clk_unprepare(ptr noundef %17) #10
  %arrayidx.4 = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 4
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.4, align 4
  tail call void @clk_disable(ptr noundef %19) #10
  tail call void @clk_unprepare(ptr noundef %19) #10
  %arrayidx.5 = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.5, align 4
  tail call void @clk_disable(ptr noundef %21) #10
  tail call void @clk_unprepare(ptr noundef %21) #10
  %arrayidx.6 = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 6
  %22 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.6, align 4
  tail call void @clk_disable(ptr noundef %23) #10
  tail call void @clk_unprepare(ptr noundef %23) #10
  %spbaclk = getelementptr inbounds %struct.fsl_spdif_priv, ptr %1, i32 0, i32 15
  %24 = ptrtoint ptr %spbaclk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spbaclk, align 8
  %cmp.i = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef %25) #10
  tail call void @clk_unprepare(ptr noundef %25) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %coreclk = getelementptr inbounds %struct.fsl_spdif_priv, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %coreclk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %coreclk, align 8
  tail call void @clk_disable(ptr noundef %27) #10
  tail call void @clk_unprepare(ptr noundef %27) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spdif_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %coreclk = getelementptr inbounds %struct.fsl_spdif_priv, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %coreclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %coreclk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.108) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %spbaclk = getelementptr inbounds %struct.fsl_spdif_priv, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %spbaclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spbaclk, align 8
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end12_crit_edge, label %if.then3

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then3:                                         ; preds = %if.end
  %call.i74 = tail call i32 @clk_prepare(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool.not.i75, label %if.end.i78, label %if.then3.do.end10_crit_edge

if.then3.do.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

if.end.i78:                                       ; preds = %if.then3
  %call1.i76 = tail call i32 @clk_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76)
  %tobool2.not.i77 = icmp eq i32 %call1.i76, 0
  br i1 %tobool2.not.i77, label %if.end.i78.if.end12_crit_edge, label %if.then3.i79

if.end.i78.if.end12_crit_edge:                    ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then3.i79:                                     ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then3.i79, %if.then3.do.end10_crit_edge
  %retval.0.i80.ph = phi i32 [ %call1.i76, %if.then3.i79 ], [ %call.i74, %if.then3.do.end10_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.111) #13
  br label %disable_core_clk

if.end12:                                         ; preds = %if.end.i78.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %arrayidx = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i82 = tail call i32 @clk_prepare(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool.not.i83 = icmp eq i32 %call.i82, 0
  br i1 %tobool.not.i83, label %if.end.i86, label %if.end12.for.end37_crit_edge

if.end12.for.end37_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end37

if.end.i86:                                       ; preds = %if.end12
  %call1.i84 = tail call i32 @clk_enable(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i84)
  %tobool2.not.i85 = icmp eq i32 %call1.i84, 0
  br i1 %tobool2.not.i85, label %for.inc, label %disable_tx_clk

for.inc:                                          ; preds = %if.end.i86
  %arrayidx.1 = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %call.i82.1 = tail call i32 @clk_prepare(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.1)
  %tobool.not.i83.1 = icmp eq i32 %call.i82.1, 0
  br i1 %tobool.not.i83.1, label %if.end.i86.1, label %for.inc.for.body32_crit_edge

for.inc.for.body32_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32

if.end.i86.1:                                     ; preds = %for.inc
  %call1.i84.1 = tail call i32 @clk_enable(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i84.1)
  %tobool2.not.i85.1 = icmp eq i32 %call1.i84.1, 0
  br i1 %tobool2.not.i85.1, label %for.inc.1, label %if.end.i86.1.for.body32.preheader.sink.split_crit_edge

if.end.i86.1.for.body32.preheader.sink.split_crit_edge: ; preds = %if.end.i86.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32.preheader.sink.split

for.inc.1:                                        ; preds = %if.end.i86.1
  %arrayidx.2 = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  %call.i82.2 = tail call i32 @clk_prepare(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.2)
  %tobool.not.i83.2 = icmp eq i32 %call.i82.2, 0
  br i1 %tobool.not.i83.2, label %if.end.i86.2, label %for.inc.1.for.body32_crit_edge

for.inc.1.for.body32_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32

if.end.i86.2:                                     ; preds = %for.inc.1
  %call1.i84.2 = tail call i32 @clk_enable(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i84.2)
  %tobool2.not.i85.2 = icmp eq i32 %call1.i84.2, 0
  br i1 %tobool2.not.i85.2, label %for.inc.2, label %if.end.i86.2.for.body32.preheader.sink.split_crit_edge

if.end.i86.2.for.body32.preheader.sink.split_crit_edge: ; preds = %if.end.i86.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32.preheader.sink.split

for.inc.2:                                        ; preds = %if.end.i86.2
  %arrayidx.3 = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3, align 4
  %call.i82.3 = tail call i32 @clk_prepare(ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.3)
  %tobool.not.i83.3 = icmp eq i32 %call.i82.3, 0
  br i1 %tobool.not.i83.3, label %if.end.i86.3, label %for.inc.2.for.body32_crit_edge

for.inc.2.for.body32_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32

if.end.i86.3:                                     ; preds = %for.inc.2
  %call1.i84.3 = tail call i32 @clk_enable(ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i84.3)
  %tobool2.not.i85.3 = icmp eq i32 %call1.i84.3, 0
  br i1 %tobool2.not.i85.3, label %for.inc.3, label %if.end.i86.3.for.body32.preheader.sink.split_crit_edge

if.end.i86.3.for.body32.preheader.sink.split_crit_edge: ; preds = %if.end.i86.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32.preheader.sink.split

for.inc.3:                                        ; preds = %if.end.i86.3
  %arrayidx.4 = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.4, align 4
  %call.i82.4 = tail call i32 @clk_prepare(ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.4)
  %tobool.not.i83.4 = icmp eq i32 %call.i82.4, 0
  br i1 %tobool.not.i83.4, label %if.end.i86.4, label %for.inc.3.for.body32_crit_edge

for.inc.3.for.body32_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32

if.end.i86.4:                                     ; preds = %for.inc.3
  %call1.i84.4 = tail call i32 @clk_enable(ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i84.4)
  %tobool2.not.i85.4 = icmp eq i32 %call1.i84.4, 0
  br i1 %tobool2.not.i85.4, label %for.inc.4, label %if.end.i86.4.for.body32.preheader.sink.split_crit_edge

if.end.i86.4.for.body32.preheader.sink.split_crit_edge: ; preds = %if.end.i86.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32.preheader.sink.split

for.inc.4:                                        ; preds = %if.end.i86.4
  %arrayidx.5 = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 5
  %16 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.5, align 4
  %call.i82.5 = tail call i32 @clk_prepare(ptr noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.5)
  %tobool.not.i83.5 = icmp eq i32 %call.i82.5, 0
  br i1 %tobool.not.i83.5, label %if.end.i86.5, label %for.inc.4.for.body32_crit_edge

for.inc.4.for.body32_crit_edge:                   ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32

if.end.i86.5:                                     ; preds = %for.inc.4
  %call1.i84.5 = tail call i32 @clk_enable(ptr noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i84.5)
  %tobool2.not.i85.5 = icmp eq i32 %call1.i84.5, 0
  br i1 %tobool2.not.i85.5, label %for.inc.5, label %if.end.i86.5.for.body32.preheader.sink.split_crit_edge

if.end.i86.5.for.body32.preheader.sink.split_crit_edge: ; preds = %if.end.i86.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32.preheader.sink.split

for.inc.5:                                        ; preds = %if.end.i86.5
  %arrayidx.6 = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.6, align 4
  %call.i82.6 = tail call i32 @clk_prepare(ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.6)
  %tobool.not.i83.6 = icmp eq i32 %call.i82.6, 0
  br i1 %tobool.not.i83.6, label %if.end.i86.6, label %for.inc.5.for.body32_crit_edge

for.inc.5.for.body32_crit_edge:                   ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32

if.end.i86.6:                                     ; preds = %for.inc.5
  %call1.i84.6 = tail call i32 @clk_enable(ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i84.6)
  %tobool2.not.i85.6 = icmp eq i32 %call1.i84.6, 0
  br i1 %tobool2.not.i85.6, label %for.inc.6, label %if.end.i86.6.for.body32.preheader.sink.split_crit_edge

if.end.i86.6.for.body32.preheader.sink.split_crit_edge: ; preds = %if.end.i86.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32.preheader.sink.split

for.inc.6:                                        ; preds = %if.end.i86.6
  %rxclk = getelementptr inbounds %struct.fsl_spdif_priv, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %rxclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rxclk, align 4
  %call.i90 = tail call i32 @clk_prepare(ptr noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool.not.i91 = icmp eq i32 %call.i90, 0
  br i1 %tobool.not.i91, label %if.end.i94, label %for.inc.6.for.body32_crit_edge

for.inc.6.for.body32_crit_edge:                   ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32

if.end.i94:                                       ; preds = %for.inc.6
  %call1.i92 = tail call i32 @clk_enable(ptr noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92)
  %tobool2.not.i93 = icmp eq i32 %call1.i92, 0
  br i1 %tobool2.not.i93, label %if.end20, label %if.end.i94.for.body32.preheader.sink.split_crit_edge

if.end.i94.for.body32.preheader.sink.split_crit_edge: ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body32.preheader.sink.split

if.end20:                                         ; preds = %if.end.i94
  %regmap = getelementptr inbounds %struct.fsl_spdif_priv, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %23, i1 noundef zeroext false) #10
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %25) #10
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %regcache_srpc = getelementptr inbounds %struct.fsl_spdif_priv, ptr %1, i32 0, i32 18
  %28 = ptrtoint ptr %regcache_srpc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %regcache_srpc, align 4
  %call.i98 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 8, i32 noundef 1976, i32 noundef %29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call25 = tail call i32 @regcache_sync(ptr noundef %31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end20.cleanup_crit_edge, label %disable_rx_clk

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

disable_rx_clk:                                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %rxclk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rxclk, align 4
  tail call void @clk_disable(ptr noundef %33) #10
  br label %for.body32.preheader.sink.split

disable_tx_clk:                                   ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %7) #10
  br label %for.end37

for.body32.preheader.sink.split:                  ; preds = %disable_rx_clk, %if.end.i94.for.body32.preheader.sink.split_crit_edge, %if.end.i86.6.for.body32.preheader.sink.split_crit_edge, %if.end.i86.5.for.body32.preheader.sink.split_crit_edge, %if.end.i86.4.for.body32.preheader.sink.split_crit_edge, %if.end.i86.3.for.body32.preheader.sink.split_crit_edge, %if.end.i86.2.for.body32.preheader.sink.split_crit_edge, %if.end.i86.1.for.body32.preheader.sink.split_crit_edge
  %.sink.sink = phi ptr [ %33, %disable_rx_clk ], [ %21, %if.end.i94.for.body32.preheader.sink.split_crit_edge ], [ %19, %if.end.i86.6.for.body32.preheader.sink.split_crit_edge ], [ %17, %if.end.i86.5.for.body32.preheader.sink.split_crit_edge ], [ %15, %if.end.i86.4.for.body32.preheader.sink.split_crit_edge ], [ %13, %if.end.i86.3.for.body32.preheader.sink.split_crit_edge ], [ %11, %if.end.i86.2.for.body32.preheader.sink.split_crit_edge ], [ %9, %if.end.i86.1.for.body32.preheader.sink.split_crit_edge ]
  %i.0115.lcssa123.ph.sink.ph = phi i32 [ 7, %disable_rx_clk ], [ 7, %if.end.i94.for.body32.preheader.sink.split_crit_edge ], [ 6, %if.end.i86.6.for.body32.preheader.sink.split_crit_edge ], [ 5, %if.end.i86.5.for.body32.preheader.sink.split_crit_edge ], [ 4, %if.end.i86.4.for.body32.preheader.sink.split_crit_edge ], [ 3, %if.end.i86.3.for.body32.preheader.sink.split_crit_edge ], [ 2, %if.end.i86.2.for.body32.preheader.sink.split_crit_edge ], [ 1, %if.end.i86.1.for.body32.preheader.sink.split_crit_edge ]
  %ret.0131.ph = phi i32 [ %call25, %disable_rx_clk ], [ %call1.i92, %if.end.i94.for.body32.preheader.sink.split_crit_edge ], [ %call1.i84.6, %if.end.i86.6.for.body32.preheader.sink.split_crit_edge ], [ %call1.i84.5, %if.end.i86.5.for.body32.preheader.sink.split_crit_edge ], [ %call1.i84.4, %if.end.i86.4.for.body32.preheader.sink.split_crit_edge ], [ %call1.i84.3, %if.end.i86.3.for.body32.preheader.sink.split_crit_edge ], [ %call1.i84.2, %if.end.i86.2.for.body32.preheader.sink.split_crit_edge ], [ %call1.i84.1, %if.end.i86.1.for.body32.preheader.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink.sink) #10
  br label %for.body32

for.body32:                                       ; preds = %for.body32.preheader.sink.split, %for.inc.6.for.body32_crit_edge, %for.inc.5.for.body32_crit_edge, %for.inc.4.for.body32_crit_edge, %for.inc.3.for.body32_crit_edge, %for.inc.2.for.body32_crit_edge, %for.inc.1.for.body32_crit_edge, %for.inc.for.body32_crit_edge
  %i.0115.lcssa123.ph.sink = phi i32 [ 6, %for.inc.5.for.body32_crit_edge ], [ 5, %for.inc.4.for.body32_crit_edge ], [ 4, %for.inc.3.for.body32_crit_edge ], [ 3, %for.inc.2.for.body32_crit_edge ], [ 2, %for.inc.1.for.body32_crit_edge ], [ 1, %for.inc.for.body32_crit_edge ], [ 7, %for.inc.6.for.body32_crit_edge ], [ %i.0115.lcssa123.ph.sink.ph, %for.body32.preheader.sink.split ]
  %ret.0131 = phi i32 [ %call.i82.6, %for.inc.5.for.body32_crit_edge ], [ %call.i82.5, %for.inc.4.for.body32_crit_edge ], [ %call.i82.4, %for.inc.3.for.body32_crit_edge ], [ %call.i82.3, %for.inc.2.for.body32_crit_edge ], [ %call.i82.2, %for.inc.1.for.body32_crit_edge ], [ %call.i82.1, %for.inc.for.body32_crit_edge ], [ %call.i90, %for.inc.6.for.body32_crit_edge ], [ %ret.0131.ph, %for.body32.preheader.sink.split ]
  %i.1118 = add nsw i32 %i.0115.lcssa123.ph.sink, -1
  %arrayidx34 = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 %i.1118
  %34 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx34, align 4
  tail call void @clk_disable(ptr noundef %35) #10
  tail call void @clk_unprepare(ptr noundef %35) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1118)
  %cmp31.not = icmp eq i32 %i.1118, 0
  br i1 %cmp31.not, label %for.body32.for.end37_crit_edge, label %for.body32.1

for.body32.for.end37_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end37

for.body32.1:                                     ; preds = %for.body32
  %i.1118.1 = add nsw i32 %i.0115.lcssa123.ph.sink, -2
  %arrayidx34.1 = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 %i.1118.1
  %36 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx34.1, align 4
  tail call void @clk_disable(ptr noundef %37) #10
  tail call void @clk_unprepare(ptr noundef %37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1118.1)
  %cmp31.not.1 = icmp eq i32 %i.1118.1, 0
  br i1 %cmp31.not.1, label %for.body32.1.for.end37_crit_edge, label %for.body32.2

for.body32.1.for.end37_crit_edge:                 ; preds = %for.body32.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end37

for.body32.2:                                     ; preds = %for.body32.1
  %i.1118.2 = add nsw i32 %i.0115.lcssa123.ph.sink, -3
  %arrayidx34.2 = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 %i.1118.2
  %38 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx34.2, align 4
  tail call void @clk_disable(ptr noundef %39) #10
  tail call void @clk_unprepare(ptr noundef %39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1118.2)
  %cmp31.not.2 = icmp eq i32 %i.1118.2, 0
  br i1 %cmp31.not.2, label %for.body32.2.for.end37_crit_edge, label %for.body32.3

for.body32.2.for.end37_crit_edge:                 ; preds = %for.body32.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end37

for.body32.3:                                     ; preds = %for.body32.2
  %i.1118.3 = add nsw i32 %i.0115.lcssa123.ph.sink, -4
  %arrayidx34.3 = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 %i.1118.3
  %40 = ptrtoint ptr %arrayidx34.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx34.3, align 4
  tail call void @clk_disable(ptr noundef %41) #10
  tail call void @clk_unprepare(ptr noundef %41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1118.3)
  %cmp31.not.3 = icmp eq i32 %i.1118.3, 0
  br i1 %cmp31.not.3, label %for.body32.3.for.end37_crit_edge, label %for.body32.4

for.body32.3.for.end37_crit_edge:                 ; preds = %for.body32.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end37

for.body32.4:                                     ; preds = %for.body32.3
  %i.1118.4 = add nsw i32 %i.0115.lcssa123.ph.sink, -5
  %arrayidx34.4 = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 %i.1118.4
  %42 = ptrtoint ptr %arrayidx34.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx34.4, align 4
  tail call void @clk_disable(ptr noundef %43) #10
  tail call void @clk_unprepare(ptr noundef %43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1118.4)
  %cmp31.not.4 = icmp eq i32 %i.1118.4, 0
  br i1 %cmp31.not.4, label %for.body32.4.for.end37_crit_edge, label %for.body32.5

for.body32.4.for.end37_crit_edge:                 ; preds = %for.body32.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end37

for.body32.5:                                     ; preds = %for.body32.4
  %i.1118.5 = add nsw i32 %i.0115.lcssa123.ph.sink, -6
  %arrayidx34.5 = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 %i.1118.5
  %44 = ptrtoint ptr %arrayidx34.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx34.5, align 4
  tail call void @clk_disable(ptr noundef %45) #10
  tail call void @clk_unprepare(ptr noundef %45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1118.5)
  %cmp31.not.5 = icmp eq i32 %i.1118.5, 0
  br i1 %cmp31.not.5, label %for.body32.5.for.end37_crit_edge, label %for.body32.6

for.body32.5.for.end37_crit_edge:                 ; preds = %for.body32.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end37

for.body32.6:                                     ; preds = %for.body32.5
  call void @__sanitizer_cov_trace_pc() #12
  %i.1118.6 = add nsw i32 %i.0115.lcssa123.ph.sink, -7
  %arrayidx34.6 = getelementptr %struct.fsl_spdif_priv, ptr %1, i32 0, i32 11, i32 %i.1118.6
  %46 = ptrtoint ptr %arrayidx34.6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx34.6, align 4
  tail call void @clk_disable(ptr noundef %47) #10
  tail call void @clk_unprepare(ptr noundef %47) #10
  br label %for.end37

for.end37:                                        ; preds = %for.body32.6, %for.body32.5.for.end37_crit_edge, %for.body32.4.for.end37_crit_edge, %for.body32.3.for.end37_crit_edge, %for.body32.2.for.end37_crit_edge, %for.body32.1.for.end37_crit_edge, %for.body32.for.end37_crit_edge, %disable_tx_clk, %if.end12.for.end37_crit_edge
  %ret.0130 = phi i32 [ %call1.i84, %disable_tx_clk ], [ %call.i82, %if.end12.for.end37_crit_edge ], [ %ret.0131, %for.body32.6 ], [ %ret.0131, %for.body32.5.for.end37_crit_edge ], [ %ret.0131, %for.body32.4.for.end37_crit_edge ], [ %ret.0131, %for.body32.3.for.end37_crit_edge ], [ %ret.0131, %for.body32.2.for.end37_crit_edge ], [ %ret.0131, %for.body32.1.for.end37_crit_edge ], [ %ret.0131, %for.body32.for.end37_crit_edge ]
  %48 = ptrtoint ptr %spbaclk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %spbaclk, align 8
  %cmp.i99 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %for.end37.disable_core_clk_crit_edge, label %if.then40

for.end37.disable_core_clk_crit_edge:             ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_core_clk

if.then40:                                        ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef %49) #10
  tail call void @clk_unprepare(ptr noundef %49) #10
  br label %disable_core_clk

disable_core_clk:                                 ; preds = %if.then40, %for.end37.disable_core_clk_crit_edge, %do.end10
  %ret.1 = phi i32 [ %ret.0130, %for.end37.disable_core_clk_crit_edge ], [ %ret.0130, %if.then40 ], [ %retval.0.i80.ph, %do.end10 ]
  %50 = ptrtoint ptr %coreclk to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %coreclk, align 8
  tail call void @clk_disable(ptr noundef %51) #10
  tail call void @clk_unprepare(ptr noundef %51) #10
  br label %cleanup

cleanup:                                          ; preds = %disable_core_clk, %if.end20.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.1, %disable_core_clk ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !50, !52, !54, !55, !56, !58, !59, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !95, !96, !98, !99, !101, !102, !103, !105, !106, !108, !109, !111, !113, !115, !116, !117, !118, !120, !122, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !156, !157, !159, !160, !162, !164, !166, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !202, !203, !204, !206, !207, !208, !210, !211, !212, !213, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !232, !234, !235, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !274, !275, !276, !278, !279}
!llvm.module.flags = !{!280, !281, !282, !283, !284, !285, !286, !287}
!llvm.ident = !{!288}

!0 = !{ptr @__initcall__kmod_snd_soc_fsl_spdif__269_1662_fsl_spdif_driver_init6, !1, !"__initcall__kmod_snd_soc_fsl_spdif__269_1662_fsl_spdif_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1662, i32 1}
!2 = !{ptr @__exitcall_fsl_spdif_driver_exit, !1, !"__exitcall_fsl_spdif_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author270, !4, !"__UNIQUE_ID_author270", i1 false, i1 false}
!4 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1664, i32 1}
!5 = !{ptr @__UNIQUE_ID_description271, !6, !"__UNIQUE_ID_description271", i1 false, i1 false}
!6 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1665, i32 1}
!7 = !{ptr @__UNIQUE_ID_file272, !8, !"__UNIQUE_ID_file272", i1 false, i1 false}
!8 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1666, i32 1}
!9 = !{ptr @__UNIQUE_ID_license273, !8, !"__UNIQUE_ID_license273", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias274, !11, !"__UNIQUE_ID_alias274", i1 false, i1 false}
!11 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1667, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1654, i32 11}
!14 = !{ptr @fsl_spdif_driver, !15, !"fsl_spdif_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1652, i32 31}
!16 = !{ptr @fsl_spdif_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1446, i32 23}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1448, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @fsl_spdif_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @fsl_spdif_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1460, i32 4}
!29 = !{ptr @fsl_spdif_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @fsl_spdif_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1466, i32 48}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1468, i32 3}
!35 = !{ptr @fsl_spdif_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @fsl_spdif_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1473, i32 49}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1475, i32 3}
!41 = !{ptr @fsl_spdif_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @fsl_spdif_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1479, i32 49}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1481, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @fsl_spdif_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @fsl_spdif_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1484, i32 47}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1486, i32 3}
!54 = !{ptr @fsl_spdif_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @fsl_spdif_probe._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @fsl_spdif_probe.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1499, i32 2}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1527, i32 34}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1534, i32 3}
!63 = !{ptr @fsl_spdif_probe._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @fsl_spdif_probe._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1208, i32 18}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1201, i32 18}
!69 = !{ptr @fsl_spdif_dai, !70, !"fsl_spdif_dai", i1 false, i1 false}
!70 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1198, i32 34}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1082, i32 11}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1092, i32 11}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1101, i32 11}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1109, i32 11}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1118, i32 11}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1126, i32 11}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1137, i32 11}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1146, i32 11}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1155, i32 11}
!89 = !{ptr @fsl_spdif_ctrls, !90, !"fsl_spdif_ctrls", i1 false, i1 false}
!90 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1078, i32 32}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 438, i32 2}
!93 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @spdif_write_channel_status.__UNIQUE_ID_ddebug257, !92, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 443, i32 2}
!98 = !{ptr @spdif_write_channel_status.__UNIQUE_ID_ddebug258, !97, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1013, i32 2}
!101 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @spdif_get_rxclk_rate.__UNIQUE_ID_ddebug262, !100, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1014, i32 2}
!105 = !{ptr @spdif_get_rxclk_rate.__UNIQUE_ID_ddebug263, !104, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1015, i32 2}
!108 = !{ptr @spdif_get_rxclk_rate.__UNIQUE_ID_ddebug264, !107, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!109 = distinct !{null, !110, !"srpc_dpll_locked", i1 false, i1 false}
!110 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 40, i32 11}
!111 = distinct !{null, !112, !"gainsel_multi", i1 false, i1 false}
!112 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 985, i32 12}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 939, i32 3}
!115 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @fsl_spdif_bypass_put._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @fsl_spdif_bypass_put._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1168, i32 11}
!120 = !{ptr @fsl_spdif_ctrls_rcm, !121, !"fsl_spdif_ctrls_rcm", i1 false, i1 false}
!121 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1165, i32 32}
!122 = !{ptr @fsl_spdif_dai_ops, !123, !"fsl_spdif_dai_ops", i1 false, i1 false}
!123 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 687, i32 37}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 572, i32 4}
!126 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @fsl_spdif_startup._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @fsl_spdif_startup._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 642, i32 4}
!131 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @fsl_spdif_hw_params._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @fsl_spdif_hw_params._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 507, i32 3}
!136 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @spdif_set_sample_rate._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @spdif_set_sample_rate._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 513, i32 3}
!141 = !{ptr @spdif_set_sample_rate._entry.60, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @spdif_set_sample_rate._entry_ptr.62, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 519, i32 3}
!145 = !{ptr @spdif_set_sample_rate._entry.63, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @spdif_set_sample_rate._entry_ptr.65, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 532, i32 3}
!149 = !{ptr @spdif_set_sample_rate._entry.66, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @spdif_set_sample_rate._entry_ptr.68, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 537, i32 2}
!153 = !{ptr @spdif_set_sample_rate.__UNIQUE_ID_ddebug259, !152, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 539, i32 2}
!156 = !{ptr @spdif_set_sample_rate.__UNIQUE_ID_ddebug260, !155, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 552, i32 2}
!159 = !{ptr @spdif_set_sample_rate.__UNIQUE_ID_ddebug261, !158, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!160 = !{ptr @fsl_spdif_regmap_config, !161, !"fsl_spdif_regmap_config", i1 false, i1 false}
!161 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1294, i32 35}
!162 = !{ptr @fsl_spdif_reg_defaults, !163, !"fsl_spdif_reg_defaults", i1 false, i1 false}
!163 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1222, i32 33}
!164 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 337, i32 3}
!166 = !{ptr @.str.73, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @spdif_isr.__UNIQUE_ID_ddebug246, !165, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!168 = !{ptr @.str.74, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 340, i32 3}
!170 = !{ptr @spdif_isr.__UNIQUE_ID_ddebug247, !169, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!171 = !{ptr @.str.75, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 343, i32 3}
!173 = !{ptr @spdif_isr.__UNIQUE_ID_ddebug248, !172, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 346, i32 3}
!176 = !{ptr @spdif_isr.__UNIQUE_ID_ddebug249, !175, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!177 = !{ptr @.str.77, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 352, i32 3}
!179 = !{ptr @spdif_isr.__UNIQUE_ID_ddebug250, !178, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!180 = !{ptr @.str.78, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 358, i32 3}
!182 = !{ptr @spdif_isr.__UNIQUE_ID_ddebug251, !181, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!183 = !{ptr @.str.79, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 364, i32 3}
!185 = !{ptr @spdif_isr.__UNIQUE_ID_ddebug252, !184, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!186 = !{ptr @.str.80, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 373, i32 3}
!188 = !{ptr @spdif_isr.__UNIQUE_ID_ddebug253, !187, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!189 = !{ptr @.str.81, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 376, i32 3}
!191 = !{ptr @spdif_isr.__UNIQUE_ID_ddebug254, !190, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!192 = !{ptr @.str.82, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 383, i32 3}
!194 = !{ptr @spdif_isr.__UNIQUE_ID_ddebug255, !193, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!195 = !{ptr @.str.83, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 387, i32 3}
!197 = !{ptr @spdif_isr.__UNIQUE_ID_ddebug256, !196, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!198 = !{ptr @.str.84, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 217, i32 2}
!200 = !{ptr @.str.85, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @spdif_irq_dpll_lock.__UNIQUE_ID_ddebug241, !199, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!202 = !{ptr @.str.86, !199, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.87, !199, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.88, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 229, i32 2}
!206 = !{ptr @.str.89, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @spdif_irq_sym_error.__UNIQUE_ID_ddebug242, !205, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!208 = !{ptr @.str.90, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 256, i32 3}
!210 = !{ptr @.str.91, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @spdif_irq_uqrx_full._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @spdif_irq_uqrx_full._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.92, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 260, i32 2}
!215 = !{ptr @spdif_irq_uqrx_full.__UNIQUE_ID_ddebug243, !214, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!216 = !{ptr @.str.94, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 265, i32 3}
!218 = !{ptr @spdif_irq_uqrx_full._entry.93, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @spdif_irq_uqrx_full._entry_ptr.95, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.96, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 281, i32 2}
!222 = !{ptr @.str.97, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @spdif_irq_uq_sync.__UNIQUE_ID_ddebug244, !221, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!224 = !{ptr @.str.98, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 299, i32 2}
!226 = !{ptr @.str.99, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @spdif_irq_uq_err.__UNIQUE_ID_ddebug245, !225, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!228 = !{ptr @fsl_spdif_probe_txclk.rate, !229, !"rate", i1 false, i1 false}
!229 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1373, i32 19}
!230 = !{ptr @.str.100, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1383, i32 16}
!232 = !{ptr @.str.101, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1386, i32 4}
!234 = !{ptr @.str.102, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @fsl_spdif_probe_txclk._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @fsl_spdif_probe_txclk._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.103, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1406, i32 2}
!239 = !{ptr @fsl_spdif_probe_txclk.__UNIQUE_ID_ddebug265, !238, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!240 = !{ptr @.str.104, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1408, i32 2}
!242 = !{ptr @fsl_spdif_probe_txclk.__UNIQUE_ID_ddebug266, !241, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!243 = !{ptr @.str.105, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1411, i32 3}
!245 = !{ptr @fsl_spdif_probe_txclk.__UNIQUE_ID_ddebug267, !244, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!246 = !{ptr @.str.106, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1413, i32 2}
!248 = !{ptr @fsl_spdif_probe_txclk.__UNIQUE_ID_ddebug268, !247, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!249 = !{ptr @fsl_spdif_txclk_caldiv.rate, !250, !"rate", i1 false, i1 false}
!250 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1312, i32 19}
!251 = !{ptr @.str.107, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1218, i32 11}
!253 = !{ptr @fsl_spdif_component, !254, !"fsl_spdif_component", i1 false, i1 false}
!254 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1217, i32 46}
!255 = !{ptr @fsl_spdif_dt_ids, !256, !"fsl_spdif_dt_ids", i1 false, i1 false}
!256 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1641, i32 34}
!257 = !{ptr @fsl_spdif_imx35, !258, !"fsl_spdif_imx35", i1 false, i1 false}
!258 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 150, i32 34}
!259 = !{ptr @fsl_spdif_vf610, !260, !"fsl_spdif_vf610", i1 false, i1 false}
!260 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 140, i32 34}
!261 = !{ptr @fsl_spdif_imx6sx, !262, !"fsl_spdif_imx6sx", i1 false, i1 false}
!262 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 160, i32 34}
!263 = !{ptr @fsl_spdif_imx8qm, !264, !"fsl_spdif_imx8qm", i1 false, i1 false}
!264 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 171, i32 34}
!265 = !{ptr @fsl_spdif_imx8mm, !266, !"fsl_spdif_imx8mm", i1 false, i1 false}
!266 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 181, i32 34}
!267 = !{ptr @fsl_spdif_imx8ulp, !268, !"fsl_spdif_imx8ulp", i1 false, i1 false}
!268 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 191, i32 34}
!269 = !{ptr @fsl_spdif_pm, !270, !"fsl_spdif_pm", i1 false, i1 false}
!270 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1634, i32 32}
!271 = !{ptr @.str.108, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1585, i32 3}
!273 = !{ptr @.str.109, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @fsl_spdif_runtime_resume._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @fsl_spdif_runtime_resume._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.111, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/fsl/fsl_spdif.c", i32 1592, i32 4}
!278 = !{ptr @fsl_spdif_runtime_resume._entry.110, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @fsl_spdif_runtime_resume._entry_ptr.112, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{i32 1, !"wchar_size", i32 2}
!281 = !{i32 1, !"min_enum_size", i32 4}
!282 = !{i32 8, !"branch-target-enforcement", i32 0}
!283 = !{i32 8, !"sign-return-address", i32 0}
!284 = !{i32 8, !"sign-return-address-all", i32 0}
!285 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!286 = !{i32 7, !"uwtable", i32 1}
!287 = !{i32 7, !"frame-pointer", i32 2}
!288 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!289 = !{!"auto-init"}
!290 = !{i64 2148770042, i64 2148770047, i64 2148770060, i64 2148770104, i64 2148770138, i64 2148770159}
!291 = !{i8 0, i8 2}
!292 = !{!"branch_weights", i32 2000, i32 1}
!293 = !{i64 2148678761, i64 2148679041, i64 2148679375, i64 2148679709}
!294 = !{!"branch_weights", i32 1, i32 2000}
