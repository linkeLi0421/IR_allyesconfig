; ModuleID = '/llk/IR_all_yes/sound/soc/fsl/fsl_esai.c_pt.bc'
source_filename = "../sound/soc/fsl/fsl_esai.c"
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
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.reg_default = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.fsl_esai_soc_data = type { i8 }
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
%struct.fsl_esai = type { %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, ptr, %struct.spinlock, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i8], [2 x i8], i8, i8, [32 x i8] }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@__initcall__kmod_snd_soc_fsl_esai__251_1212_fsl_esai_driver_init6 = internal global ptr @fsl_esai_driver_init, section ".initcall6.init", align 4
@fsl_esai_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_esai_probe, ptr @fsl_esai_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_esai_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_esai_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_esai_driver_exit = internal global ptr @fsl_esai_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author252 = internal constant [54 x i8] c"snd_soc_fsl_esai.author=Freescale Semiconductor, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [59 x i8] c"snd_soc_fsl_esai.description=Freescale ESAI CPU DAI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file254 = internal constant [53 x i8] c"snd_soc_fsl_esai.file=sound/soc/fsl/snd-soc-fsl-esai\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [32 x i8] c"snd_soc_fsl_esai.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias256 = internal constant [45 x i8] c"snd_soc_fsl_esai.alias=platform:fsl-esai-dai\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl-esai-dai\00", [19 x i8] zeroinitializer }, align 32
@fsl_esai_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx35-esai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_esai_imx35 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-esai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_esai_vf610 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ull-esai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_esai_imx6ull }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@fsl_esai_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_esai_runtime_suspend, ptr @fsl_esai_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pOFn\00", [26 x i8] zeroinitializer }, align 32
@fsl_esai_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@fsl_esai_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @fsl_esai_writeable_reg, ptr @fsl_esai_readable_reg, ptr @fsl_esai_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 252, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_esai_reg_defaults, i32 22, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"fsl_esai:976:(&fsl_esai_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@fsl_esai_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 979, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to init regmap: %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl_esai_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/fsl/fsl_esai.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_esai_probe._entry_ptr = internal global ptr @fsl_esai_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@fsl_esai_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 986, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get core clock: %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@fsl_esai_probe._entry_ptr.11 = internal global ptr @fsl_esai_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"extal\00", [26 x i8] zeroinitializer }, align 32
@fsl_esai_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 993, ptr @.str.15, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get extal clock: %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fsl_esai_probe._entry_ptr.16 = internal global ptr @fsl_esai_probe._entry.13, section ".printk_index", align 4
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fsys\00", [27 x i8] zeroinitializer }, align 32
@fsl_esai_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 998, ptr @.str.15, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get fsys clock: %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@fsl_esai_probe._entry_ptr.20 = internal global ptr @fsl_esai_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spba\00", [27 x i8] zeroinitializer }, align 32
@fsl_esai_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 1003, ptr @.str.15, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get spba clock: %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@fsl_esai_probe._entry_ptr.24 = internal global ptr @fsl_esai_probe._entry.22, section ".printk_index", align 4
@fsl_esai_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.4, ptr @.str.5, i32 1012, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to claim irq %u\0A\00", [40 x i8] zeroinitializer }, align 32
@fsl_esai_probe._entry_ptr.27 = internal global ptr @fsl_esai_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,fifo-depth\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,esai-synchronous\00", [43 x i8] zeroinitializer }, align 32
@fsl_esai_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @fsl_esai_dai_probe, ptr null, ptr null, ptr null, ptr @fsl_esai_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.55, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.56, i64 68719476805, i32 8190, i32 0, i32 0, i32 1, i32 12, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@fsl_esai_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&esai_priv->lock\00", [47 x i8] zeroinitializer }, align 32
@fsl_esai_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.4, ptr @.str.5, i32 1082, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to init imx pcm dma: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@fsl_esai_probe._entry_ptr.33 = internal global ptr @fsl_esai_probe._entry.31, section ".printk_index", align 4
@fsl_esai_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.87, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@fsl_esai_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.4, ptr @.str.5, i32 1089, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register DAI: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@fsl_esai_probe._entry_ptr.36 = internal global ptr @fsl_esai_probe._entry.34, section ".printk_index", align 4
@fsl_esai_probe.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&esai_priv->work)\00", [60 x i8] zeroinitializer }, align 32
@fsl_esai_reg_defaults = internal constant { [22 x %struct.reg_default], [48 x i8] } { [22 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 140, i32 0 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 152, i32 0 }, %struct.reg_default { i32 208, i32 0 }, %struct.reg_default { i32 212, i32 0 }, %struct.reg_default { i32 216, i32 0 }, %struct.reg_default { i32 220, i32 0 }, %struct.reg_default { i32 224, i32 0 }, %struct.reg_default { i32 228, i32 65535 }, %struct.reg_default { i32 232, i32 65535 }, %struct.reg_default { i32 236, i32 65535 }, %struct.reg_default { i32 240, i32 65535 }, %struct.reg_default { i32 248, i32 0 }, %struct.reg_default { i32 252, i32 0 }], [48 x i8] zeroinitializer }, align 32
@esai_isr.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.40, ptr @.str.5, ptr @.str.41, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_soc_fsl_esai\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"esai_isr\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reset module for xrun\0A\00", [41 x i8] zeroinitializer }, align 32
@esai_isr.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.40, ptr @.str.5, ptr @.str.42, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"isr: Transmission Initialized\0A\00", [33 x i8] zeroinitializer }, align 32
@esai_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.40, ptr @.str.5, i32 122, ptr @.str.15, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"isr: Receiving overrun\0A\00", [40 x i8] zeroinitializer }, align 32
@esai_isr._entry_ptr = internal global ptr @esai_isr._entry, section ".printk_index", align 4
@esai_isr._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.5, i32 125, ptr @.str.15, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"isr: Transmission underrun\0A\00", [36 x i8] zeroinitializer }, align 32
@esai_isr._entry_ptr.46 = internal global ptr @esai_isr._entry.44, section ".printk_index", align 4
@esai_isr.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.40, ptr @.str.5, ptr @.str.47, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"isr: Just transmitted the last slot\0A\00", [59 x i8] zeroinitializer }, align 32
@esai_isr.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.40, ptr @.str.5, ptr @.str.48, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"isr: Transmission data exception\0A\00", [62 x i8] zeroinitializer }, align 32
@esai_isr.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.40, ptr @.str.5, ptr @.str.49, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"isr: Transmitting even slots\0A\00", [34 x i8] zeroinitializer }, align 32
@esai_isr.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.40, ptr @.str.5, ptr @.str.50, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"isr: Transmitting data\0A\00", [40 x i8] zeroinitializer }, align 32
@esai_isr.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.40, ptr @.str.5, ptr @.str.51, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"isr: Just received the last slot\0A\00", [62 x i8] zeroinitializer }, align 32
@esai_isr.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.40, ptr @.str.5, ptr @.str.52, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"isr: Receiving data exception\0A\00", [33 x i8] zeroinitializer }, align 32
@esai_isr.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.40, ptr @.str.5, ptr @.str.53, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"isr: Receiving even slots\0A\00", [37 x i8] zeroinitializer }, align 32
@esai_isr.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.40, ptr @.str.5, ptr @.str.54, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"isr: Receiving data\0A\00", [43 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@fsl_esai_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @fsl_esai_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @fsl_esai_set_dai_fmt, ptr null, ptr @fsl_esai_set_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_esai_startup, ptr null, ptr @fsl_esai_hw_params, ptr null, ptr null, ptr @fsl_esai_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CPU-Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CPU-Playback\00", [19 x i8] zeroinitializer }, align 32
@fsl_esai_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.5, i32 272, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%sput freq of HCK%c should not be 0Hz\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsl_esai_set_dai_sysclk\00", [40 x i8] zeroinitializer }, align 32
@fsl_esai_set_dai_sysclk._entry_ptr = internal global ptr @fsl_esai_set_dai_sysclk._entry, section ".printk_index", align 4
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@fsl_esai_set_dai_sysclk._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.58, ptr @.str.5, i32 307, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no assigned %s clock\0A\00", [42 x i8] zeroinitializer }, align 32
@fsl_esai_set_dai_sysclk._entry_ptr.63 = internal global ptr @fsl_esai_set_dai_sysclk._entry.61, section ".printk_index", align 4
@fsl_esai_set_dai_sysclk._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.58, ptr @.str.5, i32 323, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to derive required HCK%c rate\0A\00", [58 x i8] zeroinitializer }, align 32
@fsl_esai_set_dai_sysclk._entry_ptr.66 = internal global ptr @fsl_esai_set_dai_sysclk._entry.64, section ".printk_index", align 4
@fsl_esai_set_dai_sysclk._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.58, ptr @.str.5, i32 335, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@fsl_esai_set_dai_sysclk._entry_ptr.68 = internal global ptr @fsl_esai_set_dai_sysclk._entry.67, section ".printk_index", align 4
@fsl_esai_divisor_cal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.5, i32 178, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"the ratio is out of range (2 ~ %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl_esai_divisor_cal\00", [43 x i8] zeroinitializer }, align 32
@fsl_esai_divisor_cal._entry_ptr = internal global ptr @fsl_esai_divisor_cal._entry, section ".printk_index", align 4
@fsl_esai_divisor_cal._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.5, i32 181, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"the raio must be even if using upper divider\0A\00", [50 x i8] zeroinitializer }, align 32
@fsl_esai_divisor_cal._entry_ptr.73 = internal global ptr @fsl_esai_divisor_cal._entry.71, section ".printk_index", align 4
@fsl_esai_divisor_cal._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.5, i32 229, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to calculate proper divisors\0A\00", [59 x i8] zeroinitializer }, align 32
@fsl_esai_divisor_cal._entry_ptr.76 = internal global ptr @fsl_esai_divisor_cal._entry.74, section ".printk_index", align 4
@fsl_esai_set_bclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.5, i32 383, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to derive required SCK%c rate\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl_esai_set_bclk\00", [46 x i8] zeroinitializer }, align 32
@fsl_esai_set_bclk._entry_ptr = internal global ptr @fsl_esai_set_bclk._entry, section ".printk_index", align 4
@fsl_esai_set_bclk._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.5, i32 389, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"the ratio is out of range (1 ~ 16)\0A\00", [60 x i8] zeroinitializer }, align 32
@fsl_esai_set_bclk._entry_ptr.81 = internal global ptr @fsl_esai_set_bclk._entry.79, section ".printk_index", align 4
@fsl_esai_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.5, i32 603, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to reset ESAI: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl_esai_hw_init\00", [47 x i8] zeroinitializer }, align 32
@fsl_esai_hw_init._entry_ptr = internal global ptr @fsl_esai_hw_init._entry, section ".printk_index", align 4
@fsl_esai_hw_init._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.5, i32 615, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable ESAI: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@fsl_esai_hw_init._entry_ptr.86 = internal global ptr @fsl_esai_hw_init._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsl-esai\00", [23 x i8] zeroinitializer }, align 32
@fsl_esai_imx35 = internal global { %struct.fsl_esai_soc_data, [31 x i8] } { %struct.fsl_esai_soc_data { i8 1 }, [31 x i8] zeroinitializer }, align 32
@fsl_esai_vf610 = internal global { %struct.fsl_esai_soc_data, [31 x i8] } { %struct.fsl_esai_soc_data { i8 1 }, [31 x i8] zeroinitializer }, align 32
@fsl_esai_imx6ull = internal global { %struct.fsl_esai_soc_data, [31 x i8] } zeroinitializer, align 32
@switch.table.fsl_esai_set_dai_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 65536, i32 128, i32 0, i32 98304, i32 32768], [44 x i8] zeroinitializer }, align 32
@switch.table.fsl_esai_set_dai_fmt.88 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1835008, i32 1310720, i32 1310720, i32 1310720, i32 1310720], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [24 x i64] [i64 22, i64 32, i64 0, i64 8, i64 16, i64 24, i64 128, i64 132, i64 136, i64 140, i64 144, i64 148, i64 152, i64 208, i64 212, i64 216, i64 220, i64 224, i64 228, i64 232, i64 236, i64 240, i64 248, i64 252]
@__sancov_gen_cov_switch_values.89 = internal global [25 x i64] [i64 23, i64 32, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28, i64 160, i64 164, i64 168, i64 172, i64 204, i64 208, i64 212, i64 216, i64 220, i64 224, i64 228, i64 232, i64 236, i64 240, i64 248, i64 252]
@__sancov_gen_cov_switch_values.90 = internal global [11 x i64] [i64 9, i64 32, i64 4, i64 12, i64 20, i64 28, i64 160, i64 164, i64 168, i64 172, i64 204]
@__sancov_gen_cov_switch_values.91 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.92 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.93 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.94 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.95 = private unnamed_addr constant [16 x i8] c"fsl_esai_driver\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1202, i32 31 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1206, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [16 x i8] c"fsl_esai_dt_ids\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1118, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"fsl_esai_pm_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1194, i32 32 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 967, i32 53 }
@___asan_gen_.110 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [23 x i8] c"fsl_esai_regmap_config\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 936, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 976, i32 22 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 978, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 983, i32 48 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 985, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 990, i32 49 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 992, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 995, i32 48 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 997, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1000, i32 48 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1002, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1012, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1023, i32 30 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1035, i32 29 }
@___asan_gen_.188 = private unnamed_addr constant [13 x i8] c"fsl_esai_dai\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 807, i32 34 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1045, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1082, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [19 x i8] c"fsl_esai_component\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 826, i32 46 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1089, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1093, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [22 x i8] c"fsl_esai_reg_defaults\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 830, i32 33 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 110, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 119, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 122, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 125, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 128, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 131, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 134, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 137, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 140, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 143, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 146, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 149, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"fsl_esai_dai_ops\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 788, i32 37 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 817, i32 18 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 810, i32 18 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 271, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 306, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 322, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 334, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 177, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 181, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 229, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 382, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 389, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 603, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 615, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 827, i32 11 }
@___asan_gen_.362 = private unnamed_addr constant [15 x i8] c"fsl_esai_imx35\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 90, i32 33 }
@___asan_gen_.365 = private unnamed_addr constant [15 x i8] c"fsl_esai_vf610\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 86, i32 33 }
@___asan_gen_.368 = private unnamed_addr constant [17 x i8] c"fsl_esai_imx6ull\00", align 1
@___asan_gen_.369 = private constant [28 x i8] c"../sound/soc/fsl/fsl_esai.c\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 94, i32 33 }
@___asan_gen_.371 = private unnamed_addr constant [34 x i8] c"switch.table.fsl_esai_set_dai_fmt\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [37 x i8] c"switch.table.fsl_esai_set_dai_fmt.88\00", align 1
@llvm.compiler.used = appending global [123 x ptr] [ptr @__UNIQUE_ID_alias256, ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__exitcall_fsl_esai_driver_exit, ptr @__initcall__kmod_snd_soc_fsl_esai__251_1212_fsl_esai_driver_init6, ptr @esai_isr._entry, ptr @esai_isr._entry.44, ptr @esai_isr._entry_ptr, ptr @esai_isr._entry_ptr.46, ptr @fsl_esai_divisor_cal._entry, ptr @fsl_esai_divisor_cal._entry.71, ptr @fsl_esai_divisor_cal._entry.74, ptr @fsl_esai_divisor_cal._entry_ptr, ptr @fsl_esai_divisor_cal._entry_ptr.73, ptr @fsl_esai_divisor_cal._entry_ptr.76, ptr @fsl_esai_driver_exit, ptr @fsl_esai_hw_init._entry, ptr @fsl_esai_hw_init._entry.84, ptr @fsl_esai_hw_init._entry_ptr, ptr @fsl_esai_hw_init._entry_ptr.86, ptr @fsl_esai_probe._entry, ptr @fsl_esai_probe._entry.13, ptr @fsl_esai_probe._entry.18, ptr @fsl_esai_probe._entry.22, ptr @fsl_esai_probe._entry.25, ptr @fsl_esai_probe._entry.31, ptr @fsl_esai_probe._entry.34, ptr @fsl_esai_probe._entry.9, ptr @fsl_esai_probe._entry_ptr, ptr @fsl_esai_probe._entry_ptr.11, ptr @fsl_esai_probe._entry_ptr.16, ptr @fsl_esai_probe._entry_ptr.20, ptr @fsl_esai_probe._entry_ptr.24, ptr @fsl_esai_probe._entry_ptr.27, ptr @fsl_esai_probe._entry_ptr.33, ptr @fsl_esai_probe._entry_ptr.36, ptr @fsl_esai_set_bclk._entry, ptr @fsl_esai_set_bclk._entry.79, ptr @fsl_esai_set_bclk._entry_ptr, ptr @fsl_esai_set_bclk._entry_ptr.81, ptr @fsl_esai_set_dai_sysclk._entry, ptr @fsl_esai_set_dai_sysclk._entry.61, ptr @fsl_esai_set_dai_sysclk._entry.64, ptr @fsl_esai_set_dai_sysclk._entry.67, ptr @fsl_esai_set_dai_sysclk._entry_ptr, ptr @fsl_esai_set_dai_sysclk._entry_ptr.63, ptr @fsl_esai_set_dai_sysclk._entry_ptr.66, ptr @fsl_esai_set_dai_sysclk._entry_ptr.68, ptr @fsl_esai_driver, ptr @.str, ptr @fsl_esai_dt_ids, ptr @fsl_esai_pm_ops, ptr @.str.1, ptr @fsl_esai_probe._key, ptr @fsl_esai_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @fsl_esai_dai, ptr @fsl_esai_probe.__key, ptr @.str.30, ptr @.str.32, ptr @fsl_esai_component, ptr @.str.35, ptr @fsl_esai_probe.__key.37, ptr @.str.38, ptr @fsl_esai_reg_defaults, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @fsl_esai_dai_ops, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @fsl_esai_imx35, ptr @fsl_esai_vf610, ptr @fsl_esai_imx6ull, ptr @switch.table.fsl_esai_set_dai_fmt, ptr @switch.table.fsl_esai_set_dai_fmt.88], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_probe.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_reg_defaults to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esai_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esai_isr._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_set_dai_sysclk._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_set_dai_sysclk._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_set_dai_sysclk._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_divisor_cal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_divisor_cal._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_divisor_cal._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_set_bclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_set_bclk._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_hw_init._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_imx35 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_vf610 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_esai_imx6ull to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fsl_esai_set_dai_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fsl_esai_set_dai_fmt.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_esai_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_esai_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_esai_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_esai_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_esai_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #10
  %2 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !200
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 272, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev2 = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %pdev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %pdev2, align 4
  %name = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 23
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %1)
  %call5 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #10
  %soc = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %soc, align 4
  %call6 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #10
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call6, ptr noundef nonnull @fsl_esai_regmap_config, ptr noundef nonnull @fsl_esai_probe._key, ptr noundef nonnull @.str.2) #10
  %regmap = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call12, ptr %regmap, align 4
  %cmp.i281 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i281, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call12 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %7) #13
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  %call23 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  %coreclk = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %coreclk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call23, ptr %coreclk, align 4
  %cmp.i282 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i282, label %do.end29, label %if.end35

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %call23 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %12) #13
  %13 = ptrtoint ptr %coreclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %coreclk, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end21
  %call37 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  %extalclk = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %extalclk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call37, ptr %extalclk, align 4
  %cmp.i283 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i283, label %do.end43, label %if.end35.if.end47_crit_edge

