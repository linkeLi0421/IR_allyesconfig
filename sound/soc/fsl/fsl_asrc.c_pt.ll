; ModuleID = '/llk/IR_all_yes/sound/soc/fsl/fsl_asrc.c_pt.bc'
source_filename = "../sound/soc/fsl/fsl_asrc.c"
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
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fsl_asrc_soc_data = type { i8, i32 }
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
%struct.fsl_asrc = type { %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock, [4 x ptr], i32, i32, i32, i8, ptr, ptr, ptr, ptr, i32, ptr }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.fsl_asrc_priv = type { [16 x ptr], ptr, [2 x ptr], i32 }
%struct.fsl_asrc_pair = type { ptr, i32, i32, i32, [2 x ptr], [2 x ptr], %struct.imx_dma_data, i32, i8, ptr }
%struct.imx_dma_data = type { i32, i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.asrc_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }

@__initcall__kmod_snd_soc_fsl_asrc__252_1377_fsl_asrc_driver_init6 = internal global ptr @fsl_asrc_driver_init, section ".initcall6.init", align 4
@fsl_asrc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_asrc_probe, ptr @fsl_asrc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_asrc_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_asrc_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_asrc_driver_exit = internal global ptr @fsl_asrc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description253 = internal constant [56 x i8] c"snd_soc_fsl_asrc.description=Freescale ASRC ASoC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [62 x i8] c"snd_soc_fsl_asrc.author=Nicolin Chen <nicoleotsuka@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias255 = internal constant [41 x i8] c"snd_soc_fsl_asrc.alias=platform:fsl-asrc\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [53 x i8] c"snd_soc_fsl_asrc.file=sound/soc/fsl/snd-soc-fsl-asrc\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [32 x i8] c"snd_soc_fsl_asrc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsl-asrc\00", [23 x i8] zeroinitializer }, align 32
@fsl_asrc_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx35-asrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_asrc_imx35_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-asrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_asrc_imx53_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qm-asrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_asrc_imx8qm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qxp-asrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_asrc_imx8qxp_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@fsl_asrc_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_asrc_runtime_suspend, ptr @fsl_asrc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@fsl_asrc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @fsl_asrc_writeable_reg, ptr @fsl_asrc_readable_reg, ptr @fsl_asrc_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 200, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_asrc_reg, i32 41, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"fsl_asrc:1091:(&fsl_asrc_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1093, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to init regmap\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl_asrc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/fsl/fsl_asrc.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry_ptr = internal global ptr @fsl_asrc_probe._entry, section ".printk_index", align 4
@fsl_asrc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1104, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to claim irq %u: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry_ptr.9 = internal global ptr @fsl_asrc_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1110, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get mem clock\0A\00", [39 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry_ptr.13 = internal global ptr @fsl_asrc_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 1116, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get ipg clock\0A\00", [39 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry_ptr.17 = internal global ptr @fsl_asrc_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spba\00", [27 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 1122, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get spba clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry_ptr.22 = internal global ptr @fsl_asrc_probe._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"asrck_%x\00", [23 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 1128, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get %s clock\0A\00", [40 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry_ptr.26 = internal global ptr @fsl_asrc_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,imx35-asrc\00", [17 x i8] zeroinitializer }, align 32
@input_clk_map_imx35 = internal global { [48 x i8], [48 x i8] } { [48 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03", [48 x i8] zeroinitializer }, align 32
@output_clk_map_imx35 = internal global { [48 x i8], [48 x i8] } { [48 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03", [48 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,imx53-asrc\00", [17 x i8] zeroinitializer }, align 32
@input_clk_map_imx53 = internal global { [48 x i8], [48 x i8] } { [48 x i8] c"\00\01\02\07\04\05\06\03\08\09\0A\0B\0C\0F\0E\0D\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07", [48 x i8] zeroinitializer }, align 32
@output_clk_map_imx53 = internal global { [48 x i8], [48 x i8] } { [48 x i8] c"\08\09\0A\07\0C\05\06\0B\00\01\02\03\04\0F\0E\0D\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07", [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,imx8qm-asrc\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,imx8qxp-asrc\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,asrc-clk-map\00", [47 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 1151, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get clk map index\0A\00", [35 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry_ptr.34 = internal global ptr @fsl_asrc_probe._entry.32, section ".printk_index", align 4
@fsl_asrc_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 1156, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported clk map index\0A\00", [37 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry_ptr.37 = internal global ptr @fsl_asrc_probe._entry.35, section ".printk_index", align 4
@clk_map_imx8qm = internal global { [2 x [48 x i8]], [32 x i8] } { [2 x [48 x i8]] [[48 x i8] c"\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\00\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", [48 x i8] c"\0F\0F\0F\0F\0F\07\0F\0F\0F\0F\0F\0F\0F\0F\0F\00\00\01\02\03\0B\0C\0F\0F\0D\0E\0F\0F\0F\0F\0F\0F\04\05\06\0F\08\09\0A\0F\0F\0F\0F\0F\0F\0F\0F\0F"], [32 x i8] zeroinitializer }, align 32
@clk_map_imx8qxp = internal global { [2 x [48 x i8]], [32 x i8] } { [2 x [48 x i8]] [[48 x i8] c"\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\00\00\01\02\03\04\05\06\0F\07\08\09\0A\0B\0C\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", [48 x i8] c"\0F\0F\0F\0F\0F\07\0F\0F\0F\0F\0F\0F\0F\0F\0F\00\00\01\02\03\07\08\0F\0F\09\0A\0F\0F\0F\0F\0F\0F\0F\0F\06\0F\0F\0F\0A\0F\0F\0F\0F\0F\0F\0F\0F\0F"], [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,asrc-rate\00", [18 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.3, ptr @.str.4, i32 1173, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get output rate\0A\00", [37 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry_ptr.41 = internal global ptr @fsl_asrc_probe._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,asrc-format\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,asrc-width\00", [17 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.3, ptr @.str.4, i32 1181, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to decide output format\0A\00", [32 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry_ptr.46 = internal global ptr @fsl_asrc_probe._entry.44, section ".printk_index", align 4
@fsl_asrc_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.3, ptr @.str.4, i32 1194, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unsupported width, use default S24_LE\0A\00", [57 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry_ptr.49 = internal global ptr @fsl_asrc_probe._entry.47, section ".printk_index", align 4
@fsl_asrc_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.3, ptr @.str.4, i32 1201, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry_ptr.51 = internal global ptr @fsl_asrc_probe._entry.50, section ".printk_index", align 4
@fsl_asrc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&asrc->lock\00", [20 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.3, ptr @.str.4, i32 1222, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to init asrc %d\0A\00", [40 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry_ptr.55 = internal global ptr @fsl_asrc_probe._entry.53, section ".printk_index", align 4
@fsl_asrc_component = external dso_local global %struct.snd_soc_component_driver, align 4
@fsl_asrc_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @fsl_asrc_dai_probe, ptr null, ptr null, ptr null, ptr @fsl_asrc_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.72, i64 4294967364, i32 -2147483648, i32 5512, i32 192000, i32 1, i32 10, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.73, i64 4294967365, i32 -2147483648, i32 5512, i32 192000, i32 1, i32 10, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.3, ptr @.str.4, i32 1233, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register ASoC DAI\0A\00", [35 x i8] zeroinitializer }, align 32
@fsl_asrc_probe._entry_ptr.58 = internal global ptr @fsl_asrc_probe._entry.56, section ".printk_index", align 4
@fsl_asrc_reg = internal global { [41 x %struct.reg_default], [88 x i8] } { [41 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 68, i32 0 }, %struct.reg_default { i32 72, i32 0 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 84, i32 0 }, %struct.reg_default { i32 92, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 108, i32 0 }, %struct.reg_default { i32 112, i32 0 }, %struct.reg_default { i32 116, i32 0 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 140, i32 0 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 152, i32 2631 }, %struct.reg_default { i32 156, i32 3571 }, %struct.reg_default { i32 160, i32 0 }, %struct.reg_default { i32 164, i32 0 }, %struct.reg_default { i32 168, i32 0 }, %struct.reg_default { i32 172, i32 0 }, %struct.reg_default { i32 176, i32 0 }, %struct.reg_default { i32 180, i32 0 }, %struct.reg_default { i32 192, i32 0 }, %struct.reg_default { i32 196, i32 0 }, %struct.reg_default { i32 200, i32 0 }], [88 x i8] zeroinitializer }, align 32
@fsl_asrc_isr.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.60, ptr @.str.4, ptr @.str.61, i8 1, i8 0, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_soc_fsl_asrc\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl_asrc_isr\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ASRC Task Queue FIFO overload\0A\00", [33 x i8] zeroinitializer }, align 32
@fsl_asrc_isr.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.60, ptr @.str.4, ptr @.str.62, i8 1, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Pair %c: Output Task Overload\0A\00", [33 x i8] zeroinitializer }, align 32
@fsl_asrc_isr.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.60, ptr @.str.4, ptr @.str.63, i8 1, i8 3, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Pair %c: Input Task Overload\0A\00", [34 x i8] zeroinitializer }, align 32
@fsl_asrc_isr.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.60, ptr @.str.4, ptr @.str.64, i8 1, i8 4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Pair %c: Output Data Buffer has overflowed\0A\00", [52 x i8] zeroinitializer }, align 32
@fsl_asrc_isr.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.60, ptr @.str.4, ptr @.str.65, i8 1, i8 5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Pair %c: Input Data Buffer has underflowed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%cx%c\00", [26 x i8] zeroinitializer }, align 32
@fsl_asrc_request_pair._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.4, i32 231, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"all pairs are busy now\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl_asrc_request_pair\00", [42 x i8] zeroinitializer }, align 32
@fsl_asrc_request_pair._entry_ptr = internal global ptr @fsl_asrc_request_pair._entry, section ".printk_index", align 4
@fsl_asrc_request_pair._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.4, i32 234, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"can't afford required channels: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@fsl_asrc_request_pair._entry_ptr.71 = internal global ptr @fsl_asrc_request_pair._entry.69, section ".printk_index", align 4
@fsl_asrc_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_asrc_dai_startup, ptr null, ptr @fsl_asrc_dai_hw_params, ptr @fsl_asrc_dai_hw_free, ptr null, ptr @fsl_asrc_dai_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ASRC-Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ASRC-Playback\00", [18 x i8] zeroinitializer }, align 32
@fsl_asrc_rate_constraints = internal global { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @supported_asrc_rate, i32 16, i32 0 }, [20 x i8] zeroinitializer }, align 32
@supported_asrc_rate = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 5512, i32 8000, i32 11025, i32 12000, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000, i32 128000, i32 176400, i32 192000], [32 x i8] zeroinitializer }, align 32
@fsl_asrc_dai_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.4, i32 705, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fail to request asrc pair\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl_asrc_dai_hw_params\00", [41 x i8] zeroinitializer }, align 32
@fsl_asrc_dai_hw_params._entry_ptr = internal global ptr @fsl_asrc_dai_hw_params._entry, section ".printk_index", align 4
@fsl_asrc_dai_hw_params._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.4, i32 732, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fail to config asrc pair\0A\00", [38 x i8] zeroinitializer }, align 32
@fsl_asrc_dai_hw_params._entry_ptr.78 = internal global ptr @fsl_asrc_dai_hw_params._entry.76, section ".printk_index", align 4
@asrc_clk_divider = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 3, i32 6, i32 12, i32 24, i32 48, i32 96, i32 192, i32 384, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 5, i32 10, i32 20, i32 40, i32 80, i32 160, i32 320, i32 640, i32 6, i32 12, i32 24, i32 48, i32 96, i32 192, i32 384, i32 768, i32 7, i32 14, i32 28, i32 56, i32 112, i32 224, i32 448, i32 896, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024], [64 x i8] zeroinitializer }, align 32
@fsl_asrc_config_pair._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.4, i32 391, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Pair %c: invalid pair config\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl_asrc_config_pair\00", [43 x i8] zeroinitializer }, align 32
@fsl_asrc_config_pair._entry_ptr = internal global ptr @fsl_asrc_config_pair._entry, section ".printk_index", align 4
@fsl_asrc_config_pair._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.4, i32 397, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Pair %c: does not support %d channels\0A\00", [57 x i8] zeroinitializer }, align 32
@fsl_asrc_config_pair._entry_ptr.83 = internal global ptr @fsl_asrc_config_pair._entry.81, section ".printk_index", align 4
@fsl_asrc_config_pair._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.4, i32 413, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Pair %c: does not support this input format, %d\0A\00", [47 x i8] zeroinitializer }, align 32
@fsl_asrc_config_pair._entry_ptr.86 = internal global ptr @fsl_asrc_config_pair._entry.84, section ".printk_index", align 4
@fsl_asrc_config_pair._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.4, i32 426, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Pair %c: does not support this output format, %d\0A\00", [46 x i8] zeroinitializer }, align 32
@fsl_asrc_config_pair._entry_ptr.89 = internal global ptr @fsl_asrc_config_pair._entry.87, section ".printk_index", align 4
@fsl_asrc_config_pair._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.80, ptr @.str.4, i32 440, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Pair %c: unsupported input sample rate: %dHz\0A\00", [50 x i8] zeroinitializer }, align 32
@fsl_asrc_config_pair._entry_ptr.92 = internal global ptr @fsl_asrc_config_pair._entry.90, section ".printk_index", align 4
@fsl_asrc_config_pair._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.80, ptr @.str.4, i32 449, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Pair %c: unsupported output sample rate: %dHz\0A\00", [49 x i8] zeroinitializer }, align 32
@fsl_asrc_config_pair._entry_ptr.95 = internal global ptr @fsl_asrc_config_pair._entry.93, section ".printk_index", align 4
@fsl_asrc_config_pair._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.80, ptr @.str.4, i32 456, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Pair %c: exceed supported ratio range [1/24, 8] for \09\09\09\09inrate/outrate: %d/%d\0A\00", [49 x i8] zeroinitializer }, align 32
@fsl_asrc_config_pair._entry_ptr.98 = internal global ptr @fsl_asrc_config_pair._entry.96, section ".printk_index", align 4
@fsl_asrc_config_pair._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.80, ptr @.str.4, i32 479, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Pair %c: failed to support input sample rate %dHz by asrck_%x\0A\00", [33 x i8] zeroinitializer }, align 32
@fsl_asrc_config_pair._entry_ptr.101 = internal global ptr @fsl_asrc_config_pair._entry.99, section ".printk_index", align 4
@fsl_asrc_config_pair._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.80, ptr @.str.4, i32 495, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Pair %c: failed to support output sample rate %dHz by asrck_%x\0A\00", [32 x i8] zeroinitializer }, align 32
@fsl_asrc_config_pair._entry_ptr.104 = internal global ptr @fsl_asrc_config_pair._entry.102, section ".printk_index", align 4
@fsl_asrc_set_ideal_ratio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.4, i32 328, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Pair %c: output rate should not be zero\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fsl_asrc_set_ideal_ratio\00", [39 x i8] zeroinitializer }, align 32
@fsl_asrc_set_ideal_ratio._entry_ptr = internal global ptr @fsl_asrc_set_ideal_ratio._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@fsl_asrc_imx35_data = internal constant { %struct.fsl_asrc_soc_data, [24 x i8] } { %struct.fsl_asrc_soc_data { i8 0, i32 3 }, [24 x i8] zeroinitializer }, align 32
@fsl_asrc_imx53_data = internal constant { %struct.fsl_asrc_soc_data, [24 x i8] } { %struct.fsl_asrc_soc_data { i8 0, i32 4 }, [24 x i8] zeroinitializer }, align 32
@fsl_asrc_imx8qm_data = internal constant { %struct.fsl_asrc_soc_data, [24 x i8] } { %struct.fsl_asrc_soc_data { i8 1, i32 4 }, [24 x i8] zeroinitializer }, align 32
@fsl_asrc_imx8qxp_data = internal constant { %struct.fsl_asrc_soc_data, [24 x i8] } { %struct.fsl_asrc_soc_data { i8 1, i32 4 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 24]
@__sancov_gen_cov_switch_values.107 = internal global [34 x i64] [i64 32, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 23, i64 24, i64 26, i64 28, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 42, i64 44, i64 48, i64 49, i64 50]
@__sancov_gen_cov_switch_values.108 = internal global [37 x i64] [i64 35, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 23, i64 25, i64 27, i64 29, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 48, i64 49, i64 50]
@__sancov_gen_cov_switch_values.109 = internal global [13 x i64] [i64 11, i64 32, i64 16, i64 32, i64 96, i64 100, i64 104, i64 108, i64 112, i64 116, i64 164, i64 172, i64 180]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 24]
@__sancov_gen_cov_switch_values.112 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"fsl_asrc_driver\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1368, i32 31 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1372, i32 11 }
@___asan_gen_.119 = private unnamed_addr constant [13 x i8] c"fsl_asrc_ids\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1359, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant [12 x i8] c"fsl_asrc_pm\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1333, i32 32 }
@___asan_gen_.125 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [23 x i8] c"fsl_asrc_regmap_config\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 949, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1091, i32 17 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1093, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1104, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1108, i32 43 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1110, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1114, i32 43 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1116, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1120, i32 44 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1122, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1125, i32 16 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1128, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1141, i32 34 }
@___asan_gen_.200 = private unnamed_addr constant [20 x i8] c"input_clk_map_imx35\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 45, i32 22 }
@___asan_gen_.203 = private unnamed_addr constant [21 x i8] c"output_clk_map_imx35\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 51, i32 22 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1144, i32 41 }
@___asan_gen_.209 = private unnamed_addr constant [20 x i8] c"input_clk_map_imx53\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 58, i32 22 }
@___asan_gen_.212 = private unnamed_addr constant [21 x i8] c"output_clk_map_imx53\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 65, i32 22 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1147, i32 41 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1148, i32 34 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1149, i32 34 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1151, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1156, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant [15 x i8] c"clk_map_imx8qm\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 79, i32 22 }
@___asan_gen_.239 = private unnamed_addr constant [16 x i8] c"clk_map_imx8qxp\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 92, i32 22 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1170, i32 33 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1173, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1177, i32 33 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1179, i32 34 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1181, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1193, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1201, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1206, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1222, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [13 x i8] c"fsl_asrc_dai\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 796, i32 34 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1233, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant [13 x i8] c"fsl_asrc_reg\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 925, i32 27 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1026, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1031, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1036, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1041, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1046, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 630, i32 16 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 231, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 234, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant [17 x i8] c"fsl_asrc_dai_ops\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 775, i32 37 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 809, i32 18 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 799, i32 18 }
@___asan_gen_.344 = private unnamed_addr constant [26 x i8] c"fsl_asrc_rate_constraints\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 36, i32 42 }
@___asan_gen_.347 = private unnamed_addr constant [20 x i8] c"supported_asrc_rate\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 31, i32 21 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 705, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 732, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant [17 x i8] c"asrc_clk_divider\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 109, i32 12 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 391, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 397, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 412, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 425, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 440, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 449, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 455, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 478, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 494, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.431 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 328, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant [20 x i8] c"fsl_asrc_imx35_data\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1339, i32 39 }
@___asan_gen_.437 = private unnamed_addr constant [20 x i8] c"fsl_asrc_imx53_data\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1344, i32 39 }
@___asan_gen_.440 = private unnamed_addr constant [21 x i8] c"fsl_asrc_imx8qm_data\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1349, i32 39 }
@___asan_gen_.443 = private unnamed_addr constant [22 x i8] c"fsl_asrc_imx8qxp_data\00", align 1
@___asan_gen_.444 = private constant [28 x i8] c"../sound/soc/fsl/fsl_asrc.c\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1354, i32 39 }
@llvm.compiler.used = appending global [147 x ptr] [ptr @__UNIQUE_ID_alias255, ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_fsl_asrc_driver_exit, ptr @__initcall__kmod_snd_soc_fsl_asrc__252_1377_fsl_asrc_driver_init6, ptr @fsl_asrc_config_pair._entry, ptr @fsl_asrc_config_pair._entry.102, ptr @fsl_asrc_config_pair._entry.81, ptr @fsl_asrc_config_pair._entry.84, ptr @fsl_asrc_config_pair._entry.87, ptr @fsl_asrc_config_pair._entry.90, ptr @fsl_asrc_config_pair._entry.93, ptr @fsl_asrc_config_pair._entry.96, ptr @fsl_asrc_config_pair._entry.99, ptr @fsl_asrc_config_pair._entry_ptr, ptr @fsl_asrc_config_pair._entry_ptr.101, ptr @fsl_asrc_config_pair._entry_ptr.104, ptr @fsl_asrc_config_pair._entry_ptr.83, ptr @fsl_asrc_config_pair._entry_ptr.86, ptr @fsl_asrc_config_pair._entry_ptr.89, ptr @fsl_asrc_config_pair._entry_ptr.92, ptr @fsl_asrc_config_pair._entry_ptr.95, ptr @fsl_asrc_config_pair._entry_ptr.98, ptr @fsl_asrc_dai_hw_params._entry, ptr @fsl_asrc_dai_hw_params._entry.76, ptr @fsl_asrc_dai_hw_params._entry_ptr, ptr @fsl_asrc_dai_hw_params._entry_ptr.78, ptr @fsl_asrc_driver_exit, ptr @fsl_asrc_probe._entry, ptr @fsl_asrc_probe._entry.11, ptr @fsl_asrc_probe._entry.15, ptr @fsl_asrc_probe._entry.19, ptr @fsl_asrc_probe._entry.24, ptr @fsl_asrc_probe._entry.32, ptr @fsl_asrc_probe._entry.35, ptr @fsl_asrc_probe._entry.39, ptr @fsl_asrc_probe._entry.44, ptr @fsl_asrc_probe._entry.47, ptr @fsl_asrc_probe._entry.50, ptr @fsl_asrc_probe._entry.53, ptr @fsl_asrc_probe._entry.56, ptr @fsl_asrc_probe._entry.7, ptr @fsl_asrc_probe._entry_ptr, ptr @fsl_asrc_probe._entry_ptr.13, ptr @fsl_asrc_probe._entry_ptr.17, ptr @fsl_asrc_probe._entry_ptr.22, ptr @fsl_asrc_probe._entry_ptr.26, ptr @fsl_asrc_probe._entry_ptr.34, ptr @fsl_asrc_probe._entry_ptr.37, ptr @fsl_asrc_probe._entry_ptr.41, ptr @fsl_asrc_probe._entry_ptr.46, ptr @fsl_asrc_probe._entry_ptr.49, ptr @fsl_asrc_probe._entry_ptr.51, ptr @fsl_asrc_probe._entry_ptr.55, ptr @fsl_asrc_probe._entry_ptr.58, ptr @fsl_asrc_probe._entry_ptr.9, ptr @fsl_asrc_request_pair._entry, ptr @fsl_asrc_request_pair._entry.69, ptr @fsl_asrc_request_pair._entry_ptr, ptr @fsl_asrc_request_pair._entry_ptr.71, ptr @fsl_asrc_set_ideal_ratio._entry, ptr @fsl_asrc_set_ideal_ratio._entry_ptr, ptr @fsl_asrc_driver, ptr @.str, ptr @fsl_asrc_ids, ptr @fsl_asrc_pm, ptr @fsl_asrc_probe._key, ptr @fsl_asrc_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @input_clk_map_imx35, ptr @output_clk_map_imx35, ptr @.str.28, ptr @input_clk_map_imx53, ptr @output_clk_map_imx53, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @clk_map_imx8qm, ptr @clk_map_imx8qxp, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @fsl_asrc_probe.__key, ptr @.str.52, ptr @.str.54, ptr @fsl_asrc_dai, ptr @.str.57, ptr @fsl_asrc_reg, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @fsl_asrc_dai_ops, ptr @.str.72, ptr @.str.73, ptr @fsl_asrc_rate_constraints, ptr @supported_asrc_rate, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @asrc_clk_divider, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @fsl_asrc_imx35_data, ptr @fsl_asrc_imx53_data, ptr @fsl_asrc_imx8qm_data, ptr @fsl_asrc_imx8qxp_data], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_clk_map_imx35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_clk_map_imx35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_clk_map_imx53 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_clk_map_imx53 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_map_imx8qm to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_map_imx8qxp to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_reg to i32), i32 328, i32 416, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_request_pair._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_request_pair._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_rate_constraints to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_asrc_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_dai_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_dai_hw_params._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asrc_clk_divider to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_config_pair._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_config_pair._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_config_pair._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_config_pair._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_config_pair._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_config_pair._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_config_pair._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_config_pair._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_config_pair._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_set_ideal_ratio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_imx35_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_imx53_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_imx8qm_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asrc_imx8qxp_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asrc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_asrc_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_asrc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_asrc_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asrc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  %map_idx = alloca i32, align 4
  %tmp = alloca [16 x i8], align 1
  %width = alloca i32, align 4
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
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %map_idx) #11
  %3 = ptrtoint ptr %map_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %map_idx, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #11
  %4 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %width) #11
  %5 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %width, align 4, !annotation !236
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 196, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i366 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 80, i32 noundef 3520) #11
  %tobool4.not = icmp eq ptr %call.i366, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %pdev7 = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %pdev7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %pdev7, align 4
  %private = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 19
  %7 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i366, ptr %private, align 4
  %call8 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #11
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %res, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %paddr = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %paddr, align 4
  %call15 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call8, ptr noundef nonnull @fsl_asrc_regmap_config, ptr noundef nonnull @fsl_asrc_probe._key, ptr noundef nonnull @.str.1) #11
  %regmap = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call15, ptr %regmap, align 4
  %cmp.i367 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i367, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #14
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %call23 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.dev_name.exit_crit_edge

