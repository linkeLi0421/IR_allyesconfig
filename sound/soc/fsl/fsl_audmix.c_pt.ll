; ModuleID = '/llk/IR_all_yes/sound/soc/fsl/fsl_audmix.c_pt.bc'
source_filename = "../sound/soc/fsl/fsl_audmix.c"
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
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.atomic_t = type { i32 }
%struct.fsl_audmix_state = type { i8, i8, [64 x i8] }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.fsl_audmix = type { ptr, ptr, ptr, %struct.spinlock, i8 }
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
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@__initcall__kmod_snd_soc_fsl_audmix__242_576_fsl_audmix_driver_init6 = internal global ptr @fsl_audmix_driver_init, section ".initcall6.init", align 4
@fsl_audmix_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_audmix_probe, ptr @fsl_audmix_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_audmix_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_audmix_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_audmix_driver_exit = internal global ptr @fsl_audmix_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description243 = internal constant [58 x i8] c"snd_soc_fsl_audmix.description=NXP AUDMIX ASoC DAI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [62 x i8] c"snd_soc_fsl_audmix.author=Viorel Suman <viorel.suman@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias245 = internal constant [45 x i8] c"snd_soc_fsl_audmix.alias=platform:fsl-audmix\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [57 x i8] c"snd_soc_fsl_audmix.file=sound/soc/fsl/snd-soc-fsl-audmix\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [34 x i8] c"snd_soc_fsl_audmix.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl-audmix\00", [21 x i8] zeroinitializer }, align 32
@fsl_audmix_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qm-audmix\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@fsl_audmix_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_audmix_runtime_suspend, ptr @fsl_audmix_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@fsl_audmix_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@fsl_audmix_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @fsl_audmix_writeable_reg, ptr @fsl_audmix_readable_reg, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 576, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_audmix_reg, i32 16, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"fsl_audmix:479:(&fsl_audmix_regmap_config)->lock\00", [47 x i8] zeroinitializer }, align 32
@fsl_audmix_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 481, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to init regmap\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl_audmix_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/fsl/fsl_audmix.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_audmix_probe._entry_ptr = internal global ptr @fsl_audmix_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@fsl_audmix_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 487, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get ipg clock\0A\00", [39 x i8] zeroinitializer }, align 32
@fsl_audmix_probe._entry_ptr.10 = internal global ptr @fsl_audmix_probe._entry.8, section ".printk_index", align 4
@fsl_audmix_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@fsl_audmix_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.19, ptr @fsl_audmix_snd_controls, i32 21, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@fsl_audmix_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.74, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @fsl_audmix_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.75, i64 1092, i32 2046, i32 8000, i32 96000, i32 8, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.76, i64 1092, i32 2046, i32 8000, i32 96000, i32 8, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.77, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @fsl_audmix_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.78, i64 1092, i32 2046, i32 8000, i32 96000, i32 8, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.79, i64 1092, i32 2046, i32 8000, i32 96000, i32 8, i32 8, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@fsl_audmix_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 499, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register ASoC DAI\0A\00", [35 x i8] zeroinitializer }, align 32
@fsl_audmix_probe._entry_ptr.14 = internal global ptr @fsl_audmix_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx-audmix\00", [21 x i8] zeroinitializer }, align 32
@fsl_audmix_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 506, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register platform: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@fsl_audmix_probe._entry_ptr.18 = internal global ptr @fsl_audmix_probe._entry.16, section ".printk_index", align 4
@fsl_audmix_reg = internal constant { [16 x %struct.reg_default], [32 x i8] } { [16 x %struct.reg_default] [%struct.reg_default { i32 512, i32 96 }, %struct.reg_default { i32 516, i32 3 }, %struct.reg_default { i32 520, i32 0 }, %struct.reg_default { i32 524, i32 262143 }, %struct.reg_default { i32 528, i32 174762 }, %struct.reg_default { i32 532, i32 196608 }, %struct.reg_default { i32 536, i32 16 }, %struct.reg_default { i32 540, i32 0 }, %struct.reg_default { i32 544, i32 0 }, %struct.reg_default { i32 552, i32 0 }, %struct.reg_default { i32 556, i32 262143 }, %struct.reg_default { i32 560, i32 174762 }, %struct.reg_default { i32 564, i32 196608 }, %struct.reg_default { i32 568, i32 16 }, %struct.reg_default { i32 572, i32 0 }, %struct.reg_default { i32 576, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl-audmix-dai\00", [17 x i8] zeroinitializer }, align 32
@fsl_audmix_snd_controls = internal constant { [21 x %struct.snd_kcontrol_new], [240 x i8] } { [21 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 2, i32 0, ptr @snd_soc_info_enum_double, ptr null, ptr @fsl_audmix_put_mix_clk_src, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @fsl_audmix_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 2, i32 0, ptr @snd_soc_info_enum_double, ptr null, ptr @fsl_audmix_put_out_src, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @fsl_audmix_enum, i64 64) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @fsl_audmix_enum, i64 128) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @fsl_audmix_enum, i64 192) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @fsl_audmix_enum, i64 256) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @fsl_audmix_enum, i64 320) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @fsl_audmix_enum, i64 384) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @fsl_audmix_enum, i64 448) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @fsl_audmix_enum, i64 512) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.33 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @fsl_audmix_enum, i64 576) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @fsl_audmix_enum, i64 640) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }], [240 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mixing Clock Source\00", [44 x i8] zeroinitializer }, align 32
@fsl_audmix_enum = internal constant { [11 x %struct.soc_enum], [160 x i8] } { [11 x %struct.soc_enum] [%struct.soc_enum { i32 512, i8 0, i8 0, i32 2, i32 1, ptr @tdm_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 512, i8 1, i8 1, i32 4, i32 3, ptr @mode_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 512, i8 3, i8 3, i32 5, i32 7, ptr @width_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 512, i8 7, i8 7, i32 2, i32 1, ptr @mask_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 512, i8 8, i8 8, i32 2, i32 1, ptr @mask_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 512, i8 9, i8 9, i32 2, i32 1, ptr @endis_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 512, i8 10, i8 10, i32 2, i32 1, ptr @tdm_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 520, i8 0, i8 0, i32 2, i32 1, ptr @endis_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 520, i8 1, i8 1, i32 2, i32 1, ptr @updn_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 552, i8 0, i8 0, i32 2, i32 1, ptr @endis_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 552, i8 1, i8 1, i32 2, i32 1, ptr @updn_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }], [160 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Output Source\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Output Width\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Frame Rate Diff Error\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Clock Freq Diff Error\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Sync Mode Config\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Sync Mode Clk Source\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TDM1 Attenuation\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TDM1 Attenuation Direction\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TDM1 Attenuation Step Divider\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 4095, i32 4095, i32 520, i32 520, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TDM1 Attenuation Initial Value\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 262143, i32 262143, i32 524, i32 524, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TDM1 Attenuation Step Up Factor\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 262143, i32 262143, i32 528, i32 528, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TDM1 Attenuation Step Down Factor\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 262143, i32 262143, i32 532, i32 532, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TDM1 Attenuation Step Target\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 262143, i32 262143, i32 536, i32 536, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TDM2 Attenuation\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TDM2 Attenuation Direction\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TDM2 Attenuation Step Divider\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 4095, i32 4095, i32 552, i32 552, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TDM2 Attenuation Initial Value\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 262143, i32 262143, i32 556, i32 556, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TDM2 Attenuation Step Up Factor\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 262143, i32 262143, i32 560, i32 560, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TDM2 Attenuation Step Down Factor\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 262143, i32 262143, i32 564, i32 564, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TDM2 Attenuation Step Target\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 262143, i32 262143, i32 568, i32 568, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@fsl_audmix_put_mix_clk_src.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.4, ptr @.str.52, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_soc_fsl_audmix\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fsl_audmix_put_mix_clk_src\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TDMs=x%08x, val=x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@fsl_audmix_put_mix_clk_src._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.4, i32 135, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Started TDM%d needed for config propagation!\0A\00", [50 x i8] zeroinitializer }, align 32
@fsl_audmix_put_mix_clk_src._entry_ptr = internal global ptr @fsl_audmix_put_mix_clk_src._entry, section ".printk_index", align 4
@fsl_audmix_put_mix_clk_src._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.51, ptr @.str.4, i32 142, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"The selected clock source has no TDM%d enabled!\0A\00", [47 x i8] zeroinitializer }, align 32
@fsl_audmix_put_mix_clk_src._entry_ptr.56 = internal global ptr @fsl_audmix_put_mix_clk_src._entry.54, section ".printk_index", align 4
@tdm_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.57, ptr @.str.58], [24 x i8] zeroinitializer }, align 32
@mode_sel = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.59, ptr @.str.57, ptr @.str.58, ptr @.str.60], [16 x i8] zeroinitializer }, align 32
@width_sel = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], [44 x i8] zeroinitializer }, align 32
@mask_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.66, ptr @.str.67], [24 x i8] zeroinitializer }, align 32
@endis_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.59, ptr @.str.68], [24 x i8] zeroinitializer }, align 32
@updn_sel = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.69, ptr @.str.70], [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TDM1\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TDM2\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Mixed\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"16b\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"18b\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"20b\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"24b\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"32b\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Unmask\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Mask\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Downward\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Upward\00", [25 x i8] zeroinitializer }, align 32
@fsl_audmix_put_out_src.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.71, ptr @.str.4, ptr @.str.52, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl_audmix_put_out_src\00", [41 x i8] zeroinitializer }, align 32
@fsl_audmix_put_out_src._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.71, ptr @.str.4, i32 184, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@fsl_audmix_put_out_src._entry_ptr = internal global ptr @fsl_audmix_put_out_src._entry, section ".printk_index", align 4
@prms = internal constant { [4 x [4 x %struct.fsl_audmix_state]], [256 x i8] } { [4 x [4 x %struct.fsl_audmix_state]] [[4 x %struct.fsl_audmix_state] [%struct.fsl_audmix_state zeroinitializer, %struct.fsl_audmix_state { i8 1, i8 1, [64 x i8] c"DIS->TDM1: TDM1 not started!\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.fsl_audmix_state { i8 2, i8 2, [64 x i8] c"DIS->TDM2: TDM2 not started!\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.fsl_audmix_state { i8 3, i8 0, [64 x i8] c"DIS->MIX: Please start both TDMs!\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [4 x %struct.fsl_audmix_state] [%struct.fsl_audmix_state { i8 1, i8 0, [64 x i8] c"TDM1->DIS: TDM1 not started!\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.fsl_audmix_state zeroinitializer, %struct.fsl_audmix_state { i8 3, i8 2, [64 x i8] c"TDM1->TDM2: Please start both TDMs!\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.fsl_audmix_state { i8 3, i8 0, [64 x i8] c"TDM1->MIX: Please start both TDMs!\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [4 x %struct.fsl_audmix_state] [%struct.fsl_audmix_state { i8 2, i8 0, [64 x i8] c"TDM2->DIS: TDM2 not started!\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.fsl_audmix_state { i8 3, i8 1, [64 x i8] c"TDM2->TDM1: Please start both TDMs!\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.fsl_audmix_state zeroinitializer, %struct.fsl_audmix_state { i8 3, i8 0, [64 x i8] c"TDM2->MIX: Please start both TDMs!\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [4 x %struct.fsl_audmix_state] [%struct.fsl_audmix_state { i8 3, i8 0, [64 x i8] c"MIX->DIS: Please start both TDMs!\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.fsl_audmix_state { i8 3, i8 1, [64 x i8] c"MIX->TDM1: Please start both TDMs!\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.fsl_audmix_state { i8 3, i8 2, [64 x i8] c"MIX->TDM2: Please start both TDMs!\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.fsl_audmix_state zeroinitializer]], [256 x i8] zeroinitializer }, align 32
@fsl_audmix_state_trans.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.72, ptr @.str.4, ptr @.str.73, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl_audmix_state_trans\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"audmix-0\00", [23 x i8] zeroinitializer }, align 32
@fsl_audmix_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @fsl_audmix_dai_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_audmix_dai_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AUDMIX-Capture-0\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AUDMIX-Playback-0\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"audmix-1\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AUDMIX-Capture-1\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AUDMIX-Playback-1\00", [46 x i8] zeroinitializer }, align 32
@fsl_audmix_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.4, i32 537, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable IPG clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fsl_audmix_runtime_resume\00", [38 x i8] zeroinitializer }, align 32
@fsl_audmix_runtime_resume._entry_ptr = internal global ptr @fsl_audmix_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.83 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"fsl_audmix_driver\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 567, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 571, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"fsl_audmix_ids\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 455, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant [14 x i8] c"fsl_audmix_pm\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 559, i32 32 }
@___asan_gen_.96 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [25 x i8] c"fsl_audmix_regmap_config\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 443, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 479, i32 17 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 481, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 485, i32 36 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 487, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 491, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [21 x i8] c"fsl_audmix_component\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 373, i32 46 }
@___asan_gen_.141 = private unnamed_addr constant [15 x i8] c"fsl_audmix_dai\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 324, i32 34 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 499, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 503, i32 50 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 506, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [15 x i8] c"fsl_audmix_reg\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 424, i32 33 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 374, i32 13 }
@___asan_gen_.165 = private unnamed_addr constant [24 x i8] c"fsl_audmix_snd_controls\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 200, i32 38 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 203, i32 11 }
@___asan_gen_.171 = private unnamed_addr constant [16 x i8] c"fsl_audmix_enum\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 28, i32 30 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 209, i32 11 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 214, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 215, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 216, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 217, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 218, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 220, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 221, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 222, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 224, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 226, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 228, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 230, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 233, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 234, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 235, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 237, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 239, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 241, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 243, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 126, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 133, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 140, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant [8 x i8] c"tdm_sel\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 21, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [9 x i8] c"mode_sel\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 22, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [10 x i8] c"width_sel\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 23, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant [9 x i8] c"mask_sel\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 26, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [10 x i8] c"endis_sel\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 24, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant [9 x i8] c"updn_sel\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 25, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 21, i32 17 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 21, i32 25 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 22, i32 18 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 22, i32 46 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 23, i32 19 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 23, i32 26 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 23, i32 33 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 23, i32 40 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 23, i32 47 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 26, i32 18 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 26, i32 28 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 24, i32 31 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 25, i32 18 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 25, i32 30 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 172, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 182, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant [5 x i8] c"prms\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 51, i32 38 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 93, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 327, i32 11 }
@___asan_gen_.343 = private unnamed_addr constant [19 x i8] c"fsl_audmix_dai_ops\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 319, i32 37 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 338, i32 19 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 329, i32 19 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 350, i32 11 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 361, i32 19 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 352, i32 19 }
@___asan_gen_.361 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.367 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.368 = private constant [30 x i8] c"../sound/soc/fsl/fsl_audmix.c\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 537, i32 3 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @__UNIQUE_ID_alias245, ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__exitcall_fsl_audmix_driver_exit, ptr @__initcall__kmod_snd_soc_fsl_audmix__242_576_fsl_audmix_driver_init6, ptr @fsl_audmix_driver_exit, ptr @fsl_audmix_probe._entry, ptr @fsl_audmix_probe._entry.12, ptr @fsl_audmix_probe._entry.16, ptr @fsl_audmix_probe._entry.8, ptr @fsl_audmix_probe._entry_ptr, ptr @fsl_audmix_probe._entry_ptr.10, ptr @fsl_audmix_probe._entry_ptr.14, ptr @fsl_audmix_probe._entry_ptr.18, ptr @fsl_audmix_put_mix_clk_src._entry, ptr @fsl_audmix_put_mix_clk_src._entry.54, ptr @fsl_audmix_put_mix_clk_src._entry_ptr, ptr @fsl_audmix_put_mix_clk_src._entry_ptr.56, ptr @fsl_audmix_put_out_src._entry, ptr @fsl_audmix_put_out_src._entry_ptr, ptr @fsl_audmix_runtime_resume._entry, ptr @fsl_audmix_runtime_resume._entry_ptr, ptr @fsl_audmix_driver, ptr @.str, ptr @fsl_audmix_ids, ptr @fsl_audmix_pm, ptr @fsl_audmix_probe._key, ptr @fsl_audmix_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @fsl_audmix_probe.__key, ptr @.str.11, ptr @fsl_audmix_component, ptr @fsl_audmix_dai, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @fsl_audmix_reg, ptr @.str.19, ptr @fsl_audmix_snd_controls, ptr @.str.20, ptr @fsl_audmix_enum, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.compoundliteral, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @tdm_sel, ptr @mode_sel, ptr @width_sel, ptr @mask_sel, ptr @endis_sel, ptr @updn_sel, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @prms, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @fsl_audmix_dai_ops, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_reg to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_snd_controls to i32), i32 1008, i32 1248, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_enum to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_put_mix_clk_src._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_put_mix_clk_src._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdm_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_sel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @width_sel to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mask_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @endis_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @updn_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_put_out_src._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prms to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_audmix_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_audmix_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_audmix_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_audmix_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_audmix_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_audmix_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @fsl_audmix_regmap_config, ptr noundef nonnull @fsl_audmix_probe._key, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.fsl_audmix, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %regmap, align 4
  %cmp.i76 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #7
  %ipg_clk = getelementptr inbounds %struct.fsl_audmix, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call14, ptr %ipg_clk, align 4
  %cmp.i77 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %do.end20, label %do.body24

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #10
  %6 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipg_clk, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

do.body24:                                        ; preds = %if.end13
  %lock = getelementptr inbounds %struct.fsl_audmix, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @fsl_audmix_probe.__key, i16 noundef signext 3) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call28 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @fsl_audmix_component, ptr noundef nonnull @fsl_audmix_dai, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end34, label %do.end33

do.end33:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #10
  br label %err_disable_pm

if.end34:                                         ; preds = %do.body24
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #7
  %10 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 255, i32 48)
  %12 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev1, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %fwnode.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %10, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.15, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %properties.i.i, align 8
  %18 = call ptr @memset(ptr %id3.i.i, i32 0, i32 20)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #7
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %call.i, align 4
  %cmp.i78 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %if.then39, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %call.i.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %20) #10
  br label %err_disable_pm