if.end35.if.end47_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %call37 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %17) #13
  br label %if.end47

if.end47:                                         ; preds = %do.end43, %if.end35.if.end47_crit_edge
  %call49 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.17) #10
  %fsysclk = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %fsysclk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call49, ptr %fsysclk, align 4
  %cmp.i284 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i284, label %do.end55, label %if.end47.if.end59_crit_edge

if.end47.if.end59_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

do.end55:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %call49 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %19) #13
  br label %if.end59

if.end59:                                         ; preds = %do.end55, %if.end47.if.end59_crit_edge
  %call61 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.21) #10
  %spbaclk = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 7
  %20 = ptrtoint ptr %spbaclk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call61, ptr %spbaclk, align 4
  %cmp.i285 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i285, label %do.end67, label %if.end59.if.end71_crit_edge

if.end59.if.end71_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

do.end67:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %call61 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %21) #13
  br label %if.end71

if.end71:                                         ; preds = %do.end67, %if.end59.if.end71_crit_edge
  %call72 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp = icmp slt i32 %call72, 0
  br i1 %cmp, label %if.end71.cleanup_crit_edge, label %if.end74

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end74:                                         ; preds = %if.end71
  %call.i286 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call72, ptr noundef nonnull @esai_isr, ptr noundef null, i32 noundef 128, ptr noundef %name, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i286)
  %tobool79.not = icmp eq i32 %call.i286, 0
  br i1 %tobool79.not, label %if.end85, label %do.end83

do.end83:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call72) #13
  br label %cleanup

if.end85:                                         ; preds = %if.end74
  %slots = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 13
  %22 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %slots, align 4
  %consumer_mode = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 21
  %23 = ptrtoint ptr %consumer_mode to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %consumer_mode, align 4
  %call86 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef null) #10
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.end85.if.end91_crit_edge, label %if.then88

if.end85.if.end91_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %call86 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call86, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.end85.if.end91_crit_edge
  %.sink = phi i32 [ %25, %if.then88 ], [ 64, %if.end85.if.end91_crit_edge ]
  %26 = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 11
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %26, align 4
  %dma_params_tx = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 1
  %maxburst = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16, ptr %maxburst, align 4
  %maxburst92 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %maxburst92 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16, ptr %maxburst92, align 4
  %30 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %res, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %34 = ptrtoint ptr %dma_params_tx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %dma_params_tx, align 4
  %35 = load i32, ptr %31, align 4
  %add95 = add i32 %35, 4
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add95, ptr %call.i, align 4
  %call.i287 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef null) #10
  %tobool.i = icmp ne ptr %call.i287, null
  %synchronous = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 22
  %frombool = zext i1 %tobool.i to i8
  %37 = ptrtoint ptr %synchronous to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool, ptr %synchronous, align 1
  br i1 %tobool.i, label %if.then101, label %if.end91.if.end108_crit_edge

if.end91.if.end108_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then101:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  %bf.load = load i8, ptr getelementptr inbounds (%struct.snd_soc_dai_driver, ptr @fsl_esai_dai, i32 0, i32 12), align 8
  %bf.set107 = or i8 %bf.load, -32
  store i8 %bf.set107, ptr getelementptr inbounds (%struct.snd_soc_dai_driver, ptr @fsl_esai_dai, i32 0, i32 12), align 8
  br label %if.end108

if.end108:                                        ; preds = %if.then101, %if.end91.if.end108_crit_edge
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 10
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.30, ptr noundef nonnull @fsl_esai_probe.__key, i16 noundef signext 3) #10
  call void @pm_runtime_enable(ptr noundef %dev) #10
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %39 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.end108.if.end123_crit_edge, label %if.then117

if.end108.if.end123_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.then117:                                       ; preds = %if.end108
  %call119 = call i32 @fsl_esai_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.then117.if.end123_crit_edge, label %if.then117.err_pm_disable_crit_edge

if.then117.err_pm_disable_crit_edge:              ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pm_disable