if.end25.dev_name.exit_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end25.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %21, %if.end.i ], [ %19, %if.end25.dev_name.exit_crit_edge ]
  %call.i368 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call23, ptr noundef nonnull @fsl_asrc_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i368)
  %tobool30.not = icmp eq i32 %call.i368, 0
  br i1 %tobool30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call23, i32 noundef %call.i368) #14
  br label %cleanup

if.end36:                                         ; preds = %dev_name.exit
  %call38 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  %mem_clk = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %mem_clk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call38, ptr %mem_clk, align 4
  %cmp.i369 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i369, label %do.end44, label %if.end48

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #14
  %23 = ptrtoint ptr %mem_clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mem_clk, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %cleanup

if.end48:                                         ; preds = %if.end36
  %call50 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  %ipg_clk = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 6
  %26 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call50, ptr %ipg_clk, align 4
  %cmp.i370 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i370, label %do.end56, label %if.end60

do.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #14
  %27 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ipg_clk, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %cleanup

if.end60:                                         ; preds = %if.end48
  %call62 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.18) #11
  %spba_clk = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 7
  %30 = ptrtoint ptr %spba_clk to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call62, ptr %spba_clk, align 4
  %cmp.i371 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i371, label %do.end68, label %if.end60.for.body.preheader_crit_edge

if.end60.for.body.preheader_crit_edge:            ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

do.end68:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.20) #14
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end68, %if.end60.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0382 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call72 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.23, i32 noundef %i.0382)
  %call75 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %tmp) #11
  %arrayidx = getelementptr [16 x ptr], ptr %call.i366, i32 0, i32 %i.0382
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call75, ptr %arrayidx, align 4
  %cmp.i372 = icmp ugt ptr %call75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i372, label %do.end82, label %for.inc

do.end82:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.le = getelementptr [16 x ptr], ptr %call.i366, i32 0, i32 %i.0382
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull %tmp) #14
  %32 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.le, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0382, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call90 = call ptr @of_device_get_match_data(ptr noundef %dev) #11
  %soc = getelementptr inbounds %struct.fsl_asrc_priv, ptr %call.i366, i32 0, i32 1
  %35 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call90, ptr %soc, align 4
  %36 = ptrtoint ptr %call90 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %call90, align 4, !range !237
  %use_edma93 = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 13
  %38 = ptrtoint ptr %use_edma93 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %use_edma93, align 4
  %get_dma_channel = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 14
  %39 = ptrtoint ptr %get_dma_channel to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @fsl_asrc_get_dma_channel, ptr %get_dma_channel, align 4
  %request_pair = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 15
  %40 = ptrtoint ptr %request_pair to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @fsl_asrc_request_pair, ptr %request_pair, align 4
  %release_pair = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 16
  %41 = ptrtoint ptr %release_pair to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @fsl_asrc_release_pair, ptr %release_pair, align 4
  %get_fifo_addr = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 17
  %42 = ptrtoint ptr %get_fifo_addr to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @fsl_asrc_get_fifo_addr, ptr %get_fifo_addr, align 4
  %pair_priv_size = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 18
  %43 = ptrtoint ptr %pair_priv_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %pair_priv_size, align 4
  %call94 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.else, label %for.end.if.end151.sink.split_crit_edge

for.end.if.end151.sink.split_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151.sink.split

if.else:                                          ; preds = %for.end
  %call100 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.else107, label %if.else.if.end151.sink.split_crit_edge

if.else.if.end151.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151.sink.split

if.else107:                                       ; preds = %if.else
  %call108 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %lor.lhs.false, label %if.else107.if.then112_crit_edge

if.else107.if.then112_crit_edge:                  ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then112

lor.lhs.false:                                    ; preds = %if.else107
  %call110 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %lor.lhs.false.if.end151_crit_edge, label %lor.lhs.false.if.then112_crit_edge

lor.lhs.false.if.then112_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then112

lor.lhs.false.if.end151_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151

if.then112:                                       ; preds = %lor.lhs.false.if.then112_crit_edge, %if.else107.if.then112_crit_edge
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull %map_idx, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool114.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool114.not, label %if.end120, label %do.end118

do.end118:                                        ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #14
  br label %cleanup

if.end120:                                        ; preds = %if.then112
  %44 = ptrtoint ptr %map_idx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %map_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp121 = icmp ugt i32 %45, 1
  br i1 %cmp121, label %do.end125, label %if.end127

do.end125:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #14
  br label %cleanup

if.end127:                                        ; preds = %if.end120
  %call128 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  %46 = ptrtoint ptr %map_idx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %map_idx, align 4
  br i1 %tobool129.not, label %if.else139, label %if.then130

if.then130:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx131 = getelementptr [2 x [48 x i8]], ptr @clk_map_imx8qm, i32 0, i32 %47
  br label %if.end151.sink.split

if.else139:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx140 = getelementptr [2 x [48 x i8]], ptr @clk_map_imx8qxp, i32 0, i32 %47
  br label %if.end151.sink.split

if.end151.sink.split:                             ; preds = %if.else139, %if.then130, %if.else.if.end151.sink.split_crit_edge, %for.end.if.end151.sink.split_crit_edge
  %input_clk_map_imx53.sink = phi ptr [ %arrayidx131, %if.then130 ], [ %arrayidx140, %if.else139 ], [ @input_clk_map_imx35, %for.end.if.end151.sink.split_crit_edge ], [ @input_clk_map_imx53, %if.else.if.end151.sink.split_crit_edge ]
  %output_clk_map_imx53.sink = phi ptr [ %arrayidx131, %if.then130 ], [ %arrayidx140, %if.else139 ], [ @output_clk_map_imx35, %for.end.if.end151.sink.split_crit_edge ], [ @output_clk_map_imx53, %if.else.if.end151.sink.split_crit_edge ]
  %clk_map103 = getelementptr inbounds %struct.fsl_asrc_priv, ptr %call.i366, i32 0, i32 2
  %48 = ptrtoint ptr %clk_map103 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %input_clk_map_imx53.sink, ptr %clk_map103, align 4
  %arrayidx106 = getelementptr %struct.fsl_asrc_priv, ptr %call.i366, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %output_clk_map_imx53.sink, ptr %arrayidx106, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.end151.sink.split, %lor.lhs.false.if.end151_crit_edge
  %channel_avail = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 10
  %50 = ptrtoint ptr %channel_avail to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 10, ptr %channel_avail, align 4
  %asrc_rate = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 11
  %call.i.i373 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.38, ptr noundef %asrc_rate, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i373)
  %tobool153.not = icmp sgt i32 %call.i.i373, -1
  br i1 %tobool153.not, label %if.end159, label %do.end157

do.end157:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #14
  br label %cleanup

if.end159:                                        ; preds = %if.end151
  %asrc_format = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 12
  %call.i.i374 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef %asrc_format, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i374)
  %tobool161.not = icmp sgt i32 %call.i.i374, -1
  br i1 %tobool161.not, label %if.end159.if.end179_crit_edge, label %if.then162

if.end159.if.end179_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179

if.then162:                                       ; preds = %if.end159
  %call.i.i375 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull %width, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i375)
  %tobool164.not = icmp sgt i32 %call.i.i375, -1
  br i1 %tobool164.not, label %if.end170, label %do.end168

do.end168:                                        ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #14
  br label %cleanup

if.end170:                                        ; preds = %if.then162
  %51 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %width, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i32 %52, label %do.end176 [
    i32 16, label %if.end170.if.end179.sink.split_crit_edge
    i32 24, label %sw.bb172
  ]

if.end170.if.end179.sink.split_crit_edge:         ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179.sink.split

sw.bb172:                                         ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179.sink.split

do.end176:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.48) #14
  br label %if.end179.sink.split

if.end179.sink.split:                             ; preds = %do.end176, %sw.bb172, %if.end170.if.end179.sink.split_crit_edge
  %.sink = phi i32 [ 6, %sw.bb172 ], [ 6, %do.end176 ], [ 2, %if.end170.if.end179.sink.split_crit_edge ]
  %54 = ptrtoint ptr %asrc_format to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink, ptr %asrc_format, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.end179.sink.split, %if.end159.if.end179_crit_edge
  %55 = ptrtoint ptr %asrc_format to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %asrc_format, align 4
  %sh_prom = zext i32 %56 to i64
  %shl = shl nuw i64 1, %sh_prom
  %and = and i64 %shl, 4294967364
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool181.not = icmp eq i64 %and, 0
  br i1 %tobool181.not, label %do.end185, label %if.end179.if.end188_crit_edge

if.end179.if.end188_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end188

do.end185:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.48) #14
  %57 = ptrtoint ptr %asrc_format to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 6, ptr %asrc_format, align 4
  br label %if.end188

if.end188:                                        ; preds = %do.end185, %if.end179.if.end188_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 8
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.52, ptr noundef nonnull @fsl_asrc_probe.__key, i16 noundef signext 3) #11
  call void @pm_runtime_enable(ptr noundef %dev) #11
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %59 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i376 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i376, label %if.end188.if.end202_crit_edge, label %if.then196

if.end188.if.end202_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end202

if.then196:                                       ; preds = %if.end188
  %call198 = call i32 @fsl_asrc_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %if.then196.if.end202_crit_edge, label %if.then196.err_pm_disable_crit_edge

if.then196.err_pm_disable_crit_edge:              ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pm_disable

if.then196.if.end202_crit_edge:                   ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end202

if.end202:                                        ; preds = %if.then196.if.end202_crit_edge, %if.end188.if.end202_crit_edge
  %call.i377 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i377)
  %cmp205 = icmp slt i32 %call.i377, 0
  br i1 %cmp205, label %if.then206, label %if.end208

if.then206:                                       ; preds = %if.end202
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !238
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %60 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !239
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then206.err_pm_get_sync_crit_edge, label %do.end11.i.i.i.i

if.then206.err_pm_get_sync_crit_edge:             ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pm_get_sync

do.end11.i.i.i.i:                                 ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !240
  br label %err_pm_get_sync

if.end208:                                        ; preds = %if.end202
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %call.i378 = call i32 @regmap_write(ptr noundef %62, i32 noundef 0, i32 noundef 1) #11
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %64, i32 noundef 4, i32 noundef 0) #11
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %call4.i = call i32 @regmap_write(ptr noundef %66, i32 noundef 64, i32 noundef 8388607) #11
  %67 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap, align 4
  %call6.i = call i32 @regmap_write(ptr noundef %68, i32 noundef 68, i32 noundef 2446677) #11
  %69 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap, align 4
  %call8.i = call i32 @regmap_write(ptr noundef %70, i32 noundef 72, i32 noundef 16740992) #11
  %71 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap, align 4
  %call10.i = call i32 @regmap_write(ptr noundef %72, i32 noundef 76, i32 noundef 16740992) #11
  %73 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap, align 4
  %call12.i = call i32 @regmap_write(ptr noundef %74, i32 noundef 80, i32 noundef 16740992) #11
  %75 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap, align 4
  %call.i.i379 = call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef 84, i32 noundef 8128, i32 noundef 16128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %77 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ipg_clk, align 4
  %call15.i = call i32 @clk_get_rate(ptr noundef %78) #11
  %79 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap, align 4
  %div.i = udiv i32 %call15.i, 76000
  %call17.i = call i32 @regmap_write(ptr noundef %80, i32 noundef 152, i32 noundef %div.i) #11
  %81 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap, align 4
  %div19.i = udiv i32 %call15.i, 56000
  %call20.i = call i32 @regmap_write(ptr noundef %82, i32 noundef 156, i32 noundef %div19.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool210.not = icmp eq i32 %call20.i, 0
  br i1 %tobool210.not, label %if.end216, label %do.end214

do.end214:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %call20.i) #14
  br label %err_pm_get_sync

if.end216:                                        ; preds = %if.end208
  %call.i380 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i380)
  %cmp219 = icmp slt i32 %call.i380, 0
  br i1 %cmp219, label %if.end216.err_pm_get_sync_crit_edge, label %if.end221

if.end216.err_pm_get_sync_crit_edge:              ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pm_get_sync

if.end221:                                        ; preds = %if.end216
  %call223 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @fsl_asrc_component, ptr noundef nonnull @fsl_asrc_dai, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %if.end221.cleanup_crit_edge, label %do.end228

if.end221.cleanup_crit_edge:                      ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end228:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57) #14
  br label %err_pm_get_sync

err_pm_get_sync:                                  ; preds = %do.end228, %if.end216.err_pm_get_sync_crit_edge, %do.end214, %do.end11.i.i.i.i, %if.then206.err_pm_get_sync_crit_edge
  %ret.0 = phi i32 [ %call20.i, %do.end214 ], [ %call.i380, %if.end216.err_pm_get_sync_crit_edge ], [ %call223, %do.end228 ], [ %call.i377, %if.then206.err_pm_get_sync_crit_edge ], [ %call.i377, %do.end11.i.i.i.i ]
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %83 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp.i381 = icmp eq i32 %84, 2
  br i1 %cmp.i381, label %err_pm_get_sync.err_pm_disable_crit_edge, label %if.then233

err_pm_get_sync.err_pm_disable_crit_edge:         ; preds = %err_pm_get_sync
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_pm_disable

if.then233:                                       ; preds = %err_pm_get_sync
  call void @__sanitizer_cov_trace_pc() #13
  %call235 = call i32 @fsl_asrc_runtime_suspend(ptr noundef %dev)
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %if.then233, %err_pm_get_sync.err_pm_disable_crit_edge, %if.then196.err_pm_disable_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_pm_get_sync.err_pm_disable_crit_edge ], [ %ret.0, %if.then233 ], [ %call198, %if.then196.err_pm_disable_crit_edge ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %if.end221.cleanup_crit_edge, %do.end168, %do.end157, %do.end125, %do.end118, %do.end82, %do.end56, %do.end44, %do.end34, %if.end22.cleanup_crit_edge, %do.end, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then10 ], [ %17, %do.end ], [ %call.i368, %do.end34 ], [ %25, %do.end44 ], [ %29, %do.end56 ], [ %34, %do.end82 ], [ %call.i.i373, %do.end157 ], [ %call.i.i375, %do.end168 ], [ %ret.1, %err_pm_disable ], [ %call.i.i, %do.end118 ], [ -22, %do.end125 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ 0, %if.end221.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %width) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %map_idx) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asrc_remove(ptr noundef %pdev) #2 align 64 {
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
  %call3 = tail call i32 @fsl_asrc_runtime_suspend(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asrc_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.fsl_asrc, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #11
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !236
  %regmap = getelementptr inbounds %struct.fsl_asrc, ptr %dev_id, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 32, ptr noundef nonnull %status) #11
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_write(ptr noundef %6, i32 noundef 32, i32 noundef 64) #11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %index.0173 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fsl_asrc, ptr %dev_id, i32 0, i32 9, i32 %index.0173
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  %and = and i32 %10, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end14_crit_edge, label %if.then5

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %error = getelementptr inbounds %struct.fsl_asrc_pair, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error, align 4
  %or = or i32 %12, 1
  store i32 %or, ptr %error, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_asrc_isr.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_asrc_isr, %if.then12)) #11
          to label %if.end14 [label %if.then12], !srcloc !241