err_disable_pm:                                   ; preds = %if.then39, %do.end33
  %ret.0 = phi i32 [ %call28, %do.end33 ], [ %20, %if.then39 ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %err_disable_pm, %if.end34.cleanup_crit_edge, %do.end20, %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then4 ], [ %4, %do.end ], [ %8, %do.end20 ], [ %ret.0, %err_disable_pm ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_audmix_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_device_unregister(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
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
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_audmix_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -512
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %2 = icmp ult i32 %1, 15
  %switch.cast = trunc i32 %1 to i15
  %switch.downshift = lshr i15 -899, %switch.cast
  %3 = and i15 %switch.downshift, 1
  %4 = sext i15 %3 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %switch.masked = icmp ne i15 %3, 0
  %retval.0 = select i1 %2, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_audmix_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -512
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %2 = icmp ult i32 %1, 17
  %switch.cast = trunc i32 %1 to i17
  %switch.downshift = lshr i17 -513, %switch.cast
  %3 = and i17 %switch.downshift, 1
  %switch.masked = icmp ne i17 %3, 0
  %retval.0 = select i1 %2, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_audmix_put_mix_clk_src(ptr noundef %kcontrol, ptr noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 512) #7
  %and = and i32 %call1, 1
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %values.i = getelementptr inbounds %struct.soc_enum, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %values.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %values.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %entry.snd_soc_enum_item_to_val.exit_crit_edge, label %if.end.i

entry.snd_soc_enum_item_to_val.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_soc_enum_item_to_val.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i32, ptr %12, i32 %10
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  br label %snd_soc_enum_item_to_val.exit

snd_soc_enum_item_to_val.exit:                    ; preds = %if.end.i, %entry.snd_soc_enum_item_to_val.exit_crit_edge
  %retval.0.i47 = phi i32 [ %14, %if.end.i ], [ %10, %entry.snd_soc_enum_item_to_val.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_audmix_put_mix_clk_src.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_audmix_put_mix_clk_src, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %snd_soc_enum_item_to_val.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %tdms = getelementptr inbounds %struct.fsl_audmix, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %tdms to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tdms, align 4
  %conv = zext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_audmix_put_mix_clk_src.__UNIQUE_ID_ddebug240, ptr noundef %16, ptr noundef nonnull @.str.52, i32 noundef %conv, i32 noundef %retval.0.i47) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %snd_soc_enum_item_to_val.exit
  %tdms6 = getelementptr inbounds %struct.fsl_audmix, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %tdms6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tdms6, align 4
  %conv7 = zext i8 %20 to i32
  %shl = shl nuw nsw i32 1, %and
  %and8 = and i32 %shl, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.end13, label %if.end15

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %add = add nuw nsw i32 %and, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.53, i32 noundef %add) #10
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %shl18 = shl nuw i32 1, %retval.0.i47
  %and19 = and i32 %shl18, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %add26 = add i32 %retval.0.i47, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.55, i32 noundef %add26) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call i32 @snd_soc_put_enum_double(ptr noundef %kcontrol, ptr noundef %ucontrol) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end24, %do.end13
  %retval.0 = phi i32 [ %call28, %if.end27 ], [ -22, %do.end24 ], [ -22, %do.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_audmix_put_out_src(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  %byval-temp56 = alloca %struct.fsl_audmix_state, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 512) #7
  %and = lshr i32 %call1, 1
  %shr = and i32 %and, 3
  %and2 = and i32 %call1, 1
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %values.i = getelementptr inbounds %struct.soc_enum, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %values.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %values.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %entry.snd_soc_enum_item_to_val.exit_crit_edge, label %if.end.i

entry.snd_soc_enum_item_to_val.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_soc_enum_item_to_val.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i32, ptr %12, i32 %10
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  br label %snd_soc_enum_item_to_val.exit

snd_soc_enum_item_to_val.exit:                    ; preds = %if.end.i, %entry.snd_soc_enum_item_to_val.exit_crit_edge
  %retval.0.i55 = phi i32 [ %14, %if.end.i ], [ %10, %entry.snd_soc_enum_item_to_val.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_audmix_put_out_src.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_audmix_put_out_src, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !199

if.then:                                          ; preds = %snd_soc_enum_item_to_val.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %tdms = getelementptr inbounds %struct.fsl_audmix, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %tdms to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tdms, align 4
  %conv = zext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_audmix_put_out_src.__UNIQUE_ID_ddebug241, ptr noundef %16, ptr noundef nonnull @.str.52, i32 noundef %conv, i32 noundef %retval.0.i55) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %snd_soc_enum_item_to_val.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %retval.0.i55)
  %cmp = icmp eq i32 %shr, %retval.0.i55
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %tdms11 = getelementptr inbounds %struct.fsl_audmix, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %tdms11 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tdms11, align 4
  %conv12 = zext i8 %20 to i32
  %shl = shl nuw nsw i32 1, %and2
  %and13 = and i32 %shl, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %add = add nuw nsw i32 %and2, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.53, i32 noundef %add) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %arrayidx22 = getelementptr [4 x [4 x %struct.fsl_audmix_state]], ptr @prms, i32 0, i32 %shr, i32 %retval.0.i55
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %byval-temp56)
  %23 = call ptr @memcpy(ptr %byval-temp56, ptr %arrayidx22, i32 66)
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i, align 4
  %tdms.i = getelementptr inbounds %struct.fsl_audmix, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %tdms.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tdms.i, align 4
  %30 = ptrtoint ptr %byval-temp56 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %byval-temp56, align 4
  %and16.i = and i8 %31, %29
  call void @__sanitizer_cov_trace_cmp1(i8 %and16.i, i8 %31)
  %cmp.not.i = icmp eq i8 %and16.i, %31
  br i1 %cmp.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_audmix_state_trans.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_audmix_put_out_src, %if.then9.i)) #7
          to label %fsl_audmix_state_trans.exit [label %if.then9.i], !srcloc !199

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %msg.i = getelementptr inbounds %struct.fsl_audmix_state, ptr %byval-temp56, i32 0, i32 2
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_audmix_state_trans.__UNIQUE_ID_ddebug239, ptr noundef %33, ptr noundef nonnull @.str.73, ptr noundef %msg.i) #7
  br label %fsl_audmix_state_trans.exit