if.then117.if.end123_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.end123:                                        ; preds = %if.then117.if.end123_crit_edge, %if.end108.if.end123_crit_edge
  %call.i288 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i288)
  %cmp126 = icmp slt i32 %call.i288, 0
  br i1 %cmp126, label %if.then127, label %if.end129

if.then127:                                       ; preds = %if.end123
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !201
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %40 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !202
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then127.err_pm_get_sync_crit_edge, label %do.end11.i.i.i.i

if.then127.err_pm_get_sync_crit_edge:             ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pm_get_sync

do.end11.i.i.i.i:                                 ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !203
  br label %err_pm_get_sync

if.end129:                                        ; preds = %if.end123
  %call130 = call fastcc i32 @fsl_esai_hw_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %if.end129.err_pm_get_sync_crit_edge

if.end129.err_pm_get_sync_crit_edge:              ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pm_get_sync

if.end133:                                        ; preds = %if.end129
  %tx_mask = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 14
  %41 = ptrtoint ptr %tx_mask to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %tx_mask, align 4
  %rx_mask = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 15
  %42 = ptrtoint ptr %rx_mask to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %rx_mask, align 4
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call135 = call i32 @regmap_write(ptr noundef %44, i32 noundef 228, i32 noundef 0) #10
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call137 = call i32 @regmap_write(ptr noundef %46, i32 noundef 232, i32 noundef 0) #10
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %call139 = call i32 @regmap_write(ptr noundef %48, i32 noundef 236, i32 noundef 0) #10
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %call141 = call i32 @regmap_write(ptr noundef %50, i32 noundef 240, i32 noundef 0) #10
  %call.i289 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i289)
  %cmp144 = icmp slt i32 %call.i289, 0
  br i1 %cmp144, label %if.end133.err_pm_get_sync_crit_edge, label %if.end146

if.end133.err_pm_get_sync_crit_edge:              ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pm_get_sync

if.end146:                                        ; preds = %if.end133
  %call147 = call i32 @imx_pcm_dma_init(ptr noundef %pdev, i32 noundef 262144) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end154, label %do.end152

do.end152:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %call147) #13
  br label %err_pm_get_sync

if.end154:                                        ; preds = %if.end146
  %call156 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @fsl_esai_component, ptr noundef nonnull @fsl_esai_dai, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %do.body164, label %do.end161

do.end161:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call156) #13
  br label %err_pm_get_sync

do.body164:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  %work = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 8
  call void @__init_work(ptr noundef %work, i32 noundef 0) #10
  %51 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 8, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @fsl_esai_probe.__key.37, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry168 = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 8, i32 1
  %52 = ptrtoint ptr %entry168 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %entry168, ptr %entry168, align 4
  %prev.i = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 8, i32 1, i32 1
  %53 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %entry168, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.fsl_esai, ptr %call.i, i32 0, i32 8, i32 2
  %54 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @fsl_esai_hw_reset, ptr %func, align 4
  br label %cleanup

err_pm_get_sync:                                  ; preds = %do.end161, %do.end152, %if.end133.err_pm_get_sync_crit_edge, %if.end129.err_pm_get_sync_crit_edge, %do.end11.i.i.i.i, %if.then127.err_pm_get_sync_crit_edge
  %ret.0 = phi i32 [ %call130, %if.end129.err_pm_get_sync_crit_edge ], [ %call.i289, %if.end133.err_pm_get_sync_crit_edge ], [ %call147, %do.end152 ], [ %call156, %do.end161 ], [ %call.i288, %if.then127.err_pm_get_sync_crit_edge ], [ %call.i288, %do.end11.i.i.i.i ]
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %55 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp.i290 = icmp eq i32 %56, 2
  br i1 %cmp.i290, label %err_pm_get_sync.err_pm_disable_crit_edge, label %if.then174

err_pm_get_sync.err_pm_disable_crit_edge:         ; preds = %err_pm_get_sync
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pm_disable

if.then174:                                       ; preds = %err_pm_get_sync
  call void @__sanitizer_cov_trace_pc() #12
  %call176 = call i32 @fsl_esai_runtime_suspend(ptr noundef %dev)
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %if.then174, %err_pm_get_sync.err_pm_disable_crit_edge, %if.then117.err_pm_disable_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_pm_get_sync.err_pm_disable_crit_edge ], [ %ret.0, %if.then174 ], [ %call119, %if.then117.err_pm_disable_crit_edge ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %do.body164, %do.end83, %if.end71.cleanup_crit_edge, %do.end29, %do.end, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then8 ], [ %10, %do.end ], [ %15, %do.end29 ], [ %call.i286, %do.end83 ], [ %ret.1, %err_pm_disable ], [ 0, %do.body164 ], [ -12, %entry.cleanup_crit_edge ], [ %call72, %if.end71.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_esai_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @fsl_esai_runtime_suspend(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %work = getelementptr inbounds %struct.fsl_esai, ptr %1, i32 0, i32 8
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esai_isr(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  %esr = alloca i32, align 4
  %saisr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.fsl_esai, ptr %devid, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %esr) #10
  %2 = ptrtoint ptr %esr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %esr, align 4, !annotation !200
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saisr) #10
  %3 = ptrtoint ptr %saisr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %saisr, align 4, !annotation !200
  %regmap = getelementptr inbounds %struct.fsl_esai, ptr %devid, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef 12, ptr noundef nonnull %esr) #10
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %7, i32 noundef 204, ptr noundef nonnull %saisr) #10
  %8 = ptrtoint ptr %saisr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %saisr, align 4
  %and = and i32 %9, 16512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %land.lhs.true

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %soc = getelementptr inbounds %struct.fsl_esai, ptr %devid, i32 0, i32 9
  %10 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end15_crit_edge, label %do.body

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esai_isr.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esai_isr, %if.then9)) #10
          to label %do.end [label %if.then9], !srcloc !205

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esai_isr.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.41) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 212, i32 noundef 1048576, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i265 = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 220, i32 noundef 1048576, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %work = getelementptr inbounds %struct.fsl_esai, ptr %devid, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %work) #10
  br label %if.end15

if.end15:                                         ; preds = %do.end, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  %19 = ptrtoint ptr %esr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %esr, align 4
  %and16 = and i32 %20, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end36_crit_edge, label %do.body19

if.end15.if.end36_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

do.body19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esai_isr.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esai_isr, %if.then31)) #10
          to label %if.end36 [label %if.then31], !srcloc !205

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  %dev32 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esai_isr.__UNIQUE_ID_ddebug242, ptr noundef %dev32, ptr noundef nonnull @.str.42) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %do.body19, %if.end15.if.end36_crit_edge
  %21 = ptrtoint ptr %esr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %esr, align 4
  %and37 = and i32 %22, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end44_crit_edge, label %do.end42

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %dev43 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev43, ptr noundef nonnull @.str.43) #13
  br label %if.end44

if.end44:                                         ; preds = %do.end42, %if.end36.if.end44_crit_edge
  %23 = ptrtoint ptr %esr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %esr, align 4
  %and45 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end52_crit_edge, label %do.end50

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %dev51 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev51, ptr noundef nonnull @.str.45) #13
  br label %if.end52

if.end52:                                         ; preds = %do.end50, %if.end44.if.end52_crit_edge
  %25 = ptrtoint ptr %esr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %esr, align 4
  %and53 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end73_crit_edge, label %do.body56

if.end52.if.end73_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

do.body56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esai_isr.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esai_isr, %if.then68)) #10
          to label %if.end73 [label %if.then68], !srcloc !205

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  %dev69 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esai_isr.__UNIQUE_ID_ddebug243, ptr noundef %dev69, ptr noundef nonnull @.str.47) #10
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %do.body56, %if.end52.if.end73_crit_edge
  %27 = ptrtoint ptr %esr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %esr, align 4
  %and74 = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end73.if.end94_crit_edge, label %do.body77

if.end73.if.end94_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

do.body77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esai_isr.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esai_isr, %if.then89)) #10
          to label %if.end94 [label %if.then89], !srcloc !205

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #12
  %dev90 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esai_isr.__UNIQUE_ID_ddebug244, ptr noundef %dev90, ptr noundef nonnull @.str.48) #10
  br label %if.end94

if.end94:                                         ; preds = %if.then89, %do.body77, %if.end73.if.end94_crit_edge
  %29 = ptrtoint ptr %esr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %esr, align 4
  %and95 = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end94.if.end115_crit_edge, label %do.body98

if.end94.if.end115_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

do.body98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esai_isr.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esai_isr, %if.then110)) #10
          to label %if.end115 [label %if.then110], !srcloc !205

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #12
  %dev111 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esai_isr.__UNIQUE_ID_ddebug245, ptr noundef %dev111, ptr noundef nonnull @.str.49) #10
  br label %if.end115

if.end115:                                        ; preds = %if.then110, %do.body98, %if.end94.if.end115_crit_edge
  %31 = ptrtoint ptr %esr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %esr, align 4
  %and116 = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end136_crit_edge, label %do.body119

if.end115.if.end136_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

do.body119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esai_isr.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esai_isr, %if.then131)) #10
          to label %if.end136 [label %if.then131], !srcloc !205

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #12
  %dev132 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esai_isr.__UNIQUE_ID_ddebug246, ptr noundef %dev132, ptr noundef nonnull @.str.50) #10
  br label %if.end136

if.end136:                                        ; preds = %if.then131, %do.body119, %if.end115.if.end136_crit_edge
  %33 = ptrtoint ptr %esr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %esr, align 4
  %and137 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end136.if.end157_crit_edge, label %do.body140

if.end136.if.end157_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

do.body140:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esai_isr.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esai_isr, %if.then152)) #10
          to label %if.end157 [label %if.then152], !srcloc !205

if.then152:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #12
  %dev153 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esai_isr.__UNIQUE_ID_ddebug247, ptr noundef %dev153, ptr noundef nonnull @.str.51) #10
  br label %if.end157

if.end157:                                        ; preds = %if.then152, %do.body140, %if.end136.if.end157_crit_edge
  %35 = ptrtoint ptr %esr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %esr, align 4
  %and158 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.end157.if.end178_crit_edge, label %do.body161

if.end157.if.end178_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

do.body161:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esai_isr.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esai_isr, %if.then173)) #10
          to label %if.end178 [label %if.then173], !srcloc !205

if.then173:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #12
  %dev174 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esai_isr.__UNIQUE_ID_ddebug248, ptr noundef %dev174, ptr noundef nonnull @.str.52) #10
  br label %if.end178

if.end178:                                        ; preds = %if.then173, %do.body161, %if.end157.if.end178_crit_edge
  %37 = ptrtoint ptr %esr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %esr, align 4
  %and179 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %if.end178.if.end199_crit_edge, label %do.body182

if.end178.if.end199_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199

do.body182:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esai_isr.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esai_isr, %if.then194)) #10
          to label %if.end199 [label %if.then194], !srcloc !205

if.then194:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #12
  %dev195 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esai_isr.__UNIQUE_ID_ddebug249, ptr noundef %dev195, ptr noundef nonnull @.str.53) #10
  br label %if.end199

if.end199:                                        ; preds = %if.then194, %do.body182, %if.end178.if.end199_crit_edge
  %39 = ptrtoint ptr %esr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %esr, align 4
  %and200 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %if.end199.if.end220_crit_edge, label %do.body203

if.end199.if.end220_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end220

do.body203:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esai_isr.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esai_isr, %if.then215)) #10
          to label %if.end220 [label %if.then215], !srcloc !205

if.then215:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #12
  %dev216 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esai_isr.__UNIQUE_ID_ddebug250, ptr noundef %dev216, ptr noundef nonnull @.str.54) #10
  br label %if.end220