if.then12:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_asrc_isr.__UNIQUE_ID_ddebug247, ptr noundef %dev1, ptr noundef nonnull @.str.61) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then5, %if.end.if.end14_crit_edge
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %shl = shl i32 131072, %index.0173
  %and15 = and i32 %14, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end41_crit_edge, label %if.then17

if.end14.if.end41_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %error20 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %error20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error20, align 4
  %or21 = or i32 %18, 2
  store i32 %or21, ptr %error20, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_asrc_isr.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_asrc_isr, %if.then34)) #11
          to label %if.end41 [label %if.then34], !srcloc !241

if.then34:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 4
  %dev36 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %add37 = add nuw nsw i32 %index.0173, 65
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_asrc_isr.__UNIQUE_ID_ddebug248, ptr noundef %dev36, ptr noundef nonnull @.str.62, i32 noundef %add37) #11
  br label %if.end41

if.end41:                                         ; preds = %if.then34, %if.then17, %if.end14.if.end41_crit_edge
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 4
  %shl43 = shl i32 16384, %index.0173
  %and44 = and i32 %22, %shl43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end41.if.end70_crit_edge, label %if.then46

if.end41.if.end70_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %error49 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %error49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %error49, align 4
  %or50 = or i32 %26, 4
  store i32 %or50, ptr %error49, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_asrc_isr.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_asrc_isr, %if.then63)) #11
          to label %if.end70 [label %if.then63], !srcloc !241

if.then63:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 4
  %dev65 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  %add66 = add nuw nsw i32 %index.0173, 65
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_asrc_isr.__UNIQUE_ID_ddebug249, ptr noundef %dev65, ptr noundef nonnull @.str.63, i32 noundef %add66) #11
  br label %if.end70

if.end70:                                         ; preds = %if.then63, %if.then46, %if.end41.if.end70_crit_edge
  %29 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status, align 4
  %shl72 = shl i32 2048, %index.0173
  %and73 = and i32 %30, %shl72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end70.if.end99_crit_edge, label %if.then75

if.end70.if.end99_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %error78 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %error78 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %error78, align 4
  %or79 = or i32 %34, 8
  store i32 %or79, ptr %error78, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_asrc_isr.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_asrc_isr, %if.then92)) #11
          to label %if.end99 [label %if.then92], !srcloc !241

if.then92:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 4
  %dev94 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  %add95 = add nuw nsw i32 %index.0173, 65
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_asrc_isr.__UNIQUE_ID_ddebug250, ptr noundef %dev94, ptr noundef nonnull @.str.64, i32 noundef %add95) #11
  br label %if.end99

if.end99:                                         ; preds = %if.then92, %if.then75, %if.end70.if.end99_crit_edge
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status, align 4
  %shl101 = shl i32 256, %index.0173
  %and102 = and i32 %38, %shl101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end99.for.inc_crit_edge, label %if.then104

if.end99.for.inc_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %error107 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %error107 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %error107, align 4
  %or108 = or i32 %42, 16
  store i32 %or108, ptr %error107, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_asrc_isr.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_asrc_isr, %if.then121)) #11
          to label %for.inc [label %if.then121], !srcloc !241

if.then121:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev, align 4
  %dev123 = getelementptr inbounds %struct.platform_device, ptr %44, i32 0, i32 3
  %add124 = add nuw nsw i32 %index.0173, 65
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_asrc_isr.__UNIQUE_ID_ddebug251, ptr noundef %dev123, ptr noundef nonnull @.str.65, i32 noundef %add124) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then121, %if.then104, %if.end99.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %index.0173, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fsl_asrc_get_dma_channel(ptr nocapture noundef readonly %pair, i1 noundef zeroext %dir) #2 align 64 {
entry:
  %name = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pair to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pair, align 4
  %index2 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %pair, i32 0, i32 2
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #11
  %cond = select i1 %dir, i32 116, i32 114
  %add = add i32 %3, 97
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %name, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.66, i32 noundef %cond, i32 noundef %add)
  %pdev = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %call.i = call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull %name) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = select i1 %cmp.i.i, ptr null, ptr %call.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #11
  ret ptr %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asrc_request_pair(i32 noundef %channels, ptr noundef %pair) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pair to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pair, align 4
  %pdev = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %lock = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %arrayidx = getelementptr %struct.fsl_asrc, ptr %1, i32 0, i32 9, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp10.not = icmp eq ptr %5, null
  br i1 %cmp10.not, label %entry.for.end.thread_crit_edge, label %for.inc

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.fsl_asrc, ptr %1, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %cmp10.not.1 = icmp eq ptr %7, null
  %arrayidx.263 = getelementptr %struct.fsl_asrc, ptr %1, i32 0, i32 9, i32 2
  %8 = ptrtoint ptr %arrayidx.263 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.263, align 4
  %cmp10.not.264 = icmp eq ptr %9, null
  br i1 %cmp10.not.1, label %for.inc.1.thread, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  br i1 %cmp10.not.264, label %for.inc.1.for.end.thread_crit_edge, label %do.end21

for.inc.1.for.end.thread_crit_edge:               ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread

for.inc.1.thread:                                 ; preds = %for.inc
  br i1 %cmp10.not.264, label %for.inc.1.thread.for.end.thread_crit_edge, label %for.inc.1.thread.if.else_crit_edge

for.inc.1.thread.if.else_crit_edge:               ; preds = %for.inc.1.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

for.inc.1.thread.for.end.thread_crit_edge:        ; preds = %for.inc.1.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.inc.1.thread.for.end.thread_crit_edge, %for.inc.1.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %index.2.ph = phi i32 [ 2, %for.inc.1.for.end.thread_crit_edge ], [ 0, %entry.for.end.thread_crit_edge ], [ 2, %for.inc.1.thread.for.end.thread_crit_edge ]
  br label %if.else

do.end21:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.67) #14
  br label %if.end35

if.else:                                          ; preds = %for.end.thread, %for.inc.1.thread.if.else_crit_edge
  %index.261 = phi i32 [ %index.2.ph, %for.end.thread ], [ 1, %for.inc.1.thread.if.else_crit_edge ]
  %channel_avail = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %channel_avail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel_avail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %channels)
  %cmp22 = icmp ult i32 %11, %channels
  br i1 %cmp22, label %do.end27, label %if.else28

do.end27:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.70, i32 noundef %channels) #14
  br label %if.end35

if.else28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 %11, %channels
  %12 = ptrtoint ptr %channel_avail to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %channel_avail, align 4
  %arrayidx31 = getelementptr %struct.fsl_asrc, ptr %1, i32 0, i32 9, i32 %index.261
  %13 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pair, ptr %arrayidx31, align 4
  %channels32 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %pair, i32 0, i32 3
  %14 = ptrtoint ptr %channels32 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %channels, ptr %channels32, align 4
  %index33 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %pair, i32 0, i32 2
  %15 = ptrtoint ptr %index33 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %index.261, ptr %index33, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else28, %do.end27, %do.end21
  %ret.0 = phi i32 [ -16, %do.end21 ], [ -22, %do.end27 ], [ 0, %if.else28 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_asrc_release_pair(ptr nocapture noundef %pair) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pair to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pair, align 4
  %index2 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %pair, i32 0, i32 2
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index2, align 4
  %regmap = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %add = add i32 %3, 1
  %shl = shl nuw i32 1, %add
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %lock = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 8
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %channels = getelementptr inbounds %struct.fsl_asrc_pair, ptr %pair, i32 0, i32 3
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels, align 4
  %channel_avail = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %channel_avail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel_avail, align 4
  %add8 = add i32 %9, %7
  store i32 %add8, ptr %channel_avail, align 4
  %arrayidx = getelementptr %struct.fsl_asrc, ptr %1, i32 0, i32 9, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx, align 4
  %error = getelementptr inbounds %struct.fsl_asrc_pair, ptr %pair, i32 0, i32 1
  %11 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %error, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_asrc_get_fifo_addr(i8 noundef zeroext %dir, i32 noundef %index) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dir)
  %cmp = icmp eq i8 %dir, 0
  %shl = shl i32 %index, 3
  %cond.v = select i1 %cmp, i32 96, i32 100
  %cond = add i32 %shl, %cond.v
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asrc_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %asrctr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %asrctr) #11
  %4 = ptrtoint ptr %asrctr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %asrctr, align 4, !annotation !236
  %mem_clk = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %mem_clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %6) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %ipg_clk = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ipg_clk, align 4
  %call.i76 = tail call i32 @clk_prepare(ptr noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool.not.i77 = icmp eq i32 %call.i76, 0
  br i1 %tobool.not.i77, label %if.end.i80, label %if.end.disable_mem_clk_crit_edge

if.end.disable_mem_clk_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_mem_clk

if.end.i80:                                       ; preds = %if.end
  %call1.i78 = tail call i32 @clk_enable(ptr noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i78)
  %tobool2.not.i79 = icmp eq i32 %call1.i78, 0
  br i1 %tobool2.not.i79, label %if.end5, label %if.end.i80.disable_mem_clk.sink.split_crit_edge

if.end.i80.disable_mem_clk.sink.split_crit_edge:  ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_mem_clk.sink.split

if.end5:                                          ; preds = %if.end.i80
  %spba_clk = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %spba_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spba_clk, align 4
  %cmp.i = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end5.for.body.preheader_crit_edge, label %if.then7

if.end5.for.body.preheader_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

if.then7:                                         ; preds = %if.end5
  %call.i84 = tail call i32 @clk_prepare(ptr noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool.not.i85 = icmp eq i32 %call.i84, 0
  br i1 %tobool.not.i85, label %if.end.i88, label %if.then7.disable_ipg_clk_crit_edge

if.then7.disable_ipg_clk_crit_edge:               ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_ipg_clk

if.end.i88:                                       ; preds = %if.then7
  %call1.i86 = tail call i32 @clk_enable(ptr noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i86)
  %tobool2.not.i87 = icmp eq i32 %call1.i86, 0
  br i1 %tobool2.not.i87, label %if.end.i88.for.body.preheader_crit_edge, label %if.end.i88.disable_ipg_clk.sink.split_crit_edge

if.end.i88.disable_ipg_clk.sink.split_crit_edge:  ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_ipg_clk.sink.split

if.end.i88.for.body.preheader_crit_edge:          ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end.i88.for.body.preheader_crit_edge, %if.end5.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0117 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [16 x ptr], ptr %3, i32 0, i32 %i.0117
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %call.i92 = tail call i32 @clk_prepare(ptr noundef %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool.not.i93 = icmp eq i32 %call.i92, 0
  br i1 %tobool.not.i93, label %if.end.i96, label %for.body.clk_prepare_enable.exit99_crit_edge

for.body.clk_prepare_enable.exit99_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit99

if.end.i96:                                       ; preds = %for.body
  %call1.i94 = tail call i32 @clk_enable(ptr noundef %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i94)
  %tobool2.not.i95 = icmp eq i32 %call1.i94, 0
  br i1 %tobool2.not.i95, label %for.inc, label %if.then3.i97

if.then3.i97:                                     ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %12) #11
  br label %clk_prepare_enable.exit99

clk_prepare_enable.exit99:                        ; preds = %if.then3.i97, %for.body.clk_prepare_enable.exit99_crit_edge
  %retval.0.i98 = phi i32 [ %call1.i94, %if.then3.i97 ], [ %call.i92, %for.body.clk_prepare_enable.exit99_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0117)
  %cmp30119.not = icmp eq i32 %i.0117, 0
  br i1 %cmp30119.not, label %clk_prepare_enable.exit99.for.end36_crit_edge, label %clk_prepare_enable.exit99.for.body31_crit_edge

clk_prepare_enable.exit99.for.body31_crit_edge:   ; preds = %clk_prepare_enable.exit99
  br label %for.body31

clk_prepare_enable.exit99.for.end36_crit_edge:    ; preds = %clk_prepare_enable.exit99
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end36

for.inc:                                          ; preds = %if.end.i96
  %inc = add nuw nsw i32 %i.0117, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %regmap = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call18 = call i32 @regmap_read(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %asrctr) #11
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i100 = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef 14, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  call void @regcache_cache_only(ptr noundef %18, i1 noundef zeroext false) #11
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  call void @regcache_mark_dirty(ptr noundef %20) #11
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call24 = call i32 @regcache_sync(ptr noundef %22) #11
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %regcache_cfg = getelementptr inbounds %struct.fsl_asrc_priv, ptr %3, i32 0, i32 3
  %25 = ptrtoint ptr %regcache_cfg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %regcache_cfg, align 4
  %call.i101 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 16, i32 noundef 2097088, i32 noundef %26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %29 = ptrtoint ptr %asrctr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %asrctr, align 4
  %call.i102 = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 0, i32 noundef 14, i32 noundef %30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %cleanup

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %clk_prepare_enable.exit99.for.body31_crit_edge
  %i.1120.in = phi i32 [ %i.1120, %for.body31.for.body31_crit_edge ], [ %i.0117, %clk_prepare_enable.exit99.for.body31_crit_edge ]
  %i.1120 = add nsw i32 %i.1120.in, -1
  %arrayidx33 = getelementptr [16 x ptr], ptr %3, i32 0, i32 %i.1120
  %31 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx33, align 4
  tail call void @clk_disable(ptr noundef %32) #11
  tail call void @clk_unprepare(ptr noundef %32) #11
  %cmp30 = icmp sgt i32 %i.1120.in, 1
  br i1 %cmp30, label %for.body31.for.body31_crit_edge, label %for.body31.for.end36_crit_edge

for.body31.for.end36_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end36

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body31

for.end36:                                        ; preds = %for.body31.for.end36_crit_edge, %clk_prepare_enable.exit99.for.end36_crit_edge
  %33 = ptrtoint ptr %spba_clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spba_clk, align 4
  %cmp.i103 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103, label %for.end36.disable_ipg_clk_crit_edge, label %if.then39

for.end36.disable_ipg_clk_crit_edge:              ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_ipg_clk

if.then39:                                        ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_disable(ptr noundef %34) #11
  br label %disable_ipg_clk.sink.split

disable_ipg_clk.sink.split:                       ; preds = %if.then39, %if.end.i88.disable_ipg_clk.sink.split_crit_edge
  %.sink = phi ptr [ %34, %if.then39 ], [ %10, %if.end.i88.disable_ipg_clk.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %retval.0.i98, %if.then39 ], [ %call1.i86, %if.end.i88.disable_ipg_clk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #11
  br label %disable_ipg_clk

disable_ipg_clk:                                  ; preds = %disable_ipg_clk.sink.split, %for.end36.disable_ipg_clk_crit_edge, %if.then7.disable_ipg_clk_crit_edge
  %ret.0 = phi i32 [ %retval.0.i98, %for.end36.disable_ipg_clk_crit_edge ], [ %call.i84, %if.then7.disable_ipg_clk_crit_edge ], [ %ret.0.ph, %disable_ipg_clk.sink.split ]
  %35 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ipg_clk, align 4
  tail call void @clk_disable(ptr noundef %36) #11
  br label %disable_mem_clk.sink.split

disable_mem_clk.sink.split:                       ; preds = %disable_ipg_clk, %if.end.i80.disable_mem_clk.sink.split_crit_edge
  %.sink137 = phi ptr [ %36, %disable_ipg_clk ], [ %8, %if.end.i80.disable_mem_clk.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %disable_ipg_clk ], [ %call1.i78, %if.end.i80.disable_mem_clk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink137) #11
  br label %disable_mem_clk

disable_mem_clk:                                  ; preds = %disable_mem_clk.sink.split, %if.end.disable_mem_clk_crit_edge
  %ret.1 = phi i32 [ %call.i76, %if.end.disable_mem_clk_crit_edge ], [ %ret.1.ph, %disable_mem_clk.sink.split ]
  %37 = ptrtoint ptr %mem_clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mem_clk, align 4
  tail call void @clk_disable(ptr noundef %38) #11
  tail call void @clk_unprepare(ptr noundef %38) #11
  br label %cleanup

cleanup:                                          ; preds = %disable_mem_clk, %for.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %disable_mem_clk ], [ 0, %for.end ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %asrctr) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asrc_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %regmap = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %regcache_cfg = getelementptr inbounds %struct.fsl_asrc_priv, ptr %3, i32 0, i32 3
  %call1 = tail call i32 @regmap_read(ptr noundef %5, i32 noundef 16, ptr noundef %regcache_cfg) #11
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext true) #11
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %9) #11
  tail call void @clk_unprepare(ptr noundef %9) #11
  %arrayidx.1 = getelementptr [16 x ptr], ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  tail call void @clk_disable(ptr noundef %11) #11
  tail call void @clk_unprepare(ptr noundef %11) #11
  %arrayidx.2 = getelementptr [16 x ptr], ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  tail call void @clk_disable(ptr noundef %13) #11
  tail call void @clk_unprepare(ptr noundef %13) #11
  %arrayidx.3 = getelementptr [16 x ptr], ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.3, align 4
  tail call void @clk_disable(ptr noundef %15) #11
  tail call void @clk_unprepare(ptr noundef %15) #11
  %arrayidx.4 = getelementptr [16 x ptr], ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.4, align 4
  tail call void @clk_disable(ptr noundef %17) #11
  tail call void @clk_unprepare(ptr noundef %17) #11
  %arrayidx.5 = getelementptr [16 x ptr], ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.5, align 4
  tail call void @clk_disable(ptr noundef %19) #11
  tail call void @clk_unprepare(ptr noundef %19) #11
  %arrayidx.6 = getelementptr [16 x ptr], ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.6, align 4
  tail call void @clk_disable(ptr noundef %21) #11
  tail call void @clk_unprepare(ptr noundef %21) #11
  %arrayidx.7 = getelementptr [16 x ptr], ptr %3, i32 0, i32 7
  %22 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.7, align 4
  tail call void @clk_disable(ptr noundef %23) #11
  tail call void @clk_unprepare(ptr noundef %23) #11
  %arrayidx.8 = getelementptr [16 x ptr], ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.8, align 4
  tail call void @clk_disable(ptr noundef %25) #11
  tail call void @clk_unprepare(ptr noundef %25) #11
  %arrayidx.9 = getelementptr [16 x ptr], ptr %3, i32 0, i32 9
  %26 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.9, align 4
  tail call void @clk_disable(ptr noundef %27) #11
  tail call void @clk_unprepare(ptr noundef %27) #11
  %arrayidx.10 = getelementptr [16 x ptr], ptr %3, i32 0, i32 10
  %28 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.10, align 4
  tail call void @clk_disable(ptr noundef %29) #11
  tail call void @clk_unprepare(ptr noundef %29) #11
  %arrayidx.11 = getelementptr [16 x ptr], ptr %3, i32 0, i32 11
  %30 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.11, align 4
  tail call void @clk_disable(ptr noundef %31) #11
  tail call void @clk_unprepare(ptr noundef %31) #11
  %arrayidx.12 = getelementptr [16 x ptr], ptr %3, i32 0, i32 12
  %32 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.12, align 4
  tail call void @clk_disable(ptr noundef %33) #11
  tail call void @clk_unprepare(ptr noundef %33) #11
  %arrayidx.13 = getelementptr [16 x ptr], ptr %3, i32 0, i32 13
  %34 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.13, align 4
  tail call void @clk_disable(ptr noundef %35) #11
  tail call void @clk_unprepare(ptr noundef %35) #11
  %arrayidx.14 = getelementptr [16 x ptr], ptr %3, i32 0, i32 14
  %36 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.14, align 4
  tail call void @clk_disable(ptr noundef %37) #11
  tail call void @clk_unprepare(ptr noundef %37) #11
  %arrayidx.15 = getelementptr [16 x ptr], ptr %3, i32 0, i32 15
  %38 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.15, align 4
  tail call void @clk_disable(ptr noundef %39) #11
  tail call void @clk_unprepare(ptr noundef %39) #11
  %spba_clk = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 7
  %40 = ptrtoint ptr %spba_clk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %spba_clk, align 4
  %cmp.i = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_disable(ptr noundef %41) #11
  tail call void @clk_unprepare(ptr noundef %41) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ipg_clk = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 6
  %42 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ipg_clk, align 4
  tail call void @clk_disable(ptr noundef %43) #11
  tail call void @clk_unprepare(ptr noundef %43) #11
  %mem_clk = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %mem_clk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mem_clk, align 4
  tail call void @clk_disable(ptr noundef %45) #11
  tail call void @clk_unprepare(ptr noundef %45) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_asrc_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.fshl.i32(i32 %reg, i32 %reg, i32 30)
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %0, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 3, label %entry.return_crit_edge2
    i32 4, label %entry.return_crit_edge3
    i32 5, label %entry.return_crit_edge4
    i32 6, label %entry.return_crit_edge5
    i32 7, label %entry.return_crit_edge6
    i32 8, label %entry.return_crit_edge7
    i32 16, label %entry.return_crit_edge8
    i32 17, label %entry.return_crit_edge9
    i32 18, label %entry.return_crit_edge10
    i32 19, label %entry.return_crit_edge11
    i32 20, label %entry.return_crit_edge12
    i32 21, label %entry.return_crit_edge13
    i32 23, label %entry.return_crit_edge14
    i32 24, label %entry.return_crit_edge15
    i32 26, label %entry.return_crit_edge16
    i32 28, label %entry.return_crit_edge17
    i32 32, label %entry.return_crit_edge18
    i32 33, label %entry.return_crit_edge19
    i32 34, label %entry.return_crit_edge20
    i32 35, label %entry.return_crit_edge21
    i32 36, label %entry.return_crit_edge22
    i32 37, label %entry.return_crit_edge23
    i32 38, label %entry.return_crit_edge24
    i32 39, label %entry.return_crit_edge25
    i32 40, label %entry.return_crit_edge26
    i32 42, label %entry.return_crit_edge27
    i32 44, label %entry.return_crit_edge28
    i32 48, label %entry.return_crit_edge29
    i32 49, label %entry.return_crit_edge30
    i32 50, label %entry.return_crit_edge31
  ]

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_asrc_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.fshl.i32(i32 %reg, i32 %reg, i32 30)
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %0, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 3, label %entry.return_crit_edge2
    i32 4, label %entry.return_crit_edge3
    i32 5, label %entry.return_crit_edge4
    i32 6, label %entry.return_crit_edge5
    i32 7, label %entry.return_crit_edge6
    i32 8, label %entry.return_crit_edge7
    i32 16, label %entry.return_crit_edge8
    i32 17, label %entry.return_crit_edge9
    i32 18, label %entry.return_crit_edge10
    i32 19, label %entry.return_crit_edge11
    i32 20, label %entry.return_crit_edge12
    i32 21, label %entry.return_crit_edge13
    i32 23, label %entry.return_crit_edge14
    i32 25, label %entry.return_crit_edge15
    i32 27, label %entry.return_crit_edge16
    i32 29, label %entry.return_crit_edge17
    i32 32, label %entry.return_crit_edge18
    i32 33, label %entry.return_crit_edge19
    i32 34, label %entry.return_crit_edge20
    i32 35, label %entry.return_crit_edge21
    i32 36, label %entry.return_crit_edge22
    i32 37, label %entry.return_crit_edge23
    i32 38, label %entry.return_crit_edge24
    i32 39, label %entry.return_crit_edge25
    i32 40, label %entry.return_crit_edge26
    i32 41, label %entry.return_crit_edge27
    i32 42, label %entry.return_crit_edge28
    i32 43, label %entry.return_crit_edge29
    i32 44, label %entry.return_crit_edge30
    i32 45, label %entry.return_crit_edge31
    i32 48, label %entry.return_crit_edge32
    i32 49, label %entry.return_crit_edge33
    i32 50, label %entry.return_crit_edge34
  ]

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_asrc_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %reg, label %sw.default [
    i32 32, label %entry.return_crit_edge
    i32 96, label %entry.return_crit_edge1
    i32 104, label %entry.return_crit_edge2
    i32 112, label %entry.return_crit_edge3
    i32 100, label %entry.return_crit_edge4
    i32 108, label %entry.return_crit_edge5
    i32 116, label %entry.return_crit_edge6
    i32 164, label %entry.return_crit_edge7
    i32 172, label %entry.return_crit_edge8
    i32 180, label %entry.return_crit_edge9
    i32 16, label %entry.return_crit_edge10
  ]

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_asrc_dai_probe(ptr nocapture noundef %dai) #9 align 64 {
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
  %dma_params_tx = getelementptr inbounds %struct.fsl_asrc, ptr %3, i32 0, i32 1
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dma_params_tx, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %5 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %capture_dma_data.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asrc_dai_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %private = getelementptr inbounds %struct.fsl_asrc, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %soc = getelementptr inbounds %struct.fsl_asrc_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc, align 4
  %channel_bits = getelementptr inbounds %struct.fsl_asrc_soc_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %channel_bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp eq i32 %9, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %call1 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %11, i32 noundef 0, i32 noundef 10, i32 noundef 2) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %12 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime2, align 4
  %call3 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %13, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @fsl_asrc_rate_constraints) #11
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asrc_dai_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %clk_index.i = alloca [2 x i32], align 4
  %rate.i = alloca [2 x i32], align 4
  %select_clk.i = alloca [2 x i32], align 4
  %config = alloca %struct.asrc_config, align 4
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
  %private = getelementptr inbounds %struct.fsl_asrc, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %6 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 8
  %private2 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private2, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i55 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx.i.i55 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i55, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %config) #11
  %16 = getelementptr inbounds i8, ptr %config, i32 8
  %17 = call ptr @memset(ptr %16, i32 255, i32 32)
  %call5 = tail call i32 @fsl_asrc_request_pair(i32 noundef %13, ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.74) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %config, ptr %11, align 4
  %index = getelementptr inbounds %struct.fsl_asrc_pair, ptr %9, i32 0, i32 2
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index, align 4
  %23 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %config, align 4
  %channel_num = getelementptr inbounds %struct.asrc_config, ptr %config, i32 0, i32 1
  %24 = ptrtoint ptr %channel_num to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %13, ptr %channel_num, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %25 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp = icmp eq i32 %26, 0
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %arrayidx.i.i56 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx.i.i56 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.then8.if.then.i.i_crit_edge

