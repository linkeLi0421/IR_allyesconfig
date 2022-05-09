; ModuleID = '/llk/IR_all_yes/sound/soc/fsl/fsl_sai.c_pt.bc'
source_filename = "../sound/soc/fsl/fsl_sai.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reg_default = type { i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fsl_sai_soc_data = type { i8, i8, i8, i32, i32, i32 }
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
%struct.fsl_sai = type { ptr, ptr, ptr, [4 x ptr], i8, i8, i8, [2 x i8], [2 x i32], i32, i32, i32, i32, ptr, %struct.snd_soc_dai_driver, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, %struct.fsl_sai_verid, %struct.fsl_sai_param, %struct.pm_qos_request }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.fsl_sai_verid = type { i32, i32, i32 }
%struct.fsl_sai_param = type { i32, i32, i32 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_fsl_sai__257_1339_fsl_sai_driver_init6 = internal global ptr @fsl_sai_driver_init, section ".initcall6.init", align 4
@fsl_sai_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_sai_probe, ptr @fsl_sai_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_sai_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_sai_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_sai_driver_exit = internal global ptr @fsl_sai_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description258 = internal constant [56 x i8] c"snd_soc_fsl_sai.description=Freescale Soc SAI Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author259 = internal constant [58 x i8] c"snd_soc_fsl_sai.author=Xiubo Li, <Li.Xiubo@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias260 = internal constant [39 x i8] c"snd_soc_fsl_sai.alias=platform:fsl-sai\00", section ".modinfo", align 1
@__UNIQUE_ID_file261 = internal constant [51 x i8] c"snd_soc_fsl_sai.file=sound/soc/fsl/snd-soc-fsl-sai\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [28 x i8] c"snd_soc_fsl_sai.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fsl-sai\00", [24 x i8] zeroinitializer }, align 32
@fsl_sai_ids = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-sai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_sai_vf610_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-sai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_sai_imx6sx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-sai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_sai_imx6sx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-sai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_sai_imx7ulp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-sai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_sai_imx8mq_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qm-sai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_sai_imx8qm_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@fsl_sai_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_sai_runtime_suspend, ptr @fsl_sai_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lsb-first\00", [22 x i8] zeroinitializer }, align 32
@fsl_sai_reg_defaults_ofs8 = internal global { [22 x %struct.reg_default], [48 x i8] } { [22 x %struct.reg_default] [%struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 60, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 140, i32 0 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 152, i32 0 }, %struct.reg_default { i32 156, i32 0 }, %struct.reg_default { i32 224, i32 0 }, %struct.reg_default { i32 256, i32 0 }, %struct.reg_default { i32 260, i32 0 }], [48 x i8] zeroinitializer }, align 32
@fsl_sai_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @fsl_sai_writeable_reg, ptr @fsl_sai_readable_reg, ptr @fsl_sai_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 224, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_sai_reg_defaults_ofs0, i32 20, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@fsl_sai_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"fsl_sai:1031:(&fsl_sai_regmap_config)->lock\00", [52 x i8] zeroinitializer }, align 32
@fsl_sai_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1033, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regmap init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl_sai_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/fsl/fsl_sai.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_sai_probe._entry_ptr = internal global ptr @fsl_sai_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sai\00", [28 x i8] zeroinitializer }, align 32
@fsl_sai_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 1043, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get bus clock: %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@fsl_sai_probe._entry_ptr.12 = internal global ptr @fsl_sai_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mclk%d\00", [25 x i8] zeroinitializer }, align 32
@fsl_sai_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 1053, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get mclk%d clock: %ld\0A\00", [63 x i8] zeroinitializer }, align 32
@fsl_sai_probe._entry_ptr.16 = internal global ptr @fsl_sai_probe._entry.14, section ".printk_index", align 4
@fsl_sai_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 1070, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to claim irq %u\0A\00", [40 x i8] zeroinitializer }, align 32
@fsl_sai_probe._entry_ptr.19 = internal global ptr @fsl_sai_probe._entry.17, section ".printk_index", align 4
@fsl_sai_dai_template = internal constant { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @fsl_sai_dai_probe, ptr null, ptr null, ptr null, ptr @fsl_sai_pcm_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.47, i64 68719477828, i32 -2147483648, i32 8000, i32 192000, i32 1, i32 32, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.48, i64 68719477828, i32 -2147483648, i32 8000, i32 192000, i32 1, i32 32, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl,sai-synchronous-rx\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,sai-asynchronous\00", [43 x i8] zeroinitializer }, align 32
@fsl_sai_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 1087, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid binding for synchronous mode\0A\00", [58 x i8] zeroinitializer }, align 32
@fsl_sai_probe._entry_ptr.24 = internal global ptr @fsl_sai_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fsl,sai-mclk-direction-output\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,imx6ul-sai\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl,imx6ul-iomuxc-gpr\00", [42 x i8] zeroinitializer }, align 32
@fsl_sai_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.4, ptr @.str.5, i32 1108, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot find iomuxc registers\0A\00", [34 x i8] zeroinitializer }, align 32
@fsl_sai_probe._entry_ptr.30 = internal global ptr @fsl_sai_probe._entry.28, section ".printk_index", align 4
@fsl_sai_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.4, ptr @.str.5, i32 1142, ptr @.str.33, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error reading SAI version: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fsl_sai_probe._entry_ptr.34 = internal global ptr @fsl_sai_probe._entry.31, section ".printk_index", align 4
@fsl_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@fsl_sai_reg_defaults_ofs0 = internal global { [20 x %struct.reg_default], [32 x i8] } { [20 x %struct.reg_default] [%struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 60, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 140, i32 0 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 224, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_fsl_sai\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl_sai_isr\00", [20 x i8] zeroinitializer }, align 32
@fsl_sai_isr.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.36, ptr @.str.5, ptr @.str.38, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"isr: Tx Frame sync error detected\0A\00", [61 x i8] zeroinitializer }, align 32
@fsl_sai_isr.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.36, ptr @.str.5, ptr @.str.39, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"isr: Transmit underrun detected\0A\00", [63 x i8] zeroinitializer }, align 32
@fsl_sai_isr.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.36, ptr @.str.5, ptr @.str.43, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"isr: Rx Frame sync error detected\0A\00", [61 x i8] zeroinitializer }, align 32
@fsl_sai_isr.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.36, ptr @.str.5, ptr @.str.44, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"isr: Receive overflow detected\0A\00", [32 x i8] zeroinitializer }, align 32
@fsl_sai_pcm_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @fsl_sai_set_dai_sysclk, ptr null, ptr null, ptr @fsl_sai_set_dai_bclk_ratio, ptr @fsl_sai_set_dai_fmt, ptr null, ptr @fsl_sai_set_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_sai_startup, ptr null, ptr @fsl_sai_hw_params, ptr @fsl_sai_hw_free, ptr null, ptr @fsl_sai_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CPU-Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CPU-Playback\00", [19 x i8] zeroinitializer }, align 32
@fsl_sai_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.5, i32 211, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot set tx sysclk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl_sai_set_dai_sysclk\00", [41 x i8] zeroinitializer }, align 32
@fsl_sai_set_dai_sysclk._entry_ptr = internal global ptr @fsl_sai_set_dai_sysclk._entry, section ".printk_index", align 4
@fsl_sai_set_dai_sysclk._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.5, i32 218, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot set rx sysclk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@fsl_sai_set_dai_sysclk._entry_ptr.53 = internal global ptr @fsl_sai_set_dai_sysclk._entry.51, section ".printk_index", align 4
@fsl_sai_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.5, i32 337, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot set tx format: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl_sai_set_dai_fmt\00", [44 x i8] zeroinitializer }, align 32
@fsl_sai_set_dai_fmt._entry_ptr = internal global ptr @fsl_sai_set_dai_fmt._entry, section ".printk_index", align 4
@fsl_sai_set_dai_fmt._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.5, i32 343, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot set rx format: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@fsl_sai_set_dai_fmt._entry_ptr.58 = internal global ptr @fsl_sai_set_dai_fmt._entry.56, section ".printk_index", align 4
@fsl_sai_rate_constraints = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @fsl_sai_rates, i32 14, i32 0 }, [20 x i8] zeroinitializer }, align 32
@fsl_sai_rates = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 8000, i32 11025, i32 12000, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000, i32 176400, i32 192000], [40 x i8] zeroinitializer }, align 32
@fsl_sai_set_bclk.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.59, ptr @.str.5, ptr @.str.60, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl_sai_set_bclk\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ratio %d for freq %dHz based on clock %ldHz\0A\00", [51 x i8] zeroinitializer }, align 32
@fsl_sai_set_bclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.5, i32 407, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to derive required %cx rate: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@fsl_sai_set_bclk._entry_ptr = internal global ptr @fsl_sai_set_bclk._entry, section ".printk_index", align 4
@fsl_sai_set_bclk.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.59, ptr @.str.5, ptr @.str.62, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"best fit: clock id=%d, div=%d, deviation =%d\0A\00", [50 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@fsl_sai_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.5, i32 1278, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable bus clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl_sai_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@fsl_sai_runtime_resume._entry_ptr = internal global ptr @fsl_sai_runtime_resume._entry, section ".printk_index", align 4
@fsl_sai_check_version.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.65, ptr @.str.5, ptr @.str.66, i8 0, i8 -14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl_sai_check_version\00", [42 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VERID: 0x%016X\0A\00", [16 x i8] zeroinitializer }, align 32
@fsl_sai_check_version.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.65, ptr @.str.5, ptr @.str.67, i8 0, i8 -11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PARAM: 0x%016X\0A\00", [16 x i8] zeroinitializer }, align 32
@fsl_sai_vf610_data = internal constant { %struct.fsl_sai_soc_data, [16 x i8] } { %struct.fsl_sai_soc_data { i8 0, i8 0, i8 0, i32 32, i32 0, i32 0 }, [16 x i8] zeroinitializer }, align 32
@fsl_sai_imx6sx_data = internal constant { %struct.fsl_sai_soc_data, [16 x i8] } { %struct.fsl_sai_soc_data { i8 1, i8 0, i8 1, i32 32, i32 0, i32 0 }, [16 x i8] zeroinitializer }, align 32
@fsl_sai_imx7ulp_data = internal constant { %struct.fsl_sai_soc_data, [16 x i8] } { %struct.fsl_sai_soc_data { i8 1, i8 0, i8 0, i32 16, i32 8, i32 1 }, [16 x i8] zeroinitializer }, align 32
@fsl_sai_imx8mq_data = internal constant { %struct.fsl_sai_soc_data, [16 x i8] } { %struct.fsl_sai_soc_data { i8 1, i8 0, i8 0, i32 128, i32 8, i32 0 }, [16 x i8] zeroinitializer }, align 32
@fsl_sai_imx8qm_data = internal constant { %struct.fsl_sai_soc_data, [16 x i8] } { %struct.fsl_sai_soc_data { i8 1, i8 1, i8 0, i32 64, i32 0, i32 0 }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 32, i64 36, i64 40, i64 44, i64 48, i64 52, i64 56, i64 60, i64 96, i64 112, i64 224, i64 240, i64 256, i64 260]
@__sancov_gen_cov_switch_values.68 = internal global [40 x i64] [i64 38, i64 32, i64 0, i64 1, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 28, i64 29, i64 30, i64 31, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 60, i64 61, i64 62, i64 63, i64 64, i64 65]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.70 = internal global [26 x i64] [i64 24, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39]
@__sancov_gen_cov_switch_values.71 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.72 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.75 = private unnamed_addr constant [15 x i8] c"fsl_sai_driver\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1330, i32 31 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1334, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"fsl_sai_ids\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1239, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant [15 x i8] c"fsl_sai_pm_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1323, i32 32 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1018, i32 48 }
@___asan_gen_.90 = private unnamed_addr constant [26 x i8] c"fsl_sai_reg_defaults_ofs8\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 784, i32 27 }
@___asan_gen_.93 = private unnamed_addr constant [22 x i8] c"fsl_sai_regmap_config\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 940, i32 29 }
@___asan_gen_.96 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1031, i32 16 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1033, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1037, i32 42 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1040, i32 43 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1042, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1049, i32 16 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1052, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1070, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [21 x i8] c"fsl_sai_dai_template\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 734, i32 34 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1084, i32 27 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1085, i32 27 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1087, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1104, i32 27 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1105, i32 34 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1106, i32 44 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1108, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1142, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [14 x i8] c"fsl_component\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 757, i32 46 }
@___asan_gen_.189 = private unnamed_addr constant [26 x i8] c"fsl_sai_reg_defaults_ofs0\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 761, i32 27 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 84, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 87, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 90, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 121, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 124, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [20 x i8] c"fsl_sai_pcm_dai_ops\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 698, i32 37 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 746, i32 18 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 737, i32 18 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 211, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 218, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 337, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 343, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [25 x i8] c"fsl_sai_rate_constraints\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 36, i32 48 }
@___asan_gen_.252 = private unnamed_addr constant [14 x i8] c"fsl_sai_rates\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 30, i32 27 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 386, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 406, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 435, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1278, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 969, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 981, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant [19 x i8] c"fsl_sai_vf610_data\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1194, i32 38 }
@___asan_gen_.291 = private unnamed_addr constant [20 x i8] c"fsl_sai_imx6sx_data\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1203, i32 38 }
@___asan_gen_.294 = private unnamed_addr constant [21 x i8] c"fsl_sai_imx7ulp_data\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1212, i32 38 }
@___asan_gen_.297 = private unnamed_addr constant [20 x i8] c"fsl_sai_imx8mq_data\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1221, i32 38 }
@___asan_gen_.300 = private unnamed_addr constant [20 x i8] c"fsl_sai_imx8qm_data\00", align 1
@___asan_gen_.301 = private constant [27 x i8] c"../sound/soc/fsl/fsl_sai.c\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1230, i32 38 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @__UNIQUE_ID_alias260, ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @__exitcall_fsl_sai_driver_exit, ptr @__initcall__kmod_snd_soc_fsl_sai__257_1339_fsl_sai_driver_init6, ptr @fsl_sai_driver_exit, ptr @fsl_sai_probe._entry, ptr @fsl_sai_probe._entry.10, ptr @fsl_sai_probe._entry.14, ptr @fsl_sai_probe._entry.17, ptr @fsl_sai_probe._entry.22, ptr @fsl_sai_probe._entry.28, ptr @fsl_sai_probe._entry.31, ptr @fsl_sai_probe._entry_ptr, ptr @fsl_sai_probe._entry_ptr.12, ptr @fsl_sai_probe._entry_ptr.16, ptr @fsl_sai_probe._entry_ptr.19, ptr @fsl_sai_probe._entry_ptr.24, ptr @fsl_sai_probe._entry_ptr.30, ptr @fsl_sai_probe._entry_ptr.34, ptr @fsl_sai_runtime_resume._entry, ptr @fsl_sai_runtime_resume._entry_ptr, ptr @fsl_sai_set_bclk._entry, ptr @fsl_sai_set_bclk._entry_ptr, ptr @fsl_sai_set_dai_fmt._entry, ptr @fsl_sai_set_dai_fmt._entry.56, ptr @fsl_sai_set_dai_fmt._entry_ptr, ptr @fsl_sai_set_dai_fmt._entry_ptr.58, ptr @fsl_sai_set_dai_sysclk._entry, ptr @fsl_sai_set_dai_sysclk._entry.51, ptr @fsl_sai_set_dai_sysclk._entry_ptr, ptr @fsl_sai_set_dai_sysclk._entry_ptr.53, ptr @fsl_sai_driver, ptr @.str, ptr @fsl_sai_ids, ptr @fsl_sai_pm_ops, ptr @.str.1, ptr @fsl_sai_reg_defaults_ofs8, ptr @fsl_sai_regmap_config, ptr @fsl_sai_probe._key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @fsl_sai_dai_template, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @fsl_component, ptr @fsl_sai_reg_defaults_ofs0, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.43, ptr @.str.44, ptr @fsl_sai_pcm_dai_ops, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @fsl_sai_rate_constraints, ptr @fsl_sai_rates, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @fsl_sai_vf610_data, ptr @fsl_sai_imx6sx_data, ptr @fsl_sai_imx7ulp_data, ptr @fsl_sai_imx8mq_data, ptr @fsl_sai_imx8qm_data], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_ids to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_reg_defaults_ofs8 to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_dai_template to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_reg_defaults_ofs0 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_pcm_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_set_dai_sysclk._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_set_dai_fmt._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_rate_constraints to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_rates to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_set_bclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_vf610_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_imx6sx_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_imx7ulp_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_imx8mq_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sai_imx8qm_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_sai_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_sai_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_sai_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_sai_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_sai_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  %tmp = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #11
  %2 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !186
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #11
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %tmp, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 352, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %call.i, align 8
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #11
  %soc_data = getelementptr inbounds %struct.fsl_sai, ptr %call.i, i32 0, i32 13
  %5 = ptrtoint ptr %soc_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %soc_data, align 4
  %call.i378 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #11
  %tobool.i = icmp ne ptr %call.i378, null
  %is_lsb_first = getelementptr inbounds %struct.fsl_sai, ptr %call.i, i32 0, i32 5
  %frombool = zext i1 %tobool.i to i8
  %6 = ptrtoint ptr %is_lsb_first to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %is_lsb_first, align 1
  %call6 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #11
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %8 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc_data, align 4
  %reg_offset = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp = icmp eq i32 %11, 8
  br i1 %cmp, label %if.then12, label %if.end10.if.end13_crit_edge

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  store ptr @fsl_sai_reg_defaults_ofs8, ptr getelementptr inbounds (%struct.regmap_config, ptr @fsl_sai_regmap_config, i32 0, i32 26), align 4
  store i32 260, ptr getelementptr inbounds (%struct.regmap_config, ptr @fsl_sai_regmap_config, i32 0, i32 19), align 4
  store i32 22, ptr getelementptr inbounds (%struct.regmap_config, ptr @fsl_sai_regmap_config, i32 0, i32 27), align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  %call16 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call6, ptr noundef nonnull @fsl_sai_regmap_config, ptr noundef nonnull @fsl_sai_probe._key, ptr noundef nonnull @.str.2) #11
  %regmap = getelementptr inbounds %struct.fsl_sai, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call16, ptr %regmap, align 4
  %cmp.i379 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i379, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #14
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %call25 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  %bus_clk = getelementptr inbounds %struct.fsl_sai, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call25, ptr %bus_clk, align 8
  %cmp.i380 = icmp ule ptr %call25, inttoptr (i32 -4096 to ptr)
  %cmp30.not = icmp eq ptr %call25, inttoptr (i32 -517 to ptr)
  %or.cond = or i1 %cmp.i380, %cmp30.not
  br i1 %or.cond, label %if.end23.if.end35_crit_edge, label %if.then31

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then31:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %call33 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  %17 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call33, ptr %bus_clk, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end23.if.end35_crit_edge
  %18 = phi ptr [ %call33, %if.then31 ], [ %call25, %if.end23.if.end35_crit_edge ]
  %cmp.i381 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i381, label %do.end41, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end35
  %call49 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.13, i32 noundef 1)
  %call52 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %tmp) #11
  %arrayidx = getelementptr %struct.fsl_sai, ptr %call.i, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call52, ptr %arrayidx, align 4
  %cmp.i382 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i382, label %do.end59, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %18 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %20) #14
  %21 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus_clk, align 8
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup

do.end59:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %call52 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef 2, i32 noundef %24) #14
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end59, %for.body.preheader.for.inc_crit_edge
  %call49.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.13, i32 noundef 2)
  %call52.1 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %tmp) #11
  %arrayidx.1 = getelementptr %struct.fsl_sai, ptr %call.i, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call52.1, ptr %arrayidx.1, align 4
  %cmp.i382.1 = icmp ugt ptr %call52.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i382.1, label %do.end59.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

do.end59.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %call52.1 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef 3, i32 noundef %27) #14
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end59.1, %for.inc.for.inc.1_crit_edge
  %call49.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.13, i32 noundef 3)
  %call52.2 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %tmp) #11
  %arrayidx.2 = getelementptr %struct.fsl_sai, ptr %call.i, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call52.2, ptr %arrayidx.2, align 4
  %cmp.i382.2 = icmp ugt ptr %call52.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i382.2, label %do.end59.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

do.end59.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %call52.2 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef 4, i32 noundef %30) #14
  %31 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end59.2, %for.inc.1.for.inc.2_crit_edge
  %32 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %soc_data, align 4
  %mclk0_is_mclk1 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %mclk0_is_mclk1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mclk0_is_mclk1, align 2, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool68.not = icmp eq i8 %35, 0
  %spec.select = select i1 %tobool68.not, ptr %bus_clk, ptr %arrayidx
  %36 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %36)
  %.sink = load ptr, ptr %spec.select, align 4
  %37 = getelementptr inbounds %struct.fsl_sai, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %.sink, ptr %37, align 4
  %call78 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %for.inc.2.cleanup_crit_edge, label %if.end81

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end81:                                         ; preds = %for.inc.2
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call.i383 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call78, ptr noundef nonnull @fsl_sai_isr, ptr noundef null, i32 noundef 128, ptr noundef %40, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i383)
  %tobool84.not = icmp eq i32 %call.i383, 0
  br i1 %tobool84.not, label %if.end90, label %do.end88

do.end88:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call78) #14
  br label %cleanup

if.end90:                                         ; preds = %if.end81
  %cpu_dai_drv = getelementptr inbounds %struct.fsl_sai, ptr %call.i, i32 0, i32 14
  %41 = call ptr @memcpy(ptr %cpu_dai_drv, ptr @fsl_sai_dai_template, i32 168)
  %synchronous = getelementptr inbounds %struct.fsl_sai, ptr %call.i, i32 0, i32 7
  %42 = ptrtoint ptr %synchronous to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %synchronous, align 1
  %arrayidx93 = getelementptr %struct.fsl_sai, ptr %call.i, i32 0, i32 7, i32 1
  %43 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx93, align 1
  %symmetric_rate = getelementptr inbounds %struct.fsl_sai, ptr %call.i, i32 0, i32 14, i32 12
  %44 = ptrtoint ptr %symmetric_rate to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -32, ptr %symmetric_rate, align 8
  %call103 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef null) #11
  %tobool104.not = icmp eq ptr %call103, null
  br i1 %tobool104.not, label %if.end90.if.end113_crit_edge, label %land.lhs.true105

if.end90.if.end113_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

land.lhs.true105:                                 ; preds = %if.end90
  %call106 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef null) #11
  %tobool107.not = icmp eq ptr %call106, null
  br i1 %tobool107.not, label %land.lhs.true105.if.end113_crit_edge, label %do.end111

land.lhs.true105.if.end113_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

do.end111:                                        ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #14
  br label %cleanup

if.end113:                                        ; preds = %land.lhs.true105.if.end113_crit_edge, %if.end90.if.end113_crit_edge
  %call114 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef null) #11
  %tobool115.not = icmp eq ptr %call114, null
  br i1 %tobool115.not, label %if.else121, label %if.then116

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %synchronous to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %synchronous, align 1
  %46 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %arrayidx93, align 1
  br label %if.end145

if.else121:                                       ; preds = %if.end113
  %call122 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef null) #11
  %tobool123.not = icmp eq ptr %call122, null
  br i1 %tobool123.not, label %if.else121.if.end145_crit_edge, label %if.then124

if.else121.if.end145_crit_edge:                   ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

if.then124:                                       ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %synchronous to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %synchronous, align 1
  %48 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %arrayidx93, align 1
  %49 = ptrtoint ptr %symmetric_rate to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load131 = load i8, ptr %symmetric_rate, align 8
  %bf.clear142 = and i8 %bf.load131, 31
  store i8 %bf.clear142, ptr %symmetric_rate, align 8
  br label %if.end145

if.end145:                                        ; preds = %if.then124, %if.else121.if.end145_crit_edge, %if.then116
  %call146 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef null) #11
  %tobool147.not = icmp eq ptr %call146, null
  br i1 %tobool147.not, label %if.end145.if.end176_crit_edge, label %land.lhs.true148

if.end145.if.end176_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176

land.lhs.true148:                                 ; preds = %if.end145
  %call149 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %land.lhs.true148.if.end176_crit_edge, label %if.then151

land.lhs.true148.if.end176_crit_edge:             ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176

if.then151:                                       ; preds = %land.lhs.true148
  %call152 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.27) #11
  %cmp.i384 = icmp ugt ptr %call152, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i384, label %do.end157, label %if.end160

do.end157:                                        ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #14
  %50 = ptrtoint ptr %call152 to i32
  br label %cleanup

if.end160:                                        ; preds = %if.then151
  %call161 = call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %cmp162 = icmp slt i32 %call161, 0
  br i1 %cmp162, label %if.end160.cleanup_crit_edge, label %if.end164

if.end160.cleanup_crit_edge:                      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end164:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call161)
  %cmp165 = icmp eq i32 %call161, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call161)
  %cmp166 = icmp eq i32 %call161, 2
  %cond = select i1 %cmp166, i32 1048576, i32 2097152
  %cond167 = select i1 %cmp165, i32 524288, i32 %cond
  %call.i385 = call i32 @regmap_update_bits_base(ptr noundef %call152, i32 noundef 4, i32 noundef %cond167, i32 noundef %cond167, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end176

if.end176:                                        ; preds = %if.end164, %land.lhs.true148.if.end176_crit_edge, %if.end145.if.end176_crit_edge
  %51 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %res, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %add177 = add i32 %54, 160
  %dma_params_rx = getelementptr inbounds %struct.fsl_sai, ptr %call.i, i32 0, i32 15
  %55 = ptrtoint ptr %dma_params_rx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add177, ptr %dma_params_rx, align 8
  %56 = load i32, ptr %52, align 4
  %add179 = add i32 %56, 32
  %dma_params_tx = getelementptr inbounds %struct.fsl_sai, ptr %call.i, i32 0, i32 16
  %57 = ptrtoint ptr %dma_params_tx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add179, ptr %dma_params_tx, align 4
  %maxburst = getelementptr inbounds %struct.fsl_sai, ptr %call.i, i32 0, i32 15, i32 2
  %58 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 6, ptr %maxburst, align 8
  %maxburst183 = getelementptr inbounds %struct.fsl_sai, ptr %call.i, i32 0, i32 16, i32 2
  %59 = ptrtoint ptr %maxburst183 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 6, ptr %maxburst183, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %60 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @pm_runtime_enable(ptr noundef %dev) #11
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %61 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.end176.if.end193_crit_edge, label %if.then187

if.end176.if.end193_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end193

if.then187:                                       ; preds = %if.end176
  %call189 = call i32 @fsl_sai_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.then187.if.end193_crit_edge, label %if.then187.err_pm_disable_crit_edge

if.then187.err_pm_disable_crit_edge:              ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pm_disable

if.then187.if.end193_crit_edge:                   ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end193

if.end193:                                        ; preds = %if.then187.if.end193_crit_edge, %if.end176.if.end193_crit_edge
  %call.i386 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i386)
  %cmp196 = icmp slt i32 %call.i386, 0
  br i1 %cmp196, label %if.then197, label %if.end199