if.end220:                                        ; preds = %if.then215, %do.body203, %if.end199.if.end220_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saisr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %esr) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_esai_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %coreclk = getelementptr inbounds %struct.fsl_esai, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %coreclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %coreclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %spbaclk = getelementptr inbounds %struct.fsl_esai, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %spbaclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spbaclk, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %call.i68 = tail call i32 @clk_prepare(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool.not.i69 = icmp eq i32 %call.i68, 0
  br i1 %tobool.not.i69, label %if.end.i72, label %if.then3.err_spbaclk_crit_edge

if.then3.err_spbaclk_crit_edge:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_spbaclk

if.end.i72:                                       ; preds = %if.then3
  %call1.i70 = tail call i32 @clk_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i70)
  %tobool2.not.i71 = icmp eq i32 %call1.i70, 0
  br i1 %tobool2.not.i71, label %if.end.i72.if.end9_crit_edge, label %if.end.i72.err_spbaclk.sink.split_crit_edge

if.end.i72.err_spbaclk.sink.split_crit_edge:      ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_spbaclk.sink.split

if.end.i72.if.end9_crit_edge:                     ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end9:                                          ; preds = %if.end.i72.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %extalclk = getelementptr inbounds %struct.fsl_esai, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %extalclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extalclk, align 4
  %cmp.i76 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %if.end9.if.end17_crit_edge, label %if.then11

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then11:                                        ; preds = %if.end9
  %call.i77 = tail call i32 @clk_prepare(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i78 = icmp eq i32 %call.i77, 0
  br i1 %tobool.not.i78, label %if.end.i81, label %if.then11.err_extalclk_crit_edge

if.then11.err_extalclk_crit_edge:                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_extalclk

if.end.i81:                                       ; preds = %if.then11
  %call1.i79 = tail call i32 @clk_enable(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %tobool2.not.i80 = icmp eq i32 %call1.i79, 0
  br i1 %tobool2.not.i80, label %if.end.i81.if.end17_crit_edge, label %if.end.i81.err_extalclk.sink.split_crit_edge

if.end.i81.err_extalclk.sink.split_crit_edge:     ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_extalclk.sink.split

if.end.i81.if.end17_crit_edge:                    ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %if.end.i81.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %fsysclk = getelementptr inbounds %struct.fsl_esai, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %fsysclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fsysclk, align 4
  %cmp.i85 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85, label %if.end17.if.end25_crit_edge, label %if.then19

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then19:                                        ; preds = %if.end17
  %call.i86 = tail call i32 @clk_prepare(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool.not.i87 = icmp eq i32 %call.i86, 0
  br i1 %tobool.not.i87, label %if.end.i90, label %if.then19.err_fsysclk_crit_edge

if.then19.err_fsysclk_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_fsysclk

if.end.i90:                                       ; preds = %if.then19
  %call1.i88 = tail call i32 @clk_enable(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %tobool2.not.i89 = icmp eq i32 %call1.i88, 0
  br i1 %tobool2.not.i89, label %if.end.i90.if.end25_crit_edge, label %if.end.i90.err_fsysclk.sink.split_crit_edge

if.end.i90.err_fsysclk.sink.split_crit_edge:      ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_fsysclk.sink.split

if.end.i90.if.end25_crit_edge:                    ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end25:                                         ; preds = %if.end.i90.if.end25_crit_edge, %if.end17.if.end25_crit_edge
  %regmap = getelementptr inbounds %struct.fsl_esai, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %11, i1 noundef zeroext false) #10
  %call26 = tail call fastcc i32 @fsl_esai_register_restore(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %err_regcache_sync

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_regcache_sync:                                ; preds = %if.end25
  %12 = ptrtoint ptr %fsysclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fsysclk, align 4
  %cmp.i94 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %err_regcache_sync.err_fsysclk_crit_edge, label %if.then32

err_regcache_sync.err_fsysclk_crit_edge:          ; preds = %err_regcache_sync
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_fsysclk

if.then32:                                        ; preds = %err_regcache_sync
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef %13) #10
  br label %err_fsysclk.sink.split

err_fsysclk.sink.split:                           ; preds = %if.then32, %if.end.i90.err_fsysclk.sink.split_crit_edge
  %.sink = phi ptr [ %13, %if.then32 ], [ %9, %if.end.i90.err_fsysclk.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call26, %if.then32 ], [ %call1.i88, %if.end.i90.err_fsysclk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #10
  br label %err_fsysclk

err_fsysclk:                                      ; preds = %err_fsysclk.sink.split, %err_regcache_sync.err_fsysclk_crit_edge, %if.then19.err_fsysclk_crit_edge
  %ret.0 = phi i32 [ %call26, %err_regcache_sync.err_fsysclk_crit_edge ], [ %call.i86, %if.then19.err_fsysclk_crit_edge ], [ %ret.0.ph, %err_fsysclk.sink.split ]
  %14 = ptrtoint ptr %extalclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %extalclk, align 4
  %cmp.i95 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %err_fsysclk.err_extalclk_crit_edge, label %if.then37

err_fsysclk.err_extalclk_crit_edge:               ; preds = %err_fsysclk
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_extalclk

if.then37:                                        ; preds = %err_fsysclk
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef %15) #10
  br label %err_extalclk.sink.split

err_extalclk.sink.split:                          ; preds = %if.then37, %if.end.i81.err_extalclk.sink.split_crit_edge
  %.sink105 = phi ptr [ %15, %if.then37 ], [ %7, %if.end.i81.err_extalclk.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %if.then37 ], [ %call1.i79, %if.end.i81.err_extalclk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink105) #10
  br label %err_extalclk

err_extalclk:                                     ; preds = %err_extalclk.sink.split, %err_fsysclk.err_extalclk_crit_edge, %if.then11.err_extalclk_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_fsysclk.err_extalclk_crit_edge ], [ %call.i77, %if.then11.err_extalclk_crit_edge ], [ %ret.1.ph, %err_extalclk.sink.split ]
  %16 = ptrtoint ptr %spbaclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spbaclk, align 4
  %cmp.i96 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %err_extalclk.err_spbaclk_crit_edge, label %if.then42

err_extalclk.err_spbaclk_crit_edge:               ; preds = %err_extalclk
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_spbaclk

if.then42:                                        ; preds = %err_extalclk
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef %17) #10
  br label %err_spbaclk.sink.split

err_spbaclk.sink.split:                           ; preds = %if.then42, %if.end.i72.err_spbaclk.sink.split_crit_edge
  %.sink106 = phi ptr [ %17, %if.then42 ], [ %5, %if.end.i72.err_spbaclk.sink.split_crit_edge ]
  %ret.2.ph = phi i32 [ %ret.1, %if.then42 ], [ %call1.i70, %if.end.i72.err_spbaclk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink106) #10
  br label %err_spbaclk

err_spbaclk:                                      ; preds = %err_spbaclk.sink.split, %err_extalclk.err_spbaclk_crit_edge, %if.then3.err_spbaclk_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_extalclk.err_spbaclk_crit_edge ], [ %call.i68, %if.then3.err_spbaclk_crit_edge ], [ %ret.2.ph, %err_spbaclk.sink.split ]
  %18 = ptrtoint ptr %coreclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %coreclk, align 4
  tail call void @clk_disable(ptr noundef %19) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_spbaclk, %if.end.i.cleanup.sink.split_crit_edge
  %.sink107 = phi ptr [ %19, %err_spbaclk ], [ %3, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.2, %err_spbaclk ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink107) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_esai_hw_init(ptr nocapture noundef readonly %esai_priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.fsl_esai, ptr %esai_priv, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %regmap = getelementptr inbounds %struct.fsl_esai, ptr %esai_priv, i32 0, i32 3
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 8, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.82, i32 noundef %call.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 8, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool4.not = icmp eq i32 %call.i26, 0
  br i1 %tobool4.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.85, i32 noundef %call.i26) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 248, i32 noundef 4095, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 252, i32 noundef 4095, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end8, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i26, %do.end8 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_pcm_dma_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_esai_hw_reset(ptr noundef %work) #2 align 64 {
entry:
  %tfcr = alloca i32, align 4
  %rfcr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tfcr) #10
  %0 = ptrtoint ptr %tfcr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tfcr, align 4, !annotation !200
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rfcr) #10
  %1 = ptrtoint ptr %rfcr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rfcr, align 4, !annotation !200
  %lock = getelementptr i8, ptr %work, i32 48
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %regmap = getelementptr i8, ptr %work, i32 -20
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_read(ptr noundef %3, i32 noundef 16, ptr noundef nonnull %tfcr) #10
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call8 = call i32 @regmap_read(ptr noundef %5, i32 noundef 24, ptr noundef nonnull %rfcr) #10
  %6 = ptrtoint ptr %tfcr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tfcr, align 4
  %8 = ptrtoint ptr %rfcr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rfcr, align 4
  call fastcc void @fsl_esai_trigger_stop(ptr noundef %add.ptr, i1 noundef zeroext true)
  call fastcc void @fsl_esai_trigger_stop(ptr noundef %add.ptr, i1 noundef zeroext false)
  %call18 = call fastcc i32 @fsl_esai_hw_init(ptr noundef %add.ptr)
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 212, i32 noundef 524288, i32 noundef 524288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i66 = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 220, i32 noundef 524288, i32 noundef 524288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %call23 = call fastcc i32 @fsl_esai_register_restore(ptr noundef %add.ptr)
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i67 = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 212, i32 noundef 524288, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i68 = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 220, i32 noundef 524288, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i69 = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 248, i32 noundef 4095, i32 noundef 4095, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i70 = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 252, i32 noundef 4095, i32 noundef 4095, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %22 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool35.not = icmp eq i32 %22, 0
  br i1 %tobool35.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @fsl_esai_trigger_start(ptr noundef %add.ptr, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %23 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool40.not = icmp eq i32 %23, 0
  br i1 %tobool40.not, label %if.end.if.end43_crit_edge, label %if.then41

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then41:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @fsl_esai_trigger_start(ptr noundef %add.ptr, i1 noundef zeroext false)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end.if.end43_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rfcr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tfcr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_esai_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.fsl_esai, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #10
  %fsysclk = getelementptr inbounds %struct.fsl_esai, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %fsysclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fsysclk, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %extalclk = getelementptr inbounds %struct.fsl_esai, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %extalclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extalclk, align 4
  %cmp.i18 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i18, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef %7) #10
  tail call void @clk_unprepare(ptr noundef %7) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %spbaclk = getelementptr inbounds %struct.fsl_esai, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %spbaclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spbaclk, align 4
  %cmp.i19 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i19, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef %9) #10
  tail call void @clk_unprepare(ptr noundef %9) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %coreclk = getelementptr inbounds %struct.fsl_esai, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %coreclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %coreclk, align 4
  tail call void @clk_disable(ptr noundef %11) #10
  tail call void @clk_unprepare(ptr noundef %11) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_esai_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 8, label %entry.return_crit_edge1
    i32 16, label %entry.return_crit_edge2
    i32 24, label %entry.return_crit_edge3
    i32 128, label %entry.return_crit_edge4
    i32 132, label %entry.return_crit_edge5
    i32 136, label %entry.return_crit_edge6
    i32 140, label %entry.return_crit_edge7
    i32 144, label %entry.return_crit_edge8
    i32 148, label %entry.return_crit_edge9
    i32 152, label %entry.return_crit_edge10
    i32 208, label %entry.return_crit_edge11
    i32 212, label %entry.return_crit_edge12
    i32 216, label %entry.return_crit_edge13
    i32 220, label %entry.return_crit_edge14
    i32 224, label %entry.return_crit_edge15
    i32 228, label %entry.return_crit_edge16
    i32 232, label %entry.return_crit_edge17
    i32 236, label %entry.return_crit_edge18
    i32 240, label %entry.return_crit_edge19
    i32 248, label %entry.return_crit_edge20
    i32 252, label %entry.return_crit_edge21
  ]

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_esai_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %reg, label %sw.default [
    i32 4, label %entry.return_crit_edge
    i32 8, label %entry.return_crit_edge1
    i32 12, label %entry.return_crit_edge2
    i32 16, label %entry.return_crit_edge3
    i32 20, label %entry.return_crit_edge4
    i32 24, label %entry.return_crit_edge5
    i32 28, label %entry.return_crit_edge6
    i32 160, label %entry.return_crit_edge7
    i32 164, label %entry.return_crit_edge8
    i32 168, label %entry.return_crit_edge9
    i32 172, label %entry.return_crit_edge10
    i32 204, label %entry.return_crit_edge11
    i32 208, label %entry.return_crit_edge12
    i32 212, label %entry.return_crit_edge13
    i32 216, label %entry.return_crit_edge14
    i32 220, label %entry.return_crit_edge15
    i32 224, label %entry.return_crit_edge16
    i32 228, label %entry.return_crit_edge17
    i32 232, label %entry.return_crit_edge18
    i32 236, label %entry.return_crit_edge19
    i32 240, label %entry.return_crit_edge20
    i32 248, label %entry.return_crit_edge21
    i32 252, label %entry.return_crit_edge22
  ]

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_esai_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %reg, label %sw.default [
    i32 4, label %entry.return_crit_edge
    i32 12, label %entry.return_crit_edge1
    i32 20, label %entry.return_crit_edge2
    i32 28, label %entry.return_crit_edge3
    i32 160, label %entry.return_crit_edge4
    i32 164, label %entry.return_crit_edge5
    i32 168, label %entry.return_crit_edge6
    i32 172, label %entry.return_crit_edge7
    i32 204, label %entry.return_crit_edge8
  ]

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_esai_dai_probe(ptr nocapture noundef %dai) #7 align 64 {
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
  %dma_params_tx = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 1
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
define internal i32 @fsl_esai_set_dai_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  %extalclk = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %extalclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extalclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %clk_id)
  %cmp = icmp slt i32 %clk_id, 2
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %synchronous = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %synchronous to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %synchronous, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool = icmp ne i8 %7, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %8 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool, %lor.rhs ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp1 = icmp eq i32 %dir, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq)
  %cmp3 = icmp eq i32 %freq, 0
  br i1 %cmp3, label %do.end, label %if.end