if.then8.if.then.i.i_crit_edge:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %if.then8.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.then8.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %28, %if.then8.if.then.i.i_crit_edge ], [ %31, %for.inc.i.i.if.then.i.i_crit_edge ]
  %29 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #11, !range !242
  %add.i.i = or i32 %29, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.then8
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.1.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %input_format = getelementptr inbounds %struct.asrc_config, ptr %config, i32 0, i32 6
  %32 = ptrtoint ptr %input_format to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i.i, ptr %input_format, align 4
  %asrc_format = getelementptr inbounds %struct.fsl_asrc, ptr %3, i32 0, i32 12
  %33 = ptrtoint ptr %asrc_format to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %asrc_format, align 4
  %output_format = getelementptr inbounds %struct.asrc_config, ptr %config, i32 0, i32 7
  %35 = ptrtoint ptr %output_format to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %output_format, align 4
  %input_sample_rate = getelementptr inbounds %struct.asrc_config, ptr %config, i32 0, i32 4
  %36 = ptrtoint ptr %input_sample_rate to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %15, ptr %input_sample_rate, align 4
  %asrc_rate = getelementptr inbounds %struct.fsl_asrc, ptr %3, i32 0, i32 11
  %37 = ptrtoint ptr %asrc_rate to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %asrc_rate, align 4
  br label %if.end17

if.else:                                          ; preds = %if.end
  %asrc_format10 = getelementptr inbounds %struct.fsl_asrc, ptr %3, i32 0, i32 12
  %39 = ptrtoint ptr %asrc_format10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %asrc_format10, align 4
  %input_format11 = getelementptr inbounds %struct.asrc_config, ptr %config, i32 0, i32 6
  %41 = ptrtoint ptr %input_format11 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %input_format11, align 4
  %arrayidx.i.i57 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %arrayidx.i.i57 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i58 = icmp eq i32 %43, 0
  br i1 %tobool.not.i.i58, label %for.inc.i.i65, label %if.else.if.then.i.i62_crit_edge

if.else.if.then.i.i62_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i62

if.then.i.i62:                                    ; preds = %for.inc.i.i65.if.then.i.i62_crit_edge, %if.else.if.then.i.i62_crit_edge
  %i.09.lcssa.i.i59 = phi i32 [ 0, %if.else.if.then.i.i62_crit_edge ], [ 32, %for.inc.i.i65.if.then.i.i62_crit_edge ]
  %.lcssa.i.i60 = phi i32 [ %43, %if.else.if.then.i.i62_crit_edge ], [ %46, %for.inc.i.i65.if.then.i.i62_crit_edge ]
  %44 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i60, i1 true) #11, !range !242
  %add.i.i61 = or i32 %44, %i.09.lcssa.i.i59
  br label %params_format.exit67

for.inc.i.i65:                                    ; preds = %if.else
  %arrayidx.1.i.i63 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx.1.i.i63 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.1.i.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.1.i.i64 = icmp eq i32 %46, 0
  br i1 %tobool.not.1.i.i64, label %for.inc.i.i65.params_format.exit67_crit_edge, label %for.inc.i.i65.if.then.i.i62_crit_edge

for.inc.i.i65.if.then.i.i62_crit_edge:            ; preds = %for.inc.i.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i62

for.inc.i.i65.params_format.exit67_crit_edge:     ; preds = %for.inc.i.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_format.exit67

params_format.exit67:                             ; preds = %for.inc.i.i65.params_format.exit67_crit_edge, %if.then.i.i62
  %retval.0.i.i66 = phi i32 [ %add.i.i61, %if.then.i.i62 ], [ 0, %for.inc.i.i65.params_format.exit67_crit_edge ]
  %output_format13 = getelementptr inbounds %struct.asrc_config, ptr %config, i32 0, i32 7
  %47 = ptrtoint ptr %output_format13 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %retval.0.i.i66, ptr %output_format13, align 4
  %asrc_rate14 = getelementptr inbounds %struct.fsl_asrc, ptr %3, i32 0, i32 11
  %48 = ptrtoint ptr %asrc_rate14 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %asrc_rate14, align 4
  %input_sample_rate15 = getelementptr inbounds %struct.asrc_config, ptr %config, i32 0, i32 4
  %50 = ptrtoint ptr %input_sample_rate15 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %input_sample_rate15, align 4
  br label %if.end17

if.end17:                                         ; preds = %params_format.exit67, %params_format.exit
  %.sink = phi i32 [ %15, %params_format.exit67 ], [ %38, %params_format.exit ]
  %output_sample_rate16 = getelementptr inbounds %struct.asrc_config, ptr %config, i32 0, i32 5
  %51 = ptrtoint ptr %output_sample_rate16 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink, ptr %output_sample_rate16, align 4
  %input_sample_rate18 = getelementptr inbounds %struct.asrc_config, ptr %config, i32 0, i32 4
  %52 = ptrtoint ptr %input_sample_rate18 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %input_sample_rate18, align 4
  %54 = ptrtoint ptr %private2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %private2, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rate.i) #11
  %58 = getelementptr inbounds [2 x i32], ptr %rate.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %select_clk.i) #11
  %59 = ptrtoint ptr %select_clk.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %select_clk.i, align 4, !annotation !236
  %60 = getelementptr inbounds [2 x i32], ptr %select_clk.i, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %60, align 4, !annotation !236
  %62 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %53, ptr %rate.i, align 4
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.sink, ptr %58, align 4
  %arrayidx6.i = getelementptr %struct.fsl_asrc_priv, ptr %5, i32 0, i32 2, i32 0
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.inc.i.for.body5.i_crit_edge, %if.end17
  %i.041.i = phi i32 [ 0, %if.end17 ], [ %inc.i, %for.inc.i.for.body5.i_crit_edge ]
  %64 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr i8, ptr %65, i32 %i.041.i
  %66 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx7.i, align 1
  %conv.i = zext i8 %67 to i32
  %arrayidx8.i = getelementptr [16 x ptr], ptr %5, i32 0, i32 %conv.i
  %68 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx8.i, align 4
  %call.i = call i32 @clk_get_rate(ptr noundef %69) #11
  %70 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i.i = icmp eq i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp1.i.i = icmp eq i32 %71, 0
  %or.cond.i.i = or i1 %cmp.i.i, %cmp1.i.i
  br i1 %or.cond.i.i, label %for.body5.i.for.inc.i_crit_edge, label %if.end3.i.i

for.body5.i.for.inc.i_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end3.i.i:                                      ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp175.i.i = icmp sgt i32 %call.i, -1
  br i1 %cmp175.i.i, label %if.then179.i.i, label %if.else185.i.i, !prof !243

if.then179.i.i:                                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.frozen = freeze i32 %call.i
  %.frozen = freeze i32 %71
  %div183.i.i = udiv i32 %call.i.frozen, %.frozen
  %72 = mul i32 %div183.i.i, %.frozen
  %rem181.i.i.decomposed = sub i32 %call.i.frozen, %72
  %conv184.i.i = zext i32 %div183.i.i to i64
  br label %if.end189.i.i

if.else185.i.i:                                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = sext i32 %call.i to i64
  %73 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %71, i64 %conv.i.i) #15, !srcloc !244
  %asmresult.i301.i.i = extractvalue { i64, i64 } %73, 0
  %asmresult1.i.i.i = extractvalue { i64, i64 } %73, 1
  %shr.i.i.i = lshr i64 %asmresult.i301.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %if.end189.i.i

if.end189.i.i:                                    ; preds = %if.else185.i.i, %if.then179.i.i
  %n.0.i.i = phi i64 [ %conv184.i.i, %if.then179.i.i ], [ %asmresult1.i.i.i, %if.else185.i.i ]
  %__rem.0.i.i = phi i32 [ %rem181.i.i.decomposed, %if.then179.i.i ], [ %conv.i.i.i, %if.else185.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i.i)
  %cmp195.not.i.i = icmp eq i32 %__rem.0.i.i, 0
  br i1 %cmp195.not.i.i, label %if.end189.i.i.for.body.i.i_crit_edge, label %if.end189.i.i.for.inc.i_crit_edge

if.end189.i.i.for.inc.i_crit_edge:                ; preds = %if.end189.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end189.i.i.for.body.i.i_crit_edge:             ; preds = %if.end189.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i70.for.body.i.i_crit_edge, %if.end189.i.i.for.body.i.i_crit_edge
  %i.0325.i.i = phi i32 [ %inc.i.i, %for.inc.i.i70.for.body.i.i_crit_edge ], [ 0, %if.end189.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i69 = getelementptr [64 x i32], ptr @asrc_clk_divider, i32 0, i32 %i.0325.i.i
  %74 = ptrtoint ptr %arrayidx.i.i69 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i.i69, align 4
  %conv201.i.i = sext i32 %75 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %n.0.i.i, i64 %conv201.i.i)
  %cmp202.i.i = icmp eq i64 %n.0.i.i, %conv201.i.i
  br i1 %cmp202.i.i, label %fsl_asrc_divider_avail.exit.i, label %for.inc.i.i70

for.inc.i.i70:                                    ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.0325.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %for.inc.i.i70.for.inc.i_crit_edge, label %for.inc.i.i70.for.body.i.i_crit_edge

for.inc.i.i70.for.body.i.i_crit_edge:             ; preds = %for.inc.i.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i70.for.inc.i_crit_edge:                ; preds = %for.inc.i.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

fsl_asrc_divider_avail.exit.i:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.0325.i.i)
  %cmp206.i.not.i = icmp eq i32 %i.0325.i.i, 64
  br i1 %cmp206.i.not.i, label %fsl_asrc_divider_avail.exit.i.for.inc.i_crit_edge, label %fsl_asrc_divider_avail.exit.i.for.end.i_crit_edge

fsl_asrc_divider_avail.exit.i.for.end.i_crit_edge: ; preds = %fsl_asrc_divider_avail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

fsl_asrc_divider_avail.exit.i.for.inc.i_crit_edge: ; preds = %fsl_asrc_divider_avail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %fsl_asrc_divider_avail.exit.i.for.inc.i_crit_edge, %for.inc.i.i70.for.inc.i_crit_edge, %if.end189.i.i.for.inc.i_crit_edge, %for.body5.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 48
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body5.i_crit_edge

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %fsl_asrc_divider_avail.exit.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.041.i, %fsl_asrc_divider_avail.exit.i.for.end.i_crit_edge ], [ 48, %for.inc.i.for.end.i_crit_edge ]
  %76 = ptrtoint ptr %select_clk.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %i.0.lcssa.i, ptr %select_clk.i, align 4
  %arrayidx6.i.1 = getelementptr %struct.fsl_asrc_priv, ptr %5, i32 0, i32 2, i32 1
  %arrayidx9.i.1 = getelementptr inbounds [2 x i32], ptr %rate.i, i32 0, i32 1
  br label %for.body5.i.1

for.body5.i.1:                                    ; preds = %for.inc.i.1.for.body5.i.1_crit_edge, %for.end.i
  %i.041.i.1 = phi i32 [ 0, %for.end.i ], [ %inc.i.1, %for.inc.i.1.for.body5.i.1_crit_edge ]
  %77 = ptrtoint ptr %arrayidx6.i.1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx6.i.1, align 4
  %arrayidx7.i.1 = getelementptr i8, ptr %78, i32 %i.041.i.1
  %79 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx7.i.1, align 1
  %conv.i.1 = zext i8 %80 to i32
  %arrayidx8.i.1 = getelementptr [16 x ptr], ptr %5, i32 0, i32 %conv.i.1
  %81 = ptrtoint ptr %arrayidx8.i.1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx8.i.1, align 4
  %call.i.1 = call i32 @clk_get_rate(ptr noundef %82) #11
  %83 = ptrtoint ptr %arrayidx9.i.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx9.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i.i.1 = icmp eq i32 %call.i.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp1.i.i.1 = icmp eq i32 %84, 0
  %or.cond.i.i.1 = or i1 %cmp.i.i.1, %cmp1.i.i.1
  br i1 %or.cond.i.i.1, label %for.body5.i.1.for.inc.i.1_crit_edge, label %if.end3.i.i.1

for.body5.i.1.for.inc.i.1_crit_edge:              ; preds = %for.body5.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.1

if.end3.i.i.1:                                    ; preds = %for.body5.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.1)
  %cmp175.i.i.1 = icmp sgt i32 %call.i.1, -1
  br i1 %cmp175.i.i.1, label %if.then179.i.i.1, label %if.else185.i.i.1, !prof !243

if.else185.i.i.1:                                 ; preds = %if.end3.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.1 = sext i32 %call.i.1 to i64
  %85 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %84, i64 %conv.i.i.1) #15, !srcloc !244
  %asmresult.i301.i.i.1 = extractvalue { i64, i64 } %85, 0
  %asmresult1.i.i.i.1 = extractvalue { i64, i64 } %85, 1
  %shr.i.i.i.1 = lshr i64 %asmresult.i301.i.i.1, 32
  %conv.i.i.i.1 = trunc i64 %shr.i.i.i.1 to i32
  br label %if.end189.i.i.1