if.then197:                                       ; preds = %if.end193
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !188
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !189
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then197.err_pm_get_sync_crit_edge, label %do.end11.i.i.i.i

if.then197.err_pm_get_sync_crit_edge:             ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pm_get_sync

do.end11.i.i.i.i:                                 ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !190
  br label %err_pm_get_sync

if.end199:                                        ; preds = %if.end193
  %call201 = call fastcc i32 @fsl_sai_check_version(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %cmp202 = icmp slt i32 %call201, 0
  br i1 %cmp202, label %do.end206, label %if.end199.if.end208_crit_edge

if.end199.if.end208_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end208

do.end206:                                        ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %call201) #14
  br label %if.end208

if.end208:                                        ; preds = %do.end206, %if.end199.if.end208_crit_edge
  %call209 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef null) #11
  %tobool210.not = icmp eq ptr %call209, null
  br i1 %tobool210.not, label %if.end208.if.end219_crit_edge, label %land.lhs.true211

if.end208.if.end219_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end219

land.lhs.true211:                                 ; preds = %if.end208
  %verid = getelementptr inbounds %struct.fsl_sai, ptr %call.i, i32 0, i32 17
  %63 = ptrtoint ptr %verid to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %verid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp212 = icmp ugt i32 %64, 2
  br i1 %cmp212, label %land.lhs.true213, label %land.lhs.true211.if.end219_crit_edge

land.lhs.true211.if.end219_crit_edge:             ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end219

land.lhs.true213:                                 ; preds = %land.lhs.true211
  %minor = getelementptr inbounds %struct.fsl_sai, ptr %call.i, i32 0, i32 17, i32 1
  %65 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp215.not = icmp eq i32 %66, 0
  br i1 %cmp215.not, label %land.lhs.true213.if.end219_crit_edge, label %if.then216

land.lhs.true213.if.end219_crit_edge:             ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end219

if.then216:                                       ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap, align 4
  %call.i387 = call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 256, i32 noundef 1073741824, i32 noundef 1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end219

if.end219:                                        ; preds = %if.then216, %land.lhs.true213.if.end219_crit_edge, %land.lhs.true211.if.end219_crit_edge, %if.end208.if.end219_crit_edge
  %call.i388 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i388)
  %cmp222 = icmp slt i32 %call.i388, 0
  br i1 %cmp222, label %if.end219.err_pm_get_sync_crit_edge, label %if.end224

if.end219.err_pm_get_sync_crit_edge:              ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pm_get_sync

if.end224:                                        ; preds = %if.end219
  %69 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %soc_data, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool226.not = icmp eq i8 %72, 0
  br i1 %tobool226.not, label %if.else232, label %if.then227

if.then227:                                       ; preds = %if.end224
  %call228 = call i32 @imx_pcm_dma_init(ptr noundef %pdev, i32 noundef 65536) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %if.then227.if.end238_crit_edge, label %if.then227.err_pm_get_sync_crit_edge

if.then227.err_pm_get_sync_crit_edge:             ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pm_get_sync

if.then227.if.end238_crit_edge:                   ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end238

if.else232:                                       ; preds = %if.end224
  %call234 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %if.else232.if.end238_crit_edge, label %if.else232.err_pm_get_sync_crit_edge

if.else232.err_pm_get_sync_crit_edge:             ; preds = %if.else232
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pm_get_sync

if.else232.if.end238_crit_edge:                   ; preds = %if.else232
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end238

if.end238:                                        ; preds = %if.else232.if.end238_crit_edge, %if.then227.if.end238_crit_edge
  %call241 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @fsl_component, ptr noundef %cpu_dai_drv, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call241)
  %tobool242.not = icmp eq i32 %call241, 0
  br i1 %tobool242.not, label %if.end238.cleanup_crit_edge, label %if.end238.err_pm_get_sync_crit_edge

if.end238.err_pm_get_sync_crit_edge:              ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pm_get_sync

if.end238.cleanup_crit_edge:                      ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_pm_get_sync:                                  ; preds = %if.end238.err_pm_get_sync_crit_edge, %if.else232.err_pm_get_sync_crit_edge, %if.then227.err_pm_get_sync_crit_edge, %if.end219.err_pm_get_sync_crit_edge, %do.end11.i.i.i.i, %if.then197.err_pm_get_sync_crit_edge
  %ret.0 = phi i32 [ %call.i388, %if.end219.err_pm_get_sync_crit_edge ], [ %call228, %if.then227.err_pm_get_sync_crit_edge ], [ %call241, %if.end238.err_pm_get_sync_crit_edge ], [ %call234, %if.else232.err_pm_get_sync_crit_edge ], [ %call.i386, %if.then197.err_pm_get_sync_crit_edge ], [ %call.i386, %do.end11.i.i.i.i ]
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %73 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp.i389 = icmp eq i32 %74, 2
  br i1 %cmp.i389, label %err_pm_get_sync.err_pm_disable_crit_edge, label %if.then247

err_pm_get_sync.err_pm_disable_crit_edge:         ; preds = %err_pm_get_sync
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pm_disable

if.then247:                                       ; preds = %err_pm_get_sync
  call void @__sanitizer_cov_trace_pc() #13
  %call249 = call i32 @fsl_sai_runtime_suspend(ptr noundef %dev)
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %if.then247, %err_pm_get_sync.err_pm_disable_crit_edge, %if.then187.err_pm_disable_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_pm_get_sync.err_pm_disable_crit_edge ], [ %ret.0, %if.then247 ], [ %call189, %if.then187.err_pm_disable_crit_edge ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %if.end238.cleanup_crit_edge, %if.end160.cleanup_crit_edge, %do.end157, %do.end111, %do.end88, %for.inc.2.cleanup_crit_edge, %do.end41, %do.end, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then8 ], [ %15, %do.end ], [ %23, %do.end41 ], [ %call.i383, %do.end88 ], [ -22, %do.end111 ], [ %50, %do.end157 ], [ %ret.1, %err_pm_disable ], [ -12, %entry.cleanup_crit_edge ], [ %call78, %for.inc.2.cleanup_crit_edge ], [ %call161, %if.end160.cleanup_crit_edge ], [ 0, %if.end238.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_sai_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @fsl_sai_runtime_suspend(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
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
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_sai_isr(i32 noundef %irq, ptr nocapture noundef readonly %devid) #2 align 64 {
entry:
  %xcsr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %soc_data = getelementptr inbounds %struct.fsl_sai, ptr %devid, i32 0, i32 13
  %0 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc_data, align 4
  %reg_offset = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_offset, align 4
  %4 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devid, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xcsr) #11
  %6 = ptrtoint ptr %xcsr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %xcsr, align 4, !annotation !186
  %regmap = getelementptr inbounds %struct.fsl_sai, ptr %devid, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %8, i32 noundef %3, ptr noundef nonnull %xcsr) #11
  %9 = ptrtoint ptr %xcsr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xcsr, align 4
  %and = and i32 %10, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.irq_rx_crit_edge, label %if.end11

entry.irq_rx_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %irq_rx

if.end11:                                         ; preds = %entry
  %and12 = and i32 %10, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end31_crit_edge, label %do.body15

if.end11.if.end31_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

do.body15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_sai_isr.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_sai_isr, %if.then27)) #11
          to label %if.end31 [label %if.then27], !srcloc !191

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_sai_isr.__UNIQUE_ID_ddebug242, ptr noundef %dev1, ptr noundef nonnull @.str.38) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %do.body15, %if.end11.if.end31_crit_edge
  %and32 = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end91_crit_edge, label %do.body35

if.end31.if.end91_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

do.body35:                                        ; preds = %if.end31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_sai_isr.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_sai_isr, %if.then47)) #11
          to label %do.end50 [label %if.then47], !srcloc !191

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_sai_isr.__UNIQUE_ID_ddebug243, ptr noundef %dev1, ptr noundef nonnull @.str.39) #11
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %do.body35
  %11 = ptrtoint ptr %xcsr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %xcsr, align 4
  %or = or i32 %12, 33554432
  store i32 %or, ptr %xcsr, align 4
  br label %if.end91

if.end91:                                         ; preds = %do.end50, %if.end31.if.end91_crit_edge
  %13 = ptrtoint ptr %xcsr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xcsr, align 4
  %and93 = and i32 %14, -2031617
  store i32 %and93, ptr %xcsr, align 4
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %or98 = or i32 %and93, %and
  %call99 = call i32 @regmap_write(ptr noundef %16, i32 noundef %3, i32 noundef %or98) #11
  br label %irq_rx

irq_rx:                                           ; preds = %if.end91, %entry.irq_rx_crit_edge
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %add102 = add i32 %3, 128
  %call103 = call i32 @regmap_read(ptr noundef %18, i32 noundef %add102, ptr noundef nonnull %xcsr) #11
  %19 = ptrtoint ptr %xcsr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xcsr, align 4
  %and104 = and i32 %20, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %out, label %if.end128

if.end128:                                        ; preds = %irq_rx
  %and129 = and i32 %20, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end128.if.end148_crit_edge, label %do.body132

if.end128.if.end148_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

do.body132:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_sai_isr.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_sai_isr, %if.then144)) #11
          to label %if.end148 [label %if.then144], !srcloc !191

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_sai_isr.__UNIQUE_ID_ddebug247, ptr noundef %dev1, ptr noundef nonnull @.str.43) #11
  br label %if.end148

if.end148:                                        ; preds = %if.then144, %do.body132, %if.end128.if.end148_crit_edge
  %and149 = and i32 %20, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end148.out.thread_crit_edge, label %do.body152

if.end148.out.thread_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

do.body152:                                       ; preds = %if.end148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_sai_isr.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_sai_isr, %if.then164)) #11
          to label %do.end167 [label %if.then164], !srcloc !191

if.then164:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_sai_isr.__UNIQUE_ID_ddebug248, ptr noundef %dev1, ptr noundef nonnull @.str.44) #11
  br label %do.end167

do.end167:                                        ; preds = %if.then164, %do.body152
  %21 = ptrtoint ptr %xcsr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xcsr, align 4
  %or168 = or i32 %22, 33554432
  store i32 %or168, ptr %xcsr, align 4
  br label %out.thread

out.thread:                                       ; preds = %do.end167, %if.end148.out.thread_crit_edge
  %23 = ptrtoint ptr %xcsr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xcsr, align 4
  %and211 = and i32 %24, -2031617
  store i32 %and211, ptr %xcsr, align 4
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %or216 = or i32 %and211, %and104
  %call217 = call i32 @regmap_write(ptr noundef %26, i32 noundef %add102, i32 noundef %or216) #11
  br label %27

out:                                              ; preds = %irq_rx
  call void @__sanitizer_cov_trace_pc() #13
  %not.tobool.not = xor i1 %tobool.not, true
  %spec.select = zext i1 %not.tobool.not to i32
  br label %27

27:                                               ; preds = %out, %out.thread
  %28 = phi i32 [ 1, %out.thread ], [ %spec.select, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xcsr) #11
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_sai_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %soc_data = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_data, align 4
  %reg_offset = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_offset, align 4
  %bus_clk = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %7) #11
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %retval.0.i.ph) #14
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %mclk_streams = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %mclk_streams to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mclk_streams, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.fsl_sai, ptr %1, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.fsl_sai, ptr %1, i32 0, i32 3, i32 %11
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  %call.i99 = tail call i32 @clk_prepare(ptr noundef %13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool.not.i100 = icmp eq i32 %call.i99, 0
  br i1 %tobool.not.i100, label %if.end.i103, label %if.then3.disable_bus_clk_crit_edge

if.then3.disable_bus_clk_crit_edge:               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_bus_clk

if.end.i103:                                      ; preds = %if.then3
  %call1.i101 = tail call i32 @clk_enable(ptr noundef %13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101)
  %tobool2.not.i102 = icmp eq i32 %call1.i101, 0
  br i1 %tobool2.not.i102, label %if.end.i103.if.end9_crit_edge, label %if.end.i103.disable_bus_clk.sink.split_crit_edge

if.end.i103.disable_bus_clk.sink.split_crit_edge: ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_bus_clk.sink.split

if.end.i103.if.end9_crit_edge:                    ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end9:                                          ; preds = %if.end.i103.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %14 = ptrtoint ptr %mclk_streams to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mclk_streams, align 4
  %and11 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end22_crit_edge, label %if.then13

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then13:                                        ; preds = %if.end9
  %mclk_id15 = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %mclk_id15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mclk_id15, align 4
  %arrayidx17 = getelementptr %struct.fsl_sai, ptr %1, i32 0, i32 3, i32 %17
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx17, align 4
  %call.i107 = tail call i32 @clk_prepare(ptr noundef %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool.not.i108 = icmp eq i32 %call.i107, 0
  br i1 %tobool.not.i108, label %if.end.i111, label %if.then13.disable_tx_clk_crit_edge

if.then13.disable_tx_clk_crit_edge:               ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_tx_clk

if.end.i111:                                      ; preds = %if.then13
  %call1.i109 = tail call i32 @clk_enable(ptr noundef %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i109)
  %tobool2.not.i110 = icmp eq i32 %call1.i109, 0
  br i1 %tobool2.not.i110, label %if.end.i111.if.end22_crit_edge, label %if.end.i111.disable_tx_clk.sink.split_crit_edge

if.end.i111.disable_tx_clk.sink.split_crit_edge:  ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_tx_clk.sink.split

if.end.i111.if.end22_crit_edge:                   ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end22:                                         ; preds = %if.end.i111.if.end22_crit_edge, %if.end9.if.end22_crit_edge
  %20 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %soc_data, align 4
  %flags = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and24 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end27_crit_edge, label %if.then26

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %pm_qos_req = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 19
  tail call void @cpu_latency_qos_add_request(ptr noundef %pm_qos_req, i32 noundef 0) #11
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end22.if.end27_crit_edge
  %regmap = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %25, i1 noundef zeroext false) #11
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %27) #11
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call30 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %5, i32 noundef 16777216) #11
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %add32 = add i32 %5, 128
  %call33 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef %add32, i32 noundef 16777216) #11
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call36 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef %5, i32 noundef 0) #11
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call39 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %add32, i32 noundef 0) #11
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call41 = tail call i32 @regcache_sync(ptr noundef %37) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end27.cleanup_crit_edge, label %disable_rx_clk

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