do.end:                                           ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  %cond = select i1 %cmp1, ptr @.str.59, ptr @.str.60
  %cond6 = select i1 %8, i32 84, i32 82
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.57, ptr noundef nonnull %cond, i32 noundef %cond6) #13
  br label %cleanup

if.end:                                           ; preds = %lor.end
  %idxprom = zext i1 %8 to i32
  %arrayidx = getelementptr %struct.fsl_esai, ptr %3, i32 0, i32 17, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %freq)
  %cmp8 = icmp eq i32 %10, %freq
  br i1 %cmp8, label %land.lhs.true, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %arrayidx11 = getelementptr %struct.fsl_esai, ptr %3, i32 0, i32 19, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx11, align 1, !range !204
  %13 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %dir)
  %cmp13 = icmp eq i32 %13, %dir
  br i1 %cmp13, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %arrayidx19 = getelementptr %struct.fsl_esai, ptr %3, i32 0, i32 20, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %arrayidx19, align 1
  %regmap = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %cond22 = select i1 %8, i32 216, i32 224
  %cond25 = select i1 %cmp1, i32 0, i32 8388608
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %cond22, i32 noundef 8388608, i32 noundef %cond25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br i1 %cmp1, label %if.end16.out_crit_edge, label %if.end29

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end29:                                         ; preds = %if.end16
  %17 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %clk_id, label %if.end29.cleanup_crit_edge [
    i32 0, label %if.end29.sw.bb_crit_edge
    i32 2, label %if.end29.sw.bb_crit_edge195
    i32 1, label %if.end29.sw.epilog_crit_edge
    i32 3, label %sw.bb31
  ]

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end29.sw.bb_crit_edge195:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end29.sw.bb_crit_edge:                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end29.sw.bb_crit_edge, %if.end29.sw.bb_crit_edge195
  %fsysclk = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %fsysclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fsysclk, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %synchronous32 = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 22
  %20 = ptrtoint ptr %synchronous32 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %synchronous32, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool33.not = icmp eq i8 %21, 0
  %cond35 = select i1 %tobool33.not, i32 131072, i32 524288
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb31, %sw.bb, %if.end29.sw.epilog_crit_edge
  %clksrc.0 = phi ptr [ %5, %sw.bb31 ], [ %19, %sw.bb ], [ %5, %if.end29.sw.epilog_crit_edge ]
  %ecr.0 = phi i32 [ %cond35, %sw.bb31 ], [ 0, %sw.bb ], [ 524288, %if.end29.sw.epilog_crit_edge ]
  %cmp.i = icmp ugt ptr %clksrc.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end41, label %if.end46

do.end41:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %24 = and i32 %clk_id, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool43.not = icmp eq i32 %24, 0
  %cond44 = select i1 %tobool43.not, ptr @.str.17, ptr @.str.12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.62, ptr noundef nonnull %cond44) #13
  %25 = ptrtoint ptr %clksrc.0 to i32
  br label %cleanup

if.end46:                                         ; preds = %sw.epilog
  %call47 = tail call i32 @clk_get_rate(ptr noundef %clksrc.0) #10
  %div = udiv i32 %call47, %freq
  %mul = mul i32 %div, %freq
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %call47)
  %cmp48 = icmp ugt i32 %mul, %call47
  %sub = sub i32 %mul, %call47
  %26 = tail call i32 @llvm.usub.sat.i32(i32 %call47, i32 %mul)
  %ret.0 = select i1 %cmp48, i32 %sub, i32 %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp61.not = icmp eq i32 %ret.0, 0
  br i1 %cmp61.not, label %if.end46.if.end75_crit_edge, label %land.lhs.true63

if.end46.if.end75_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

land.lhs.true63:                                  ; preds = %if.end46
  %div64 = udiv i32 %call47, %ret.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %div64)
  %cmp65 = icmp ult i32 %div64, 1000
  br i1 %cmp65, label %do.end70, label %land.lhs.true63.if.end75_crit_edge

land.lhs.true63.if.end75_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

do.end70:                                         ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %cond74 = select i1 %8, i32 84, i32 82
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.65, i32 noundef %cond74) #13
  br label %cleanup

if.end75:                                         ; preds = %land.lhs.true63.if.end75_crit_edge, %if.end46.if.end75_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div)
  %cmp76 = icmp eq i32 %div, 1
  br i1 %cmp76, label %land.lhs.true78, label %if.else87

land.lhs.true78:                                  ; preds = %if.end75
  %29 = ptrtoint ptr %extalclk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %extalclk, align 4
  %cmp80 = icmp eq ptr %clksrc.0, %30
  br i1 %cmp80, label %if.then82, label %land.lhs.true78.do.end93_crit_edge

land.lhs.true78.do.end93_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end93

if.then82:                                        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #12
  %cond85 = select i1 %8, i32 262144, i32 65536
  %or86 = or i32 %ecr.0, %cond85
  br label %out

if.else87:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_cmp4(i32 %call47, i32 %freq)
  %cmp88 = icmp ult i32 %call47, %freq
  br i1 %cmp88, label %if.else87.do.end93_crit_edge, label %if.end99

if.else87.do.end93_crit_edge:                     ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end93

do.end93:                                         ; preds = %if.else87.do.end93_crit_edge, %land.lhs.true78.do.end93_crit_edge
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %cond97 = select i1 %8, i32 84, i32 82
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.65, i32 noundef %cond97) #13
  br label %cleanup