if.then179.i.i.1:                                 ; preds = %if.end3.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.1.frozen = freeze i32 %call.i.1
  %.frozen229 = freeze i32 %84
  %div183.i.i.1 = udiv i32 %call.i.1.frozen, %.frozen229
  %86 = mul i32 %div183.i.i.1, %.frozen229
  %rem181.i.i.1.decomposed = sub i32 %call.i.1.frozen, %86
  %conv184.i.i.1 = zext i32 %div183.i.i.1 to i64
  br label %if.end189.i.i.1

if.end189.i.i.1:                                  ; preds = %if.then179.i.i.1, %if.else185.i.i.1
  %n.0.i.i.1 = phi i64 [ %conv184.i.i.1, %if.then179.i.i.1 ], [ %asmresult1.i.i.i.1, %if.else185.i.i.1 ]
  %__rem.0.i.i.1 = phi i32 [ %rem181.i.i.1.decomposed, %if.then179.i.i.1 ], [ %conv.i.i.i.1, %if.else185.i.i.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i.i.1)
  %cmp195.not.i.i.1 = icmp eq i32 %__rem.0.i.i.1, 0
  br i1 %cmp195.not.i.i.1, label %if.end189.i.i.1.for.body.i.i.1_crit_edge, label %if.end189.i.i.1.for.inc.i.1_crit_edge

if.end189.i.i.1.for.inc.i.1_crit_edge:            ; preds = %if.end189.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.1

if.end189.i.i.1.for.body.i.i.1_crit_edge:         ; preds = %if.end189.i.i.1
  br label %for.body.i.i.1

for.body.i.i.1:                                   ; preds = %for.inc.i.i70.1.for.body.i.i.1_crit_edge, %if.end189.i.i.1.for.body.i.i.1_crit_edge
  %i.0325.i.i.1 = phi i32 [ %inc.i.i.1, %for.inc.i.i70.1.for.body.i.i.1_crit_edge ], [ 0, %if.end189.i.i.1.for.body.i.i.1_crit_edge ]
  %arrayidx.i.i69.1 = getelementptr [64 x i32], ptr @asrc_clk_divider, i32 0, i32 %i.0325.i.i.1
  %87 = ptrtoint ptr %arrayidx.i.i69.1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i.i69.1, align 4
  %conv201.i.i.1 = sext i32 %88 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %n.0.i.i.1, i64 %conv201.i.i.1)
  %cmp202.i.i.1 = icmp eq i64 %n.0.i.i.1, %conv201.i.i.1
  br i1 %cmp202.i.i.1, label %fsl_asrc_divider_avail.exit.i.1, label %for.inc.i.i70.1

for.inc.i.i70.1:                                  ; preds = %for.body.i.i.1
  %inc.i.i.1 = add nuw nsw i32 %i.0325.i.i.1, 1
  %exitcond.not.i.i.1 = icmp eq i32 %inc.i.i.1, 64
  br i1 %exitcond.not.i.i.1, label %for.inc.i.i70.1.for.inc.i.1_crit_edge, label %for.inc.i.i70.1.for.body.i.i.1_crit_edge

for.inc.i.i70.1.for.body.i.i.1_crit_edge:         ; preds = %for.inc.i.i70.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.1

for.inc.i.i70.1.for.inc.i.1_crit_edge:            ; preds = %for.inc.i.i70.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.1

fsl_asrc_divider_avail.exit.i.1:                  ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.0325.i.i.1)
  %cmp206.i.not.i.1 = icmp eq i32 %i.0325.i.i.1, 64
  br i1 %cmp206.i.not.i.1, label %fsl_asrc_divider_avail.exit.i.1.for.inc.i.1_crit_edge, label %fsl_asrc_divider_avail.exit.i.1.for.end.i.1_crit_edge

fsl_asrc_divider_avail.exit.i.1.for.end.i.1_crit_edge: ; preds = %fsl_asrc_divider_avail.exit.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.1

fsl_asrc_divider_avail.exit.i.1.for.inc.i.1_crit_edge: ; preds = %fsl_asrc_divider_avail.exit.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %fsl_asrc_divider_avail.exit.i.1.for.inc.i.1_crit_edge, %for.inc.i.i70.1.for.inc.i.1_crit_edge, %if.end189.i.i.1.for.inc.i.1_crit_edge, %for.body5.i.1.for.inc.i.1_crit_edge
  %inc.i.1 = add nuw nsw i32 %i.041.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, 48
  br i1 %exitcond.not.i.1, label %for.inc.i.1.for.end.i.1_crit_edge, label %for.inc.i.1.for.body5.i.1_crit_edge

for.inc.i.1.for.body5.i.1_crit_edge:              ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5.i.1

for.inc.i.1.for.end.i.1_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.1

for.end.i.1:                                      ; preds = %for.inc.i.1.for.end.i.1_crit_edge, %fsl_asrc_divider_avail.exit.i.1.for.end.i.1_crit_edge
  %i.0.lcssa.i.1 = phi i32 [ %i.041.i.1, %fsl_asrc_divider_avail.exit.i.1.for.end.i.1_crit_edge ], [ 48, %for.inc.i.1.for.end.i.1_crit_edge ]
  %arrayidx11.i.1 = getelementptr inbounds [2 x i32], ptr %select_clk.i, i32 0, i32 1
  %89 = ptrtoint ptr %arrayidx11.i.1 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %i.0.lcssa.i.1, ptr %arrayidx11.i.1, align 4
  %90 = ptrtoint ptr %select_clk.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %select_clk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %91)
  %cmp16.i = icmp eq i32 %91, 48
  br i1 %cmp16.i, label %for.end.i.1.if.then21.i_crit_edge, label %lor.lhs.false.i

for.end.i.1.if.then21.i_crit_edge:                ; preds = %for.end.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21.i

lor.lhs.false.i:                                  ; preds = %for.end.i.1
  %92 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %93)
  %cmp19.i = icmp eq i32 %93, 48
  br i1 %cmp19.i, label %lor.lhs.false.i.if.then21.i_crit_edge, label %lor.lhs.false.i.fsl_asrc_select_clk.exit_crit_edge

lor.lhs.false.i.fsl_asrc_select_clk.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsl_asrc_select_clk.exit

lor.lhs.false.i.if.then21.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21.i

if.then21.i:                                      ; preds = %lor.lhs.false.i.if.then21.i_crit_edge, %for.end.i.1.if.then21.i_crit_edge
  %94 = ptrtoint ptr %select_clk.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 3, ptr %select_clk.i, align 4
  %95 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 15, ptr %60, align 4
  br label %fsl_asrc_select_clk.exit

fsl_asrc_select_clk.exit:                         ; preds = %if.then21.i, %lor.lhs.false.i.fsl_asrc_select_clk.exit_crit_edge
  %96 = ptrtoint ptr %select_clk.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %select_clk.i, align 4
  %inclk.i = getelementptr inbounds %struct.asrc_config, ptr %57, i32 0, i32 8
  %98 = ptrtoint ptr %inclk.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %inclk.i, align 4
  %99 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %60, align 4
  %outclk.i = getelementptr inbounds %struct.asrc_config, ptr %57, i32 0, i32 9
  %101 = ptrtoint ptr %outclk.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %outclk.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %select_clk.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rate.i) #11
  %102 = ptrtoint ptr %private2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %private2, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %106 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %9, align 4
  %private3.i = getelementptr inbounds %struct.fsl_asrc, ptr %107, i32 0, i32 19
  %108 = ptrtoint ptr %private3.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %private3.i, align 4
  %110 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_index.i) #11
  %112 = getelementptr inbounds [2 x i32], ptr %clk_index.i, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %105, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %fsl_asrc_select_clk.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pdev.i = getelementptr inbounds %struct.fsl_asrc, ptr %107, i32 0, i32 2
  %113 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev.i, align 4
  %dev.i72 = getelementptr inbounds %struct.platform_device, ptr %114, i32 0, i32 3
  %add.i = add i32 %111, 65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i72, ptr noundef nonnull @.str.79, i32 noundef %add.i) #14
  br label %do.end25

if.end.i:                                         ; preds = %fsl_asrc_select_clk.exit
  %channel_num.i = getelementptr inbounds %struct.asrc_config, ptr %105, i32 0, i32 1
  %115 = ptrtoint ptr %channel_num.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %channel_num.i, align 4
  %117 = add i32 %116, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %117)
  %118 = icmp ult i32 %117, -10
  br i1 %118, label %do.end10.i, label %if.end15.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %pdev11.i = getelementptr inbounds %struct.fsl_asrc, ptr %107, i32 0, i32 2
  %119 = ptrtoint ptr %pdev11.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pdev11.i, align 4
  %dev12.i = getelementptr inbounds %struct.platform_device, ptr %120, i32 0, i32 3
  %add13.i = add i32 %111, 65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.82, i32 noundef %add13.i, i32 noundef %116) #14
  br label %do.end25

if.end15.i:                                       ; preds = %if.end.i
  %input_format.i = getelementptr inbounds %struct.asrc_config, ptr %105, i32 0, i32 6
  %121 = ptrtoint ptr %input_format.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %input_format.i, align 4
  %call.i73 = call i32 @snd_pcm_format_width(i32 noundef %122) #11
  %123 = zext i32 %call.i73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %call.i73, label %do.end20.i [
    i32 8, label %if.end15.i.sw.epilog.i_crit_edge
    i32 16, label %sw.bb16.i
    i32 24, label %sw.bb17.i
  ]

if.end15.i.sw.epilog.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

do.end20.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %pdev21.i = getelementptr inbounds %struct.fsl_asrc, ptr %107, i32 0, i32 2
  %124 = ptrtoint ptr %pdev21.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pdev21.i, align 4
  %dev22.i = getelementptr inbounds %struct.platform_device, ptr %125, i32 0, i32 3
  %add23.i = add i32 %111, 65
  %126 = ptrtoint ptr %input_format.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %input_format.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22.i, ptr noundef nonnull @.str.85, i32 noundef %add23.i, i32 noundef %127) #14
  br label %do.end25

sw.epilog.i:                                      ; preds = %sw.bb17.i, %sw.bb16.i, %if.end15.i.sw.epilog.i_crit_edge
  %input_word_width.0.i = phi i32 [ 0, %sw.bb17.i ], [ 512, %sw.bb16.i ], [ 1024, %if.end15.i.sw.epilog.i_crit_edge ]
  %output_format.i = getelementptr inbounds %struct.asrc_config, ptr %105, i32 0, i32 7
  %128 = ptrtoint ptr %output_format.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %output_format.i, align 4
  %call25.i = call i32 @snd_pcm_format_width(i32 noundef %129) #11
  %130 = zext i32 %call25.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %call25.i, label %do.end31.i [
    i32 16, label %sw.epilog.i.sw.epilog36.i_crit_edge
    i32 24, label %sw.bb27.i
  ]

sw.epilog.i.sw.epilog36.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog36.i

sw.bb27.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog36.i

do.end31.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %pdev32.i = getelementptr inbounds %struct.fsl_asrc, ptr %107, i32 0, i32 2
  %131 = ptrtoint ptr %pdev32.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pdev32.i, align 4
  %dev33.i = getelementptr inbounds %struct.platform_device, ptr %132, i32 0, i32 3
  %add34.i = add i32 %111, 65
  %133 = ptrtoint ptr %output_format.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %output_format.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33.i, ptr noundef nonnull @.str.88, i32 noundef %add34.i, i32 noundef %134) #14
  br label %do.end25

sw.epilog36.i:                                    ; preds = %sw.bb27.i, %sw.epilog.i.sw.epilog36.i_crit_edge
  %output_word_width.0.i = phi i32 [ 0, %sw.bb27.i ], [ 1, %sw.epilog.i.sw.epilog36.i_crit_edge ]
  %input_sample_rate.i = getelementptr inbounds %struct.asrc_config, ptr %105, i32 0, i32 4
  %135 = ptrtoint ptr %input_sample_rate.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %input_sample_rate.i, align 4
  %output_sample_rate.i = getelementptr inbounds %struct.asrc_config, ptr %105, i32 0, i32 5
  %137 = ptrtoint ptr %output_sample_rate.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %output_sample_rate.i, align 4
  %inclk.i74 = getelementptr inbounds %struct.asrc_config, ptr %105, i32 0, i32 8
  %139 = ptrtoint ptr %inclk.i74 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %inclk.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %140)
  %cmp37.i = icmp eq i32 %140, 3
  %141 = load i32, ptr @supported_asrc_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %141)
  %cmp40.i = icmp eq i32 %136, %141
  br i1 %cmp40.i, label %sw.epilog36.i.for.body54.preheader.i_crit_edge, label %for.inc.i75

sw.epilog36.i.for.body54.preheader.i_crit_edge:   ; preds = %sw.epilog36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54.preheader.i

for.inc.i75:                                      ; preds = %sw.epilog36.i
  %142 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %142)
  %cmp40.1.i = icmp eq i32 %136, %142
  br i1 %cmp40.1.i, label %for.inc.i75.for.body54.preheader.i_crit_edge, label %for.inc.1.i

for.inc.i75.for.body54.preheader.i_crit_edge:     ; preds = %for.inc.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54.preheader.i

for.inc.1.i:                                      ; preds = %for.inc.i75
  %143 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %143)
  %cmp40.2.i = icmp eq i32 %136, %143
  br i1 %cmp40.2.i, label %for.inc.1.i.for.body54.preheader.i_crit_edge, label %for.inc.2.i

for.inc.1.i.for.body54.preheader.i_crit_edge:     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54.preheader.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %144 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %144)
  %cmp40.3.i = icmp eq i32 %136, %144
  br i1 %cmp40.3.i, label %for.inc.2.i.for.body54.preheader.i_crit_edge, label %for.inc.3.i

for.inc.2.i.for.body54.preheader.i_crit_edge:     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54.preheader.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %145 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %145)
  %cmp40.4.i = icmp eq i32 %136, %145
  br i1 %cmp40.4.i, label %for.inc.3.i.for.body54.preheader.i_crit_edge, label %for.inc.4.i

for.inc.3.i.for.body54.preheader.i_crit_edge:     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54.preheader.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %146 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %146)
  %cmp40.5.i = icmp eq i32 %136, %146
  br i1 %cmp40.5.i, label %for.inc.4.i.for.body54.preheader.i_crit_edge, label %for.inc.5.i

for.inc.4.i.for.body54.preheader.i_crit_edge:     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54.preheader.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %147 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %147)
  %cmp40.6.i = icmp eq i32 %136, %147
  br i1 %cmp40.6.i, label %for.inc.5.i.for.body54.preheader.i_crit_edge, label %for.inc.6.i

for.inc.5.i.for.body54.preheader.i_crit_edge:     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54.preheader.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %148 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %148)
  %cmp40.7.i = icmp eq i32 %136, %148
  br i1 %cmp40.7.i, label %for.inc.6.i.for.body54.preheader.i_crit_edge, label %for.inc.7.i

for.inc.6.i.for.body54.preheader.i_crit_edge:     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54.preheader.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %149 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %149)
  %cmp40.8.i = icmp eq i32 %136, %149
  br i1 %cmp40.8.i, label %for.inc.7.i.for.body54.preheader.i_crit_edge, label %for.inc.8.i

for.inc.7.i.for.body54.preheader.i_crit_edge:     ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54.preheader.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %150 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %150)
  %cmp40.9.i = icmp eq i32 %136, %150
  br i1 %cmp40.9.i, label %for.inc.8.i.for.body54.preheader.i_crit_edge, label %for.inc.9.i

for.inc.8.i.for.body54.preheader.i_crit_edge:     ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54.preheader.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %151 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %151)
  %cmp40.10.i = icmp eq i32 %136, %151
  br i1 %cmp40.10.i, label %for.inc.9.i.for.body54.preheader.i_crit_edge, label %for.inc.10.i

for.inc.9.i.for.body54.preheader.i_crit_edge:     ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54.preheader.i

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %152 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %152)
  %cmp40.11.i = icmp eq i32 %136, %152
  br i1 %cmp40.11.i, label %for.inc.10.i.for.body54.preheader.i_crit_edge, label %for.inc.11.i

for.inc.10.i.for.body54.preheader.i_crit_edge:    ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54.preheader.i

for.inc.11.i:                                     ; preds = %for.inc.10.i
  %153 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %153)
  %cmp40.12.i = icmp eq i32 %136, %153
  br i1 %cmp40.12.i, label %for.inc.11.i.for.body54.preheader.i_crit_edge, label %for.inc.12.i

for.inc.11.i.for.body54.preheader.i_crit_edge:    ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54.preheader.i

for.inc.12.i:                                     ; preds = %for.inc.11.i
  %154 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %154)
  %cmp40.13.i = icmp eq i32 %136, %154
  br i1 %cmp40.13.i, label %for.inc.12.i.for.body54.preheader.i_crit_edge, label %for.inc.13.i

for.inc.12.i.for.body54.preheader.i_crit_edge:    ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54.preheader.i

for.inc.13.i:                                     ; preds = %for.inc.12.i
  %155 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %155)
  %cmp40.14.i = icmp eq i32 %136, %155
  br i1 %cmp40.14.i, label %for.inc.13.i.for.body54.preheader.i_crit_edge, label %for.inc.14.i

for.inc.13.i.for.body54.preheader.i_crit_edge:    ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54.preheader.i

for.inc.14.i:                                     ; preds = %for.inc.13.i
  %156 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %156)
  %cmp40.15.i = icmp eq i32 %136, %156
  br i1 %cmp40.15.i, label %for.inc.14.i.for.body54.preheader.i_crit_edge, label %do.end47.i

for.inc.14.i.for.body54.preheader.i_crit_edge:    ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body54.preheader.i

for.body54.preheader.i:                           ; preds = %for.inc.14.i.for.body54.preheader.i_crit_edge, %for.inc.13.i.for.body54.preheader.i_crit_edge, %for.inc.12.i.for.body54.preheader.i_crit_edge, %for.inc.11.i.for.body54.preheader.i_crit_edge, %for.inc.10.i.for.body54.preheader.i_crit_edge, %for.inc.9.i.for.body54.preheader.i_crit_edge, %for.inc.8.i.for.body54.preheader.i_crit_edge, %for.inc.7.i.for.body54.preheader.i_crit_edge, %for.inc.6.i.for.body54.preheader.i_crit_edge, %for.inc.5.i.for.body54.preheader.i_crit_edge, %for.inc.4.i.for.body54.preheader.i_crit_edge, %for.inc.3.i.for.body54.preheader.i_crit_edge, %for.inc.2.i.for.body54.preheader.i_crit_edge, %for.inc.1.i.for.body54.preheader.i_crit_edge, %for.inc.i75.for.body54.preheader.i_crit_edge, %sw.epilog36.i.for.body54.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %141)
  %cmp56.i = icmp eq i32 %138, %141
  br i1 %cmp56.i, label %for.body54.preheader.i.if.end70.i_crit_edge, label %for.inc59.i

for.body54.preheader.i.if.end70.i_crit_edge:      ; preds = %for.body54.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

do.end47.i:                                       ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_pc() #13
  %pdev48.i = getelementptr inbounds %struct.fsl_asrc, ptr %107, i32 0, i32 2
  %157 = ptrtoint ptr %pdev48.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pdev48.i, align 4
  %dev49.i = getelementptr inbounds %struct.platform_device, ptr %158, i32 0, i32 3
  %add50.i = add i32 %111, 65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49.i, ptr noundef nonnull @.str.91, i32 noundef %add50.i, i32 noundef %136) #14
  br label %do.end25

for.inc59.i:                                      ; preds = %for.body54.preheader.i
  %159 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %159)
  %cmp56.1.i = icmp eq i32 %138, %159
  br i1 %cmp56.1.i, label %for.inc59.i.if.end70.i_crit_edge, label %for.inc59.1.i

for.inc59.i.if.end70.i_crit_edge:                 ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

for.inc59.1.i:                                    ; preds = %for.inc59.i
  %160 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %160)
  %cmp56.2.i = icmp eq i32 %138, %160
  br i1 %cmp56.2.i, label %for.inc59.1.i.if.end70.i_crit_edge, label %for.inc59.2.i