disable_rx_clk:                                   ; preds = %if.end27
  %38 = ptrtoint ptr %mclk_streams to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mclk_streams, align 4
  %and46 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %disable_rx_clk.disable_tx_clk_crit_edge, label %if.then48

disable_rx_clk.disable_tx_clk_crit_edge:          ; preds = %disable_rx_clk
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_tx_clk

if.then48:                                        ; preds = %disable_rx_clk
  call void @__sanitizer_cov_trace_pc() #13
  %mclk_id50 = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 8
  %40 = ptrtoint ptr %mclk_id50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mclk_id50, align 4
  %arrayidx52 = getelementptr %struct.fsl_sai, ptr %1, i32 0, i32 3, i32 %41
  %42 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx52, align 4
  tail call void @clk_disable(ptr noundef %43) #11
  br label %disable_tx_clk.sink.split

disable_tx_clk.sink.split:                        ; preds = %if.then48, %if.end.i111.disable_tx_clk.sink.split_crit_edge
  %.sink = phi ptr [ %43, %if.then48 ], [ %19, %if.end.i111.disable_tx_clk.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call41, %if.then48 ], [ %call1.i109, %if.end.i111.disable_tx_clk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #11
  br label %disable_tx_clk

disable_tx_clk:                                   ; preds = %disable_tx_clk.sink.split, %disable_rx_clk.disable_tx_clk_crit_edge, %if.then13.disable_tx_clk_crit_edge
  %ret.0 = phi i32 [ %call41, %disable_rx_clk.disable_tx_clk_crit_edge ], [ %call.i107, %if.then13.disable_tx_clk_crit_edge ], [ %ret.0.ph, %disable_tx_clk.sink.split ]
  %44 = ptrtoint ptr %mclk_streams to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mclk_streams, align 4
  %and55 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %disable_tx_clk.disable_bus_clk_crit_edge, label %if.then57

disable_tx_clk.disable_bus_clk_crit_edge:         ; preds = %disable_tx_clk
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_bus_clk

if.then57:                                        ; preds = %disable_tx_clk
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx60 = getelementptr %struct.fsl_sai, ptr %1, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx60, align 4
  %arrayidx61 = getelementptr %struct.fsl_sai, ptr %1, i32 0, i32 3, i32 %47
  %48 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx61, align 4
  tail call void @clk_disable(ptr noundef %49) #11
  br label %disable_bus_clk.sink.split

disable_bus_clk.sink.split:                       ; preds = %if.then57, %if.end.i103.disable_bus_clk.sink.split_crit_edge
  %.sink122 = phi ptr [ %49, %if.then57 ], [ %13, %if.end.i103.disable_bus_clk.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %if.then57 ], [ %call1.i101, %if.end.i103.disable_bus_clk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink122) #11
  br label %disable_bus_clk

disable_bus_clk:                                  ; preds = %disable_bus_clk.sink.split, %disable_tx_clk.disable_bus_clk_crit_edge, %if.then3.disable_bus_clk_crit_edge
  %ret.1 = phi i32 [ %ret.0, %disable_tx_clk.disable_bus_clk_crit_edge ], [ %call.i99, %if.then3.disable_bus_clk_crit_edge ], [ %ret.1.ph, %disable_bus_clk.sink.split ]
  %50 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus_clk, align 8
  tail call void @clk_disable(ptr noundef %51) #11
  tail call void @clk_unprepare(ptr noundef %51) #11
  br label %cleanup

cleanup:                                          ; preds = %disable_bus_clk, %if.end27.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.1, %disable_bus_clk ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_sai_check_version(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %soc_data = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_data, align 4
  %reg_offset = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_offset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !186
  %conv1 = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %cmp = icmp eq i32 %conv1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_sai_check_version.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_sai_check_version, %if.then11)) #11
          to label %do.end [label %if.then11], !srcloc !191

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_sai_check_version.__UNIQUE_ID_ddebug255, ptr noundef %dev, ptr noundef nonnull @.str.66, i32 noundef %10) #11
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %shr = lshr i32 %12, 24
  %verid = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 17
  %13 = ptrtoint ptr %verid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr, ptr %verid, align 8
  %and13 = lshr i32 %12, 16
  %shr14 = and i32 %and13, 255
  %minor = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 17, i32 1
  %14 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr14, ptr %minor, align 4
  %and16 = and i32 %12, 65535
  %feature = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 17, i32 2
  %15 = ptrtoint ptr %feature to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and16, ptr %feature, align 8
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call19 = call i32 @regmap_read(ptr noundef %17, i32 noundef 4, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end.cleanup_crit_edge, label %do.body24

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body24:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_sai_check_version.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_sai_check_version, %if.then36)) #11
          to label %do.end39 [label %if.then36], !srcloc !191

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_sai_check_version.__UNIQUE_ID_ddebug256, ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %19) #11
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %and40 = lshr i32 %21, 16
  %shr41 = and i32 %and40, 15
  %shl = shl nuw nsw i32 1, %shr41
  %param = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 18
  %22 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shl, ptr %param, align 4
  %and42 = lshr i32 %21, 8
  %shr43 = and i32 %and42, 15
  %shl44 = shl nuw nsw i32 1, %shr43
  %fifo_depth = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl44, ptr %fifo_depth, align 4
  %and46 = and i32 %21, 15
  %dataline = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 18, i32 2
  %24 = ptrtoint ptr %dataline to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and46, ptr %dataline, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end39 ], [ 0, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call19, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_pcm_dma_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_sai_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mclk_streams = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mclk_streams to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mclk_streams, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mclk_id = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %mclk_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mclk_id, align 4
  %arrayidx1 = getelementptr %struct.fsl_sai, ptr %1, i32 0, i32 3, i32 %5
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  tail call void @clk_disable(ptr noundef %7) #11
  tail call void @clk_unprepare(ptr noundef %7) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %mclk_streams to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mclk_streams, align 4
  %and3 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx8 = getelementptr %struct.fsl_sai, ptr %1, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr %struct.fsl_sai, ptr %1, i32 0, i32 3, i32 %11
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx9, align 4
  tail call void @clk_disable(ptr noundef %13) #11
  tail call void @clk_unprepare(ptr noundef %13) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %bus_clk = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus_clk, align 8
  tail call void @clk_disable(ptr noundef %15) #11
  tail call void @clk_unprepare(ptr noundef %15) #11
  %soc_data = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %soc_data, align 4
  %flags = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and11 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %pm_qos_req = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 19
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %regmap = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %21, i1 noundef zeroext true) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_sai_writeable_reg(ptr nocapture noundef readonly %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %soc_data = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_data, align 4
  %reg_offset = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %reg)
  %cmp.not = icmp ugt i32 %5, %reg
  %add1 = add i32 %5, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %reg)
  %cmp2.not = icmp ult i32 %add1, %reg
  %or.cond = or i1 %cmp.not, %cmp2.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add3 = add i32 %5, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %reg)
  %cmp4.not = icmp ugt i32 %add3, %reg
  %add6 = add i32 %5, 148
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %reg)
  %cmp7.not = icmp ult i32 %add6, %reg
  %or.cond18 = or i1 %cmp4.not, %cmp7.not
  br i1 %or.cond18, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %6 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 32, label %if.end9.cleanup_crit_edge
    i32 36, label %if.end9.cleanup_crit_edge19
    i32 40, label %if.end9.cleanup_crit_edge20
    i32 44, label %if.end9.cleanup_crit_edge21
    i32 48, label %if.end9.cleanup_crit_edge22
    i32 52, label %if.end9.cleanup_crit_edge23
    i32 56, label %if.end9.cleanup_crit_edge24
    i32 60, label %if.end9.cleanup_crit_edge25
    i32 96, label %if.end9.cleanup_crit_edge26
    i32 224, label %if.end9.cleanup_crit_edge27
    i32 256, label %if.end9.cleanup_crit_edge28
    i32 260, label %if.end9.cleanup_crit_edge29
    i32 112, label %if.end9.cleanup_crit_edge30
    i32 240, label %if.end9.cleanup_crit_edge31
  ]

if.end9.cleanup_crit_edge31:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge30:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge29:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge28:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge27:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge26:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge25:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge24:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge23:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge22:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge21:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge20:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge19:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end9.cleanup_crit_edge, %if.end9.cleanup_crit_edge19, %if.end9.cleanup_crit_edge20, %if.end9.cleanup_crit_edge21, %if.end9.cleanup_crit_edge22, %if.end9.cleanup_crit_edge23, %if.end9.cleanup_crit_edge24, %if.end9.cleanup_crit_edge25, %if.end9.cleanup_crit_edge26, %if.end9.cleanup_crit_edge27, %if.end9.cleanup_crit_edge28, %if.end9.cleanup_crit_edge29, %if.end9.cleanup_crit_edge30, %if.end9.cleanup_crit_edge31, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ true, %if.end9.cleanup_crit_edge ], [ true, %if.end9.cleanup_crit_edge19 ], [ true, %if.end9.cleanup_crit_edge20 ], [ true, %if.end9.cleanup_crit_edge21 ], [ true, %if.end9.cleanup_crit_edge22 ], [ true, %if.end9.cleanup_crit_edge23 ], [ true, %if.end9.cleanup_crit_edge24 ], [ true, %if.end9.cleanup_crit_edge25 ], [ true, %if.end9.cleanup_crit_edge26 ], [ true, %if.end9.cleanup_crit_edge27 ], [ true, %if.end9.cleanup_crit_edge28 ], [ true, %if.end9.cleanup_crit_edge29 ], [ true, %if.end9.cleanup_crit_edge30 ], [ true, %if.end9.cleanup_crit_edge31 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_sai_readable_reg(ptr nocapture noundef readonly %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %soc_data = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_data, align 4
  %reg_offset = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %reg)
  %cmp.not = icmp ugt i32 %5, %reg
  %add1 = add i32 %5, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %reg)
  %cmp2.not = icmp ult i32 %add1, %reg
  %or.cond = or i1 %cmp.not, %cmp2.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add3 = add i32 %5, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %reg)
  %cmp4.not = icmp ugt i32 %add3, %reg
  %add6 = add i32 %5, 148
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %reg)
  %cmp7.not = icmp ult i32 %add6, %reg
  %or.cond18 = or i1 %cmp4.not, %cmp7.not
  br i1 %or.cond18, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %6 = tail call i32 @llvm.fshl.i32(i32 %reg, i32 %reg, i32 30)
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %6, label %sw.default [
    i32 16, label %if.end9.cleanup_crit_edge
    i32 17, label %if.end9.cleanup_crit_edge19
    i32 18, label %if.end9.cleanup_crit_edge20
    i32 19, label %if.end9.cleanup_crit_edge21
    i32 20, label %if.end9.cleanup_crit_edge22
    i32 21, label %if.end9.cleanup_crit_edge23
    i32 22, label %if.end9.cleanup_crit_edge24
    i32 23, label %if.end9.cleanup_crit_edge25
    i32 24, label %if.end9.cleanup_crit_edge26
    i32 40, label %if.end9.cleanup_crit_edge27
    i32 41, label %if.end9.cleanup_crit_edge28
    i32 42, label %if.end9.cleanup_crit_edge29
    i32 43, label %if.end9.cleanup_crit_edge30
    i32 44, label %if.end9.cleanup_crit_edge31
    i32 45, label %if.end9.cleanup_crit_edge32
    i32 46, label %if.end9.cleanup_crit_edge33
    i32 47, label %if.end9.cleanup_crit_edge34
    i32 48, label %if.end9.cleanup_crit_edge35
    i32 49, label %if.end9.cleanup_crit_edge36
    i32 50, label %if.end9.cleanup_crit_edge37
    i32 51, label %if.end9.cleanup_crit_edge38
    i32 52, label %if.end9.cleanup_crit_edge39
    i32 53, label %if.end9.cleanup_crit_edge40
    i32 54, label %if.end9.cleanup_crit_edge41
    i32 55, label %if.end9.cleanup_crit_edge42
    i32 56, label %if.end9.cleanup_crit_edge43
    i32 64, label %if.end9.cleanup_crit_edge44
    i32 65, label %if.end9.cleanup_crit_edge45
    i32 0, label %if.end9.cleanup_crit_edge46
    i32 1, label %if.end9.cleanup_crit_edge47
    i32 29, label %if.end9.cleanup_crit_edge48
    i32 61, label %if.end9.cleanup_crit_edge49
    i32 28, label %if.end9.cleanup_crit_edge50
    i32 30, label %if.end9.cleanup_crit_edge51
    i32 31, label %if.end9.cleanup_crit_edge52
    i32 60, label %if.end9.cleanup_crit_edge53
    i32 62, label %if.end9.cleanup_crit_edge54
    i32 63, label %if.end9.cleanup_crit_edge55
  ]