if.end10.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %clk.i = getelementptr inbounds %struct.fsl_audmix_state, ptr %byval-temp56, i32 0, i32 1
  %34 = ptrtoint ptr %clk.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %clk.i, align 1
  %.off.i = add i8 %35, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  %conv13.i = zext i8 %35 to i32
  %sub.i = add nsw i32 %conv13.i, -1
  %mask.0.ph = zext i1 %switch.i to i32
  %ctr.0.ph = select i1 %switch.i, i32 %sub.i, i32 0
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %byval-temp56)
  %or = or i32 %mask.0.ph, 6
  %shl27 = shl i32 %retval.0.i55, 1
  %and28 = and i32 %shl27, 6
  %or29 = or i32 %ctr.0.ph, %and28
  %call30 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 512, i32 noundef %or, i32 noundef %or29) #7
  br label %cleanup

fsl_audmix_state_trans.exit:                      ; preds = %if.then9.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %byval-temp56)
  br label %cleanup

cleanup:                                          ; preds = %fsl_audmix_state_trans.exit, %if.end10.i, %do.end18, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.end10.i ], [ -22, %do.end18 ], [ 0, %do.end.cleanup_crit_edge ], [ -22, %fsl_audmix_state_trans.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_audmix_dai_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %and = and i32 %fmt, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cond = icmp eq i32 %and, 4
  br i1 %cond, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %2 = trunc i32 %fmt to i16
  %trunc = and i16 %2, -4096
  %3 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %sw.epilog.cleanup_crit_edge [
    i16 4096, label %sw.epilog.sw.epilog3_crit_edge
    i16 16384, label %sw.epilog.sw.epilog3_crit_edge18
  ]

sw.epilog.sw.epilog3_crit_edge18:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3

sw.epilog.sw.epilog3_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog3

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog3:                                       ; preds = %sw.epilog.sw.epilog3_crit_edge, %sw.epilog.sw.epilog3_crit_edge18
  %and4 = and i32 %fmt, 3840
  %4 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %and4, label %sw.epilog3.cleanup_crit_edge [
    i32 768, label %sw.epilog3.sw.epilog9_crit_edge
    i32 0, label %sw.bb6
  ]

sw.epilog3.sw.epilog9_crit_edge:                  ; preds = %sw.epilog3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog9

sw.epilog3.cleanup_crit_edge:                     ; preds = %sw.epilog3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb6:                                           ; preds = %sw.epilog3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog9

sw.epilog9:                                       ; preds = %sw.bb6, %sw.epilog3.sw.epilog9_crit_edge
  %ctr.0 = phi i32 [ 64, %sw.bb6 ], [ 0, %sw.epilog3.sw.epilog9_crit_edge ]
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 512, i32 noundef 64, i32 noundef %ctr.0) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog9, %sw.epilog3.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog9 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_audmix_dai_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.do.body1_crit_edge
    i32 6, label %if.end.do.body1_crit_edge41
    i32 4, label %if.end.do.body1_crit_edge42
    i32 0, label %if.end.do.body12_crit_edge
    i32 5, label %if.end.do.body12_crit_edge43
    i32 3, label %if.end.do.body12_crit_edge44
  ]