for.inc59.1.i.if.end70.i_crit_edge:               ; preds = %for.inc59.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

for.inc59.2.i:                                    ; preds = %for.inc59.1.i
  %161 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %161)
  %cmp56.3.i = icmp eq i32 %138, %161
  br i1 %cmp56.3.i, label %for.inc59.2.i.if.end70.i_crit_edge, label %for.inc59.3.i

for.inc59.2.i.if.end70.i_crit_edge:               ; preds = %for.inc59.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

for.inc59.3.i:                                    ; preds = %for.inc59.2.i
  %162 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %162)
  %cmp56.4.i = icmp eq i32 %138, %162
  br i1 %cmp56.4.i, label %for.inc59.3.i.if.end70.i_crit_edge, label %for.inc59.4.i

for.inc59.3.i.if.end70.i_crit_edge:               ; preds = %for.inc59.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

for.inc59.4.i:                                    ; preds = %for.inc59.3.i
  %163 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %163)
  %cmp56.5.i = icmp eq i32 %138, %163
  br i1 %cmp56.5.i, label %for.inc59.4.i.if.end70.i_crit_edge, label %for.inc59.5.i

for.inc59.4.i.if.end70.i_crit_edge:               ; preds = %for.inc59.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

for.inc59.5.i:                                    ; preds = %for.inc59.4.i
  %164 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %164)
  %cmp56.6.i = icmp eq i32 %138, %164
  br i1 %cmp56.6.i, label %for.inc59.5.i.if.end70.i_crit_edge, label %for.inc59.6.i

for.inc59.5.i.if.end70.i_crit_edge:               ; preds = %for.inc59.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

for.inc59.6.i:                                    ; preds = %for.inc59.5.i
  %165 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %165)
  %cmp56.7.i = icmp eq i32 %138, %165
  br i1 %cmp56.7.i, label %for.inc59.6.i.if.end70.i_crit_edge, label %for.inc59.7.i

for.inc59.6.i.if.end70.i_crit_edge:               ; preds = %for.inc59.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

for.inc59.7.i:                                    ; preds = %for.inc59.6.i
  %166 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %166)
  %cmp56.8.i = icmp eq i32 %138, %166
  br i1 %cmp56.8.i, label %for.inc59.7.i.if.end70.i_crit_edge, label %for.inc59.8.i

for.inc59.7.i.if.end70.i_crit_edge:               ; preds = %for.inc59.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

for.inc59.8.i:                                    ; preds = %for.inc59.7.i
  %167 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %167)
  %cmp56.9.i = icmp eq i32 %138, %167
  br i1 %cmp56.9.i, label %for.inc59.8.i.if.end70.i_crit_edge, label %for.inc59.9.i

for.inc59.8.i.if.end70.i_crit_edge:               ; preds = %for.inc59.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

for.inc59.9.i:                                    ; preds = %for.inc59.8.i
  %168 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %168)
  %cmp56.10.i = icmp eq i32 %138, %168
  br i1 %cmp56.10.i, label %for.inc59.9.i.if.end70.i_crit_edge, label %for.inc59.10.i

for.inc59.9.i.if.end70.i_crit_edge:               ; preds = %for.inc59.9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

for.inc59.10.i:                                   ; preds = %for.inc59.9.i
  %169 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %169)
  %cmp56.11.i = icmp eq i32 %138, %169
  br i1 %cmp56.11.i, label %for.inc59.10.i.if.end70.i_crit_edge, label %for.inc59.11.i

for.inc59.10.i.if.end70.i_crit_edge:              ; preds = %for.inc59.10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

for.inc59.11.i:                                   ; preds = %for.inc59.10.i
  %170 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %170)
  %cmp56.12.i = icmp eq i32 %138, %170
  br i1 %cmp56.12.i, label %for.inc59.11.i.if.end70.i_crit_edge, label %for.inc59.12.i

for.inc59.11.i.if.end70.i_crit_edge:              ; preds = %for.inc59.11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

for.inc59.12.i:                                   ; preds = %for.inc59.11.i
  %171 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %171)
  %cmp56.13.i = icmp eq i32 %138, %171
  br i1 %cmp56.13.i, label %for.inc59.12.i.if.end70.i_crit_edge, label %for.inc59.13.i

for.inc59.12.i.if.end70.i_crit_edge:              ; preds = %for.inc59.12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

for.inc59.13.i:                                   ; preds = %for.inc59.12.i
  %172 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %172)
  %cmp56.14.i = icmp eq i32 %138, %172
  br i1 %cmp56.14.i, label %for.inc59.13.i.if.end70.i_crit_edge, label %for.inc59.14.i

for.inc59.13.i.if.end70.i_crit_edge:              ; preds = %for.inc59.13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

for.inc59.14.i:                                   ; preds = %for.inc59.13.i
  %173 = load i32, ptr getelementptr inbounds ([16 x i32], ptr @supported_asrc_rate, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %173)
  %cmp56.15.i = icmp eq i32 %138, %173
  br i1 %cmp56.15.i, label %for.inc59.14.i.if.end70.i_crit_edge, label %do.end66.i

for.inc59.14.i.if.end70.i_crit_edge:              ; preds = %for.inc59.14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

do.end66.i:                                       ; preds = %for.inc59.14.i
  call void @__sanitizer_cov_trace_pc() #13
  %pdev67.i = getelementptr inbounds %struct.fsl_asrc, ptr %107, i32 0, i32 2
  %174 = ptrtoint ptr %pdev67.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pdev67.i, align 4
  %dev68.i = getelementptr inbounds %struct.platform_device, ptr %175, i32 0, i32 3
  %add69.i = add i32 %111, 65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68.i, ptr noundef nonnull @.str.94, i32 noundef %add69.i, i32 noundef %138) #14
  br label %do.end25

if.end70.i:                                       ; preds = %for.inc59.14.i.if.end70.i_crit_edge, %for.inc59.13.i.if.end70.i_crit_edge, %for.inc59.12.i.if.end70.i_crit_edge, %for.inc59.11.i.if.end70.i_crit_edge, %for.inc59.10.i.if.end70.i_crit_edge, %for.inc59.9.i.if.end70.i_crit_edge, %for.inc59.8.i.if.end70.i_crit_edge, %for.inc59.7.i.if.end70.i_crit_edge, %for.inc59.6.i.if.end70.i_crit_edge, %for.inc59.5.i.if.end70.i_crit_edge, %for.inc59.4.i.if.end70.i_crit_edge, %for.inc59.3.i.if.end70.i_crit_edge, %for.inc59.2.i.if.end70.i_crit_edge, %for.inc59.1.i.if.end70.i_crit_edge, %for.inc59.i.if.end70.i_crit_edge, %for.body54.preheader.i.if.end70.i_crit_edge
  %176 = add i32 %138, -5512
  call void @__sanitizer_cov_trace_const_cmp4(i32 24489, i32 %176)
  %177 = icmp ult i32 %176, 24489
  br i1 %177, label %land.lhs.true73.i, label %if.end70.i.if.end85.i_crit_edge

if.end70.i.if.end85.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85.i

land.lhs.true73.i:                                ; preds = %if.end70.i
  %mul.i = mul i32 %136, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %mul.i)
  %cmp74.i = icmp ugt i32 %138, %mul.i
  %mul76.i = shl nuw nsw i32 %138, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %mul76.i)
  %cmp77.i = icmp ugt i32 %136, %mul76.i
  %or.cond2.i = or i1 %cmp74.i, %cmp77.i
  br i1 %or.cond2.i, label %do.end81.i, label %land.lhs.true73.i.if.end85.i_crit_edge

land.lhs.true73.i.if.end85.i_crit_edge:           ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85.i

do.end81.i:                                       ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #13
  %pdev82.i = getelementptr inbounds %struct.fsl_asrc, ptr %107, i32 0, i32 2
  %178 = ptrtoint ptr %pdev82.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pdev82.i, align 4
  %dev83.i = getelementptr inbounds %struct.platform_device, ptr %179, i32 0, i32 3
  %add84.i = add i32 %111, 65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev83.i, ptr noundef nonnull @.str.97, i32 noundef %add84.i, i32 noundef %136, i32 noundef %138) #14
  br label %do.end25

if.end85.i:                                       ; preds = %land.lhs.true73.i.if.end85.i_crit_edge, %if.end70.i.if.end85.i_crit_edge
  %clk_map.i = getelementptr inbounds %struct.fsl_asrc_priv, ptr %109, i32 0, i32 2
  %180 = ptrtoint ptr %clk_map.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %clk_map.i, align 4
  %arrayidx88.i = getelementptr i8, ptr %181, i32 %140
  %182 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx88.i, align 1
  %conv.i76 = zext i8 %183 to i32
  %184 = ptrtoint ptr %clk_index.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %conv.i76, ptr %clk_index.i, align 4
  %arrayidx91.i = getelementptr %struct.fsl_asrc_priv, ptr %109, i32 0, i32 2, i32 1
  %185 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx91.i, align 4
  %outclk.i77 = getelementptr inbounds %struct.asrc_config, ptr %105, i32 0, i32 9
  %187 = ptrtoint ptr %outclk.i77 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %outclk.i77, align 4
  %arrayidx92.i = getelementptr i8, ptr %186, i32 %188
  %189 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx92.i, align 1
  %conv93.i = zext i8 %190 to i32
  %191 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %conv93.i, ptr %112, align 4
  %cond.i = zext i1 %cmp37.i to i32
  %arrayidx97.i = getelementptr [2 x i32], ptr %clk_index.i, i32 0, i32 %cond.i
  %192 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx97.i, align 4
  %arrayidx98.i = getelementptr [16 x ptr], ptr %109, i32 0, i32 %193
  %194 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx98.i, align 4
  %call99.i = call i32 @clk_get_rate(ptr noundef %195) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i)
  %cmp.i.i78 = icmp eq i32 %call99.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp1.i.i79 = icmp eq i32 %136, 0
  %or.cond.i.i80 = or i1 %cmp1.i.i79, %cmp.i.i78
  br i1 %or.cond.i.i80, label %if.end85.i.do.end115.i_crit_edge, label %if.end3.i.i82

if.end85.i.do.end115.i_crit_edge:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end115.i

if.end3.i.i82:                                    ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call99.i)
  %cmp175.i.i194 = icmp sgt i32 %call99.i, -1
  br i1 %cmp175.i.i194, label %if.then179.i.i199, label %if.else185.i.i204, !prof !243

if.then179.i.i199:                                ; preds = %if.end3.i.i82
  call void @__sanitizer_cov_trace_pc() #13
  %call99.i.frozen = freeze i32 %call99.i
  %.frozen230 = freeze i32 %136
  %div183.i.i197 = udiv i32 %call99.i.frozen, %.frozen230
  %196 = mul i32 %div183.i.i197, %.frozen230
  %rem181.i.i196.decomposed = sub i32 %call99.i.frozen, %196
  %conv184.i.i198 = zext i32 %div183.i.i197 to i64
  br label %if.end189.i.i208

if.else185.i.i204:                                ; preds = %if.end3.i.i82
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i81 = sext i32 %call99.i to i64
  %197 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %136, i64 %conv.i.i81) #15, !srcloc !244
  %asmresult.i301.i.i200 = extractvalue { i64, i64 } %197, 0
  %asmresult1.i.i.i201 = extractvalue { i64, i64 } %197, 1
  %shr.i.i.i202 = lshr i64 %asmresult.i301.i.i200, 32
  %conv.i.i.i203 = trunc i64 %shr.i.i.i202 to i32
  br label %if.end189.i.i208

if.end189.i.i208:                                 ; preds = %if.else185.i.i204, %if.then179.i.i199
  %n.0.i.i205 = phi i64 [ %conv184.i.i198, %if.then179.i.i199 ], [ %asmresult1.i.i.i201, %if.else185.i.i204 ]
  %__rem.0.i.i206 = phi i32 [ %rem181.i.i196.decomposed, %if.then179.i.i199 ], [ %conv.i.i.i203, %if.else185.i.i204 ]
  %conv193.i.i = trunc i64 %n.0.i.i205 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i.i206)
  %cmp195.not.i.i207 = icmp eq i32 %__rem.0.i.i206, 0
  br i1 %cmp195.not.i.i207, label %if.end189.i.i208.for.body.i.i213_crit_edge, label %if.end189.i.i208.fsl_asrc_divider_avail.exit.i218_crit_edge

if.end189.i.i208.fsl_asrc_divider_avail.exit.i218_crit_edge: ; preds = %if.end189.i.i208
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsl_asrc_divider_avail.exit.i218

if.end189.i.i208.for.body.i.i213_crit_edge:       ; preds = %if.end189.i.i208
  br label %for.body.i.i213

for.body.i.i213:                                  ; preds = %for.inc.i.i216.for.body.i.i213_crit_edge, %if.end189.i.i208.for.body.i.i213_crit_edge
  %i.0325.i.i209 = phi i32 [ %inc.i.i214, %for.inc.i.i216.for.body.i.i213_crit_edge ], [ 0, %if.end189.i.i208.for.body.i.i213_crit_edge ]
  %arrayidx.i.i210 = getelementptr [64 x i32], ptr @asrc_clk_divider, i32 0, i32 %i.0325.i.i209
  %198 = ptrtoint ptr %arrayidx.i.i210 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx.i.i210, align 4
  %conv201.i.i211 = sext i32 %199 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %n.0.i.i205, i64 %conv201.i.i211)
  %cmp202.i.i212 = icmp eq i64 %n.0.i.i205, %conv201.i.i211
  br i1 %cmp202.i.i212, label %for.body.i.i213.for.end.i.i_crit_edge, label %for.inc.i.i216

for.body.i.i213.for.end.i.i_crit_edge:            ; preds = %for.body.i.i213
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.inc.i.i216:                                   ; preds = %for.body.i.i213
  %inc.i.i214 = add nuw nsw i32 %i.0325.i.i209, 1
  %exitcond.not.i.i215 = icmp eq i32 %inc.i.i214, 64
  br i1 %exitcond.not.i.i215, label %for.inc.i.i216.for.end.i.i_crit_edge, label %for.inc.i.i216.for.body.i.i213_crit_edge

for.inc.i.i216.for.body.i.i213_crit_edge:         ; preds = %for.inc.i.i216
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i213

for.inc.i.i216.for.end.i.i_crit_edge:             ; preds = %for.inc.i.i216
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i216.for.end.i.i_crit_edge, %for.body.i.i213.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ %i.0325.i.i209, %for.body.i.i213.for.end.i.i_crit_edge ], [ 64, %for.inc.i.i216.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.0.lcssa.i.i)
  %cmp206.i.i = icmp ne i32 %i.0.lcssa.i.i, 64
  br label %fsl_asrc_divider_avail.exit.i218

fsl_asrc_divider_avail.exit.i218:                 ; preds = %for.end.i.i, %if.end189.i.i208.fsl_asrc_divider_avail.exit.i218_crit_edge
  %retval.0.i.i217 = phi i1 [ %cmp206.i.i, %for.end.i.i ], [ false, %if.end189.i.i208.fsl_asrc_divider_avail.exit.i218_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv193.i.i)
  %cmp106.i = icmp ne i32 %conv193.i.i, 0
  %brmerge.i = select i1 %cmp37.i, i1 true, i1 %retval.0.i.i217
  %or.cond5.i = select i1 %cmp106.i, i1 %brmerge.i, i1 false
  br i1 %or.cond5.i, label %if.end123.i, label %fsl_asrc_divider_avail.exit.i218.do.end115.i_crit_edge

fsl_asrc_divider_avail.exit.i218.do.end115.i_crit_edge: ; preds = %fsl_asrc_divider_avail.exit.i218
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end115.i

do.end115.i:                                      ; preds = %fsl_asrc_divider_avail.exit.i218.do.end115.i_crit_edge, %if.end85.i.do.end115.i_crit_edge
  %pdev116.i = getelementptr inbounds %struct.fsl_asrc, ptr %107, i32 0, i32 2
  %200 = ptrtoint ptr %pdev116.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %pdev116.i, align 4
  %dev117.i = getelementptr inbounds %struct.platform_device, ptr %201, i32 0, i32 3
  %add118.i = add i32 %111, 65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev117.i, ptr noundef nonnull @.str.100, i32 noundef %add118.i, i32 noundef %136, i32 noundef %193) #14
  br label %do.end25

if.end123.i:                                      ; preds = %fsl_asrc_divider_avail.exit.i218
  %202 = call i32 @llvm.umin.i32(i32 %conv193.i.i, i32 1024) #11
  %arrayidx131.i = getelementptr [16 x ptr], ptr %109, i32 0, i32 %conv93.i
  %203 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %arrayidx131.i, align 4
  %call132.i = call i32 @clk_get_rate(ptr noundef %204) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132.i)
  %cmp.i7.i = icmp eq i32 %call132.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp1.i8.i = icmp eq i32 %138, 0
  %or.cond.i9.i = or i1 %cmp1.i8.i, %cmp.i7.i
  br i1 %or.cond.i9.i, label %if.end123.i.do.end159.i_crit_edge, label %if.end3.i11.i

if.end123.i.do.end159.i_crit_edge:                ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end159.i

if.end3.i11.i:                                    ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call132.i)
  %cmp175.i123.i = icmp sgt i32 %call132.i, -1
  br i1 %cmp175.i123.i, label %if.then179.i128.i, label %if.else185.i133.i, !prof !243

if.then179.i128.i:                                ; preds = %if.end3.i11.i
  call void @__sanitizer_cov_trace_pc() #13
  %call132.i.frozen = freeze i32 %call132.i
  %.frozen231 = freeze i32 %138
  %div183.i126.i = udiv i32 %call132.i.frozen, %.frozen231
  %205 = mul i32 %div183.i126.i, %.frozen231
  %rem181.i125.i.decomposed = sub i32 %call132.i.frozen, %205
  %conv184.i127.i = zext i32 %div183.i126.i to i64
  br label %if.then192.i.i

if.else185.i133.i:                                ; preds = %if.end3.i11.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i10.i = sext i32 %call132.i to i64
  %206 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %138, i64 %conv.i10.i) #15, !srcloc !244
  %asmresult.i301.i129.i = extractvalue { i64, i64 } %206, 0
  %asmresult1.i.i130.i = extractvalue { i64, i64 } %206, 1
  %shr.i.i131.i = lshr i64 %asmresult.i301.i129.i, 32
  %conv.i.i132.i = trunc i64 %shr.i.i131.i to i32
  br label %if.then192.i.i

if.then192.i.i:                                   ; preds = %if.else185.i133.i, %if.then179.i128.i
  %n.0.i134.i = phi i64 [ %conv184.i127.i, %if.then179.i128.i ], [ %asmresult1.i.i130.i, %if.else185.i133.i ]
  %__rem.0.i135.i = phi i32 [ %rem181.i125.i.decomposed, %if.then179.i128.i ], [ %conv.i.i132.i, %if.else185.i133.i ]
  %conv193.i137.i = trunc i64 %n.0.i134.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i135.i)
  %cmp195.not.i138.i = icmp eq i32 %__rem.0.i135.i, 0
  br i1 %cmp195.not.i138.i, label %if.then192.i.i.for.body.i143.i_crit_edge, label %if.then192.i.i.fsl_asrc_divider_avail.exit151.i_crit_edge

if.then192.i.i.fsl_asrc_divider_avail.exit151.i_crit_edge: ; preds = %if.then192.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsl_asrc_divider_avail.exit151.i

if.then192.i.i.for.body.i143.i_crit_edge:         ; preds = %if.then192.i.i
  br label %for.body.i143.i