if.end9.cleanup_crit_edge55:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge54:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge53:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge52:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge51:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge50:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge49:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge48:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge47:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge46:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge45:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge44:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge43:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge42:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge41:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge40:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge39:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge38:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge37:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge36:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge35:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge34:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge33:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge32:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge31:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge30:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge29:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge28:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge27:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge26:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge25:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge24:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge23:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge22:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge21:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge20:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge19:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end9.cleanup_crit_edge, %if.end9.cleanup_crit_edge19, %if.end9.cleanup_crit_edge20, %if.end9.cleanup_crit_edge21, %if.end9.cleanup_crit_edge22, %if.end9.cleanup_crit_edge23, %if.end9.cleanup_crit_edge24, %if.end9.cleanup_crit_edge25, %if.end9.cleanup_crit_edge26, %if.end9.cleanup_crit_edge27, %if.end9.cleanup_crit_edge28, %if.end9.cleanup_crit_edge29, %if.end9.cleanup_crit_edge30, %if.end9.cleanup_crit_edge31, %if.end9.cleanup_crit_edge32, %if.end9.cleanup_crit_edge33, %if.end9.cleanup_crit_edge34, %if.end9.cleanup_crit_edge35, %if.end9.cleanup_crit_edge36, %if.end9.cleanup_crit_edge37, %if.end9.cleanup_crit_edge38, %if.end9.cleanup_crit_edge39, %if.end9.cleanup_crit_edge40, %if.end9.cleanup_crit_edge41, %if.end9.cleanup_crit_edge42, %if.end9.cleanup_crit_edge43, %if.end9.cleanup_crit_edge44, %if.end9.cleanup_crit_edge45, %if.end9.cleanup_crit_edge46, %if.end9.cleanup_crit_edge47, %if.end9.cleanup_crit_edge48, %if.end9.cleanup_crit_edge49, %if.end9.cleanup_crit_edge50, %if.end9.cleanup_crit_edge51, %if.end9.cleanup_crit_edge52, %if.end9.cleanup_crit_edge53, %if.end9.cleanup_crit_edge54, %if.end9.cleanup_crit_edge55, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ true, %if.end9.cleanup_crit_edge ], [ true, %if.end9.cleanup_crit_edge19 ], [ true, %if.end9.cleanup_crit_edge20 ], [ true, %if.end9.cleanup_crit_edge21 ], [ true, %if.end9.cleanup_crit_edge22 ], [ true, %if.end9.cleanup_crit_edge23 ], [ true, %if.end9.cleanup_crit_edge24 ], [ true, %if.end9.cleanup_crit_edge25 ], [ true, %if.end9.cleanup_crit_edge26 ], [ true, %if.end9.cleanup_crit_edge27 ], [ true, %if.end9.cleanup_crit_edge28 ], [ true, %if.end9.cleanup_crit_edge29 ], [ true, %if.end9.cleanup_crit_edge30 ], [ true, %if.end9.cleanup_crit_edge31 ], [ true, %if.end9.cleanup_crit_edge32 ], [ true, %if.end9.cleanup_crit_edge33 ], [ true, %if.end9.cleanup_crit_edge34 ], [ true, %if.end9.cleanup_crit_edge35 ], [ true, %if.end9.cleanup_crit_edge36 ], [ true, %if.end9.cleanup_crit_edge37 ], [ true, %if.end9.cleanup_crit_edge38 ], [ true, %if.end9.cleanup_crit_edge39 ], [ true, %if.end9.cleanup_crit_edge40 ], [ true, %if.end9.cleanup_crit_edge41 ], [ true, %if.end9.cleanup_crit_edge42 ], [ true, %if.end9.cleanup_crit_edge43 ], [ true, %if.end9.cleanup_crit_edge44 ], [ true, %if.end9.cleanup_crit_edge45 ], [ true, %if.end9.cleanup_crit_edge46 ], [ true, %if.end9.cleanup_crit_edge47 ], [ true, %if.end9.cleanup_crit_edge48 ], [ true, %if.end9.cleanup_crit_edge49 ], [ true, %if.end9.cleanup_crit_edge50 ], [ true, %if.end9.cleanup_crit_edge51 ], [ true, %if.end9.cleanup_crit_edge52 ], [ true, %if.end9.cleanup_crit_edge53 ], [ true, %if.end9.cleanup_crit_edge54 ], [ true, %if.end9.cleanup_crit_edge55 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_sai_volatile_reg(ptr nocapture noundef readonly %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %soc_data = getelementptr inbounds %struct.fsl_sai, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_data, align 4
  %reg_offset = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %reg)
  %cmp = icmp eq i32 %5, %reg
  %add1 = add i32 %5, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %reg)
  %cmp2 = icmp eq i32 %add1, %reg
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp3 = icmp eq i32 %5, 8
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %6 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %reg, label %land.lhs.true.if.end8_crit_edge [
    i32 0, label %land.lhs.true.cleanup_crit_edge
    i32 4, label %land.lhs.true.cleanup_crit_edge16
  ]

land.lhs.true.cleanup_crit_edge16:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %7 = add i32 %reg, -64
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 30)
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %8, label %sw.default [
    i32 0, label %if.end8.cleanup_crit_edge
    i32 1, label %if.end8.cleanup_crit_edge17
    i32 2, label %if.end8.cleanup_crit_edge18
    i32 3, label %if.end8.cleanup_crit_edge19
    i32 4, label %if.end8.cleanup_crit_edge20
    i32 5, label %if.end8.cleanup_crit_edge21
    i32 6, label %if.end8.cleanup_crit_edge22
    i32 7, label %if.end8.cleanup_crit_edge23
    i32 32, label %if.end8.cleanup_crit_edge24
    i32 33, label %if.end8.cleanup_crit_edge25
    i32 34, label %if.end8.cleanup_crit_edge26
    i32 35, label %if.end8.cleanup_crit_edge27
    i32 36, label %if.end8.cleanup_crit_edge28
    i32 37, label %if.end8.cleanup_crit_edge29
    i32 38, label %if.end8.cleanup_crit_edge30
    i32 39, label %if.end8.cleanup_crit_edge31
    i32 24, label %if.end8.cleanup_crit_edge32
    i32 25, label %if.end8.cleanup_crit_edge33
    i32 26, label %if.end8.cleanup_crit_edge34
    i32 27, label %if.end8.cleanup_crit_edge35
    i32 28, label %if.end8.cleanup_crit_edge36
    i32 29, label %if.end8.cleanup_crit_edge37
    i32 30, label %if.end8.cleanup_crit_edge38
    i32 31, label %if.end8.cleanup_crit_edge39
  ]

if.end8.cleanup_crit_edge39:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge38:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge37:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge36:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge35:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge34:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge33:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge32:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge31:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge30:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge29:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge28:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge27:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge26:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge25:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge24:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge23:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge22:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge21:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge20:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge19:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge18:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge17:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.default:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end8.cleanup_crit_edge, %if.end8.cleanup_crit_edge17, %if.end8.cleanup_crit_edge18, %if.end8.cleanup_crit_edge19, %if.end8.cleanup_crit_edge20, %if.end8.cleanup_crit_edge21, %if.end8.cleanup_crit_edge22, %if.end8.cleanup_crit_edge23, %if.end8.cleanup_crit_edge24, %if.end8.cleanup_crit_edge25, %if.end8.cleanup_crit_edge26, %if.end8.cleanup_crit_edge27, %if.end8.cleanup_crit_edge28, %if.end8.cleanup_crit_edge29, %if.end8.cleanup_crit_edge30, %if.end8.cleanup_crit_edge31, %if.end8.cleanup_crit_edge32, %if.end8.cleanup_crit_edge33, %if.end8.cleanup_crit_edge34, %if.end8.cleanup_crit_edge35, %if.end8.cleanup_crit_edge36, %if.end8.cleanup_crit_edge37, %if.end8.cleanup_crit_edge38, %if.end8.cleanup_crit_edge39, %land.lhs.true.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge16, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge16 ], [ true, %if.end8.cleanup_crit_edge ], [ true, %if.end8.cleanup_crit_edge17 ], [ true, %if.end8.cleanup_crit_edge18 ], [ true, %if.end8.cleanup_crit_edge19 ], [ true, %if.end8.cleanup_crit_edge20 ], [ true, %if.end8.cleanup_crit_edge21 ], [ true, %if.end8.cleanup_crit_edge22 ], [ true, %if.end8.cleanup_crit_edge23 ], [ true, %if.end8.cleanup_crit_edge24 ], [ true, %if.end8.cleanup_crit_edge25 ], [ true, %if.end8.cleanup_crit_edge26 ], [ true, %if.end8.cleanup_crit_edge27 ], [ true, %if.end8.cleanup_crit_edge28 ], [ true, %if.end8.cleanup_crit_edge29 ], [ true, %if.end8.cleanup_crit_edge30 ], [ true, %if.end8.cleanup_crit_edge31 ], [ true, %if.end8.cleanup_crit_edge32 ], [ true, %if.end8.cleanup_crit_edge33 ], [ true, %if.end8.cleanup_crit_edge34 ], [ true, %if.end8.cleanup_crit_edge35 ], [ true, %if.end8.cleanup_crit_edge36 ], [ true, %if.end8.cleanup_crit_edge37 ], [ true, %if.end8.cleanup_crit_edge38 ], [ true, %if.end8.cleanup_crit_edge39 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_sai_dai_probe(ptr nocapture noundef %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %soc_data = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc_data, align 4
  %reg_offset = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_offset, align 4
  %regmap = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %7, i32 noundef 16777216) #11
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %add3 = add i32 %7, 128
  %call4 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %add3, i32 noundef 16777216) #11
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %7, i32 noundef 0) #11
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef %add3, i32 noundef 0) #11
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %add12 = add i32 %7, 4
  %18 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %soc_data, align 4
  %fifo_depth = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fifo_depth, align 4
  %sub = add i32 %21, -1
  %sub16 = add i32 %21, -6
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %add12, i32 noundef %sub, i32 noundef %sub16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %add19 = add i32 %7, 132
  %24 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %soc_data, align 4
  %fifo_depth21 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %fifo_depth21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fifo_depth21, align 4
  %sub22 = add i32 %27, -1
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %add19, i32 noundef %sub22, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %dma_params_tx = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 16
  %dma_params_rx = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 15
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 7
  %28 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dma_params_tx, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 8
  %29 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dma_params_rx, ptr %capture_dma_data.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_sai_set_dai_sysclk(ptr nocapture noundef readonly %cpu_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp = icmp eq i32 %dir, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %clk_id)
  %0 = icmp ult i32 %clk_id, 4
  br i1 %0, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.49, i32 noundef -22) #14
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %soc_data.i = getelementptr inbounds %struct.fsl_sai, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %soc_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %soc_data.i, align 4
  %reg_offset.i = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_offset.i, align 4
  %switch.idx.mult = shl i32 %clk_id, 26
  %switch.idx.mult63 = shl i32 %clk_id, 26
  %regmap.i46 = getelementptr inbounds %struct.fsl_sai, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i46 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i46, align 4
  %cond.i47 = add i32 %10, 8
  %call.i.i48 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %cond.i47, i32 noundef 201326592, i32 noundef %switch.idx.mult, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i2249 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i.i2249 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.sink = load ptr, ptr %driver_data.i.i.i2249, align 4
  %soc_data.i2350 = getelementptr inbounds %struct.fsl_sai, ptr %.sink, i32 0, i32 13
  %16 = ptrtoint ptr %soc_data.i2350 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %soc_data.i2350, align 4
  %reg_offset.i2451 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %reg_offset.i2451 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_offset.i2451, align 4
  %regmap.i29 = getelementptr inbounds %struct.fsl_sai, ptr %.sink, i32 0, i32 1
  %20 = ptrtoint ptr %regmap.i29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i29, align 4
  %cond.i30 = add i32 %19, 136
  %call.i.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %cond.i30, i32 noundef 201326592, i32 noundef %switch.idx.mult63, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_sai_set_dai_bclk_ratio(ptr nocapture noundef readonly %dai, i32 noundef %ratio) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %bclk_ratio = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %bclk_ratio to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %ratio, ptr %bclk_ratio, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_sai_set_dai_fmt(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @fsl_sai_set_dai_fmt_tr(ptr noundef %cpu_dai, i32 noundef %fmt, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.54, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @fsl_sai_set_dai_fmt_tr(ptr noundef %cpu_dai, i32 noundef %fmt, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev7 = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %2 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.57, i32 noundef %call1) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call1, %do.end6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_sai_set_dai_tdm_slot(ptr nocapture noundef readonly %cpu_dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %slots1 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %slots1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %slots, ptr %slots1, align 8
  %slot_width2 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 11
  %5 = ptrtoint ptr %slot_width2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %slot_width, ptr %slot_width2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_sai_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %soc_data = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc_data, align 4
  %use_edma = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %use_edma to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_edma, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %maxburst = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 16, i32 2
  %maxburst2 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 15, i32 2
  %cond.in = select i1 %cmp, ptr %maxburst, ptr %maxburst2
  %12 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond = load i32, ptr %cond.in, align 4
  %call3 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %11, i32 noundef 0, i32 noundef 13, i32 noundef %cond) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %runtime4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %13 = ptrtoint ptr %runtime4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %runtime4, align 4
  %call5 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %14, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @fsl_sai_rate_constraints) #11
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_sai_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %soc_data = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc_data, align 4
  %reg_offset = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_offset, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %13, %entry.if.then.i.i.i_crit_edge ], [ %16, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %14 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #11, !range !192
  %add.i.i.i = or i32 %14, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.1.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp3 = icmp eq i32 %11, 1
  %spec.select = select i1 %cmp3, i32 2, i32 %11
  %not.cmp = xor i1 %cmp, true
  %cond4 = zext i1 %not.cmp to i32
  %slots5 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 10
  %17 = ptrtoint ptr %slots5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slots5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool6.not = icmp eq i32 %18, 0
  %slots.0 = select i1 %tobool6.not, i32 %spec.select, i32 %18
  %slot_width8 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 11
  %19 = ptrtoint ptr %slot_width8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slot_width8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool9.not = icmp eq i32 %20, 0
  %slot_width.0 = select i1 %tobool9.not, i32 %call1.i, i32 %20
  %add = add i32 %11, -1
  %sub = add i32 %add, %slots.0
  %div = udiv i32 %sub, %slots.0
  %is_consumer_mode = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %is_consumer_mode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_consumer_mode, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool13.not = icmp eq i8 %22, 0
  br i1 %tobool13.not, label %if.then14, label %params_width.exit.if.end43_crit_edge

params_width.exit.if.end43_crit_edge:             ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then14:                                        ; preds = %params_width.exit
  %bclk_ratio = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 12
  %23 = ptrtoint ptr %bclk_ratio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bclk_ratio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool15.not = icmp eq i32 %24, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i221 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %arrayidx.i.i221 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i221, align 4
  br label %if.end26

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %mul22 = mul i32 %slot_width.0, %slots.0
  %arrayidx.i.i222 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %arrayidx.i.i222 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i222, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then16
  %.sink = phi i32 [ %28, %if.else ], [ %24, %if.then16 ]
  %mul22.sink = phi i32 [ %mul22, %if.else ], [ %26, %if.then16 ]
  %mul24 = mul i32 %mul22.sink, %.sink
  %call25 = tail call fastcc i32 @fsl_sai_set_bclk(ptr noundef %cpu_dai, i1 noundef zeroext %cmp, i32 noundef %mul24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool27.not = icmp eq i32 %call25, 0
  br i1 %tobool27.not, label %if.end29, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  %mclk_streams = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 9
  %29 = ptrtoint ptr %mclk_streams to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mclk_streams, align 4
  %31 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stream, align 4
  %shl = shl nuw i32 1, %32
  %and = and i32 %shl, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %if.then32, label %if.end29.if.end43_crit_edge

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then32:                                        ; preds = %if.end29
  %idxprom = zext i1 %cmp to i32
  %arrayidx = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 8, i32 %idxprom
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %arrayidx34 = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 3, i32 %34
  %35 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx34, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %36) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then32
  %call1.i223 = tail call i32 @clk_enable(ptr noundef %36) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i223)
  %tobool2.not.i = icmp eq i32 %call1.i223, 0
  br i1 %tobool2.not.i, label %if.end38, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %36) #11
  br label %cleanup