if.end99:                                         ; preds = %if.else87
  %call101 = tail call fastcc i32 @fsl_esai_divisor_cal(ptr noundef %dai, i1 noundef zeroext %8, i32 noundef %div, i1 noundef zeroext false, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end104:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx19, align 1
  br label %out

out:                                              ; preds = %if.end104, %if.then82, %if.end16.out_crit_edge
  %ecr.1 = phi i32 [ 0, %if.end16.out_crit_edge ], [ %or86, %if.then82 ], [ %ecr.0, %if.end104 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool109 = icmp ne i32 %dir, 0
  %arrayidx113 = getelementptr %struct.fsl_esai, ptr %3, i32 0, i32 19, i32 %idxprom
  %frombool114 = zext i1 %tobool109 to i8
  %34 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool114, ptr %arrayidx113, align 1
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %freq, ptr %arrayidx, align 4
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %cond122 = select i1 %8, i32 786432, i32 196608
  %call.i193 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 8, i32 noundef %cond122, i32 noundef %ecr.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end99.cleanup_crit_edge, %do.end93, %do.end70, %do.end41, %if.end29.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %out ], [ %25, %do.end41 ], [ -22, %do.end70 ], [ -22, %do.end93 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end29.cleanup_crit_edge ], [ %call101, %if.end99.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_esai_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
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
  %and = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 5
  br i1 %4, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.fsl_esai_set_dai_fmt, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep72 = getelementptr inbounds [5 x i32], ptr @switch.table.fsl_esai_set_dai_fmt.88, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep72 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load73 = load i32, ptr %switch.gep72, align 4
  %and13 = lshr i32 %fmt, 8
  %7 = and i32 %and13, 15
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %7, label %switch.lookup.cleanup_crit_edge [
    i32 0, label %switch.lookup.sw.epilog20_crit_edge
    i32 3, label %sw.bb14
    i32 2, label %sw.bb15
    i32 4, label %sw.bb17
  ]

switch.lookup.sw.epilog20_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog20

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb14:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %9 = and i32 %switch.load73, 524288
  br label %sw.epilog20

sw.bb15:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %xor16 = xor i32 %switch.load73, 524288
  br label %sw.epilog20

sw.bb17:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %xor18 = xor i32 %switch.load73, 1835008
  br label %sw.epilog20

sw.epilog20:                                      ; preds = %sw.bb17, %sw.bb15, %sw.bb14, %switch.lookup.sw.epilog20_crit_edge
  %xccr.1 = phi i32 [ %xor18, %sw.bb17 ], [ %xor16, %sw.bb15 ], [ %9, %sw.bb14 ], [ %switch.load73, %switch.lookup.sw.epilog20_crit_edge ]
  %consumer_mode = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 21
  %10 = ptrtoint ptr %consumer_mode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %consumer_mode, align 4
  %and21 = and i32 %fmt, 61440
  %11 = add nsw i32 %and21, -4096
  %12 = lshr exact i32 %11, 12
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %12, label %sw.epilog20.cleanup_crit_edge [
    i32 0, label %sw.bb22
    i32 1, label %sw.bb24
    i32 2, label %sw.bb26
    i32 3, label %sw.bb28
  ]

sw.epilog20.cleanup_crit_edge:                    ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb22:                                          ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %consumer_mode to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %consumer_mode, align 4
  br label %sw.epilog31

sw.bb24:                                          ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #12
  %or25 = or i32 %xccr.1, 2097152
  br label %sw.epilog31

sw.bb26:                                          ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #12
  %or27 = or i32 %xccr.1, 4194304
  br label %sw.epilog31

sw.bb28:                                          ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #12
  %or29 = or i32 %xccr.1, 6291456
  br label %sw.epilog31

sw.epilog31:                                      ; preds = %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22
  %xccr.2 = phi i32 [ %or29, %sw.bb28 ], [ %or27, %sw.bb26 ], [ %or25, %sw.bb24 ], [ %xccr.1, %sw.bb22 ]
  %regmap = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 212, i32 noundef 98432, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i69 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 220, i32 noundef 98432, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i70 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 216, i32 noundef 8126464, i32 noundef %xccr.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call.i71 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 224, i32 noundef 8126464, i32 noundef %xccr.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog31, %sw.epilog20.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog31 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %sw.epilog20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_esai_set_dai_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %sub = shl i32 %slots, 9
  %shl = add i32 %sub, 15872
  %and = and i32 %shl, 15872
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 216, i32 noundef 15872, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 224, i32 noundef 15872, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %slot_width7 = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %slot_width7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %slot_width, ptr %slot_width7, align 4
  %slots8 = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 13
  %9 = ptrtoint ptr %slots8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %slots, ptr %slots8, align 4
  %tx_mask9 = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %tx_mask9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %tx_mask, ptr %tx_mask9, align 4
  %rx_mask10 = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 15
  %11 = ptrtoint ptr %rx_mask10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %rx_mask, ptr %rx_mask10, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_esai_startup(ptr nocapture noundef readnone %substream, ptr noundef %dai) #2 align 64 {
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
  %call1 = tail call i32 @snd_soc_dai_active(ptr noundef %dai) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %synchronous = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %synchronous to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %synchronous, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool2.not, i32 0, i32 64
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 208, i32 noundef 64, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %slots = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slots, align 4
  %sub = shl i32 %11, 9
  %shl = add i32 %sub, 15872
  %and = and i32 %shl, 15872
  %call.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 216, i32 noundef 15872, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %14 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slots, align 4
  %sub8 = shl i32 %15, 9
  %shl9 = add i32 %sub8, 15872
  %and10 = and i32 %shl9, 15872
  %call.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 224, i32 noundef 15872, i32 noundef %and10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_esai_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %7, %entry.if.then.i.i.i_crit_edge ], [ %10, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #10, !range !206
  %add.i.i.i = or i32 %8, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #10
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %slots = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 13
  %13 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %slots, align 4
  %add = add i32 %12, -1
  %sub = add i32 %add, %14
  %div = udiv i32 %sub, %14
  %slot_width4 = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %slot_width4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slot_width4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  %spec.select = select i1 %tobool.not, i32 %call1.i, i32 %16
  %arrayidx.i.i127 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %arrayidx.i.i127 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i127, align 4
  %mul = mul i32 %18, %14
  %mul8 = mul i32 %mul, %spec.select
  %synchronous = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 22
  %19 = ptrtoint ptr %synchronous to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %synchronous, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool9.not = icmp ne i8 %20, 0
  %21 = select i1 %tobool9.not, i1 true, i1 %cmp
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i.i, align 4
  %idxprom.i = zext i1 %21 to i32
  %arrayidx.i = getelementptr %struct.fsl_esai, ptr %25, i32 0, i32 17, i32 %idxprom.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %div.i = udiv i32 %27, %mul8
  %consumer_mode.i = getelementptr inbounds %struct.fsl_esai, ptr %25, i32 0, i32 21
  %28 = ptrtoint ptr %consumer_mode.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %consumer_mode.i, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool2.not.i = icmp eq i8 %29, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %params_width.exit.if.end14_crit_edge

params_width.exit.if.end14_crit_edge:             ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

lor.lhs.false.i:                                  ; preds = %params_width.exit
  %arrayidx5.i = getelementptr %struct.fsl_esai, ptr %25, i32 0, i32 18, i32 %idxprom.i
  %30 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %mul8)
  %cmp.i = icmp eq i32 %31, %mul8
  br i1 %cmp.i, label %lor.lhs.false.i.if.end14_crit_edge, label %if.end.i

lor.lhs.false.i.if.end14_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end.i:                                         ; preds = %lor.lhs.false.i
  %mul.i = mul i32 %div.i, %mul8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %27)
  %cmp6.i = icmp ugt i32 %mul.i, %27
  %sub9.i = sub i32 %mul.i, %27
  %32 = tail call i32 @llvm.usub.sat.i32(i32 %27, i32 %mul.i) #10
  %sub.0.i = select i1 %cmp6.i, i32 %sub9.i, i32 %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.0.i)
  %cmp18.not.i = icmp eq i32 %sub.0.i, 0
  br i1 %cmp18.not.i, label %if.end.i.if.end23.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %div19.i = udiv i32 %27, %sub.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %div19.i)
  %cmp20.i = icmp ult i32 %div19.i, 1000
  br i1 %cmp20.i, label %do.end.i, label %land.lhs.true.i.if.end23.i_crit_edge

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %cond.i = select i1 %21, i32 84, i32 82
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.77, i32 noundef %cond.i) #13
  br label %cleanup

if.end23.i:                                       ; preds = %land.lhs.true.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge
  %arrayidx26.i = getelementptr %struct.fsl_esai, ptr %25, i32 0, i32 20, i32 %idxprom.i
  %33 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx26.i, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool27.not.i = icmp eq i8 %34, 0
  br i1 %tobool27.not.i, label %land.lhs.true28.i, label %if.end23.i.if.end37.i_crit_edge

if.end23.i.if.end37.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

land.lhs.true28.i:                                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %div.i)
  %cmp29.i = icmp ugt i32 %div.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %mul8)
  %cmp31.i = icmp ult i32 %27, %mul8
  %or.cond.i = or i1 %cmp31.i, %cmp29.i
  br i1 %or.cond.i, label %do.end35.i, label %land.lhs.true28.i.if.end37.i_crit_edge

land.lhs.true28.i.if.end37.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

do.end35.i:                                       ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.80) #13
  br label %cleanup

if.end37.i:                                       ; preds = %land.lhs.true28.i.if.end37.i_crit_edge, %if.end23.i.if.end37.i_crit_edge
  %spec.select.i = phi i32 [ %div.i, %land.lhs.true28.i.if.end37.i_crit_edge ], [ 0, %if.end23.i.if.end37.i_crit_edge ]
  %call45.i = tail call fastcc i32 @fsl_esai_divisor_cal(ptr noundef %dai, i1 noundef zeroext %21, i32 noundef %div.i, i1 noundef zeroext true, i32 noundef %spec.select.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %if.end37.i.cleanup_crit_edge

if.end37.i.cleanup_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end48.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul8, ptr %arrayidx5.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end48.i, %lor.lhs.false.i.if.end14_crit_edge, %params_width.exit.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call1.i)
  %cmp15 = icmp ult i32 %call1.i, 24
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %sub17 = add nsw i32 %call1.i, -8
  %shr = lshr i32 %sub17, 2
  %sub16 = sub nsw i32 %shr, %call1.i
  %add18 = add i32 %sub16, %spec.select
  br label %cond.end

cond.false:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %spec.select)
  %cmp19.inv = icmp ugt i32 %spec.select, 31
  %cond = select i1 %cmp19.inv, i32 31, i32 30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i32 [ %add18, %cond.true ], [ %cond, %cond.false ]
  %shl = shl i32 %cond20, 10
  %regmap = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 3
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %cond22 = select i1 %cmp, i32 212, i32 220
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef %cond22, i32 noundef 31744, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br i1 %cmp, label %cond.end.if.end30_crit_edge, label %land.lhs.true

cond.end.if.end30_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true:                                    ; preds = %cond.end
  %38 = ptrtoint ptr %synchronous to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %synchronous, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool26.not = icmp eq i8 %39, 0
  br i1 %tobool26.not, label %land.lhs.true.if.end30_crit_edge, label %if.then27

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call.i128 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 212, i32 noundef 31744, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %land.lhs.true.if.end30_crit_edge, %cond.end.if.end30_crit_edge
  %cond43 = phi i32 [ 524094, %if.then27 ], [ 524094, %land.lhs.true.if.end30_crit_edge ], [ 1048574, %cond.end.if.end30_crit_edge ]
  %cond40 = phi i32 [ 24, %if.then27 ], [ 24, %land.lhs.true.if.end30_crit_edge ], [ 16, %cond.end.if.end30_crit_edge ]
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp35 = icmp ugt i32 %45, 1
  %cond36 = select i1 %cmp35, i32 256, i32 0
  %call.i130 = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef %cond22, i32 noundef 768, i32 noundef %cond36, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %call.i131 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef %cond40, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %48 = shl i32 %call1.i, 14
  %49 = and i32 %48, 458752
  %shl46 = sub nsw i32 0, %49
  %and = and i32 %shl46, 458752
  %fifo_depth = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 11
  %50 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fifo_depth, align 4
  %sub47 = shl i32 %51, 8
  %shl48 = add i32 %sub47, 65280
  %and49 = and i32 %shl48, 65280
  %or50 = or i32 %and49, %and
  br i1 %cmp, label %cond.true52, label %cond.false57

cond.true52:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %sub53 = sub i32 6, %div
  %shr54 = lshr i32 252, %sub53
  %and55 = and i32 %shr54, 252
  %or56 = or i32 %and55, %or50
  %or63.c125 = or i32 %or56, 524288
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %call.i132 = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef %cond40, i32 noundef %cond43, i32 noundef %or63.c125, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %call.i133 = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 212, i32 noundef 131072, i32 noundef 131072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end72

cond.false57:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %sub58 = sub i32 4, %div
  %shr59 = lshr i32 60, %sub58
  %and60 = and i32 %shr59, 60
  %or63.c = or i32 %or50, %and60
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %call.i134 = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef %cond40, i32 noundef %cond43, i32 noundef %or63.c, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end72

if.end72:                                         ; preds = %cond.false57, %cond.true52
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call.i135 = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 248, i32 noundef 4095, i32 noundef 4095, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %call.i136 = tail call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 252, i32 noundef 4095, i32 noundef 4095, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.end37.i.cleanup_crit_edge, %do.end35.i, %do.end.i
  %retval.0 = phi i32 [ 0, %if.end72 ], [ -22, %do.end.i ], [ -22, %do.end35.i ], [ %call45.i, %if.end37.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_esai_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %6 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channels, align 8
  %idxprom = zext i1 %cmp to i32
  %arrayidx = getelementptr %struct.fsl_esai, ptr %3, i32 0, i32 16, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx, align 4
  %11 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.do.body2_crit_edge
    i32 6, label %entry.do.body2_crit_edge39
    i32 4, label %entry.do.body2_crit_edge40
    i32 5, label %entry.do.body12_crit_edge
    i32 0, label %entry.do.body12_crit_edge41
    i32 3, label %entry.do.body12_crit_edge42
  ]

entry.do.body12_crit_edge42:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

entry.do.body12_crit_edge41:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

entry.do.body2_crit_edge40:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

entry.do.body2_crit_edge39:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body2:                                         ; preds = %entry.do.body2_crit_edge, %entry.do.body2_crit_edge39, %entry.do.body2_crit_edge40
  %lock = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 10
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  tail call fastcc void @fsl_esai_trigger_start(ptr noundef %3, i1 noundef zeroext %cmp)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #10
  br label %cleanup

do.body12:                                        ; preds = %entry.do.body12_crit_edge, %entry.do.body12_crit_edge41, %entry.do.body12_crit_edge42
  %lock18 = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 10
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock18) #10
  tail call fastcc void @fsl_esai_trigger_stop(ptr noundef %3, i1 noundef zeroext %cmp)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock18, i32 noundef %call20) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body12, %do.body2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body12 ], [ 0, %do.body2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_esai_divisor_cal(ptr nocapture noundef readonly %dai, i1 noundef zeroext %tx, i32 noundef %ratio, i1 noundef zeroext %usefp, i32 noundef %fp) unnamed_addr #2 align 64 {
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
  %cond = select i1 %usefp, i32 16, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fp)
  %tobool3.not = icmp ne i32 %fp, 0
  %4 = and i1 %tobool3.not, %usefp
  br i1 %4, label %entry.out_fp_crit_edge, label %if.end

entry.out_fp_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_fp

if.end:                                           ; preds = %entry
  %mul = shl nuw nsw i32 %cond, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %ratio)
  %cmp = icmp ult i32 %mul, %ratio
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ratio)
  %cmp4 = icmp ult i32 %ratio, 2
  %or.cond131 = or i1 %cmp4, %cmp
  br i1 %or.cond131, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.69, i32 noundef %mul) #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  %rem = and i32 %ratio, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool7.not = icmp eq i32 %rem, 0
  br i1 %tobool7.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.72) #13
  br label %cleanup