for.body.i143.i:                                  ; preds = %for.inc.i146.i.for.body.i143.i_crit_edge, %if.then192.i.i.for.body.i143.i_crit_edge
  %i.0325.i139.i = phi i32 [ %inc.i144.i, %for.inc.i146.i.for.body.i143.i_crit_edge ], [ 0, %if.then192.i.i.for.body.i143.i_crit_edge ]
  %arrayidx.i140.i = getelementptr [64 x i32], ptr @asrc_clk_divider, i32 0, i32 %i.0325.i139.i
  %207 = ptrtoint ptr %arrayidx.i140.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx.i140.i, align 4
  %conv201.i141.i = sext i32 %208 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %n.0.i134.i, i64 %conv201.i141.i)
  %cmp202.i142.i = icmp eq i64 %n.0.i134.i, %conv201.i141.i
  br i1 %cmp202.i142.i, label %for.body.i143.i.for.end.i149.i_crit_edge, label %for.inc.i146.i

for.body.i143.i.for.end.i149.i_crit_edge:         ; preds = %for.body.i143.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i149.i

for.inc.i146.i:                                   ; preds = %for.body.i143.i
  %inc.i144.i = add nuw nsw i32 %i.0325.i139.i, 1
  %exitcond.not.i145.i = icmp eq i32 %inc.i144.i, 64
  br i1 %exitcond.not.i145.i, label %for.inc.i146.i.for.end.i149.i_crit_edge, label %for.inc.i146.i.for.body.i143.i_crit_edge

for.inc.i146.i.for.body.i143.i_crit_edge:         ; preds = %for.inc.i146.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i143.i

for.inc.i146.i.for.end.i149.i_crit_edge:          ; preds = %for.inc.i146.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i149.i

for.end.i149.i:                                   ; preds = %for.inc.i146.i.for.end.i149.i_crit_edge, %for.body.i143.i.for.end.i149.i_crit_edge
  %i.0.lcssa.i147.i = phi i32 [ %i.0325.i139.i, %for.body.i143.i.for.end.i149.i_crit_edge ], [ 64, %for.inc.i146.i.for.end.i149.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.0.lcssa.i147.i)
  %cmp206.i148.i = icmp ne i32 %i.0.lcssa.i147.i, 64
  br label %fsl_asrc_divider_avail.exit151.i

fsl_asrc_divider_avail.exit151.i:                 ; preds = %for.end.i149.i, %if.then192.i.i.fsl_asrc_divider_avail.exit151.i_crit_edge
  %retval.0.i150.i = phi i1 [ %cmp206.i148.i, %for.end.i149.i ], [ false, %if.then192.i.i.fsl_asrc_divider_avail.exit151.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv193.i137.i)
  %cmp150.i = icmp ne i32 %conv193.i137.i, 0
  %brmerge3.i = select i1 %cmp37.i, i1 true, i1 %retval.0.i150.i
  %or.cond6.i = select i1 %cmp150.i, i1 %brmerge3.i, i1 false
  br i1 %or.cond6.i, label %if.end164.i, label %fsl_asrc_divider_avail.exit151.i.do.end159.i_crit_edge

fsl_asrc_divider_avail.exit151.i.do.end159.i_crit_edge: ; preds = %fsl_asrc_divider_avail.exit151.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end159.i

do.end159.i:                                      ; preds = %fsl_asrc_divider_avail.exit151.i.do.end159.i_crit_edge, %if.end123.i.do.end159.i_crit_edge
  %pdev160.i = getelementptr inbounds %struct.fsl_asrc, ptr %107, i32 0, i32 2
  %209 = ptrtoint ptr %pdev160.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %pdev160.i, align 4
  %dev161.i = getelementptr inbounds %struct.platform_device, ptr %210, i32 0, i32 3
  %add162.i = add i32 %111, 65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev161.i, ptr noundef nonnull @.str.103, i32 noundef %add162.i, i32 noundef %138, i32 noundef %conv93.i) #14
  br label %do.end25

if.end164.i:                                      ; preds = %fsl_asrc_divider_avail.exit151.i
  %211 = call i32 @llvm.umin.i32(i32 %conv193.i137.i, i32 1024) #11
  %212 = ptrtoint ptr %channel_num.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %channel_num.i, align 4
  %soc.i = getelementptr inbounds %struct.fsl_asrc_priv, ptr %109, i32 0, i32 1
  %214 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %soc.i, align 4
  %channel_bits.i = getelementptr inbounds %struct.fsl_asrc_soc_data, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %channel_bits.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %channel_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %217)
  %cmp175.i = icmp ult i32 %217, 4
  %div178.i = sdiv i32 %213, 2
  %channels.0.i = select i1 %cmp175.i, i32 %div178.i, i32 %213
  %regmap.i = getelementptr inbounds %struct.fsl_asrc, ptr %107, i32 0, i32 3
  %218 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %regmap.i, align 4
  %notmask.i = shl nsw i32 -1, %217
  %sub.i = xor i32 %notmask.i, -1
  %mul184.i = mul i32 %217, %111
  %shl185.i = shl i32 %sub.i, %mul184.i
  %shl189.i = shl i32 %channels.0.i, %mul184.i
  %and.i = and i32 %shl189.i, %shl185.i
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %219, i32 noundef 12, i32 noundef %shl185.i, i32 noundef %and.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %220 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %regmap.i, align 4
  %add200.i = add i32 %111, 20
  %shl201.i = shl nuw i32 1, %add200.i
  %call.i152.i = call i32 @regmap_update_bits_base(ptr noundef %221, i32 noundef 0, i32 noundef %shl201.i, i32 noundef %shl201.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %222 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %regmap.i, align 4
  %shl206.i = shl i32 %111, 1
  %add207.i = add i32 %shl206.i, 14
  %shl208.i = shl nuw i32 1, %add207.i
  %call.i153.i = call i32 @regmap_update_bits_base(ptr noundef %223, i32 noundef 0, i32 noundef %shl208.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %224 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regmap.i, align 4
  %shl211.i = shl i32 %111, 2
  %shl212.i = shl i32 15, %shl211.i
  %add214.i = add i32 %shl211.i, 12
  %shl215.i = shl i32 15, %add214.i
  %or.i = or i32 %shl215.i, %shl212.i
  %shl218.i = shl i32 %conv.i76, %shl211.i
  %shl222.i = shl i32 %conv93.i, %add214.i
  %or223.i = or i32 %shl222.i, %shl218.i
  %call.i154.i = call i32 @regmap_update_bits_base(ptr noundef %225, i32 noundef 20, i32 noundef %or.i, i32 noundef %or223.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %202)
  %cmp1.i155.i = icmp ugt i32 %202, 8
  br i1 %cmp1.i155.i, label %if.end164.i.for.body.i159.i_crit_edge, label %if.end164.i.fsl_asrc_cal_asrck_divisor.exit.i_crit_edge

if.end164.i.fsl_asrc_cal_asrck_divisor.exit.i_crit_edge: ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsl_asrc_cal_asrck_divisor.exit.i

if.end164.i.for.body.i159.i_crit_edge:            ; preds = %if.end164.i
  br label %for.body.i159.i

for.body.i159.i:                                  ; preds = %for.body.i159.i.for.body.i159.i_crit_edge, %if.end164.i.for.body.i159.i_crit_edge
  %ps.03.i.i = phi i32 [ %inc.i157.i, %for.body.i159.i.for.body.i159.i_crit_edge ], [ 0, %if.end164.i.for.body.i159.i_crit_edge ]
  %div.addr.02.i.i = phi i32 [ %shr.i156.i, %for.body.i159.i.for.body.i159.i_crit_edge ], [ %202, %if.end164.i.for.body.i159.i_crit_edge ]
  %shr.i156.i = lshr i32 %div.addr.02.i.i, 1
  %inc.i157.i = add nuw nsw i32 %ps.03.i.i, 1
  %cmp.i158.i = icmp ugt i32 %div.addr.02.i.i, 17
  br i1 %cmp.i158.i, label %for.body.i159.i.for.body.i159.i_crit_edge, label %for.body.i159.i.fsl_asrc_cal_asrck_divisor.exit.i_crit_edge

for.body.i159.i.fsl_asrc_cal_asrck_divisor.exit.i_crit_edge: ; preds = %for.body.i159.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsl_asrc_cal_asrck_divisor.exit.i

for.body.i159.i.for.body.i159.i_crit_edge:        ; preds = %for.body.i159.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i159.i

fsl_asrc_cal_asrck_divisor.exit.i:                ; preds = %for.body.i159.i.fsl_asrc_cal_asrck_divisor.exit.i_crit_edge, %if.end164.i.fsl_asrc_cal_asrck_divisor.exit.i_crit_edge
  %div.addr.0.lcssa.i.i = phi i32 [ %202, %if.end164.i.fsl_asrc_cal_asrck_divisor.exit.i_crit_edge ], [ %shr.i156.i, %for.body.i159.i.fsl_asrc_cal_asrck_divisor.exit.i_crit_edge ]
  %ps.0.lcssa.i.i = phi i32 [ 0, %if.end164.i.fsl_asrc_cal_asrck_divisor.exit.i_crit_edge ], [ %inc.i157.i, %for.body.i159.i.fsl_asrc_cal_asrck_divisor.exit.i_crit_edge ]
  %sub.i160.i = shl nuw nsw i32 %div.addr.0.lcssa.i.i, 3
  %shl.i161.i = add nsw i32 %sub.i160.i, -8
  %or.i.i = or i32 %shl.i161.i, %ps.0.lcssa.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %211)
  %cmp1.i163.i = icmp ugt i32 %211, 8
  br i1 %cmp1.i163.i, label %fsl_asrc_cal_asrck_divisor.exit.i.for.body.i169.i_crit_edge, label %fsl_asrc_cal_asrck_divisor.exit.i.fsl_asrc_cal_asrck_divisor.exit176.i_crit_edge

fsl_asrc_cal_asrck_divisor.exit.i.fsl_asrc_cal_asrck_divisor.exit176.i_crit_edge: ; preds = %fsl_asrc_cal_asrck_divisor.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsl_asrc_cal_asrck_divisor.exit176.i

fsl_asrc_cal_asrck_divisor.exit.i.for.body.i169.i_crit_edge: ; preds = %fsl_asrc_cal_asrck_divisor.exit.i
  br label %for.body.i169.i

for.body.i169.i:                                  ; preds = %for.body.i169.i.for.body.i169.i_crit_edge, %fsl_asrc_cal_asrck_divisor.exit.i.for.body.i169.i_crit_edge
  %ps.03.i164.i = phi i32 [ %inc.i167.i, %for.body.i169.i.for.body.i169.i_crit_edge ], [ 0, %fsl_asrc_cal_asrck_divisor.exit.i.for.body.i169.i_crit_edge ]
  %div.addr.02.i165.i = phi i32 [ %shr.i166.i, %for.body.i169.i.for.body.i169.i_crit_edge ], [ %211, %fsl_asrc_cal_asrck_divisor.exit.i.for.body.i169.i_crit_edge ]
  %shr.i166.i = lshr i32 %div.addr.02.i165.i, 1
  %inc.i167.i = add nuw nsw i32 %ps.03.i164.i, 1
  %cmp.i168.i = icmp ugt i32 %div.addr.02.i165.i, 17
  br i1 %cmp.i168.i, label %for.body.i169.i.for.body.i169.i_crit_edge, label %for.body.i169.i.fsl_asrc_cal_asrck_divisor.exit176.i_crit_edge

for.body.i169.i.fsl_asrc_cal_asrck_divisor.exit176.i_crit_edge: ; preds = %for.body.i169.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsl_asrc_cal_asrck_divisor.exit176.i

for.body.i169.i.for.body.i169.i_crit_edge:        ; preds = %for.body.i169.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i169.i

fsl_asrc_cal_asrck_divisor.exit176.i:             ; preds = %for.body.i169.i.fsl_asrc_cal_asrck_divisor.exit176.i_crit_edge, %fsl_asrc_cal_asrck_divisor.exit.i.fsl_asrc_cal_asrck_divisor.exit176.i_crit_edge
  %div.addr.0.lcssa.i170.i = phi i32 [ %211, %fsl_asrc_cal_asrck_divisor.exit.i.fsl_asrc_cal_asrck_divisor.exit176.i_crit_edge ], [ %shr.i166.i, %for.body.i169.i.fsl_asrc_cal_asrck_divisor.exit176.i_crit_edge ]
  %ps.0.lcssa.i171.i = phi i32 [ 0, %fsl_asrc_cal_asrck_divisor.exit.i.fsl_asrc_cal_asrck_divisor.exit176.i_crit_edge ], [ %inc.i167.i, %for.body.i169.i.fsl_asrc_cal_asrck_divisor.exit176.i_crit_edge ]
  %sub.i172.i = shl nuw nsw i32 %div.addr.0.lcssa.i170.i, 3
  %shl.i173.i = add nsw i32 %sub.i172.i, -8
  %or.i174.i = or i32 %shl.i173.i, %ps.0.lcssa.i171.i
  %226 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %regmap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %111)
  %cmp230.i = icmp slt i32 %111, 2
  %cond232.i = select i1 %cmp230.i, i32 24, i32 28
  %mul236.i = mul i32 %111, 6
  %add237.i = add i32 %mul236.i, 12
  %cond240.i = select i1 %cmp230.i, i32 %add237.i, i32 6
  %shl241.i = shl i32 7, %cond240.i
  %rem.i = srem i32 %111, 2
  %mul242.i = mul nsw i32 %rem.i, 6
  %shl244.i = shl nuw nsw i32 7, %mul242.i
  %or245.i = or i32 %shl241.i, %shl244.i
  %add250.i = add i32 %mul236.i, 15
  %add250.op.i = shl i32 7, %add250.i
  %shl254.i = select i1 %cmp230.i, i32 %add250.op.i, i32 3584
  %or255.i = or i32 %or245.i, %shl254.i
  %add258.i = add nsw i32 %mul242.i, 3
  %shl259.i = shl nuw nsw i32 7, %add258.i
  %or260.i = or i32 %or255.i, %shl259.i
  %shl269.i = shl i32 %or.i174.i, %cond240.i
  %shl273.i = shl i32 %or.i.i, %mul242.i
  %or274.i = or i32 %shl269.i, %shl273.i
  %call.i177.i = call i32 @regmap_update_bits_base(ptr noundef %227, i32 noundef %cond232.i, i32 noundef %or260.i, i32 noundef %or274.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %228 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %regmap.i, align 4
  %add278.i = add i32 %shl211.i, 192
  %or281.i = or i32 %output_word_width.0.i, %input_word_width.0.i
  %call.i178.i = call i32 @regmap_update_bits_base(ptr noundef %229, i32 noundef %add278.i, i32 noundef 3585, i32 noundef %or281.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %230 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %regmap.i, align 4
  %shl284.i = shl i32 %111, 3
  %add285.i = add i32 %shl284.i, 160
  %call.i179.i = call i32 @regmap_update_bits_base(ptr noundef %231, i32 noundef %add285.i, i32 noundef 2097152, i32 noundef 2097152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %232 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %9, align 4
  %234 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %index, align 4
  %regmap.i.i = getelementptr inbounds %struct.fsl_asrc, ptr %233, i32 0, i32 3
  %236 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %regmap.i.i, align 4
  %shl.i180.i = shl i32 %235, 3
  %add.i181.i = add i32 %shl.i180.i, 160
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %237, i32 noundef %add.i181.i, i32 noundef 4452415, i32 noundef 4325408, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br i1 %cmp37.i, label %if.end289.i, label %fsl_asrc_cal_asrck_divisor.exit176.i.fsl_asrc_config_pair.exit_crit_edge

fsl_asrc_cal_asrck_divisor.exit176.i.fsl_asrc_config_pair.exit_crit_edge: ; preds = %fsl_asrc_cal_asrck_divisor.exit176.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsl_asrc_config_pair.exit

if.end289.i:                                      ; preds = %fsl_asrc_cal_asrck_divisor.exit176.i
  %238 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %regmap.i, align 4
  %call.i182.i = call i32 @regmap_update_bits_base(ptr noundef %239, i32 noundef 0, i32 noundef %shl201.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %240 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %regmap.i, align 4
  %add296.i = add i32 %shl206.i, 13
  %shl297.i = shl nuw i32 1, %add296.i
  %or301.i = or i32 %shl297.i, %shl208.i
  %call.i183.i = call i32 @regmap_update_bits_base(ptr noundef %241, i32 noundef 0, i32 noundef %or301.i, i32 noundef %or301.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %mul.i184.i = shl i32 %136, 3
  %mul1.i.i = mul i32 %138, 33
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i184.i, i32 %mul1.i.i)
  %cmp.i185.i = icmp sgt i32 %mul.i184.i, %mul1.i.i
  br i1 %cmp.i185.i, label %if.end289.i.if.end.i193.i_crit_edge, label %if.else.i.i

if.end289.i.if.end.i193.i_crit_edge:              ; preds = %if.end289.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i193.i

if.else.i.i:                                      ; preds = %if.end289.i
  %mul3.i.i = mul i32 %138, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i184.i, i32 %mul3.i.i)
  %cmp4.i.i = icmp sgt i32 %mul.i184.i, %mul3.i.i
  br i1 %cmp4.i.i, label %if.then5.i186.i, label %if.else9.i.i

if.then5.i186.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 152000, i32 %136)
  %cmp6.i.i = icmp sgt i32 %136, 152000
  %..i.i = select i1 %cmp6.i.i, i32 2, i32 1
  br label %if.end.i193.i

if.else9.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 76000, i32 %136)
  %cmp10.i.i = icmp slt i32 %136, 76000
  br i1 %cmp10.i.i, label %if.else9.i.i.if.end.i193.i_crit_edge, label %if.else12.i.i

if.else9.i.i.if.end.i193.i_crit_edge:             ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i193.i

if.else12.i.i:                                    ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 152000, i32 %136)
  %cmp13.i.i = icmp ugt i32 %136, 152000
  %.59.i.i = select i1 %cmp13.i.i, i32 2, i32 1
  br label %if.end.i193.i

if.end.i193.i:                                    ; preds = %if.else12.i.i, %if.else9.i.i.if.end.i193.i_crit_edge, %if.then5.i186.i, %if.end289.i.if.end.i193.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %if.end289.i.if.end.i193.i_crit_edge ], [ %..i.i, %if.then5.i186.i ], [ 0, %if.else9.i.i.if.end.i193.i_crit_edge ], [ %.59.i.i, %if.else12.i.i ]
  %mul20.i.i = mul i32 %136, 15
  %mul21.i.i = shl i32 %138, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul20.i.i, i32 %mul21.i.i)
  %cmp22.i.i = icmp sgt i32 %mul20.i.i, %mul21.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 56000, i32 %138)
  %cmp23.i187.i = icmp slt i32 %138, 56000
  call void @__sanitizer_cov_trace_const_cmp4(i32 56000, i32 %136)
  %cmp24.i.i = icmp sgt i32 %136, 56000
  %or.cond57.i.i = or i1 %cmp24.i.i, %cmp22.i.i
  %or.cond56.i.i = and i1 %cmp23.i187.i, %or.cond57.i.i
  %mul26.i.i = mul i32 %136, 23
  %mul27.i.i = shl i32 %138, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul26.i.i, i32 %mul27.i.i)
  %cmp28.i.i = icmp sge i32 %mul26.i.i, %mul27.i.i
  %.60.i.i = zext i1 %cmp28.i.i to i32
  %.sink58.i.i = select i1 %or.cond56.i.i, i32 2, i32 %.60.i.i
  %242 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %regmap.i, align 4
  %add312.i = add i32 %shl211.i, 6
  %shl313.i = shl i32 3, %add312.i
  %add315.i = add i32 %shl211.i, 8
  %shl316.i = shl i32 3, %add315.i
  %or317.i = or i32 %shl313.i, %shl316.i
  %shl320.i = shl i32 %.sink.i.i, %add312.i
  %shl323.i = shl i32 %.sink58.i.i, %add315.i
  %or324.i = or i32 %shl320.i, %shl323.i
  %call.i188.i = call i32 @regmap_update_bits_base(ptr noundef %243, i32 noundef 16, i32 noundef %or317.i, i32 noundef %or324.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %244 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %9, align 4
  %246 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %index, align 4
  %.frozen232 = freeze i32 %136
  %.frozen233 = freeze i32 %138
  %div.i.i = sdiv i32 %.frozen232, %.frozen233
  %shl.i192.i = shl i32 %div.i.i, 26
  %248 = mul i32 %div.i.i, %.frozen233
  %rem.i.i.decomposed = sub i32 %.frozen232, %248
  br label %for.body.i195.i

for.body.i195.i:                                  ; preds = %for.inc.i200.i.for.body.i195.i_crit_edge, %if.end.i193.i
  %i.041.i.i = phi i32 [ 1, %if.end.i193.i ], [ %inc.i198.i, %for.inc.i200.i.for.body.i195.i_crit_edge ]
  %ratio.040.i.i = phi i32 [ %shl.i192.i, %if.end.i193.i ], [ %ratio.1.i.i, %for.inc.i200.i.for.body.i195.i_crit_edge ]
  %inrate.addr.039.i.i = phi i32 [ %rem.i.i.decomposed, %if.end.i193.i ], [ %inrate.addr.1.i.i, %for.inc.i200.i.for.body.i195.i_crit_edge ]
  %shl3.i.i = shl i32 %inrate.addr.039.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl3.i.i, i32 %138)
  %cmp4.i194.i = icmp slt i32 %shl3.i.i, %138
  br i1 %cmp4.i194.i, label %for.body.i195.i.for.inc.i200.i_crit_edge, label %if.end6.i.i