if.end38:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stream, align 4
  %shl40 = shl nuw i32 1, %38
  %39 = ptrtoint ptr %mclk_streams to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mclk_streams, align 4
  %or = or i32 %40, %shl40
  store i32 %or, ptr %mclk_streams, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end38, %if.end29.if.end43_crit_edge, %params_width.exit.if.end43_crit_edge
  %is_dsp_mode = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 6
  %41 = ptrtoint ptr %is_dsp_mode to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_dsp_mode, align 2, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool44.not = icmp eq i8 %42, 0
  %sub46 = shl i32 %slot_width.0, 8
  %shl47 = add i32 %sub46, -256
  %val_cr4.0 = select i1 %tobool44.not, i32 %shl47, i32 0
  %sub50 = add i32 %slot_width.0, -1
  %shl51 = shl i32 %sub50, 24
  %shl54 = shl i32 %sub50, 16
  %or55 = or i32 %shl51, %shl54
  %is_lsb_first = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 5
  %43 = ptrtoint ptr %is_lsb_first to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %is_lsb_first, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool56.not = icmp eq i8 %44, 0
  %sub60 = shl i32 %call1.i, 8
  %shl61 = add i32 %sub60, -256
  %or62 = select i1 %tobool56.not, i32 %shl61, i32 0
  %val_cr5.0 = or i32 %or55, %or62
  %sub64 = shl i32 %slots.0, 16
  %shl65 = add i32 %sub64, -65536
  %or66 = or i32 %val_cr4.0, %shl65
  %or69 = or i32 %or66, 32
  %val_cr4.1 = select i1 %cmp, i32 %or69, i32 %or66
  %45 = ptrtoint ptr %is_consumer_mode to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %is_consumer_mode, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool72.not = icmp eq i8 %46, 0
  br i1 %tobool72.not, label %land.lhs.true, label %if.end43.if.end92_crit_edge

if.end43.if.end92_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

land.lhs.true:                                    ; preds = %if.end43
  %arrayidx.i = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 7, i32 %cond4
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i224 = icmp eq i8 %48, 0
  br i1 %tobool.not.i224, label %fsl_sai_dir_is_synced.exit, label %land.lhs.true.if.end92_crit_edge

land.lhs.true.if.end92_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

fsl_sai_dir_is_synced.exit:                       ; preds = %land.lhs.true
  %cond.i = zext i1 %cmp to i32
  %arrayidx2.i = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 7, i32 %cond.i
  %49 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx2.i, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool3.i.not = icmp eq i8 %50, 0
  br i1 %tobool3.i.not, label %fsl_sai_dir_is_synced.exit.if.end92_crit_edge, label %if.then74

fsl_sai_dir_is_synced.exit.if.end92_crit_edge:    ; preds = %fsl_sai_dir_is_synced.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.then74:                                        ; preds = %fsl_sai_dir_is_synced.exit
  call void @__sanitizer_cov_trace_pc() #13
  %regmap = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 1
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap, align 4
  %cond81.v = select i1 %cmp, i32 144, i32 16
  %cond81 = add i32 %cond81.v, %7
  %call.i225 = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef %cond81, i32 noundef 2039584, i32 noundef %val_cr4.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %cond90.v = select i1 %cmp, i32 148, i32 20
  %cond90 = add i32 %cond90.v, %7
  %call.i226 = tail call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef %cond90, i32 noundef 522133248, i32 noundef %val_cr5.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end92

if.end92:                                         ; preds = %if.then74, %fsl_sai_dir_is_synced.exit.if.end92_crit_edge, %land.lhs.true.if.end92_crit_edge, %if.end43.if.end92_crit_edge
  %regmap93 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 1
  %55 = ptrtoint ptr %regmap93 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap93, align 4
  %cond100.v = select i1 %cmp, i32 12, i32 140
  %cond100 = add i32 %cond100.v, %7
  %notmask = shl nsw i32 -1, %div
  %sub102 = xor i32 %notmask, -1
  %shl103 = shl i32 %sub102, 16
  %call.i227 = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef %cond100, i32 noundef 16711680, i32 noundef %shl103, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %57 = ptrtoint ptr %regmap93 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap93, align 4
  %cond112.v = select i1 %cmp, i32 16, i32 144
  %cond112 = add i32 %cond112.v, %7
  %call.i228 = tail call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef %cond112, i32 noundef 2039584, i32 noundef %val_cr4.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %59 = ptrtoint ptr %regmap93 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap93, align 4
  %cond125 = select i1 %cmp, i32 96, i32 224
  %cond121.v = select i1 %cmp, i32 20, i32 148
  %cond121 = add i32 %cond121.v, %7
  %call.i229 = tail call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef %cond121, i32 noundef 522133248, i32 noundef %val_cr5.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %61 = ptrtoint ptr %regmap93 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap93, align 4
  %63 = tail call i32 @llvm.umin.i32(i32 %11, i32 %slots.0)
  %notmask220 = shl nsw i32 -1, %63
  %call134 = tail call i32 @regmap_write(ptr noundef %62, i32 noundef %cond125, i32 noundef %notmask220) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.then3.i, %if.then32.cleanup_crit_edge, %if.end26.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end92 ], [ %call25, %if.end26.cleanup_crit_edge ], [ %call1.i223, %if.then3.i ], [ %call.i, %if.then32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_sai_hw_free(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %soc_data = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc_data, align 4
  %reg_offset = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_offset, align 4
  %regmap = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %cond.v = select i1 %cmp, i32 12, i32 140
  %cond = add i32 %9, %cond.v
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %cond, i32 noundef 16711680, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %is_consumer_mode = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %is_consumer_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_consumer_mode, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mclk_streams = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %mclk_streams to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mclk_streams, align 4
  %16 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream, align 4
  %shl = shl nuw i32 1, %17
  %and = and i32 %shl, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %idxprom = zext i1 %cmp to i32
  %arrayidx = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 8, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 3, i32 %19
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx7, align 4
  tail call void @clk_disable(ptr noundef %21) #11
  tail call void @clk_unprepare(ptr noundef %21) #11
  %22 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stream, align 4
  %shl9 = shl nuw i32 1, %23
  %neg = xor i32 %shl9, -1
  %24 = ptrtoint ptr %mclk_streams to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mclk_streams, align 4
  %and11 = and i32 %25, %neg
  store i32 %and11, ptr %mclk_streams, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_sai_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  %xcsr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %soc_data = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc_data, align 4
  %reg_offset = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_offset, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %not.cmp = xor i1 %cmp, true
  %cond = zext i1 %not.cmp to i32
  %cond2 = zext i1 %cmp to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xcsr) #11
  %10 = ptrtoint ptr %xcsr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %xcsr, align 4, !annotation !186
  %regmap = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %add = add i32 %7, 8
  %synchronous = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 7
  %arrayidx = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not = icmp eq i8 %14, 0
  %cond4 = select i1 %tobool3.not, i32 0, i32 1073741824
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %add, i32 noundef 1073741824, i32 noundef %cond4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %add7 = add i32 %7, 136
  %17 = ptrtoint ptr %synchronous to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %synchronous, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool10.not = icmp eq i8 %18, 0
  %cond11 = select i1 %tobool10.not, i32 0, i32 1073741824
  %call.i131 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %add7, i32 noundef 1073741824, i32 noundef %cond11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %19 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge152
    i32 4, label %entry.sw.bb_crit_edge153
    i32 0, label %entry.sw.bb47_crit_edge
    i32 5, label %entry.sw.bb47_crit_edge154
    i32 3, label %entry.sw.bb47_crit_edge155
  ]

entry.sw.bb47_crit_edge155:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb47

entry.sw.bb47_crit_edge154:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb47

entry.sw.bb47_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb47

entry.sw.bb_crit_edge153:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge152:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge152, %entry.sw.bb_crit_edge153
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %add16 = add i32 %7, 128
  %cond17 = select i1 %cmp, i32 %7, i32 %add16
  %call.i132 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %cond17, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i133 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %cond17, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %arrayidx.i = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 7, i32 %cond
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %fsl_sai_dir_is_synced.exit, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

fsl_sai_dir_is_synced.exit:                       ; preds = %sw.bb
  %arrayidx2.i = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 7, i32 %cond2
  %26 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx2.i, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool3.i.not = icmp eq i8 %27, 0
  br i1 %tobool3.i.not, label %fsl_sai_dir_is_synced.exit.if.end_crit_edge, label %if.then

fsl_sai_dir_is_synced.exit.if.end_crit_edge:      ; preds = %fsl_sai_dir_is_synced.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %fsl_sai_dir_is_synced.exit
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %cond36 = select i1 %cmp, i32 %add16, i32 %7
  %call.i134 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %cond36, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %fsl_sai_dir_is_synced.exit.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call.i135 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef %cond17, i32 noundef 7936, i32 noundef 3072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %cleanup