if.end14:                                         ; preds = %if.else
  %div130 = lshr i32 %ratio, 1
  %mul15 = shl nuw nsw i32 %cond, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div130, i32 %mul15)
  %cmp16.not = icmp ugt i32 %div130, %mul15
  %cond17 = select i1 %cmp16.not, i32 0, i32 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 514, i32 %ratio)
  %cmp18 = icmp ult i32 %ratio, 514
  br i1 %cmp18, label %if.end14.out_crit_edge, label %if.end20

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end20:                                         ; preds = %if.end14
  %cond22 = select i1 %cmp16.not, i32 8, i32 1
  %mul24 = mul nuw nsw i32 %mul15, %cond22
  %div25.lhs.trunc = trunc i32 %mul24 to i16
  %div25133 = udiv i16 %div25.lhs.trunc, 1000
  %div25.zext = zext i16 %div25133 to i32
  br label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.inc58.for.cond27.preheader_crit_edge, %if.end20
  %i.0147 = phi i32 [ 1, %if.end20 ], [ %inc59, %for.inc58.for.cond27.preheader_crit_edge ]
  %savesub.0146 = phi i32 [ %div25.zext, %if.end20 ], [ %savesub.3, %for.inc58.for.cond27.preheader_crit_edge ]
  %pm.0145 = phi i32 [ 999, %if.end20 ], [ %pm.3, %for.inc58.for.cond27.preheader_crit_edge ]
  %fp.addr.0144 = phi i32 [ %fp, %if.end20 ], [ %fp.addr.3, %for.inc58.for.cond27.preheader_crit_edge ]
  %mul32 = mul nuw nsw i32 %i.0147, %cond22
  br label %for.body29

for.body29:                                       ; preds = %for.inc.for.body29_crit_edge, %for.cond27.preheader
  %j.0142 = phi i32 [ 1, %for.cond27.preheader ], [ %inc, %for.inc.for.body29_crit_edge ]
  %savesub.1141 = phi i32 [ %savesub.0146, %for.cond27.preheader ], [ %savesub.3, %for.inc.for.body29_crit_edge ]
  %pm.1140 = phi i32 [ %pm.0145, %for.cond27.preheader ], [ %pm.3, %for.inc.for.body29_crit_edge ]
  %fp.addr.1139 = phi i32 [ %fp.addr.0144, %for.cond27.preheader ], [ %fp.addr.3, %for.inc.for.body29_crit_edge ]
  %mul33 = mul nuw nsw i32 %mul32, %j.0142
  call void @__sanitizer_cov_trace_cmp4(i32 %mul33, i32 %div130)
  %cmp34 = icmp eq i32 %mul33, %div130
  br i1 %cmp34, label %for.body29.if.end49_crit_edge, label %if.else36

for.body29.if.end49_crit_edge:                    ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.else36:                                        ; preds = %for.body29
  %div37 = udiv i32 %mul33, %div130
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div37)
  %cmp38 = icmp eq i32 %div37, 1
  br i1 %cmp38, label %if.then39, label %if.else41

if.then39:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #12
  %sub40 = sub nsw i32 %mul33, %div130
  br label %if.end49

if.else41:                                        ; preds = %if.else36
  %div42 = udiv i32 %div130, %mul33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div42)
  %cmp43 = icmp eq i32 %div42, 1
  br i1 %cmp43, label %if.then44, label %if.else41.for.inc_crit_edge

if.else41.for.inc_crit_edge:                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #12
  %sub45 = sub nsw i32 %div130, %mul33
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.then39, %for.body29.if.end49_crit_edge
  %sub.0 = phi i32 [ %sub40, %if.then39 ], [ %sub45, %if.then44 ], [ 0, %for.body29.if.end49_crit_edge ]
  %mul50 = mul i32 %sub.0, 1000
  %div51 = udiv i32 %mul50, %div130
  call void @__sanitizer_cov_trace_cmp4(i32 %div51, i32 %savesub.1141)
  %cmp52 = icmp ult i32 %div51, %savesub.1141
  %fp.addr.2 = select i1 %cmp52, i32 %j.0142, i32 %fp.addr.1139
  %pm.2 = select i1 %cmp52, i32 %i.0147, i32 %pm.1140
  %5 = tail call i32 @llvm.umin.i32(i32 %div51, i32 %savesub.1141)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp55 = icmp eq i32 %5, 0
  br i1 %cmp55, label %if.end49.out_crit_edge, label %if.end49.for.inc_crit_edge

if.end49.for.inc_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc:                                          ; preds = %if.end49.for.inc_crit_edge, %if.else41.for.inc_crit_edge
  %fp.addr.3 = phi i32 [ %fp.addr.2, %if.end49.for.inc_crit_edge ], [ %fp.addr.1139, %if.else41.for.inc_crit_edge ]
  %pm.3 = phi i32 [ %pm.2, %if.end49.for.inc_crit_edge ], [ %pm.1140, %if.else41.for.inc_crit_edge ]
  %savesub.3 = phi i32 [ %5, %if.end49.for.inc_crit_edge ], [ %savesub.1141, %if.else41.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %j.0142, 1
  %exitcond = icmp eq i32 %j.0142, %cond
  br i1 %exitcond, label %for.inc58, label %for.inc.for.body29_crit_edge

for.inc.for.body29_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29

for.inc58:                                        ; preds = %for.inc
  %inc59 = add nuw nsw i32 %i.0147, 1
  %exitcond148.not = icmp eq i32 %inc59, 257
  br i1 %exitcond148.not, label %for.end60, label %for.inc58.for.cond27.preheader_crit_edge

for.inc58.for.cond27.preheader_crit_edge:         ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond27.preheader

for.end60:                                        ; preds = %for.inc58
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %pm.3)
  %cmp61 = icmp eq i32 %pm.3, 999
  br i1 %cmp61, label %do.end65, label %for.end60.out_crit_edge

for.end60.out_crit_edge:                          ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end65:                                         ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.75) #13
  br label %cleanup

out:                                              ; preds = %for.end60.out_crit_edge, %if.end49.out_crit_edge, %if.end14.out_crit_edge
  %fp.addr.4 = phi i32 [ %fp.addr.3, %for.end60.out_crit_edge ], [ 1, %if.end14.out_crit_edge ], [ %fp.addr.2, %if.end49.out_crit_edge ]
  %pm.4 = phi i32 [ %pm.3, %for.end60.out_crit_edge ], [ %div130, %if.end14.out_crit_edge ], [ %pm.2, %if.end49.out_crit_edge ]
  %regmap = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %cond69 = select i1 %tx, i32 216, i32 224
  %sub70 = add i32 %pm.4, 255
  %and = and i32 %sub70, 255
  %or = or i32 %and, %cond17
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %cond69, i32 noundef 511, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %out_fp

out_fp:                                           ; preds = %out, %entry.out_fp_crit_edge
  %fp.addr.5 = phi i32 [ %fp.addr.4, %out ], [ %fp, %entry.out_fp_crit_edge ]
  br i1 %usefp, label %if.end74, label %out_fp.cleanup_crit_edge