if.end.do.body12_crit_edge44:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12

if.end.do.body12_crit_edge43:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12

if.end.do.body12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12

if.end.do.body1_crit_edge42:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1

if.end.do.body1_crit_edge41:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1

if.end.do.body1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1:                                         ; preds = %if.end.do.body1_crit_edge, %if.end.do.body1_crit_edge41, %if.end.do.body1_crit_edge42
  %lock = getelementptr inbounds %struct.fsl_audmix, ptr %3, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %7 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %shl = shl nuw i32 1, %10
  %tdms = getelementptr inbounds %struct.fsl_audmix, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %tdms to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tdms, align 4
  %13 = trunc i32 %shl to i8
  %conv8 = or i8 %12, %13
  store i8 %conv8, ptr %tdms, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  br label %cleanup

do.body12:                                        ; preds = %if.end.do.body12_crit_edge, %if.end.do.body12_crit_edge43, %if.end.do.body12_crit_edge44
  %lock18 = getelementptr inbounds %struct.fsl_audmix, ptr %3, i32 0, i32 3
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock18) #7
  %driver25 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %14 = ptrtoint ptr %driver25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver25, align 4
  %id26 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %id26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id26, align 4
  %shl27 = shl nuw i32 1, %17
  %tdms28 = getelementptr inbounds %struct.fsl_audmix, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %tdms28 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tdms28, align 4
  %20 = trunc i32 %shl27 to i8
  %21 = xor i8 %20, -1
  %conv30 = and i8 %19, %21
  store i8 %conv30, ptr %tdms28, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock18, i32 noundef %call20) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body12, %do.body1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.body12 ], [ 0, %do.body1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_audmix_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.fsl_audmix, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #7
  %ipg_clk = getelementptr inbounds %struct.fsl_audmix, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipg_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_audmix_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ipg_clk = getelementptr inbounds %struct.fsl_audmix, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipg_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.fsl_audmix, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %7) #7
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regcache_sync(ptr noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !156, !158, !159, !161, !162, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !188, !189}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195, !196, !197}
!llvm.ident = !{!198}