sw.bb47:                                          ; preds = %entry.sw.bb47_crit_edge, %entry.sw.bb47_crit_edge154, %entry.sw.bb47_crit_edge155
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %add53 = add i32 %7, 128
  %cond55 = select i1 %cmp, i32 %7, i32 %add53
  %call.i136 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef %cond55, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call.i137 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef %cond55, i32 noundef 7936, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %cond73 = select i1 %cmp, i32 %add53, i32 %7
  %call74 = call i32 @regmap_read(ptr noundef %37, i32 noundef %cond73, ptr noundef nonnull %xcsr) #11
  %arrayidx.i138 = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 7, i32 %cond
  %38 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i138, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i139 = icmp eq i8 %39, 0
  br i1 %tobool.not.i139, label %fsl_sai_dir_is_synced.exit144, label %sw.bb47.if.end78_crit_edge

sw.bb47.if.end78_crit_edge:                       ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

fsl_sai_dir_is_synced.exit144:                    ; preds = %sw.bb47
  %arrayidx2.i141 = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 7, i32 %cond2
  %40 = ptrtoint ptr %arrayidx2.i141 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx2.i141, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool3.i142.not = icmp eq i8 %41, 0
  br i1 %tobool3.i142.not, label %fsl_sai_dir_is_synced.exit144.if.end78_crit_edge, label %land.lhs.true

fsl_sai_dir_is_synced.exit144.if.end78_crit_edge: ; preds = %fsl_sai_dir_is_synced.exit144
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

land.lhs.true:                                    ; preds = %fsl_sai_dir_is_synced.exit144
  %42 = ptrtoint ptr %xcsr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %xcsr, align 4
  %and = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool76.not = icmp eq i32 %and, 0
  br i1 %tobool76.not, label %if.then77, label %land.lhs.true.if.end78_crit_edge

land.lhs.true.if.end78_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then77:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @fsl_sai_config_disable(ptr noundef %3, i32 noundef %cond)
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %land.lhs.true.if.end78_crit_edge, %fsl_sai_dir_is_synced.exit144.if.end78_crit_edge, %sw.bb47.if.end78_crit_edge
  %arrayidx.i145 = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 7, i32 %cond2
  %44 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i145, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i146 = icmp eq i8 %45, 0
  br i1 %tobool.not.i146, label %fsl_sai_dir_is_synced.exit151, label %if.end78.if.then82_crit_edge

if.end78.if.then82_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82

fsl_sai_dir_is_synced.exit151:                    ; preds = %if.end78
  %46 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i138, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool3.i149.not = icmp eq i8 %47, 0
  br i1 %tobool3.i149.not, label %fsl_sai_dir_is_synced.exit151.if.then82_crit_edge, label %lor.lhs.false

fsl_sai_dir_is_synced.exit151.if.then82_crit_edge: ; preds = %fsl_sai_dir_is_synced.exit151
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82

lor.lhs.false:                                    ; preds = %fsl_sai_dir_is_synced.exit151
  %48 = ptrtoint ptr %xcsr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xcsr, align 4
  %and80 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %lor.lhs.false.if.then82_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.if.then82_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82

if.then82:                                        ; preds = %lor.lhs.false.if.then82_crit_edge, %fsl_sai_dir_is_synced.exit151.if.then82_crit_edge, %if.end78.if.then82_crit_edge
  call fastcc void @fsl_sai_config_disable(ptr noundef %3, i32 noundef %cond2)
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %lor.lhs.false.cleanup_crit_edge, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.then82 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xcsr) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_sai_set_dai_fmt_tr(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt, i32 noundef %fsl_dir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %soc_data = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc_data, align 4
  %reg_offset = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fsl_dir)
  %cmp = icmp eq i32 %fsl_dir, 0
  %is_lsb_first = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %is_lsb_first to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_lsb_first, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %spec.select = select i1 %tobool.not, i32 16, i32 0
  %and = and i32 %fmt, 15
  %10 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %entry.sw.epilog_crit_edge
    i32 4, label %sw.bb5
    i32 5, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or2 = or i32 %spec.select, 10
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or7 = or i32 %spec.select, 8
  %is_dsp_mode = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %is_dsp_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %is_dsp_mode, align 2
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %is_dsp_mode10 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %is_dsp_mode10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %is_dsp_mode10, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb5, %sw.bb, %entry.sw.epilog_crit_edge
  %val_cr4.1 = phi i32 [ %spec.select, %sw.bb8 ], [ %or7, %sw.bb5 ], [ %or2, %sw.bb ], [ %spec.select, %entry.sw.epilog_crit_edge ]
  %and12 = lshr i32 %fmt, 8
  %13 = and i32 %and12, 15
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %13, label %sw.epilog.cleanup_crit_edge [
    i32 4, label %sw.bb13
    i32 3, label %sw.bb15
    i32 2, label %sw.bb17
    i32 0, label %sw.epilog.sw.epilog20_crit_edge
  ]

sw.epilog.sw.epilog20_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog20

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb13:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %xor14 = xor i32 %val_cr4.1, 2
  br label %sw.epilog20

sw.bb15:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog20

sw.bb17:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %xor18 = xor i32 %val_cr4.1, 2
  br label %sw.epilog20

sw.epilog20:                                      ; preds = %sw.bb17, %sw.bb15, %sw.bb13, %sw.epilog.sw.epilog20_crit_edge
  %val_cr2.1 = phi i32 [ 33554432, %sw.epilog.sw.epilog20_crit_edge ], [ 33554432, %sw.bb17 ], [ 0, %sw.bb15 ], [ 0, %sw.bb13 ]
  %val_cr4.2 = phi i32 [ %val_cr4.1, %sw.epilog.sw.epilog20_crit_edge ], [ %xor18, %sw.bb17 ], [ %val_cr4.1, %sw.bb15 ], [ %xor14, %sw.bb13 ]
  %and21 = and i32 %fmt, 61440
  %15 = add nsw i32 %and21, -4096
  %16 = lshr exact i32 %15, 12
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %16, label %sw.epilog20.cleanup_crit_edge [
    i32 3, label %sw.bb22
    i32 0, label %sw.epilog20.sw.epilog34_crit_edge
    i32 1, label %sw.bb27
    i32 2, label %sw.bb30
  ]

sw.epilog20.sw.epilog34_crit_edge:                ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog34

sw.epilog20.cleanup_crit_edge:                    ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb22:                                          ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #13
  %or23 = or i32 %val_cr2.1, 16777216
  %or24 = or i32 %val_cr4.2, 1
  br label %sw.epilog34

sw.bb27:                                          ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #13
  %or28 = or i32 %val_cr2.1, 16777216
  br label %sw.epilog34

sw.bb30:                                          ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #13
  %or31 = or i32 %val_cr4.2, 1
  br label %sw.epilog34

sw.epilog34:                                      ; preds = %sw.bb30, %sw.bb27, %sw.bb22, %sw.epilog20.sw.epilog34_crit_edge
  %.sink = phi i8 [ 1, %sw.bb30 ], [ 0, %sw.bb27 ], [ 0, %sw.bb22 ], [ 1, %sw.epilog20.sw.epilog34_crit_edge ]
  %val_cr2.2 = phi i32 [ %val_cr2.1, %sw.bb30 ], [ %or28, %sw.bb27 ], [ %or23, %sw.bb22 ], [ %val_cr2.1, %sw.epilog20.sw.epilog34_crit_edge ]
  %val_cr4.3 = phi i32 [ %or31, %sw.bb30 ], [ %val_cr4.2, %sw.bb27 ], [ %or24, %sw.bb22 ], [ %val_cr4.2, %sw.epilog20.sw.epilog34_crit_edge ]
  %is_consumer_mode32 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %is_consumer_mode32 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink, ptr %is_consumer_mode32, align 4
  %regmap = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %cond.v = select i1 %cmp, i32 8, i32 136
  %cond = add i32 %7, %cond.v
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %cond, i32 noundef 50331648, i32 noundef %val_cr2.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %cond45.v = select i1 %cmp, i32 16, i32 144
  %cond45 = add i32 %7, %cond45.v
  %call.i81 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %cond45, i32 noundef 27, i32 noundef %val_cr4.3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog34, %sw.epilog20.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog34 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_sai_set_bclk(ptr nocapture noundef readonly %dai, i1 noundef zeroext %tx, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %soc_data = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc_data, align 4
  %reg_offset = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_offset, align 4
  %not.tx = xor i1 %tx, true
  %cond = zext i1 %not.tx to i32
  %cond2 = zext i1 %tx to i32
  %is_consumer_mode = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %is_consumer_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_consumer_mode, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mclk0_is_mclk1 = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %mclk0_is_mclk1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mclk0_is_mclk1, align 2, !range !187
  %12 = zext i8 %11 to i32
  %arrayidx34 = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 8, i32 %cond2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %id.0198 = phi i32 [ %12, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %savesub.0197 = phi i32 [ %freq, %if.end ], [ %savesub.2, %for.inc.for.body_crit_edge ]
  %savediv.0196 = phi i32 [ 0, %if.end ], [ %savediv.2, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 3, i32 %id.0198
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call7 = tail call i32 @clk_get_rate(ptr noundef %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %div = udiv i32 %call7, %freq
  %mul = mul i32 %div, %freq
  %sub = sub i32 %call7, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp11.not = icmp eq i32 %sub, 0
  br i1 %cmp11.not, label %if.end10.do.body_crit_edge, label %land.lhs.true

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.lhs.true:                                    ; preds = %if.end10
  %div12 = udiv i32 %call7, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %div12)
  %cmp13 = icmp ult i32 %div12, 1000
  br i1 %cmp13, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.end10.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_sai_set_bclk.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_sai_set_bclk, %if.then21)) #11
          to label %do.end [label %if.then21], !srcloc !191

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_sai_set_bclk.__UNIQUE_ID_ddebug251, ptr noundef %16, ptr noundef nonnull @.str.60, i32 noundef %div, i32 noundef %freq, i32 noundef %call7) #11
  br label %do.end

do.end:                                           ; preds = %if.then21, %do.body
  %rem = and i32 %div, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp23 = icmp eq i32 %rem, 0
  %17 = add i32 %div, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %17)
  %18 = icmp ult i32 %17, 511
  %19 = and i1 %18, %cmp23
  br i1 %19, label %if.then28, label %do.end.for.inc_crit_edge

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then28:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %savesub.0197)
  %cmp31 = icmp ult i32 %sub, %savesub.0197
  br i1 %cmp31, label %if.then32, label %if.then28.if.end35_crit_edge

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %div29186 = lshr i32 %div, 1
  %20 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %id.0198, ptr %arrayidx34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then28.if.end35_crit_edge
  %savediv.1 = phi i32 [ %div29186, %if.then32 ], [ %savediv.0196, %if.then28.if.end35_crit_edge ]
  %savesub.1 = phi i32 [ %sub, %if.then32 ], [ %savesub.0197, %if.then28.if.end35_crit_edge ]
  br i1 %cmp11.not, label %if.end35.for.end_crit_edge, label %if.end35.for.inc_crit_edge

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %if.end35.for.inc_crit_edge, %do.end.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %savediv.2 = phi i32 [ %savediv.0196, %land.lhs.true.for.inc_crit_edge ], [ %savediv.1, %if.end35.for.inc_crit_edge ], [ %savediv.0196, %do.end.for.inc_crit_edge ], [ %savediv.0196, %for.body.for.inc_crit_edge ]
  %savesub.2 = phi i32 [ %savesub.0197, %land.lhs.true.for.inc_crit_edge ], [ %savesub.1, %if.end35.for.inc_crit_edge ], [ %savesub.0197, %do.end.for.inc_crit_edge ], [ %savesub.0197, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %id.0198, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end35.for.end_crit_edge
  %savediv.3 = phi i32 [ %savediv.1, %if.end35.for.end_crit_edge ], [ %savediv.2, %for.inc.for.end_crit_edge ]
  %savesub.3 = phi i32 [ %savesub.1, %if.end35.for.end_crit_edge ], [ %savesub.2, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %savediv.3)
  %cmp39 = icmp eq i32 %savediv.3, 0
  br i1 %cmp39, label %do.end43, label %if.end47

do.end43:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %cond46 = select i1 %tx, i32 84, i32 82
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.61, i32 noundef %cond46, i32 noundef %freq) #14
  br label %cleanup

if.end47:                                         ; preds = %for.end
  %arrayidx.i = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 7, i32 %cond
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %fsl_sai_dir_is_synced.exit, label %if.end47.if.else68_crit_edge

if.end47.if.else68_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else68

fsl_sai_dir_is_synced.exit:                       ; preds = %if.end47
  %arrayidx2.i = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 7, i32 %cond2
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx2.i, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool3.i.not = icmp eq i8 %26, 0
  br i1 %tobool3.i.not, label %fsl_sai_dir_is_synced.exit.if.else68_crit_edge, label %if.then49

fsl_sai_dir_is_synced.exit.if.else68_crit_edge:   ; preds = %fsl_sai_dir_is_synced.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else68

if.then49:                                        ; preds = %fsl_sai_dir_is_synced.exit
  call void @__sanitizer_cov_trace_pc() #13
  %regmap = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %cond52.v = select i1 %tx, i32 136, i32 8
  %cond52 = add i32 %7, %cond52.v
  %29 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx34, align 4
  %shl = shl i32 %30, 26
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %cond52, i32 noundef 201326592, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %do.body98.sink.split