out_fp.cleanup_crit_edge:                         ; preds = %out_fp
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end74:                                         ; preds = %out_fp
  call void @__sanitizer_cov_trace_pc() #12
  %regmap75 = getelementptr inbounds %struct.fsl_esai, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %regmap75 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap75, align 4
  %cond77 = select i1 %tx, i32 216, i32 224
  %sub78 = shl i32 %fp.addr.5, 14
  %shl79 = add i32 %sub78, 245760
  %and80 = and i32 %shl79, 245760
  %call.i132 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %cond77, i32 noundef 245760, i32 noundef %and80, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %out_fp.cleanup_crit_edge, %do.end65, %do.end11, %do.end
  %retval.0 = phi i32 [ 0, %if.end74 ], [ -22, %do.end ], [ -22, %do.end11 ], [ -22, %do.end65 ], [ 0, %out_fp.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsl_esai_trigger_start(ptr nocapture noundef readonly %esai_priv, i1 noundef zeroext %tx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i1 %tx to i32
  %arrayidx = getelementptr %struct.fsl_esai, ptr %esai_priv, i32 0, i32 16, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %slots = getelementptr inbounds %struct.fsl_esai, ptr %esai_priv, i32 0, i32 13
  %2 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slots, align 4
  %regmap = getelementptr inbounds %struct.fsl_esai, ptr %esai_priv, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %cond = select i1 %tx, i32 16, i32 24
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %cond, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br i1 %tx, label %land.rhs.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.rhs.preheader:                               ; preds = %entry
  %6 = trunc i32 %1 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp87.not = icmp eq i8 %6, 0
  br i1 %cmp87.not, label %land.rhs.preheader.for.end_crit_edge, label %land.rhs.preheader.for.body_crit_edge

land.rhs.preheader.for.body_crit_edge:            ; preds = %land.rhs.preheader
  br label %for.body

land.rhs.preheader.for.end_crit_edge:             ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %land.rhs.preheader.for.body_crit_edge
  %i.07988 = phi i8 [ %inc, %for.body.for.body_crit_edge ], [ 0, %land.rhs.preheader.for.body_crit_edge ]
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call12 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 0, i32 noundef 0) #10
  %inc = add nuw i8 %i.07988, 1
  %cmp = icmp ult i8 %inc, %6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.preheader.for.end_crit_edge, %entry.for.end_crit_edge
  %cond37 = phi i32 [ 240, %entry.for.end_crit_edge ], [ 232, %land.rhs.preheader.for.end_crit_edge ], [ 232, %for.body.for.end_crit_edge ]
  %cond44 = phi i32 [ 236, %entry.for.end_crit_edge ], [ 228, %land.rhs.preheader.for.end_crit_edge ], [ 228, %for.body.for.end_crit_edge ]
  %cond19 = phi i32 [ 15, %entry.for.end_crit_edge ], [ 63, %land.rhs.preheader.for.end_crit_edge ], [ 63, %for.body.for.end_crit_edge ]
  %cond16 = phi i32 [ 220, %entry.for.end_crit_edge ], [ 212, %land.rhs.preheader.for.end_crit_edge ], [ 212, %for.body.for.end_crit_edge ]
  %conv2 = and i32 %1, 255
  %add = add i32 %3, -1
  %sub = add i32 %add, %conv2
  %div = udiv i32 %sub, %3
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %sub22 = sub i32 6, %div
  %shr = lshr i32 63, %sub22
  %sub23 = sub i32 4, %div
  %shr24 = lshr i32 15, %sub23
  %cond26 = select i1 %tx, i32 %shr, i32 %shr24
  %call.i75 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %cond16, i32 noundef %cond19, i32 noundef %cond26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %rx_mask = getelementptr inbounds %struct.fsl_esai, ptr %esai_priv, i32 0, i32 15
  %tx_mask = getelementptr inbounds %struct.fsl_esai, ptr %esai_priv, i32 0, i32 14
  %cond33.in = select i1 %tx, ptr %tx_mask, ptr %rx_mask
  %11 = ptrtoint ptr %cond33.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond33 = load i32, ptr %cond33.in, align 4
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %shr38 = lshr i32 %cond33, 16
  %call.i76 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %cond37, i32 noundef 65535, i32 noundef %shr38, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %and45 = and i32 %cond33, 65535
  %call.i77 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %cond44, i32 noundef 65535, i32 noundef %and45, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i78 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %cond16, i32 noundef 1048576, i32 noundef 1048576, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsl_esai_trigger_stop(ptr nocapture noundef readonly %esai_priv, i1 noundef zeroext %tx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.fsl_esai, ptr %esai_priv, i32 0, i32 3
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %cond = select i1 %tx, i32 212, i32 220
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %cond, i32 noundef 1048576, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %cond5 = select i1 %tx, i32 63, i32 15
  %call.i34 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %cond, i32 noundef %cond5, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %cond9 = select i1 %tx, i32 228, i32 236
  %call.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %cond9, i32 noundef 65535, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %cond13 = select i1 %tx, i32 232, i32 240
  %call.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %cond13, i32 noundef 65535, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %cond17 = select i1 %tx, i32 16, i32 24
  %call.i37 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %cond17, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i38 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %cond17, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_esai_register_restore(ptr nocapture noundef readonly %esai_priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.fsl_esai, ptr %esai_priv, i32 0, i32 3
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 16, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 24, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %5) #10
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regcache_sync(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 16, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 24, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35, !37, !39, !40, !41, !42, !44, !46, !47, !48, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !80, !82, !83, !84, !85, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !124, !126, !128, !130, !131, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !181, !183, !185, !187, !189}
!llvm.module.flags = !{!191, !192, !193, !194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !{ptr @__initcall__kmod_snd_soc_fsl_esai__251_1212_fsl_esai_driver_init6, !1, !"__initcall__kmod_snd_soc_fsl_esai__251_1212_fsl_esai_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/fsl/fsl_esai.c", i32 1212, i32 1}
!2 = !{ptr @__exitcall_fsl_esai_driver_exit, !1, !"__exitcall_fsl_esai_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author252, !4, !"__UNIQUE_ID_author252", i1 false, i1 false}
!4 = !{!"../sound/soc/fsl/fsl_esai.c", i32 1214, i32 1}
!5 = !{ptr @__UNIQUE_ID_description253, !6, !"__UNIQUE_ID_description253", i1 false, i1 false}
!6 = !{!"../sound/soc/fsl/fsl_esai.c", i32 1215, i32 1}
!7 = !{ptr @__UNIQUE_ID_file254, !8, !"__UNIQUE_ID_file254", i1 false, i1 false}
!8 = !{!"../sound/soc/fsl/fsl_esai.c", i32 1216, i32 1}
!9 = !{ptr @__UNIQUE_ID_license255, !8, !"__UNIQUE_ID_license255", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias256, !11, !"__UNIQUE_ID_alias256", i1 false, i1 false}
!11 = !{!"../sound/soc/fsl/fsl_esai.c", i32 1217, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/fsl/fsl_esai.c", i32 1206, i32 11}
!14 = !{ptr @fsl_esai_driver, !15, !"fsl_esai_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/fsl/fsl_esai.c", i32 1202, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/fsl/fsl_esai.c", i32 967, i32 53}
!18 = !{ptr @fsl_esai_probe._key, !19, !"_key", i1 false, i1 false}
!19 = !{!"../sound/soc/fsl/fsl_esai.c", i32 976, i32 22}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/fsl/fsl_esai.c", i32 978, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @fsl_esai_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @fsl_esai_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/fsl/fsl_esai.c", i32 983, i32 48}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/fsl/fsl_esai.c", i32 985, i32 3}
!33 = !{ptr @fsl_esai_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @fsl_esai_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/fsl/fsl_esai.c", i32 990, i32 49}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/fsl/fsl_esai.c", i32 992, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @fsl_esai_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @fsl_esai_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/fsl/fsl_esai.c", i32 995, i32 48}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/fsl/fsl_esai.c", i32 997, i32 3}
!46 = !{ptr @fsl_esai_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @fsl_esai_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/fsl/fsl_esai.c", i32 1000, i32 48}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/fsl/fsl_esai.c", i32 1002, i32 3}
!52 = !{ptr @fsl_esai_probe._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @fsl_esai_probe._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/fsl/fsl_esai.c", i32 1012, i32 3}
!56 = !{ptr @fsl_esai_probe._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @fsl_esai_probe._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/fsl/fsl_esai.c", i32 1023, i32 30}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/fsl/fsl_esai.c", i32 1035, i32 29}
!62 = !{ptr @fsl_esai_probe.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../sound/soc/fsl/fsl_esai.c", i32 1045, i32 2}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/fsl/fsl_esai.c", i32 1082, i32 3}
!67 = !{ptr @fsl_esai_probe._entry.31, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @fsl_esai_probe._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/fsl/fsl_esai.c", i32 1089, i32 3}
!71 = !{ptr @fsl_esai_probe._entry.34, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @fsl_esai_probe._entry_ptr.36, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @fsl_esai_probe.__key.37, !74, !"__key", i1 false, i1 false}
!74 = !{!"../sound/soc/fsl/fsl_esai.c", i32 1093, i32 2}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @fsl_esai_regmap_config, !77, !"fsl_esai_regmap_config", i1 false, i1 false}
!77 = !{!"../sound/soc/fsl/fsl_esai.c", i32 936, i32 35}
!78 = !{ptr @fsl_esai_reg_defaults, !79, !"fsl_esai_reg_defaults", i1 false, i1 false}
!79 = !{!"../sound/soc/fsl/fsl_esai.c", i32 830, i32 33}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/fsl/fsl_esai.c", i32 110, i32 3}
!82 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @esai_isr.__UNIQUE_ID_ddebug241, !81, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/fsl/fsl_esai.c", i32 119, i32 3}
!87 = !{ptr @esai_isr.__UNIQUE_ID_ddebug242, !86, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/fsl/fsl_esai.c", i32 122, i32 3}
!90 = !{ptr @esai_isr._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @esai_isr._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/fsl/fsl_esai.c", i32 125, i32 3}
!94 = !{ptr @esai_isr._entry.44, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @esai_isr._entry_ptr.46, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/fsl/fsl_esai.c", i32 128, i32 3}
!98 = !{ptr @esai_isr.__UNIQUE_ID_ddebug243, !97, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/fsl/fsl_esai.c", i32 131, i32 3}
!101 = !{ptr @esai_isr.__UNIQUE_ID_ddebug244, !100, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/fsl/fsl_esai.c", i32 134, i32 3}
!104 = !{ptr @esai_isr.__UNIQUE_ID_ddebug245, !103, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/fsl/fsl_esai.c", i32 137, i32 3}
!107 = !{ptr @esai_isr.__UNIQUE_ID_ddebug246, !106, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/fsl/fsl_esai.c", i32 140, i32 3}
!110 = !{ptr @esai_isr.__UNIQUE_ID_ddebug247, !109, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/fsl/fsl_esai.c", i32 143, i32 3}
!113 = !{ptr @esai_isr.__UNIQUE_ID_ddebug248, !112, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/fsl/fsl_esai.c", i32 146, i32 3}
!116 = !{ptr @esai_isr.__UNIQUE_ID_ddebug249, !115, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/fsl/fsl_esai.c", i32 149, i32 3}
!119 = !{ptr @esai_isr.__UNIQUE_ID_ddebug250, !118, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/fsl/fsl_esai.c", i32 817, i32 18}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/fsl/fsl_esai.c", i32 810, i32 18}
!124 = !{ptr @fsl_esai_dai, !125, !"fsl_esai_dai", i1 false, i1 false}
!125 = !{!"../sound/soc/fsl/fsl_esai.c", i32 807, i32 34}
!126 = !{ptr @fsl_esai_dai_ops, !127, !"fsl_esai_dai_ops", i1 false, i1 false}
!127 = !{!"../sound/soc/fsl/fsl_esai.c", i32 788, i32 37}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/fsl/fsl_esai.c", i32 271, i32 3}
!130 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @fsl_esai_set_dai_sysclk._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @fsl_esai_set_dai_sysclk._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/fsl/fsl_esai.c", i32 306, i32 3}
!137 = !{ptr @fsl_esai_set_dai_sysclk._entry.61, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @fsl_esai_set_dai_sysclk._entry_ptr.63, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/fsl/fsl_esai.c", i32 322, i32 3}
!141 = !{ptr @fsl_esai_set_dai_sysclk._entry.64, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @fsl_esai_set_dai_sysclk._entry_ptr.66, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @fsl_esai_set_dai_sysclk._entry.67, !144, !"_entry", i1 false, i1 false}
!144 = !{!"../sound/soc/fsl/fsl_esai.c", i32 334, i32 3}
!145 = !{ptr @fsl_esai_set_dai_sysclk._entry_ptr.68, !144, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/fsl/fsl_esai.c", i32 177, i32 3}
!148 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @fsl_esai_divisor_cal._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @fsl_esai_divisor_cal._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/fsl/fsl_esai.c", i32 181, i32 3}
!153 = !{ptr @fsl_esai_divisor_cal._entry.71, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @fsl_esai_divisor_cal._entry_ptr.73, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.75, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/fsl/fsl_esai.c", i32 229, i32 3}
!157 = !{ptr @fsl_esai_divisor_cal._entry.74, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @fsl_esai_divisor_cal._entry_ptr.76, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/fsl/fsl_esai.c", i32 382, i32 3}
!161 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @fsl_esai_set_bclk._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @fsl_esai_set_bclk._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.80, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/fsl/fsl_esai.c", i32 389, i32 3}
!166 = !{ptr @fsl_esai_set_bclk._entry.79, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @fsl_esai_set_bclk._entry_ptr.81, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/fsl/fsl_esai.c", i32 603, i32 3}
!170 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @fsl_esai_hw_init._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @fsl_esai_hw_init._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.85, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/fsl/fsl_esai.c", i32 615, i32 3}
!175 = !{ptr @fsl_esai_hw_init._entry.84, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @fsl_esai_hw_init._entry_ptr.86, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.87, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/fsl/fsl_esai.c", i32 827, i32 11}
!179 = !{ptr @fsl_esai_component, !180, !"fsl_esai_component", i1 false, i1 false}
!180 = !{!"../sound/soc/fsl/fsl_esai.c", i32 826, i32 46}
!181 = !{ptr @fsl_esai_dt_ids, !182, !"fsl_esai_dt_ids", i1 false, i1 false}
!182 = !{!"../sound/soc/fsl/fsl_esai.c", i32 1118, i32 34}
!183 = !{ptr @fsl_esai_imx35, !184, !"fsl_esai_imx35", i1 false, i1 false}
!184 = !{!"../sound/soc/fsl/fsl_esai.c", i32 90, i32 33}
!185 = !{ptr @fsl_esai_vf610, !186, !"fsl_esai_vf610", i1 false, i1 false}
!186 = !{!"../sound/soc/fsl/fsl_esai.c", i32 86, i32 33}
!187 = !{ptr @fsl_esai_imx6ull, !188, !"fsl_esai_imx6ull", i1 false, i1 false}
!188 = !{!"../sound/soc/fsl/fsl_esai.c", i32 94, i32 33}
!189 = !{ptr @fsl_esai_pm_ops, !190, !"fsl_esai_pm_ops", i1 false, i1 false}
!190 = !{!"../sound/soc/fsl/fsl_esai.c", i32 1194, i32 32}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 1, !"min_enum_size", i32 4}
!193 = !{i32 8, !"branch-target-enforcement", i32 0}
!194 = !{i32 8, !"sign-return-address", i32 0}
!195 = !{i32 8, !"sign-return-address-all", i32 0}
!196 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!197 = !{i32 7, !"uwtable", i32 1}
!198 = !{i32 7, !"frame-pointer", i32 2}
!199 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!200 = !{!"auto-init"}
!201 = !{i64 2148271066}
!202 = !{i64 755889, i64 755914, i64 755936, i64 755952, i64 755964, i64 755984, i64 756008, i64 756024, i64 756036}
!203 = !{i64 2148271254}
!204 = !{i8 0, i8 2}
!205 = !{i64 2148753462, i64 2148753467, i64 2148753480, i64 2148753524, i64 2148753558, i64 2148753579}
!206 = !{i32 0, i32 33}