for.body.i195.i.for.inc.i200.i_crit_edge:         ; preds = %for.body.i195.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i200.i

if.end6.i.i:                                      ; preds = %for.body.i195.i
  %sub.i196.i = sub nuw nsw i32 26, %i.041.i.i
  %shl7.i.i = shl nuw nsw i32 1, %sub.i196.i
  %or.i197.i = or i32 %shl7.i.i, %ratio.040.i.i
  %sub8.i.i = sub i32 %shl3.i.i, %138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i.i)
  %tobool9.not.i.i = icmp eq i32 %sub8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end6.i.i.for.end.i204.i_crit_edge, label %if.end6.i.i.for.inc.i200.i_crit_edge

if.end6.i.i.for.inc.i200.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i200.i

if.end6.i.i.for.end.i204.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i204.i

for.inc.i200.i:                                   ; preds = %if.end6.i.i.for.inc.i200.i_crit_edge, %for.body.i195.i.for.inc.i200.i_crit_edge
  %inrate.addr.1.i.i = phi i32 [ %shl3.i.i, %for.body.i195.i.for.inc.i200.i_crit_edge ], [ %sub8.i.i, %if.end6.i.i.for.inc.i200.i_crit_edge ]
  %ratio.1.i.i = phi i32 [ %ratio.040.i.i, %for.body.i195.i.for.inc.i200.i_crit_edge ], [ %or.i197.i, %if.end6.i.i.for.inc.i200.i_crit_edge ]
  %inc.i198.i = add nuw nsw i32 %i.041.i.i, 1
  %exitcond.not.i199.i = icmp eq i32 %inc.i198.i, 27
  br i1 %exitcond.not.i199.i, label %for.inc.i200.i.for.end.i204.i_crit_edge, label %for.inc.i200.i.for.body.i195.i_crit_edge

for.inc.i200.i.for.body.i195.i_crit_edge:         ; preds = %for.inc.i200.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i195.i

for.inc.i200.i.for.end.i204.i_crit_edge:          ; preds = %for.inc.i200.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i204.i

for.end.i204.i:                                   ; preds = %for.inc.i200.i.for.end.i204.i_crit_edge, %if.end6.i.i.for.end.i204.i_crit_edge
  %ratio.2.i.i = phi i32 [ %or.i197.i, %if.end6.i.i.for.end.i204.i_crit_edge ], [ %ratio.1.i.i, %for.inc.i200.i.for.end.i204.i_crit_edge ]
  %regmap.i201.i = getelementptr inbounds %struct.fsl_asrc, ptr %245, i32 0, i32 3
  %249 = ptrtoint ptr %regmap.i201.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %regmap.i201.i, align 4
  %shl12.i.i = shl i32 %247, 3
  %add13.i.i = add i32 %shl12.i.i, 132
  %call.i202.i = call i32 @regmap_write(ptr noundef %250, i32 noundef %add13.i.i, i32 noundef %ratio.2.i.i) #11
  %251 = ptrtoint ptr %regmap.i201.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %regmap.i201.i, align 4
  %add16.i.i = add i32 %shl12.i.i, 128
  %shr.i203.i = lshr i32 %ratio.2.i.i, 24
  %call17.i.i = call i32 @regmap_write(ptr noundef %252, i32 noundef %add16.i.i, i32 noundef %shr.i203.i) #11
  br label %fsl_asrc_config_pair.exit

fsl_asrc_config_pair.exit:                        ; preds = %for.end.i204.i, %fsl_asrc_cal_asrck_divisor.exit176.i.fsl_asrc_config_pair.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_index.i) #11
  br label %cleanup

do.end25:                                         ; preds = %do.end159.i, %do.end115.i, %do.end81.i, %do.end66.i, %do.end47.i, %do.end31.i, %do.end20.i, %do.end10.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_index.i) #11
  %253 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %254, ptr noundef nonnull @.str.77) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %fsl_asrc_config_pair.exit, %do.end
  %retval.0 = phi i32 [ %call5, %do.end ], [ -22, %do.end25 ], [ 0, %fsl_asrc_config_pair.exit ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %config) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asrc_dai_hw_free(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %index2.i = getelementptr inbounds %struct.fsl_asrc_pair, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index2.i, align 4
  %regmap.i = getelementptr inbounds %struct.fsl_asrc, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %add.i = add i32 %7, 1
  %shl.i = shl nuw i32 1, %add.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %lock.i = getelementptr inbounds %struct.fsl_asrc, ptr %5, i32 0, i32 8
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %channels.i = getelementptr inbounds %struct.fsl_asrc_pair, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channels.i, align 4
  %channel_avail.i = getelementptr inbounds %struct.fsl_asrc, ptr %5, i32 0, i32 10
  %12 = ptrtoint ptr %channel_avail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel_avail.i, align 4
  %add8.i = add i32 %13, %11
  store i32 %add8.i, ptr %channel_avail.i, align 4
  %arrayidx.i = getelementptr %struct.fsl_asrc, ptr %5, i32 0, i32 9, i32 %7
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.i, align 4
  %error.i = getelementptr inbounds %struct.fsl_asrc_pair, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %error.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asrc_dai_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge10
    i32 4, label %entry.sw.bb_crit_edge11
    i32 0, label %entry.sw.bb2_crit_edge
    i32 5, label %entry.sw.bb2_crit_edge12
    i32 3, label %entry.sw.bb2_crit_edge13
  ]

entry.sw.bb2_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.bb2_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge10, %entry.sw.bb_crit_edge11
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %index2.i = getelementptr inbounds %struct.fsl_asrc_pair, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #11
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %reg.i, align 4, !annotation !236
  %regmap.i = getelementptr inbounds %struct.fsl_asrc, ptr %6, i32 0, i32 3
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %add.i = add i32 %8, 1
  %shl.i = shl nuw i32 1, %add.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %add7.i = add i32 %8, 21
  %shl8.i = shl nuw i32 1, %add7.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %sw.bb
  %retry.0.i = phi i32 [ 10, %sw.bb ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 1073740) #11
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call6.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 16, ptr noundef nonnull %reg.i) #11
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %16, %shl8.i
  store i32 %and.i, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %dec.i = add nsw i32 %retry.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool9.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool9.not.i
  br i1 %or.cond.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %call11.i = call i32 @regmap_read(ptr noundef %18, i32 noundef 12, ptr noundef nonnull %reg.i) #11
  %channels.i = getelementptr inbounds %struct.fsl_asrc_pair, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channels.i, align 4
  %mul28.mask.i = and i32 %20, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul28.mask.i)
  %cmp29.not.i = icmp eq i32 %mul28.mask.i, 0
  br i1 %cmp29.not.i, label %do.end.i.fsl_asrc_start_pair.exit_crit_edge, label %for.body.lr.ph.i

do.end.i.fsl_asrc_start_pair.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsl_asrc_start_pair.exit

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %shl13.i = shl i32 %8, 3
  %add14.i = add i32 %shl13.i, 96
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call15.i = call i32 @regmap_write(ptr noundef %22, i32 noundef %add14.i, i32 noundef 0) #11
  %inc.i = add nuw i32 %i.030.i, 1
  %23 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channels.i, align 4
  %mul.i = shl i32 %24, 2
  %cmp.i = icmp ult i32 %inc.i, %mul.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.fsl_asrc_start_pair.exit_crit_edge

for.body.i.fsl_asrc_start_pair.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsl_asrc_start_pair.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

fsl_asrc_start_pair.exit:                         ; preds = %for.body.i.fsl_asrc_start_pair.exit_crit_edge, %do.end.i.fsl_asrc_start_pair.exit_crit_edge
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 4
  %call17.i = call i32 @regmap_write(ptr noundef %26, i32 noundef 4, i32 noundef 64) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #11
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge12, %entry.sw.bb2_crit_edge13
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %index2.i5 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %index2.i5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index2.i5, align 4
  %regmap.i6 = getelementptr inbounds %struct.fsl_asrc, ptr %28, i32 0, i32 3
  %31 = ptrtoint ptr %regmap.i6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i6, align 4
  %add.i7 = add i32 %30, 1
  %shl.i8 = shl nuw i32 1, %add.i7
  %call.i.i9 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 0, i32 noundef %shl.i8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %fsl_asrc_start_pair.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb2 ], [ 0, %fsl_asrc_start_pair.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !50, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !69, !70, !72, !73, !74, !76, !78, !79, !80, !82, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !112, !113, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !131, !132, !133, !134, !136, !137, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !165, !166, !167, !169, !170, !171, !173, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !215, !217, !219, !221, !223, !225}
!llvm.module.flags = !{!227, !228, !229, !230, !231, !232, !233, !234}
!llvm.ident = !{!235}

!0 = !{ptr @__initcall__kmod_snd_soc_fsl_asrc__252_1377_fsl_asrc_driver_init6, !1, !"__initcall__kmod_snd_soc_fsl_asrc__252_1377_fsl_asrc_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1377, i32 1}
!2 = !{ptr @__exitcall_fsl_asrc_driver_exit, !1, !"__exitcall_fsl_asrc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description253, !4, !"__UNIQUE_ID_description253", i1 false, i1 false}
!4 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1379, i32 1}
!5 = !{ptr @__UNIQUE_ID_author254, !6, !"__UNIQUE_ID_author254", i1 false, i1 false}
!6 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1380, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias255, !8, !"__UNIQUE_ID_alias255", i1 false, i1 false}
!8 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1381, i32 1}
!9 = !{ptr @__UNIQUE_ID_file256, !10, !"__UNIQUE_ID_file256", i1 false, i1 false}
!10 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1382, i32 1}
!11 = !{ptr @__UNIQUE_ID_license257, !10, !"__UNIQUE_ID_license257", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1372, i32 11}
!14 = !{ptr @fsl_asrc_driver, !15, !"fsl_asrc_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1368, i32 31}
!16 = !{ptr @fsl_asrc_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1091, i32 17}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1093, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @fsl_asrc_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @fsl_asrc_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1104, i32 3}
!29 = !{ptr @fsl_asrc_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @fsl_asrc_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1108, i32 43}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1110, i32 3}
!35 = !{ptr @fsl_asrc_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @fsl_asrc_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1114, i32 43}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1116, i32 3}
!41 = !{ptr @fsl_asrc_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @fsl_asrc_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1120, i32 44}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1122, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @fsl_asrc_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @fsl_asrc_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1125, i32 16}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1128, i32 4}
!54 = !{ptr @fsl_asrc_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @fsl_asrc_probe._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1141, i32 34}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1144, i32 41}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1147, i32 41}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1148, i32 34}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1149, i32 34}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1151, i32 4}
!68 = !{ptr @fsl_asrc_probe._entry.32, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @fsl_asrc_probe._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1156, i32 4}
!72 = !{ptr @fsl_asrc_probe._entry.35, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @fsl_asrc_probe._entry_ptr.37, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1170, i32 33}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1173, i32 3}
!78 = !{ptr @fsl_asrc_probe._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @fsl_asrc_probe._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1177, i32 33}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1179, i32 34}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1181, i32 4}
!86 = !{ptr @fsl_asrc_probe._entry.44, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @fsl_asrc_probe._entry_ptr.46, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1193, i32 4}
!90 = !{ptr @fsl_asrc_probe._entry.47, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @fsl_asrc_probe._entry_ptr.49, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @fsl_asrc_probe._entry.50, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1201, i32 3}
!94 = !{ptr @fsl_asrc_probe._entry_ptr.51, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @fsl_asrc_probe.__key, !96, !"__key", i1 false, i1 false}
!96 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1206, i32 2}
!97 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1222, i32 3}
!100 = !{ptr @fsl_asrc_probe._entry.53, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @fsl_asrc_probe._entry_ptr.55, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1233, i32 3}
!104 = !{ptr @fsl_asrc_probe._entry.56, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @fsl_asrc_probe._entry_ptr.58, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @fsl_asrc_regmap_config, !107, !"fsl_asrc_regmap_config", i1 false, i1 false}
!107 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 949, i32 35}
!108 = !{ptr @fsl_asrc_reg, !109, !"fsl_asrc_reg", i1 false, i1 false}
!109 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 925, i32 27}
!110 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1026, i32 4}
!112 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @fsl_asrc_isr.__UNIQUE_ID_ddebug247, !111, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1031, i32 4}
!117 = !{ptr @fsl_asrc_isr.__UNIQUE_ID_ddebug248, !116, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1036, i32 4}
!120 = !{ptr @fsl_asrc_isr.__UNIQUE_ID_ddebug249, !119, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1041, i32 4}
!123 = !{ptr @fsl_asrc_isr.__UNIQUE_ID_ddebug250, !122, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1046, i32 4}
!126 = !{ptr @fsl_asrc_isr.__UNIQUE_ID_ddebug251, !125, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!127 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 630, i32 16}
!129 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 231, i32 3}
!131 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @fsl_asrc_request_pair._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @fsl_asrc_request_pair._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 234, i32 3}
!136 = !{ptr @fsl_asrc_request_pair._entry.69, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @fsl_asrc_request_pair._entry_ptr.71, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @input_clk_map_imx35, !139, !"input_clk_map_imx35", i1 false, i1 false}
!139 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 45, i32 22}
!140 = !{ptr @output_clk_map_imx35, !141, !"output_clk_map_imx35", i1 false, i1 false}
!141 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 51, i32 22}
!142 = !{ptr @input_clk_map_imx53, !143, !"input_clk_map_imx53", i1 false, i1 false}
!143 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 58, i32 22}
!144 = !{ptr @output_clk_map_imx53, !145, !"output_clk_map_imx53", i1 false, i1 false}
!145 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 65, i32 22}
!146 = !{ptr @clk_map_imx8qm, !147, !"clk_map_imx8qm", i1 false, i1 false}
!147 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 79, i32 22}
!148 = !{ptr @clk_map_imx8qxp, !149, !"clk_map_imx8qxp", i1 false, i1 false}
!149 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 92, i32 22}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 809, i32 18}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 799, i32 18}
!154 = !{ptr @fsl_asrc_dai, !155, !"fsl_asrc_dai", i1 false, i1 false}
!155 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 796, i32 34}
!156 = !{ptr @fsl_asrc_dai_ops, !157, !"fsl_asrc_dai_ops", i1 false, i1 false}
!157 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 775, i32 37}
!158 = !{ptr @fsl_asrc_rate_constraints, !159, !"fsl_asrc_rate_constraints", i1 false, i1 false}
!159 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 36, i32 42}
!160 = !{ptr @supported_asrc_rate, !161, !"supported_asrc_rate", i1 false, i1 false}
!161 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 31, i32 21}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 705, i32 3}
!164 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @fsl_asrc_dai_hw_params._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @fsl_asrc_dai_hw_params._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 732, i32 3}
!169 = !{ptr @fsl_asrc_dai_hw_params._entry.76, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @fsl_asrc_dai_hw_params._entry_ptr.78, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @asrc_clk_divider, !172, !"asrc_clk_divider", i1 false, i1 false}
!172 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 109, i32 12}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 391, i32 3}
!175 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @fsl_asrc_config_pair._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @fsl_asrc_config_pair._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.82, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 397, i32 3}
!180 = !{ptr @fsl_asrc_config_pair._entry.81, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @fsl_asrc_config_pair._entry_ptr.83, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 412, i32 3}
!184 = !{ptr @fsl_asrc_config_pair._entry.84, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @fsl_asrc_config_pair._entry_ptr.86, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 425, i32 3}
!188 = !{ptr @fsl_asrc_config_pair._entry.87, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @fsl_asrc_config_pair._entry_ptr.89, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.91, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 440, i32 3}
!192 = !{ptr @fsl_asrc_config_pair._entry.90, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @fsl_asrc_config_pair._entry_ptr.92, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.94, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 449, i32 3}
!196 = !{ptr @fsl_asrc_config_pair._entry.93, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @fsl_asrc_config_pair._entry_ptr.95, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.97, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 455, i32 3}
!200 = !{ptr @fsl_asrc_config_pair._entry.96, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @fsl_asrc_config_pair._entry_ptr.98, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.100, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 478, i32 3}
!204 = !{ptr @fsl_asrc_config_pair._entry.99, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @fsl_asrc_config_pair._entry_ptr.101, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.103, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 494, i32 3}
!208 = !{ptr @fsl_asrc_config_pair._entry.102, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @fsl_asrc_config_pair._entry_ptr.104, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.105, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 328, i32 3}
!212 = !{ptr @.str.106, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @fsl_asrc_set_ideal_ratio._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @fsl_asrc_set_ideal_ratio._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @fsl_asrc_ids, !216, !"fsl_asrc_ids", i1 false, i1 false}
!216 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1359, i32 34}
!217 = !{ptr @fsl_asrc_imx35_data, !218, !"fsl_asrc_imx35_data", i1 false, i1 false}
!218 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1339, i32 39}
!219 = !{ptr @fsl_asrc_imx53_data, !220, !"fsl_asrc_imx53_data", i1 false, i1 false}
!220 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1344, i32 39}
!221 = !{ptr @fsl_asrc_imx8qm_data, !222, !"fsl_asrc_imx8qm_data", i1 false, i1 false}
!222 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1349, i32 39}
!223 = !{ptr @fsl_asrc_imx8qxp_data, !224, !"fsl_asrc_imx8qxp_data", i1 false, i1 false}
!224 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1354, i32 39}
!225 = !{ptr @fsl_asrc_pm, !226, !"fsl_asrc_pm", i1 false, i1 false}
!226 = !{!"../sound/soc/fsl/fsl_asrc.c", i32 1333, i32 32}
!227 = !{i32 1, !"wchar_size", i32 2}
!228 = !{i32 1, !"min_enum_size", i32 4}
!229 = !{i32 8, !"branch-target-enforcement", i32 0}
!230 = !{i32 8, !"sign-return-address", i32 0}
!231 = !{i32 8, !"sign-return-address-all", i32 0}
!232 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!233 = !{i32 7, !"uwtable", i32 1}
!234 = !{i32 7, !"frame-pointer", i32 2}
!235 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!236 = !{!"auto-init"}
!237 = !{i8 0, i8 2}
!238 = !{i64 2148276250}
!239 = !{i64 761073, i64 761098, i64 761120, i64 761136, i64 761148, i64 761168, i64 761192, i64 761208, i64 761220}
!240 = !{i64 2148276438}
!241 = !{i64 2148758646, i64 2148758651, i64 2148758664, i64 2148758708, i64 2148758742, i64 2148758763}
!242 = !{i32 0, i32 33}
!243 = !{!"branch_weights", i32 2000, i32 1}
!244 = !{i64 2148667365, i64 2148667645, i64 2148667979, i64 2148668313}