if.else68:                                        ; preds = %fsl_sai_dir_is_synced.exit.if.else68_crit_edge, %if.end47.if.else68_crit_edge
  %arrayidx69 = getelementptr %struct.fsl_sai, ptr %3, i32 0, i32 7, i32 %cond2
  %31 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx69, align 1, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool70.not = icmp eq i8 %32, 0
  br i1 %tobool70.not, label %if.then71, label %if.else68.do.body98_crit_edge

if.else68.do.body98_crit_edge:                    ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body98

if.then71:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #13
  %regmap72 = getelementptr inbounds %struct.fsl_sai, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %regmap72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap72, align 4
  %cond79.v = select i1 %tx, i32 8, i32 136
  %cond79 = add i32 %7, %cond79.v
  %35 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx34, align 4
  %shl84 = shl i32 %36, 26
  %call.i192 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %cond79, i32 noundef 201326592, i32 noundef %shl84, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %do.body98.sink.split

do.body98.sink.split:                             ; preds = %if.then71, %if.then49
  %regmap.sink = phi ptr [ %regmap, %if.then49 ], [ %regmap72, %if.then71 ]
  %cond52.sink = phi i32 [ %cond52, %if.then49 ], [ %cond79, %if.then71 ]
  %37 = ptrtoint ptr %regmap.sink to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.sink, align 4
  %sub66 = add i32 %savediv.3, -1
  %call.i191 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %cond52.sink, i32 noundef 255, i32 noundef %sub66, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %do.body98

do.body98:                                        ; preds = %do.body98.sink.split, %if.else68.do.body98_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_sai_set_bclk.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_sai_set_bclk, %if.then110)) #11
          to label %cleanup [label %if.then110], !srcloc !191

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  %41 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_sai_set_bclk.__UNIQUE_ID_ddebug252, ptr noundef %40, ptr noundef nonnull @.str.62, i32 noundef %42, i32 noundef %savediv.3, i32 noundef %savesub.3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then110, %do.body98, %do.end43, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end43 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then110 ], [ 0, %do.body98 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsl_sai_config_disable(ptr nocapture noundef readonly %sai, i32 noundef %dir) unnamed_addr #2 align 64 {
entry:
  %xcsr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %soc_data = getelementptr inbounds %struct.fsl_sai, ptr %sai, i32 0, i32 13
  %0 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc_data, align 4
  %reg_offset = getelementptr inbounds %struct.fsl_sai_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xcsr) #11
  %4 = ptrtoint ptr %xcsr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %xcsr, align 4, !annotation !186
  %regmap = getelementptr inbounds %struct.fsl_sai, ptr %sai, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %add1 = add i32 %3, 128
  %cond = select i1 %cmp, i32 %3, i32 %add1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %cond, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %count.0 = phi i32 [ 100, %entry ], [ %dec, %land.rhs.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 2147480) #11
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call10 = call i32 @regmap_read(ptr noundef %9, i32 noundef %cond, ptr noundef nonnull %xcsr) #11
  %dec = add nsw i32 %count.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool11.not = icmp eq i32 %dec, 0
  br i1 %tobool11.not, label %do.body.do.end_crit_edge, label %land.rhs

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.rhs:                                         ; preds = %do.body
  %10 = ptrtoint ptr %xcsr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xcsr, align 4
  %tobool12.not = icmp sgt i32 %11, -1
  br i1 %tobool12.not, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %do.body.do.end_crit_edge
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i60 = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %cond, i32 noundef 33554432, i32 noundef 33554432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %is_consumer_mode = getelementptr inbounds %struct.fsl_sai, ptr %sai, i32 0, i32 4
  %14 = ptrtoint ptr %is_consumer_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_consumer_mode, align 4, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool22.not = icmp eq i8 %15, 0
  br i1 %tobool22.not, label %if.then, label %do.end.if.end_crit_edge

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call31 = call i32 @regmap_write(ptr noundef %17, i32 noundef %cond, i32 noundef 16777216) #11
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call40 = call i32 @regmap_write(ptr noundef %19, i32 noundef %cond, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xcsr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !51, !53, !54, !55, !57, !59, !61, !63, !64, !65, !67, !68, !69, !70, !72, !74, !76, !78, !79, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !112, !114, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !138, !140, !141, !142, !144, !145, !146, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !163, !165, !167, !169, !171, !173, !175}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !{ptr @__initcall__kmod_snd_soc_fsl_sai__257_1339_fsl_sai_driver_init6, !1, !"__initcall__kmod_snd_soc_fsl_sai__257_1339_fsl_sai_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1339, i32 1}
!2 = !{ptr @__exitcall_fsl_sai_driver_exit, !1, !"__exitcall_fsl_sai_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description258, !4, !"__UNIQUE_ID_description258", i1 false, i1 false}
!4 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1341, i32 1}
!5 = !{ptr @__UNIQUE_ID_author259, !6, !"__UNIQUE_ID_author259", i1 false, i1 false}
!6 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1342, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias260, !8, !"__UNIQUE_ID_alias260", i1 false, i1 false}
!8 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1343, i32 1}
!9 = !{ptr @__UNIQUE_ID_file261, !10, !"__UNIQUE_ID_file261", i1 false, i1 false}
!10 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1344, i32 1}
!11 = !{ptr @__UNIQUE_ID_license262, !10, !"__UNIQUE_ID_license262", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1334, i32 11}
!14 = !{ptr @fsl_sai_driver, !15, !"fsl_sai_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1330, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1018, i32 48}
!18 = !{ptr @fsl_sai_probe._key, !19, !"_key", i1 false, i1 false}
!19 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1031, i32 16}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1033, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @fsl_sai_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @fsl_sai_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1037, i32 42}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1040, i32 43}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1042, i32 3}
!35 = !{ptr @fsl_sai_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @fsl_sai_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1049, i32 16}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1052, i32 4}
!41 = !{ptr @fsl_sai_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @fsl_sai_probe._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1070, i32 3}
!45 = !{ptr @fsl_sai_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @fsl_sai_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1084, i32 27}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1085, i32 27}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1087, i32 3}
!53 = !{ptr @fsl_sai_probe._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @fsl_sai_probe._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1104, i32 27}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1105, i32 34}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1106, i32 44}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1108, i32 4}
!63 = !{ptr @fsl_sai_probe._entry.28, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @fsl_sai_probe._entry_ptr.30, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1142, i32 3}
!67 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @fsl_sai_probe._entry.31, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @fsl_sai_probe._entry_ptr.34, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @fsl_sai_reg_defaults_ofs8, !71, !"fsl_sai_reg_defaults_ofs8", i1 false, i1 false}
!71 = !{!"../sound/soc/fsl/fsl_sai.c", i32 784, i32 27}
!72 = !{ptr @fsl_sai_regmap_config, !73, !"fsl_sai_regmap_config", i1 false, i1 false}
!73 = !{!"../sound/soc/fsl/fsl_sai.c", i32 940, i32 29}
!74 = !{ptr @fsl_sai_reg_defaults_ofs0, !75, !"fsl_sai_reg_defaults_ofs0", i1 false, i1 false}
!75 = !{!"../sound/soc/fsl/fsl_sai.c", i32 761, i32 27}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/fsl/fsl_sai.c", i32 84, i32 3}
!78 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!80 = distinct !{null, !77, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/fsl/fsl_sai.c", i32 87, i32 3}
!83 = !{ptr @fsl_sai_isr.__UNIQUE_ID_ddebug242, !82, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/fsl/fsl_sai.c", i32 90, i32 3}
!86 = !{ptr @fsl_sai_isr.__UNIQUE_ID_ddebug243, !85, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!87 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/fsl/fsl_sai.c", i32 96, i32 3}
!89 = distinct !{null, !88, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!90 = distinct !{null, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/fsl/fsl_sai.c", i32 99, i32 3}
!92 = distinct !{null, !91, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!93 = distinct !{null, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/fsl/fsl_sai.c", i32 118, i32 3}
!95 = distinct !{null, !94, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/fsl/fsl_sai.c", i32 121, i32 3}
!98 = !{ptr @fsl_sai_isr.__UNIQUE_ID_ddebug247, !97, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/fsl/fsl_sai.c", i32 124, i32 3}
!101 = !{ptr @fsl_sai_isr.__UNIQUE_ID_ddebug248, !100, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!102 = distinct !{null, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/fsl/fsl_sai.c", i32 130, i32 3}
!104 = distinct !{null, !103, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!105 = distinct !{null, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/fsl/fsl_sai.c", i32 133, i32 3}
!107 = distinct !{null, !106, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/fsl/fsl_sai.c", i32 746, i32 18}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/fsl/fsl_sai.c", i32 737, i32 18}
!112 = !{ptr @fsl_sai_dai_template, !113, !"fsl_sai_dai_template", i1 false, i1 false}
!113 = !{!"../sound/soc/fsl/fsl_sai.c", i32 734, i32 34}
!114 = !{ptr @fsl_sai_pcm_dai_ops, !115, !"fsl_sai_pcm_dai_ops", i1 false, i1 false}
!115 = !{!"../sound/soc/fsl/fsl_sai.c", i32 698, i32 37}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/fsl/fsl_sai.c", i32 211, i32 3}
!118 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @fsl_sai_set_dai_sysclk._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @fsl_sai_set_dai_sysclk._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/fsl/fsl_sai.c", i32 218, i32 3}
!123 = !{ptr @fsl_sai_set_dai_sysclk._entry.51, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @fsl_sai_set_dai_sysclk._entry_ptr.53, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/fsl/fsl_sai.c", i32 337, i32 3}
!127 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @fsl_sai_set_dai_fmt._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @fsl_sai_set_dai_fmt._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/fsl/fsl_sai.c", i32 343, i32 3}
!132 = !{ptr @fsl_sai_set_dai_fmt._entry.56, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @fsl_sai_set_dai_fmt._entry_ptr.58, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @fsl_sai_rate_constraints, !135, !"fsl_sai_rate_constraints", i1 false, i1 false}
!135 = !{!"../sound/soc/fsl/fsl_sai.c", i32 36, i32 48}
!136 = !{ptr @fsl_sai_rates, !137, !"fsl_sai_rates", i1 false, i1 false}
!137 = !{!"../sound/soc/fsl/fsl_sai.c", i32 30, i32 27}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/fsl/fsl_sai.c", i32 386, i32 3}
!140 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @fsl_sai_set_bclk.__UNIQUE_ID_ddebug251, !139, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/fsl/fsl_sai.c", i32 406, i32 3}
!144 = !{ptr @fsl_sai_set_bclk._entry, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @fsl_sai_set_bclk._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/fsl/fsl_sai.c", i32 435, i32 2}
!148 = !{ptr @fsl_sai_set_bclk.__UNIQUE_ID_ddebug252, !147, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!149 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1278, i32 3}
!151 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @fsl_sai_runtime_resume._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @fsl_sai_runtime_resume._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/fsl/fsl_sai.c", i32 969, i32 2}
!156 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @fsl_sai_check_version.__UNIQUE_ID_ddebug255, !155, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/fsl/fsl_sai.c", i32 981, i32 2}
!160 = !{ptr @fsl_sai_check_version.__UNIQUE_ID_ddebug256, !159, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!161 = !{ptr @fsl_component, !162, !"fsl_component", i1 false, i1 false}
!162 = !{!"../sound/soc/fsl/fsl_sai.c", i32 757, i32 46}
!163 = !{ptr @fsl_sai_ids, !164, !"fsl_sai_ids", i1 false, i1 false}
!164 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1239, i32 34}
!165 = !{ptr @fsl_sai_vf610_data, !166, !"fsl_sai_vf610_data", i1 false, i1 false}
!166 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1194, i32 38}
!167 = !{ptr @fsl_sai_imx6sx_data, !168, !"fsl_sai_imx6sx_data", i1 false, i1 false}
!168 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1203, i32 38}
!169 = !{ptr @fsl_sai_imx7ulp_data, !170, !"fsl_sai_imx7ulp_data", i1 false, i1 false}
!170 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1212, i32 38}
!171 = !{ptr @fsl_sai_imx8mq_data, !172, !"fsl_sai_imx8mq_data", i1 false, i1 false}
!172 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1221, i32 38}
!173 = !{ptr @fsl_sai_imx8qm_data, !174, !"fsl_sai_imx8qm_data", i1 false, i1 false}
!174 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1230, i32 38}
!175 = !{ptr @fsl_sai_pm_ops, !176, !"fsl_sai_pm_ops", i1 false, i1 false}
!176 = !{!"../sound/soc/fsl/fsl_sai.c", i32 1323, i32 32}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"min_enum_size", i32 4}
!179 = !{i32 8, !"branch-target-enforcement", i32 0}
!180 = !{i32 8, !"sign-return-address", i32 0}
!181 = !{i32 8, !"sign-return-address-all", i32 0}
!182 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!183 = !{i32 7, !"uwtable", i32 1}
!184 = !{i32 7, !"frame-pointer", i32 2}
!185 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!186 = !{!"auto-init"}
!187 = !{i8 0, i8 2}
!188 = !{i64 2148273224}
!189 = !{i64 758047, i64 758072, i64 758094, i64 758110, i64 758122, i64 758142, i64 758166, i64 758182, i64 758194}
!190 = !{i64 2148273412}
!191 = !{i64 2148755620, i64 2148755625, i64 2148755638, i64 2148755682, i64 2148755716, i64 2148755737}
!192 = !{i32 0, i32 33}