!0 = !{ptr @__initcall__kmod_snd_soc_fsl_audmix__242_576_fsl_audmix_driver_init6, !1, !"__initcall__kmod_snd_soc_fsl_audmix__242_576_fsl_audmix_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 576, i32 1}
!2 = !{ptr @__exitcall_fsl_audmix_driver_exit, !1, !"__exitcall_fsl_audmix_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description243, !4, !"__UNIQUE_ID_description243", i1 false, i1 false}
!4 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 578, i32 1}
!5 = !{ptr @__UNIQUE_ID_author244, !6, !"__UNIQUE_ID_author244", i1 false, i1 false}
!6 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 579, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias245, !8, !"__UNIQUE_ID_alias245", i1 false, i1 false}
!8 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 580, i32 1}
!9 = !{ptr @__UNIQUE_ID_file246, !10, !"__UNIQUE_ID_file246", i1 false, i1 false}
!10 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 581, i32 1}
!11 = !{ptr @__UNIQUE_ID_license247, !10, !"__UNIQUE_ID_license247", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 571, i32 11}
!14 = !{ptr @fsl_audmix_driver, !15, !"fsl_audmix_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 567, i32 31}
!16 = !{ptr @fsl_audmix_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 479, i32 17}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 481, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @fsl_audmix_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @fsl_audmix_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 485, i32 36}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 487, i32 3}
!31 = !{ptr @fsl_audmix_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @fsl_audmix_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @fsl_audmix_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 491, i32 2}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 499, i32 3}
!38 = !{ptr @fsl_audmix_probe._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @fsl_audmix_probe._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 503, i32 50}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 506, i32 3}
!44 = !{ptr @fsl_audmix_probe._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @fsl_audmix_probe._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @fsl_audmix_regmap_config, !47, !"fsl_audmix_regmap_config", i1 false, i1 false}
!47 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 443, i32 35}
!48 = !{ptr @fsl_audmix_reg, !49, !"fsl_audmix_reg", i1 false, i1 false}
!49 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 424, i32 33}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 374, i32 13}
!52 = !{ptr @fsl_audmix_component, !53, !"fsl_audmix_component", i1 false, i1 false}
!53 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 373, i32 46}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 203, i32 11}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 209, i32 11}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 214, i32 2}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 215, i32 2}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 216, i32 2}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 217, i32 2}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 218, i32 2}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 220, i32 2}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 221, i32 2}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 222, i32 2}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 224, i32 2}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 226, i32 2}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 228, i32 2}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 230, i32 2}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 233, i32 2}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 234, i32 2}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 235, i32 2}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 237, i32 2}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 239, i32 2}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 241, i32 2}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 243, i32 2}
!96 = !{ptr @fsl_audmix_snd_controls, !97, !"fsl_audmix_snd_controls", i1 false, i1 false}
!97 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 200, i32 38}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 126, i32 2}
!100 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @fsl_audmix_put_mix_clk_src.__UNIQUE_ID_ddebug240, !99, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 133, i32 3}
!105 = !{ptr @fsl_audmix_put_mix_clk_src._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @fsl_audmix_put_mix_clk_src._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 140, i32 3}
!109 = !{ptr @fsl_audmix_put_mix_clk_src._entry.54, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @fsl_audmix_put_mix_clk_src._entry_ptr.56, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @fsl_audmix_enum, !112, !"fsl_audmix_enum", i1 false, i1 false}
!112 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 28, i32 30}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 21, i32 17}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 21, i32 25}
!117 = !{ptr @tdm_sel, !118, !"tdm_sel", i1 false, i1 false}
!118 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 21, i32 3}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 22, i32 18}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 22, i32 46}
!123 = !{ptr @mode_sel, !124, !"mode_sel", i1 false, i1 false}
!124 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 22, i32 3}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 23, i32 19}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 23, i32 26}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 23, i32 33}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 23, i32 40}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 23, i32 47}
!135 = !{ptr @width_sel, !136, !"width_sel", i1 false, i1 false}
!136 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 23, i32 3}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 26, i32 18}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 26, i32 28}
!141 = !{ptr @mask_sel, !142, !"mask_sel", i1 false, i1 false}
!142 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 26, i32 3}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 24, i32 31}
!145 = !{ptr @endis_sel, !146, !"endis_sel", i1 false, i1 false}
!146 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 24, i32 3}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 25, i32 18}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 25, i32 30}
!151 = !{ptr @updn_sel, !152, !"updn_sel", i1 false, i1 false}
!152 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 25, i32 3}
!153 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 172, i32 2}
!155 = !{ptr @fsl_audmix_put_out_src.__UNIQUE_ID_ddebug241, !154, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!156 = !{ptr @fsl_audmix_put_out_src._entry, !157, !"_entry", i1 false, i1 false}
!157 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 182, i32 3}
!158 = !{ptr @fsl_audmix_put_out_src._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 93, i32 3}
!161 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @fsl_audmix_state_trans.__UNIQUE_ID_ddebug239, !160, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!163 = !{ptr @prms, !164, !"prms", i1 false, i1 false}
!164 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 51, i32 38}
!165 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 327, i32 11}
!167 = !{ptr @.str.75, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 338, i32 19}
!169 = !{ptr @.str.76, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 329, i32 19}
!171 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 350, i32 11}
!173 = !{ptr @.str.78, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 361, i32 19}
!175 = !{ptr @.str.79, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 352, i32 19}
!177 = !{ptr @fsl_audmix_dai, !178, !"fsl_audmix_dai", i1 false, i1 false}
!178 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 324, i32 34}
!179 = !{ptr @fsl_audmix_dai_ops, !180, !"fsl_audmix_dai_ops", i1 false, i1 false}
!180 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 319, i32 37}
!181 = !{ptr @fsl_audmix_ids, !182, !"fsl_audmix_ids", i1 false, i1 false}
!182 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 455, i32 34}
!183 = !{ptr @fsl_audmix_pm, !184, !"fsl_audmix_pm", i1 false, i1 false}
!184 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 559, i32 32}
!185 = !{ptr @.str.80, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/fsl/fsl_audmix.c", i32 537, i32 3}
!187 = !{ptr @.str.81, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @fsl_audmix_runtime_resume._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @fsl_audmix_runtime_resume._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{i32 1, !"wchar_size", i32 2}
!191 = !{i32 1, !"min_enum_size", i32 4}
!192 = !{i32 8, !"branch-target-enforcement", i32 0}
!193 = !{i32 8, !"sign-return-address", i32 0}
!194 = !{i32 8, !"sign-return-address-all", i32 0}
!195 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!196 = !{i32 7, !"uwtable", i32 1}
!197 = !{i32 7, !"frame-pointer", i32 2}
!198 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!199 = !{i64 2148736367, i64 2148736372, i64 2148736385, i64 2148736429, i64 2148736463, i64 2148736484}
