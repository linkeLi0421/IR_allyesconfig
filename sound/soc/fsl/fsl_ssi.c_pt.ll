; ModuleID = '/llk/IR_all_yes/sound/soc/fsl/fsl_ssi.c_pt.bc'
source_filename = "../sound/soc/fsl/fsl_ssi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fsl_ssi_soc_data = type { i8, i8, i8, i32 }
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
%struct.fsl_ssi = type { ptr, i32, %struct.snd_soc_dai_driver, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, [2 x %struct.fsl_ssi_regvals], ptr, ptr, i32, i32, i32, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, i32, %struct.imx_pcm_fiq_params, ptr, [32 x i8], i32, %struct.fsl_ssi_dbg, ptr, ptr, i32, i32, %struct.mutex }
%struct.fsl_ssi_regvals = type { i32, i32, i32, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.imx_pcm_fiq_params = type { i32, ptr, ptr, ptr }
%struct.fsl_ssi_dbg = type { ptr, %struct.anon.95 }
%struct.anon.95 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_fsl_ssi__241_1712_fsl_ssi_driver_init6 = internal global ptr @fsl_ssi_driver_init, section ".initcall6.init", align 4
@fsl_ssi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_ssi_probe, ptr @fsl_ssi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_ssi_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_ssi_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_ssi_driver_exit = internal global ptr @fsl_ssi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias242 = internal constant [43 x i8] c"snd_soc_fsl_ssi.alias=platform:fsl-ssi-dai\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [56 x i8] c"snd_soc_fsl_ssi.author=Timur Tabi <timur@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [85 x i8] c"snd_soc_fsl_ssi.description=Freescale Synchronous Serial Interface (SSI) ASoC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [51 x i8] c"snd_soc_fsl_ssi.file=sound/soc/fsl/snd-soc-fsl-ssi\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [31 x i8] c"snd_soc_fsl_ssi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl-ssi-dai\00", [20 x i8] zeroinitializer }, align 32
@fsl_ssi_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mpc8610-ssi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_ssi_mpc8610 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx51-ssi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_ssi_imx51 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx35-ssi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_ssi_imx35 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-ssi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_ssi_imx21 }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@fsl_ssi_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @fsl_ssi_suspend, ptr @fsl_ssi_resume, ptr @fsl_ssi_suspend, ptr @fsl_ssi_resume, ptr @fsl_ssi_suspend, ptr @fsl_ssi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@fsl_ssi_regconfig = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @fsl_ssi_writeable_reg, ptr @fsl_ssi_readable_reg, ptr @fsl_ssi_volatile_reg, ptr @fsl_ssi_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 88, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 23, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 3, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@fsl_ssi_ac97_dai = internal constant { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @fsl_ssi_dai_probe, ptr null, ptr null, ptr null, ptr @fsl_ssi_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.38, i64 67108864, i32 128, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.39, i64 67108872, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 64, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@fsl_ac97_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@fsl_ssi_dai_template = internal constant { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @fsl_ssi_dai_probe, ptr null, ptr null, ptr null, ptr @fsl_ssi_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.58, i64 2345052143753, i32 1073741824, i32 0, i32 0, i32 1, i32 32, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.59, i64 2345052143753, i32 1073741824, i32 0, i32 0, i32 1, i32 32, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@fsl_ssi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fsl_ssi:1520:(&regconfig)->lock\00", [32 x i8] zeroinitializer }, align 32
@fsl_ssi_probe._key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fsl_ssi:1522:(&regconfig)->lock\00", [32 x i8] zeroinitializer }, align 32
@fsl_ssi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1524, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to init register map\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl_ssi_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/fsl/fsl_ssi.c\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_ssi_probe._entry_ptr = internal global ptr @fsl_ssi_probe._entry, section ".printk_index", align 4
@fsl_ssi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ssi->ac97_reg_lock\00", [44 x i8] zeroinitializer }, align 32
@fsl_ssi_ac97_ops = internal global { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @fsl_ssi_ac97_write, ptr @fsl_ssi_ac97_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fsl_ssi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 1578, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to set AC'97 ops\0A\00", [39 x i8] zeroinitializer }, align 32
@fsl_ssi_probe._entry_ptr.13 = internal global ptr @fsl_ssi_probe._entry.11, section ".printk_index", align 4
@fsl_ssi_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.72, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@fsl_ssi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 1586, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register DAI: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@fsl_ssi_probe._entry_ptr.16 = internal global ptr @fsl_ssi_probe._entry.14, section ".printk_index", align 4
@fsl_ssi_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.7, i32 1594, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to claim irq %u\0A\00", [40 x i8] zeroinitializer }, align 32
@fsl_ssi_probe._entry_ptr.19 = internal global ptr @fsl_ssi_probe._entry.17, section ".printk_index", align 4
@fsl_ssi_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.6, ptr @.str.7, i32 1621, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to register %s: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@fsl_ssi_probe._entry_ptr.22 = internal global ptr @fsl_ssi_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsl,mode\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ac97-slave\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cell-index\00", [21 x i8] zeroinitializer }, align 32
@fsl_ssi_probe_from_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.7, i32 1417, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get SSI index property\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl_ssi_probe_from_dt\00", [42 x i8] zeroinitializer }, align 32
@fsl_ssi_probe_from_dt._entry_ptr = internal global ptr @fsl_ssi_probe_from_dt._entry, section ".printk_index", align 4
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ac97-codec\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,ssi-asynchronous\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl,fiq-stream-filter\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,fifo-depth\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dmas\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"codec-handle\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd-soc-%s\00", [21 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@fsl_ssi_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @fsl_ssi_set_dai_fmt, ptr null, ptr @fsl_ssi_set_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_ssi_startup, ptr @fsl_ssi_shutdown, ptr @fsl_ssi_hw_params, ptr @fsl_ssi_hw_free, ptr null, ptr @fsl_ssi_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AC97 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AC97 Playback\00", [18 x i8] zeroinitializer }, align 32
@_fsl_ssi_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.7, i32 898, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"missing baudclk for master mode\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_fsl_ssi_set_dai_fmt\00", [43 x i8] zeroinitializer }, align 32
@_fsl_ssi_set_dai_fmt._entry_ptr = internal global ptr @_fsl_ssi_set_dai_fmt._entry, section ".printk_index", align 4
@fsl_ssi_set_dai_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.7, i32 1038, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid slot width: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fsl_ssi_set_dai_tdm_slot\00", [39 x i8] zeroinitializer }, align 32
@fsl_ssi_set_dai_tdm_slot._entry_ptr = internal global ptr @fsl_ssi_set_dai_tdm_slot._entry, section ".printk_index", align 4
@fsl_ssi_set_dai_tdm_slot._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.7, i32 1044, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"slot number should be >= 2 in I2S or NET\0A\00", [54 x i8] zeroinitializer }, align 32
@fsl_ssi_set_dai_tdm_slot._entry_ptr.46 = internal global ptr @fsl_ssi_set_dai_tdm_slot._entry.44, section ".printk_index", align 4
@fsl_ssi_set_bclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.7, i32 714, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bitclk > ipgclk / 5\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl_ssi_set_bclk\00", [47 x i8] zeroinitializer }, align 32
@fsl_ssi_set_bclk._entry_ptr = internal global ptr @fsl_ssi_set_bclk._entry, section ".printk_index", align 4
@fsl_ssi_set_bclk._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.7, i32 763, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to handle the required sysclk\0A\00", [58 x i8] zeroinitializer }, align 32
@fsl_ssi_set_bclk._entry_ptr.51 = internal global ptr @fsl_ssi_set_bclk._entry.49, section ".printk_index", align 4
@fsl_ssi_set_bclk._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.7, i32 777, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set baudclk rate\0A\00", [36 x i8] zeroinitializer }, align 32
@fsl_ssi_set_bclk._entry_ptr.54 = internal global ptr @fsl_ssi_set_bclk._entry.52, section ".printk_index", align 4
@fsl_ssi_config_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.7, i32 461, ptr @.str.57, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Timeout waiting TX FIFO filling\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl_ssi_config_enable\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fsl_ssi_config_enable._entry_ptr = internal global ptr @fsl_ssi_config_enable._entry, section ".printk_index", align 4
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CPU-Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CPU-Playback\00", [19 x i8] zeroinitializer }, align 32
@fsl_ssi_imx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.7, i32 1331, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clock: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl_ssi_imx_probe\00", [46 x i8] zeroinitializer }, align 32
@fsl_ssi_imx_probe._entry_ptr = internal global ptr @fsl_ssi_imx_probe._entry, section ".printk_index", align 4
@fsl_ssi_imx_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.7, i32 1339, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"clk_prepare_enable failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@fsl_ssi_imx_probe._entry_ptr.64 = internal global ptr @fsl_ssi_imx_probe._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"baud\00", [27 x i8] zeroinitializer }, align 32
@fsl_ssi_imx_probe.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.66, ptr @.str.61, ptr @.str.7, ptr @.str.67, i8 1, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_fsl_ssi\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get baud clock: %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@fsl_ssi_ac97_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.7, i32 1198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ac97 write clk_prepare_enable failed: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl_ssi_ac97_write\00", [45 x i8] zeroinitializer }, align 32
@fsl_ssi_ac97_write._entry_ptr = internal global ptr @fsl_ssi_ac97_write._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@fsl_ssi_ac97_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.7, i32 1231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ac97 read clk_prepare_enable failed: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl_ssi_ac97_read\00", [46 x i8] zeroinitializer }, align 32
@fsl_ssi_ac97_read._entry_ptr = internal global ptr @fsl_ssi_ac97_read._entry, section ".printk_index", align 4
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fsl-ssi\00", [24 x i8] zeroinitializer }, align 32
@fsl_ssi_mpc8610 = internal global { %struct.fsl_ssi_soc_data, [24 x i8] } { %struct.fsl_ssi_soc_data { i8 0, i8 0, i8 1, i32 25169664 }, [24 x i8] zeroinitializer }, align 32
@fsl_ssi_imx51 = internal global { %struct.fsl_ssi_soc_data, [24 x i8] } { %struct.fsl_ssi_soc_data { i8 1, i8 0, i8 0, i32 3840 }, [24 x i8] zeroinitializer }, align 32
@fsl_ssi_imx35 = internal global { %struct.fsl_ssi_soc_data, [24 x i8] } { %struct.fsl_ssi_soc_data { i8 1, i8 0, i8 1, i32 25169664 }, [24 x i8] zeroinitializer }, align 32
@fsl_ssi_imx21 = internal global { %struct.fsl_ssi_soc_data, [24 x i8] } { %struct.fsl_ssi_soc_data { i8 1, i8 1, i8 1, i32 0 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 12, i64 80]
@__sancov_gen_cov_switch_values.73 = internal global [8 x i64] [i64 6, i64 32, i64 8, i64 12, i64 20, i64 60, i64 64, i64 68]
@__sancov_gen_cov_switch_values.74 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.75 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 16, i64 4096, i64 12288, i64 16384]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 16, i64 4096, i64 12288, i64 16384]
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"fsl_ssi_driver\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1702, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1704, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant [12 x i8] c"fsl_ssi_ids\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 338, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant [11 x i8] c"fsl_ssi_pm\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1698, i32 32 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"fsl_ssi_regconfig\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 184, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"fsl_ssi_ac97_dai\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1159, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant [14 x i8] c"fsl_ac97_data\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1180, i32 24 }
@___asan_gen_.100 = private unnamed_addr constant [21 x i8] c"fsl_ssi_dai_template\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1136, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1519, i32 15 }
@___asan_gen_.112 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1522, i32 15 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1524, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1575, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"fsl_ssi_ac97_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1252, i32 32 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1578, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant [18 x i8] c"fsl_ssi_component\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1155, i32 46 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1586, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1594, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1620, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1406, i32 37 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1411, i32 30 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1412, i32 30 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1415, i32 34 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1417, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1420, i32 26 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1421, i32 35 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1435, i32 44 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1438, i32 30 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1445, i32 39 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1457, i32 48 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1458, i32 51 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1460, i32 33 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1467, i32 5 }
@___asan_gen_.220 = private unnamed_addr constant [16 x i8] c"fsl_ssi_dai_ops\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1126, i32 37 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1170, i32 18 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1163, i32 18 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 897, i32 5 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1038, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1044, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 714, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 763, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 777, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 461, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1146, i32 18 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1139, i32 18 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1331, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1339, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1345, i32 35 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1347, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1197, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1231, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1156, i32 10 }
@___asan_gen_.337 = private unnamed_addr constant [16 x i8] c"fsl_ssi_mpc8610\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 308, i32 32 }
@___asan_gen_.340 = private unnamed_addr constant [14 x i8] c"fsl_ssi_imx51\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 331, i32 32 }
@___asan_gen_.343 = private unnamed_addr constant [14 x i8] c"fsl_ssi_imx35\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 323, i32 32 }
@___asan_gen_.346 = private unnamed_addr constant [14 x i8] c"fsl_ssi_imx21\00", align 1
@___asan_gen_.347 = private constant [27 x i8] c"../sound/soc/fsl/fsl_ssi.c\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 316, i32 32 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_fsl_ssi_driver_exit, ptr @__initcall__kmod_snd_soc_fsl_ssi__241_1712_fsl_ssi_driver_init6, ptr @_fsl_ssi_set_dai_fmt._entry, ptr @_fsl_ssi_set_dai_fmt._entry_ptr, ptr @fsl_ssi_ac97_read._entry, ptr @fsl_ssi_ac97_read._entry_ptr, ptr @fsl_ssi_ac97_write._entry, ptr @fsl_ssi_ac97_write._entry_ptr, ptr @fsl_ssi_config_enable._entry, ptr @fsl_ssi_config_enable._entry_ptr, ptr @fsl_ssi_driver_exit, ptr @fsl_ssi_imx_probe._entry, ptr @fsl_ssi_imx_probe._entry.62, ptr @fsl_ssi_imx_probe._entry_ptr, ptr @fsl_ssi_imx_probe._entry_ptr.64, ptr @fsl_ssi_probe._entry, ptr @fsl_ssi_probe._entry.11, ptr @fsl_ssi_probe._entry.14, ptr @fsl_ssi_probe._entry.17, ptr @fsl_ssi_probe._entry.20, ptr @fsl_ssi_probe._entry_ptr, ptr @fsl_ssi_probe._entry_ptr.13, ptr @fsl_ssi_probe._entry_ptr.16, ptr @fsl_ssi_probe._entry_ptr.19, ptr @fsl_ssi_probe._entry_ptr.22, ptr @fsl_ssi_probe_from_dt._entry, ptr @fsl_ssi_probe_from_dt._entry_ptr, ptr @fsl_ssi_set_bclk._entry, ptr @fsl_ssi_set_bclk._entry.49, ptr @fsl_ssi_set_bclk._entry.52, ptr @fsl_ssi_set_bclk._entry_ptr, ptr @fsl_ssi_set_bclk._entry_ptr.51, ptr @fsl_ssi_set_bclk._entry_ptr.54, ptr @fsl_ssi_set_dai_tdm_slot._entry, ptr @fsl_ssi_set_dai_tdm_slot._entry.44, ptr @fsl_ssi_set_dai_tdm_slot._entry_ptr, ptr @fsl_ssi_set_dai_tdm_slot._entry_ptr.46, ptr @fsl_ssi_driver, ptr @.str, ptr @fsl_ssi_ids, ptr @fsl_ssi_pm, ptr @fsl_ssi_regconfig, ptr @fsl_ssi_ac97_dai, ptr @fsl_ac97_data, ptr @fsl_ssi_dai_template, ptr @fsl_ssi_probe._key, ptr @.str.1, ptr @.str.2, ptr @fsl_ssi_probe._key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @fsl_ssi_probe.__key, ptr @.str.10, ptr @fsl_ssi_ac97_ops, ptr @.str.12, ptr @fsl_ssi_component, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @fsl_ssi_dai_ops, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @fsl_ssi_mpc8610, ptr @fsl_ssi_imx51, ptr @fsl_ssi_imx35, ptr @fsl_ssi_imx21], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_regconfig to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_ac97_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ac97_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_dai_template to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_probe._key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_ac97_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_probe_from_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_fsl_ssi_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_set_dai_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_set_dai_tdm_slot._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_set_bclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_set_bclk._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_set_bclk._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_config_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_imx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_imx_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_ac97_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_ac97_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_mpc8610 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_imx51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_imx35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_imx21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ssi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_ssi_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_ssi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_ssi_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ssi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %dmas.i = alloca [4 x i32], align 4
  %regconfig = alloca %struct.regmap_config, align 4
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %regconfig) #11
  %0 = call ptr @memcpy(ptr %regconfig, ptr @fsl_ssi_regconfig, i32 172)
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #11
  %1 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !184
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 584, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup138_crit_edge, label %if.end

entry.cleanup138_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup138

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 28
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev2, align 4
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #11
  %soc = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 27
  %3 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %soc, align 8
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dmas.i) #11
  %8 = getelementptr inbounds [4 x i32], ptr %dmas.i, i32 0, i32 2
  %9 = call ptr @memset(ptr %dmas.i, i32 255, i32 16)
  %call.i235 = tail call i32 @of_property_match_string(ptr noundef %7, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1) #11
  %has_ipg_clk_name.i = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 9
  %call.lobit.i = lshr i32 %call.i235, 31
  %10 = trunc i32 %call.lobit.i to i8
  %.not.i = xor i8 %10, 1
  %11 = ptrtoint ptr %has_ipg_clk_name.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.not.i, ptr %has_ipg_clk_name.i, align 1
  %call2.i = tail call ptr @of_get_property(ptr noundef %7, ptr noundef nonnull @.str.24, ptr noundef null) #11
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.if.else.i_crit_edge, label %land.lhs.true.i

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %call3.i = tail call i32 @strcmp(ptr noundef nonnull %call2.i, ptr noundef nonnull dereferenceable(11) @.str.25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %dai_fmt.i = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %dai_fmt.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 12294, ptr %dai_fmt.i, align 8
  %card_idx.i = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 25
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.26, ptr noundef %card_idx.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool6.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool6.not.i, label %if.end.i, label %fsl_ssi_probe_from_dt.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %card_name.i = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 24
  %13 = call ptr @memcpy(ptr %card_name.i, ptr @.str.29, i32 11)
  br label %if.end13.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %call9.i = tail call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.30, ptr noundef null) #11
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else.i.if.end13.i_crit_edge

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %synchronous.i = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %synchronous.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %synchronous.i, align 2
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.else.i.if.end13.i_crit_edge, %if.end.i
  %call.i.i = tail call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.31, ptr noundef null) #11
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  %use_dma.i = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 7
  %frombool15.i = zext i1 %tobool.i.not.i to i8
  %15 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool15.i, ptr %use_dma.i, align 1
  %call16.i = tail call ptr @of_get_property(ptr noundef %7, ptr noundef nonnull @.str.32, ptr noundef null) #11
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.end13.i.if.end22.i_crit_edge, label %if.then18.i

if.end13.i.if.end22.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %call16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call16.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then18.i, %if.end13.i.if.end22.i_crit_edge
  %.sink.i = phi i32 [ %17, %if.then18.i ], [ 8, %if.end13.i.if.end22.i_crit_edge ]
  %18 = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 10
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink.i, ptr %18, align 4
  %call.i89.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.33, ptr noundef nonnull %dmas.i, i32 noundef 4, i32 noundef 0) #11
  %20 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_dma.i, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool26.not.i = icmp ne i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i89.i)
  %tobool28.not.i = icmp sgt i32 %call.i89.i, -1
  %or.cond.i = select i1 %tobool26.not.i, i1 %tobool28.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true29.i, label %if.end22.i.if.end32.i_crit_edge

if.end22.i.if.end32.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

land.lhs.true29.i:                                ; preds = %if.end22.i
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %23)
  %cmp30.i = icmp eq i32 %23, 22
  br i1 %cmp30.i, label %if.then31.i, label %land.lhs.true29.i.if.end32.i_crit_edge

land.lhs.true29.i.if.end32.i_crit_edge:           ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.then31.i:                                      ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #13
  %use_dual_fifo.i = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 8
  %24 = ptrtoint ptr %use_dual_fifo.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %use_dual_fifo.i, align 8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then31.i, %land.lhs.true29.i.if.end32.i_crit_edge, %if.end22.i.if.end32.i_crit_edge
  %card_name33.i = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 24
  %25 = ptrtoint ptr %card_name33.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %card_name33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool35.not.i = icmp eq i8 %26, 0
  br i1 %tobool35.not.i, label %land.lhs.true36.i, label %if.end32.i.if.end8_crit_edge

if.end32.i.if.end8_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true36.i:                                ; preds = %if.end32.i
  %call37.i = call ptr @of_get_property(ptr noundef %7, ptr noundef nonnull @.str.34, ptr noundef null) #11
  %tobool38.not.i = icmp eq ptr %call37.i, null
  br i1 %tobool38.not.i, label %land.lhs.true36.i.if.end8_crit_edge, label %if.then39.i

land.lhs.true36.i.if.end8_crit_edge:              ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then39.i:                                      ; preds = %land.lhs.true36.i
  %call.i90.i = call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.35, ptr noundef null) #11
  %call41.i = call ptr @of_get_property(ptr noundef %call.i90.i, ptr noundef nonnull @.str.36, ptr noundef null) #11
  call void @of_node_put(ptr noundef %call.i90.i) #11
  %call42.i = call ptr @strrchr(ptr noundef %call41.i, i32 noundef 44) #11
  %tobool43.not.i = icmp eq ptr %call42.i, null
  %add.ptr.i = getelementptr i8, ptr %call42.i, i32 1
  %spec.select.i = select i1 %tobool43.not.i, ptr %call41.i, ptr %add.ptr.i
  %call48.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %card_name33.i, i32 noundef 32, ptr noundef nonnull @.str.37, ptr noundef %spec.select.i) #11
  %27 = ptrtoint ptr %card_name33.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %card_name33.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool1.not6.i.i = icmp eq i8 %28, 0
  br i1 %tobool1.not6.i.i, label %if.then39.i.make_lowercase.exit.i_crit_edge, label %if.then39.i.for.body.i.i_crit_edge

if.then39.i.for.body.i.i_crit_edge:               ; preds = %if.then39.i
  br label %for.body.i.i

if.then39.i.make_lowercase.exit.i_crit_edge:      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %make_lowercase.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then39.i.for.body.i.i_crit_edge
  %29 = phi i8 [ %35, %for.body.i.i.for.body.i.i_crit_edge ], [ %28, %if.then39.i.for.body.i.i_crit_edge ]
  %s.addr.07.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %card_name33.i, %if.then39.i.for.body.i.i_crit_edge ]
  %conv.i.i.i = zext i8 %29 to i32
  %arrayidx.i.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i.i
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i.i, align 1
  %32 = and i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp.not.i.i.i = icmp eq i8 %32, 0
  %sub.i.i.i = add i8 %29, 32
  %spec.select.i.i.i = select i1 %cmp.not.i.i.i, i8 %29, i8 %sub.i.i.i
  %33 = ptrtoint ptr %s.addr.07.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %spec.select.i.i.i, ptr %s.addr.07.i.i, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %s.addr.07.i.i, i32 1
  %34 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %incdec.ptr.i.i, align 1
  %tobool1.not.i.i = icmp eq i8 %35, 0
  br i1 %tobool1.not.i.i, label %for.body.i.i.make_lowercase.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.make_lowercase.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %make_lowercase.exit.i

make_lowercase.exit.i:                            ; preds = %for.body.i.i.make_lowercase.exit.i_crit_edge, %if.then39.i.make_lowercase.exit.i_crit_edge
  %card_idx51.i = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 25
  %36 = ptrtoint ptr %card_idx51.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %card_idx51.i, align 4
  br label %if.end8

fsl_ssi_probe_from_dt.exit:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.27) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dmas.i) #11
  br label %cleanup138

if.end8:                                          ; preds = %make_lowercase.exit.i, %land.lhs.true36.i.if.end8_crit_edge, %if.end32.i.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dmas.i) #11
  %dai_fmt.i236 = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 3
  %37 = ptrtoint ptr %dai_fmt.i236 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dai_fmt.i236, align 8
  %and.i = and i32 %38, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 6
  %cpu_dai_drv = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 2
  br i1 %cmp.i, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %39 = call ptr @memcpy(ptr %cpu_dai_drv, ptr @fsl_ssi_ac97_dai, i32 168)
  store ptr %call.i, ptr @fsl_ac97_data, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %40 = call ptr @memcpy(ptr %cpu_dai_drv, ptr @fsl_ssi_dai_template, i32 168)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %41 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i237 = icmp eq ptr %42, null
  br i1 %tobool.not.i237, label %if.end.i238, label %if.end12.dev_name.exit_crit_edge

if.end12.dev_name.exit_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i238:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i238, %if.end12.dev_name.exit_crit_edge
  %retval.0.i239 = phi ptr [ %44, %if.end.i238 ], [ %42, %if.end12.dev_name.exit_crit_edge ]
  %cpu_dai_drv14 = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 2
  %45 = ptrtoint ptr %cpu_dai_drv14 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %retval.0.i239, ptr %cpu_dai_drv14, align 8
  %call15 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #11
  %cmp.i240 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i240, label %if.then17, label %if.end19

if.then17:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %call15 to i32
  br label %cleanup138

if.end19:                                         ; preds = %dev_name.exit
  %47 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %res, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %ssi_phys = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 21
  %51 = ptrtoint ptr %ssi_phys to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %ssi_phys, align 4
  %52 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %soc, align 8
  %imx21regs = getelementptr inbounds %struct.fsl_ssi_soc_data, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %imx21regs to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %imx21regs, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool21.not = icmp eq i8 %55, 0
  br i1 %tobool21.not, label %if.end19.if.end23_crit_edge, label %if.then22

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %max_register = getelementptr inbounds %struct.regmap_config, ptr %regconfig, i32 0, i32 19
  %56 = ptrtoint ptr %max_register to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 76, ptr %max_register, align 4
  %num_reg_defaults_raw = getelementptr inbounds %struct.regmap_config, ptr %regconfig, i32 0, i32 30
  %57 = ptrtoint ptr %num_reg_defaults_raw to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 20, ptr %num_reg_defaults_raw, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19.if.end23_crit_edge
  %58 = ptrtoint ptr %has_ipg_clk_name.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %has_ipg_clk_name.i, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool24.not = icmp eq i8 %59, 0
  br i1 %tobool24.not, label %if.else27, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef %call15, ptr noundef nonnull %regconfig, ptr noundef nonnull @fsl_ssi_probe._key, ptr noundef nonnull @.str.2) #11
  br label %if.end31

if.else27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call15, ptr noundef nonnull %regconfig, ptr noundef nonnull @fsl_ssi_probe._key.3, ptr noundef nonnull @.str.4) #11
  br label %if.end31

if.end31:                                         ; preds = %if.else27, %if.then25
  %storemerge = phi ptr [ %call29, %if.else27 ], [ %call26, %if.then25 ]
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %storemerge, ptr %call.i, align 8
  %cmp.i241 = icmp ugt ptr %storemerge, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i241, label %do.end, label %if.end37

do.end:                                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #15
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 8
  %63 = ptrtoint ptr %62 to i32
  br label %cleanup138

if.end37:                                         ; preds = %if.end31
  %call38 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  %irq = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 1
  %64 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call38, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp = icmp slt i32 %call38, 0
  br i1 %cmp, label %if.end37.cleanup138_crit_edge, label %if.end42

if.end37.cleanup138_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup138

if.end42:                                         ; preds = %if.end37
  %synchronous = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 6
  %65 = ptrtoint ptr %synchronous to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %synchronous, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool43.not = icmp eq i8 %66, 0
  br i1 %tobool43.not, label %if.end42.if.end55_crit_edge, label %land.lhs.true

if.end42.if.end55_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end42
  %67 = ptrtoint ptr %dai_fmt.i236 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dai_fmt.i236, align 8
  %and.i243 = and i32 %68, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i243)
  %cmp.i244 = icmp eq i32 %and.i243, 6
  br i1 %cmp.i244, label %land.lhs.true.if.end55_crit_edge, label %if.then45

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %symmetric_rate = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 2, i32 12
  %69 = ptrtoint ptr %symmetric_rate to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load = load i8, ptr %symmetric_rate, align 8
  %bf.set54 = or i8 %bf.load, -32
  store i8 %bf.set54, ptr %symmetric_rate, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then45, %land.lhs.true.if.end55_crit_edge, %if.end42.if.end55_crit_edge
  %70 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %71)
  %cond = icmp eq i32 %71, 15
  %sub = add i32 %71, -2
  %spec.select279 = select i1 %cond, i32 8, i32 %sub
  %72 = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 29
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %spec.select279, ptr %72, align 8
  %74 = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 30
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %spec.select279, ptr %74, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %76 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i, ptr %driver_data.i, align 4
  %77 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %soc, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 4, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool63.not = icmp eq i8 %80, 0
  br i1 %tobool63.not, label %if.end55.if.end69_crit_edge, label %if.then64

if.end55.if.end69_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then64:                                        ; preds = %if.end55
  %call65 = call fastcc i32 @fsl_ssi_imx_probe(ptr noundef %pdev, ptr noundef nonnull %call.i, ptr noundef %call15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then64.if.end69_crit_edge, label %if.then64.cleanup138_crit_edge

if.then64.cleanup138_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup138

if.then64.if.end69_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.end69:                                         ; preds = %if.then64.if.end69_crit_edge, %if.end55.if.end69_crit_edge
  %81 = ptrtoint ptr %dai_fmt.i236 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dai_fmt.i236, align 8
  %and.i246 = and i32 %82, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i246)
  %cmp.i247 = icmp eq i32 %and.i246, 6
  br i1 %cmp.i247, label %do.body72, label %if.end69.if.end82_crit_edge

if.end69.if.end82_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

do.body72:                                        ; preds = %if.end69
  %ac97_reg_lock = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 31
  call void @__mutex_init(ptr noundef %ac97_reg_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @fsl_ssi_probe.__key) #11
  %call75 = call i32 @snd_soc_set_ac97_ops_of_reset(ptr noundef nonnull @fsl_ssi_ac97_ops, ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %do.body72.if.end82_crit_edge, label %do.end80

do.body72.if.end82_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

do.end80:                                         ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #15
  br label %error_ac97_ops

if.end82:                                         ; preds = %do.body72.if.end82_crit_edge, %if.end69.if.end82_crit_edge
  %call84 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @fsl_ssi_component, ptr noundef %cpu_dai_drv14, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end90, label %do.end89

do.end89:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call84) #15
  br label %error_asoc_register

if.end90:                                         ; preds = %if.end82
  %83 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %use_dma.i, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool91.not = icmp eq i8 %84, 0
  br i1 %tobool91.not, label %if.end90.if.end103_crit_edge, label %if.then92

if.end90.if.end103_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then92:                                        ; preds = %if.end90
  %85 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %irq, align 4
  %87 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i249 = icmp eq ptr %88, null
  br i1 %tobool.not.i249, label %if.end.i250, label %if.then92.dev_name.exit252_crit_edge

if.then92.dev_name.exit252_crit_edge:             ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit252

if.end.i250:                                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit252

dev_name.exit252:                                 ; preds = %if.end.i250, %if.then92.dev_name.exit252_crit_edge
  %retval.0.i251 = phi ptr [ %90, %if.end.i250 ], [ %88, %if.then92.dev_name.exit252_crit_edge ]
  %call.i253 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %86, ptr noundef nonnull @fsl_ssi_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i251, ptr noundef %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253)
  %cmp96 = icmp slt i32 %call.i253, 0
  br i1 %cmp96, label %do.end100, label %dev_name.exit252.if.end103_crit_edge

dev_name.exit252.if.end103_crit_edge:             ; preds = %dev_name.exit252
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

do.end100:                                        ; preds = %dev_name.exit252
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %92) #15
  br label %error_asoc_register

if.end103:                                        ; preds = %dev_name.exit252.if.end103_crit_edge, %if.end90.if.end103_crit_edge
  %dbg_stats = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 26
  call void @fsl_ssi_debugfs_create(ptr noundef %dbg_stats, ptr noundef %dev1) #11
  %93 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %72, align 8
  %srcr.i.i = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 13, i32 0, i32 1
  %95 = ptrtoint ptr %srcr.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 128, ptr %srcr.i.i, align 4
  %scr.i.i = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 13, i32 0, i32 3
  %96 = ptrtoint ptr %scr.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 5, ptr %scr.i.i, align 4
  %stcr.i.i = getelementptr %struct.fsl_ssi, ptr %call.i, i32 0, i32 13, i32 1, i32 2
  %97 = ptrtoint ptr %stcr.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 128, ptr %stcr.i.i, align 4
  %scr7.i.i = getelementptr %struct.fsl_ssi, ptr %call.i, i32 0, i32 13, i32 1, i32 3
  %98 = ptrtoint ptr %scr7.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 3, ptr %scr7.i.i, align 4
  %99 = ptrtoint ptr %dai_fmt.i236 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dai_fmt.i236, align 8
  %and.i.i.i = and i32 %100, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 6
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end103.if.end.i.i_crit_edge

if.end103.if.end.i.i_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %scr7.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %scr7.i.i, align 4
  %102 = ptrtoint ptr %scr.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %scr.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end103.if.end.i.i_crit_edge
  %use_dual_fifo.i.i = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 8
  %103 = ptrtoint ptr %use_dual_fifo.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %use_dual_fifo.i.i, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i.i = icmp eq i8 %104, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.fsl_ssi_setup_regvals.exit.i_crit_edge, label %if.then12.i.i

if.end.i.i.fsl_ssi_setup_regvals.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsl_ssi_setup_regvals.exit.i

if.then12.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %srcr.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 384, ptr %srcr.i.i, align 4
  %106 = ptrtoint ptr %stcr.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 384, ptr %stcr.i.i, align 4
  br label %fsl_ssi_setup_regvals.exit.i

fsl_ssi_setup_regvals.exit.i:                     ; preds = %if.then12.i.i, %if.end.i.i.fsl_ssi_setup_regvals.exit.i_crit_edge
  %arrayidx3.i.i = getelementptr %struct.fsl_ssi, ptr %call.i, i32 0, i32 13, i32 1
  %regvals.i.i = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 13
  %107 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %use_dma.i, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool19.not.i.i = icmp eq i8 %108, 0
  %..i.i = select i1 %tobool19.not.i.i, i32 18875476, i32 20972628
  %.51.i.i = select i1 %tobool19.not.i.i, i32 8913313, i32 9437601
  %109 = ptrtoint ptr %regvals.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %..i.i, ptr %regvals.i.i, align 4
  %110 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %.51.i.i, ptr %arrayidx3.i.i, align 4
  %111 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %call.i, align 8
  %and.i254 = and i32 %94, 15
  %shl1.i = shl i32 %94, 4
  %and2.i = and i32 %shl1.i, 240
  %or.i = or i32 %and2.i, %and.i254
  %shl3.i = shl i32 %94, 16
  %and4.i = and i32 %shl3.i, 983040
  %or5.i = or i32 %or.i, %and4.i
  %shl6.i = shl i32 %94, 20
  %and7.i = and i32 %shl6.i, 15728640
  %or8.i = or i32 %or5.i, %and7.i
  %call.i255 = call i32 @regmap_write(ptr noundef %112, i32 noundef 44, i32 noundef %or8.i) #11
  %113 = ptrtoint ptr %use_dual_fifo.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %use_dual_fifo.i.i, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool.not.i256 = icmp eq i8 %114, 0
  br i1 %tobool.not.i256, label %fsl_ssi_setup_regvals.exit.i.if.end.i259_crit_edge, label %if.then.i258

fsl_ssi_setup_regvals.exit.i.if.end.i259_crit_edge: ; preds = %fsl_ssi_setup_regvals.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i259

if.then.i258:                                     ; preds = %fsl_ssi_setup_regvals.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %call.i, align 8
  %call.i.i257 = call i32 @regmap_update_bits_base(ptr noundef %116, i32 noundef 16, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end.i259

if.end.i259:                                      ; preds = %if.then.i258, %fsl_ssi_setup_regvals.exit.i.if.end.i259_crit_edge
  %117 = ptrtoint ptr %dai_fmt.i236 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dai_fmt.i236, align 8
  %and.i.i = and i32 %118, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 6
  br i1 %cmp.i.i, label %if.then12.i, label %if.end.i259.fsl_ssi_hw_init.exit_crit_edge

if.end.i259.fsl_ssi_hw_init.exit_crit_edge:       ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsl_ssi_hw_init.exit

if.then12.i:                                      ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #13
  %call13.i = call fastcc i32 @_fsl_ssi_set_dai_fmt(ptr noundef %call.i, i32 noundef %118) #11
  %119 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %call.i, align 8
  %call.i1.i = call i32 @regmap_write(ptr noundef %120, i32 noundef 36, i32 noundef 60416) #11
  %call2.i.i = call i32 @regmap_write(ptr noundef %120, i32 noundef 40, i32 noundef 60416) #11
  %call3.i.i = call i32 @regmap_write(ptr noundef %120, i32 noundef 56, i32 noundef 3) #11
  %call.i.i.i260 = call i32 @regmap_update_bits_base(ptr noundef %120, i32 noundef 16, i32 noundef 7, i32 noundef 7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %call5.i.i = call i32 @regmap_write(ptr noundef %120, i32 noundef 52, i32 noundef 6) #11
  br label %fsl_ssi_hw_init.exit

fsl_ssi_hw_init.exit:                             ; preds = %if.then12.i, %if.end.i259.fsl_ssi_hw_init.exit_crit_edge
  %121 = ptrtoint ptr %card_name33.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %card_name33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool105.not = icmp eq i8 %122, 0
  br i1 %tobool105.not, label %fsl_ssi_hw_init.exit.cleanup138_crit_edge, label %if.then106

fsl_ssi_hw_init.exit.cleanup138_crit_edge:        ; preds = %fsl_ssi_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup138

if.then106:                                       ; preds = %fsl_ssi_hw_init.exit
  %123 = ptrtoint ptr %dai_fmt.i236 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dai_fmt.i236, align 8
  %and.i262 = and i32 %124, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i262)
  %cmp.i263 = icmp eq i32 %and.i262, 6
  %spec.select = select i1 %cmp.i263, ptr null, ptr %dev1
  %card_idx = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 25
  %125 = ptrtoint ptr %card_idx to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %card_idx, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #11
  %127 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %128 = call ptr @memset(ptr %127, i32 255, i32 48)
  %129 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %spec.select, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %130 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %fwnode.i.i, align 4
  %131 = ptrtoint ptr %127 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %127, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %132 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %card_name33.i, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %133 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %126, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %134 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %135 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr null, ptr %properties.i.i, align 8
  %136 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i264 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #11
  %card_pdev = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 23
  %137 = ptrtoint ptr %card_pdev to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call.i.i264, ptr %card_pdev, align 8
  %cmp.i265 = icmp ugt ptr %call.i.i264, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i265, label %error_sound_card, label %if.then106.cleanup138_crit_edge

if.then106.cleanup138_crit_edge:                  ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup138

error_sound_card:                                 ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %call.i.i264 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef %card_name33.i, i32 noundef %138) #15
  call void @fsl_ssi_debugfs_remove(ptr noundef %dbg_stats) #11
  br label %error_asoc_register

error_asoc_register:                              ; preds = %error_sound_card, %do.end100, %do.end89
  %ret.2 = phi i32 [ %call84, %do.end89 ], [ %call.i253, %do.end100 ], [ %138, %error_sound_card ]
  %139 = ptrtoint ptr %dai_fmt.i236 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %dai_fmt.i236, align 8
  %and.i267 = and i32 %140, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i267)
  %cmp.i268 = icmp eq i32 %and.i267, 6
  br i1 %cmp.i268, label %if.then126, label %error_asoc_register.error_ac97_ops_crit_edge

error_asoc_register.error_ac97_ops_crit_edge:     ; preds = %error_asoc_register
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_ac97_ops

if.then126:                                       ; preds = %error_asoc_register
  call void @__sanitizer_cov_trace_pc() #13
  %call127 = call i32 @snd_soc_set_ac97_ops(ptr noundef null) #11
  br label %error_ac97_ops

error_ac97_ops:                                   ; preds = %if.then126, %error_asoc_register.error_ac97_ops_crit_edge, %do.end80
  %ret.3 = phi i32 [ %call75, %do.end80 ], [ %ret.2, %if.then126 ], [ %ret.2, %error_asoc_register.error_ac97_ops_crit_edge ]
  %141 = ptrtoint ptr %dai_fmt.i236 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %dai_fmt.i236, align 8
  %and.i270 = and i32 %142, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i270)
  %cmp.i271 = icmp eq i32 %and.i270, 6
  br i1 %cmp.i271, label %if.then130, label %error_ac97_ops.if.end132_crit_edge

error_ac97_ops.if.end132_crit_edge:               ; preds = %error_ac97_ops
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132

if.then130:                                       ; preds = %error_ac97_ops
  call void @__sanitizer_cov_trace_pc() #13
  %ac97_reg_lock131 = getelementptr inbounds %struct.fsl_ssi, ptr %call.i, i32 0, i32 31
  call void @mutex_destroy(ptr noundef %ac97_reg_lock131) #11
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %error_ac97_ops.if.end132_crit_edge
  %143 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %soc, align 8
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %144, align 4, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool135.not = icmp eq i8 %146, 0
  br i1 %tobool135.not, label %if.end132.cleanup138_crit_edge, label %if.then136

if.end132.cleanup138_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup138

if.then136:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @fsl_ssi_imx_clean(ptr noundef %pdev, ptr noundef nonnull %call.i)
  br label %cleanup138

cleanup138:                                       ; preds = %if.then136, %if.end132.cleanup138_crit_edge, %if.then106.cleanup138_crit_edge, %fsl_ssi_hw_init.exit.cleanup138_crit_edge, %if.then64.cleanup138_crit_edge, %if.end37.cleanup138_crit_edge, %do.end, %if.then17, %fsl_ssi_probe_from_dt.exit, %entry.cleanup138_crit_edge
  %retval.0 = phi i32 [ %46, %if.then17 ], [ %63, %do.end ], [ -12, %entry.cleanup138_crit_edge ], [ -22, %fsl_ssi_probe_from_dt.exit ], [ %call38, %if.end37.cleanup138_crit_edge ], [ %call65, %if.then64.cleanup138_crit_edge ], [ 0, %fsl_ssi_hw_init.exit.cleanup138_crit_edge ], [ %ret.3, %if.then136 ], [ %ret.3, %if.end132.cleanup138_crit_edge ], [ 0, %if.then106.cleanup138_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #11
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %regconfig) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ssi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dbg_stats = getelementptr inbounds %struct.fsl_ssi, ptr %1, i32 0, i32 26
  tail call void @fsl_ssi_debugfs_remove(ptr noundef %dbg_stats) #11
  %card_pdev = getelementptr inbounds %struct.fsl_ssi, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %card_pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card_pdev, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_device_unregister(ptr noundef nonnull %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dai_fmt.i.i = getelementptr inbounds %struct.fsl_ssi, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dai_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dai_fmt.i.i, align 8
  %and.i.i = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 6
  br i1 %cmp.i.i, label %if.then.i, label %if.end.fsl_ssi_hw_clean.exit_crit_edge

if.end.fsl_ssi_hw_clean.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsl_ssi_hw_clean.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 16, i32 noundef 6, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %call3.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 56, i32 noundef 0) #11
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %call5.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 52, i32 noundef 0) #11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %call.i12.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %fsl_ssi_hw_clean.exit

fsl_ssi_hw_clean.exit:                            ; preds = %if.then.i, %if.end.fsl_ssi_hw_clean.exit_crit_edge
  %soc = getelementptr inbounds %struct.fsl_ssi, ptr %1, i32 0, i32 27
  %14 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soc, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 4, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.not = icmp eq i8 %17, 0
  br i1 %tobool2.not, label %fsl_ssi_hw_clean.exit.if.end4_crit_edge, label %if.then3

fsl_ssi_hw_clean.exit.if.end4_crit_edge:          ; preds = %fsl_ssi_hw_clean.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %fsl_ssi_hw_clean.exit
  %use_dma.i = getelementptr inbounds %struct.fsl_ssi, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %use_dma.i, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.then.i17, label %if.then3.if.end.i_crit_edge

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i17:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @imx_pcm_fiq_exit(ptr noundef %pdev) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i17, %if.then3.if.end.i_crit_edge
  %has_ipg_clk_name.i = getelementptr inbounds %struct.fsl_ssi, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %has_ipg_clk_name.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %has_ipg_clk_name.i, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool1.not.i = icmp eq i8 %21, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end4_crit_edge

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %clk.i = getelementptr inbounds %struct.fsl_ssi, ptr %1, i32 0, i32 14
  %22 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk.i, align 8
  tail call void @clk_disable(ptr noundef %23) #11
  tail call void @clk_unprepare(ptr noundef %23) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then2.i, %if.end.i.if.end4_crit_edge, %fsl_ssi_hw_clean.exit.if.end4_crit_edge
  %24 = ptrtoint ptr %dai_fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dai_fmt.i.i, align 8
  %and.i = and i32 %25, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 6
  br i1 %cmp.i, label %if.then6, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @snd_soc_set_ac97_ops(ptr noundef null) #11
  %ac97_reg_lock = getelementptr inbounds %struct.fsl_ssi, ptr %1, i32 0, i32 31
  tail call void @mutex_destroy(ptr noundef %ac97_reg_lock) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
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
define internal fastcc i32 @fsl_ssi_imx_probe(ptr noundef %pdev, ptr noundef %ssi, ptr noundef %iomem) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %has_ipg_clk_name = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 9
  %0 = ptrtoint ptr %has_ipg_clk_name to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_ipg_clk_name, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call.sink = phi ptr [ %call2, %if.else ], [ %call, %if.then ]
  %2 = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 14
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.sink, ptr %2, align 8
  %cmp.i = icmp ugt ptr %call.sink, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call.sink to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.60, i32 noundef %4) #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %5 = ptrtoint ptr %has_ipg_clk_name to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %has_ipg_clk_name, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool11.not = icmp eq i8 %6, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.if.end21_crit_edge

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then12:                                        ; preds = %if.end9
  %call.i = tail call i32 @clk_prepare(ptr noundef %call.sink) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then12.do.end19_crit_edge

if.then12.do.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

if.end.i:                                         ; preds = %if.then12
  %call1.i = tail call i32 @clk_enable(ptr noundef %call.sink) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end21_crit_edge, label %if.then3.i

if.end.i.if.end21_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %call.sink) #11
  br label %do.end19

do.end19:                                         ; preds = %if.then3.i, %if.then12.do.end19_crit_edge
  %retval.0.i125.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then12.do.end19_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.63, i32 noundef %retval.0.i125.ph) #15
  br label %cleanup

if.end21:                                         ; preds = %if.end.i.if.end21_crit_edge, %if.end9.if.end21_crit_edge
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.65) #11
  %baudclk = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 15
  %7 = ptrtoint ptr %baudclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call22, ptr %baudclk, align 4
  %cmp.i126 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %do.body26, label %if.end21.if.end37_crit_edge

if.end21.if.end37_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

do.body26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ssi_imx_probe.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ssi_imx_probe, %if.then31)) #11
          to label %if.end37 [label %if.then31], !srcloc !186

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %baudclk, align 4
  %10 = ptrtoint ptr %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ssi_imx_probe.__UNIQUE_ID_ddebug240, ptr noundef %dev1, ptr noundef nonnull @.str.67, i32 noundef %10) #11
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %do.body26, %if.end21.if.end37_crit_edge
  %dma_maxburst = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 30
  %11 = ptrtoint ptr %dma_maxburst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_maxburst, align 4
  %dma_params_tx = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 19
  %maxburst = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 19, i32 2
  %13 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %maxburst, align 4
  %dma_params_rx = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 20
  %maxburst39 = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 20, i32 2
  %14 = ptrtoint ptr %maxburst39 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %maxburst39, align 8
  %ssi_phys = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 21
  %15 = ptrtoint ptr %ssi_phys to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ssi_phys, align 4
  %17 = ptrtoint ptr %dma_params_tx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %dma_params_tx, align 4
  %add42 = add i32 %16, 8
  %18 = ptrtoint ptr %dma_params_rx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add42, ptr %dma_params_rx, align 8
  %use_dual_fifo = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 8
  %19 = ptrtoint ptr %use_dual_fifo to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %use_dual_fifo, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool45.not = icmp eq i8 %20, 0
  br i1 %tobool45.not, label %if.end37.if.end52_crit_edge, label %if.then46

if.end37.if.end52_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then46:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %12, -2
  %21 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and, ptr %maxburst, align 4
  %22 = ptrtoint ptr %maxburst39 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and, ptr %maxburst39, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %if.end37.if.end52_crit_edge
  %use_dma = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 7
  %23 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %use_dma, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool53.not = icmp eq i8 %24, 0
  br i1 %tobool53.not, label %if.then54, label %if.else68

if.then54:                                        ; preds = %if.end52
  %irq = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 1
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  %fiq_params = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 22
  %27 = ptrtoint ptr %fiq_params to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %fiq_params, align 8
  %base = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 22, i32 1
  %28 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %iomem, ptr %base, align 4
  %dma_params_rx59 = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 22, i32 2
  %29 = ptrtoint ptr %dma_params_rx59 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dma_params_rx, ptr %dma_params_rx59, align 8
  %dma_params_tx62 = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 22, i32 3
  %30 = ptrtoint ptr %dma_params_tx62 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dma_params_tx, ptr %dma_params_tx62, align 4
  %call64 = tail call i32 @imx_pcm_fiq_init(ptr noundef %pdev, ptr noundef %fiq_params) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then54.cleanup_crit_edge, label %if.then54.error_pcm_crit_edge

if.then54.error_pcm_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_pcm

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else68:                                        ; preds = %if.end52
  %call69 = tail call i32 @imx_pcm_dma_init(ptr noundef %pdev, i32 noundef 65536) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.else68.cleanup_crit_edge, label %if.else68.error_pcm_crit_edge

if.else68.error_pcm_crit_edge:                    ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_pcm

if.else68.cleanup_crit_edge:                      ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

error_pcm:                                        ; preds = %if.else68.error_pcm_crit_edge, %if.then54.error_pcm_crit_edge
  %ret.0 = phi i32 [ %call69, %if.else68.error_pcm_crit_edge ], [ %call64, %if.then54.error_pcm_crit_edge ]
  %31 = ptrtoint ptr %has_ipg_clk_name to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %has_ipg_clk_name, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool75.not = icmp eq i8 %32, 0
  br i1 %tobool75.not, label %if.then76, label %error_pcm.cleanup_crit_edge

error_pcm.cleanup_crit_edge:                      ; preds = %error_pcm
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then76:                                        ; preds = %error_pcm
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %2, align 8
  tail call void @clk_disable(ptr noundef %34) #11
  tail call void @clk_unprepare(ptr noundef %34) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %error_pcm.cleanup_crit_edge, %if.else68.cleanup_crit_edge, %if.then54.cleanup_crit_edge, %do.end19, %if.then6
  %retval.0 = phi i32 [ %4, %if.then6 ], [ %retval.0.i125.ph, %do.end19 ], [ 0, %if.else68.cleanup_crit_edge ], [ 0, %if.then54.cleanup_crit_edge ], [ %ret.0, %if.then76 ], [ %ret.0, %error_pcm.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_ac97_ops_of_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ssi_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %sisr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sisr) #11
  %2 = ptrtoint ptr %sisr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sisr, align 4, !annotation !184
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 20, ptr noundef nonnull %sisr) #11
  %3 = ptrtoint ptr %sisr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sisr, align 4
  %soc = getelementptr inbounds %struct.fsl_ssi, ptr %dev_id, i32 0, i32 27
  %5 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %soc, align 8
  %sisr_write_mask = getelementptr inbounds %struct.fsl_ssi_soc_data, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %sisr_write_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sisr_write_mask, align 4
  %and = and i32 %8, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = call i32 @regmap_write(ptr noundef %1, i32 noundef 20, i32 noundef %and) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dbg_stats = getelementptr inbounds %struct.fsl_ssi, ptr %dev_id, i32 0, i32 26
  %9 = ptrtoint ptr %sisr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sisr, align 4
  call void @fsl_ssi_dbg_isr(ptr noundef %dbg_stats, i32 noundef %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sisr) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_ssi_debugfs_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_ssi_debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_ac97_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsl_ssi_imx_clean(ptr noundef %pdev, ptr nocapture noundef readonly %ssi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %use_dma = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 7
  %0 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_dma, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @imx_pcm_fiq_exit(ptr noundef %pdev) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %has_ipg_clk_name = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 9
  %2 = ptrtoint ptr %has_ipg_clk_name to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_ipg_clk_name, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %clk = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 14
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %5) #11
  tail call void @clk_unprepare(ptr noundef %5) #11
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_ssi_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 8, label %entry.return_crit_edge
    i32 12, label %entry.return_crit_edge1
    i32 80, label %entry.return_crit_edge2
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2
  %retval.0 = phi i1 [ true, %sw.default ], [ false, %entry.return_crit_edge ], [ false, %entry.return_crit_edge1 ], [ false, %entry.return_crit_edge2 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_ssi_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -84
  %switch.and = and i32 %0, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp ne i32 %switch.and, 0
  ret i1 %switch.selectcmp
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_ssi_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.fshl.i32(i32 %reg, i32 %reg, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %0)
  %1 = icmp ult i32 %0, 21
  %switch.cast = trunc i32 %0 to i21
  %switch.downshift = lshr i21 -792529, %switch.cast
  %2 = and i21 %switch.downshift, 1
  %switch.masked = icmp ne i21 %2, 0
  %retval.0 = select i1 %1, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_ssi_precious_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %reg, label %sw.default [
    i32 8, label %entry.return_crit_edge
    i32 12, label %entry.return_crit_edge1
    i32 20, label %entry.return_crit_edge2
    i32 60, label %entry.return_crit_edge3
    i32 64, label %entry.return_crit_edge4
    i32 68, label %entry.return_crit_edge5
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_ssi_dai_probe(ptr nocapture noundef %dai) #9 align 64 {
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
  %soc = getelementptr inbounds %struct.fsl_ssi, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %use_dma = getelementptr inbounds %struct.fsl_ssi, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %use_dma, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %dma_params_tx = getelementptr inbounds %struct.fsl_ssi, ptr %3, i32 0, i32 19
  %dma_params_rx = getelementptr inbounds %struct.fsl_ssi, ptr %3, i32 0, i32 20
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %10 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dma_params_tx, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %11 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dma_params_rx, ptr %capture_dma_data.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ssi_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
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
  %dai_fmt.i = getelementptr inbounds %struct.fsl_ssi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dai_fmt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dai_fmt.i, align 8
  %and.i = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 6
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call fastcc i32 @_fsl_ssi_set_dai_fmt(ptr noundef %3, i32 noundef %fmt)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ssi_set_dai_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  %val = alloca i32, align 4
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !184
  %and = and i32 %slot_width, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %7 = add i32 %slot_width, -25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %7)
  %8 = icmp ult i32 %7, -17
  %9 = or i1 %8, %tobool.not
  br i1 %9, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef %slot_width) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2s_net = getelementptr inbounds %struct.fsl_ssi, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %i2s_net to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i2s_net, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp ne i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %slots)
  %cmp5 = icmp slt i32 %slots, 2
  %or.cond48 = and i1 %cmp5, %tobool4.not
  br i1 %or.cond48, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.45) #15
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub = shl i32 %slots, 8
  %shl = add i32 %sub, 7936
  %and13 = and i32 %shl, 7936
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 36, i32 noundef 7936, i32 noundef %and13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %call.i49 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 40, i32 noundef 7936, i32 noundef %and13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %call19 = call i32 @regmap_read(ptr noundef %5, i32 noundef 16, ptr noundef nonnull %val) #11
  %call.i50 = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %neg = xor i32 %tx_mask, -1
  %call21 = call i32 @regmap_write(ptr noundef %5, i32 noundef 72, i32 noundef %neg) #11
  %neg22 = xor i32 %rx_mask, -1
  %call23 = call i32 @regmap_write(ptr noundef %5, i32 noundef 76, i32 noundef %neg22) #11
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %call.i51 = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 16, i32 noundef 1, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %slot_width25 = getelementptr inbounds %struct.fsl_ssi, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %slot_width25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %slot_width, ptr %slot_width25, align 8
  %slots26 = getelementptr inbounds %struct.fsl_ssi, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %slots26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %slots, ptr %slots26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ssi_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %clk = getelementptr inbounds %struct.fsl_ssi, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %11) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %use_dual_fifo = getelementptr inbounds %struct.fsl_ssi, ptr %9, i32 0, i32 8
  %12 = ptrtoint ptr %use_dual_fifo to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %use_dual_fifo, align 8, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not = icmp eq i8 %13, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %14 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime, align 4
  %call4 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %15, i32 noundef 0, i32 noundef 13, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_ssi_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %clk = getelementptr inbounds %struct.fsl_ssi, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %11) #11
  tail call void @clk_unprepare(ptr noundef %11) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ssi_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %11, %entry.if.then.i.i.i_crit_edge ], [ %14, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #11, !range !187
  %add.i.i.i = or i32 %12, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.1.i.i.i = icmp eq i32 %14, 0
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
  %15 = shl i32 %call1.i, 12
  %16 = add i32 %15, 122880
  %and = and i32 %16, 122880
  %dai_fmt.i = getelementptr inbounds %struct.fsl_ssi, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %dai_fmt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dai_fmt.i, align 8
  %and.i = and i32 %18, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 16384
  br i1 %cmp.i, label %if.then, label %params_width.exit.if.end20_crit_edge

params_width.exit.if.end20_crit_edge:             ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then:                                          ; preds = %params_width.exit
  %19 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i81 = icmp eq i32 %20, 0
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i.i.i, label %for.inc.i.i.i.i, label %if.then.if.then.i.i.i.i_crit_edge

if.then.if.then.i.i.i.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge, %if.then.if.then.i.i.i.i_crit_edge
  %i.09.lcssa.i.i.i.i = phi i32 [ 0, %if.then.if.then.i.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge ]
  %.lcssa.i.i.i.i = phi i32 [ %30, %if.then.if.then.i.i.i.i_crit_edge ], [ %33, %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge ]
  %31 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i.i, i1 true) #11, !range !187
  %add.i.i.i.i = or i32 %31, %i.09.lcssa.i.i.i.i
  br label %params_width.exit.i

for.inc.i.i.i.i:                                  ; preds = %if.then
  %arrayidx.1.i.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.1.i.i.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.1.i.i.i.i, label %for.inc.i.i.i.i.params_width.exit.i_crit_edge, label %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge

for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

for.inc.i.i.i.i.params_width.exit.i_crit_edge:    ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_width.exit.i

params_width.exit.i:                              ; preds = %for.inc.i.i.i.i.params_width.exit.i_crit_edge, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %add.i.i.i.i, %if.then.i.i.i.i ], [ 0, %for.inc.i.i.i.i.params_width.exit.i_crit_edge ]
  %call1.i.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i.i) #11
  %slots4.i = getelementptr inbounds %struct.fsl_ssi, ptr %24, i32 0, i32 12
  %34 = ptrtoint ptr %slots4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %slots4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  %spec.select.i = select i1 %tobool.not.i, i32 2, i32 %35
  %slot_width6.i = getelementptr inbounds %struct.fsl_ssi, ptr %24, i32 0, i32 11
  %36 = ptrtoint ptr %slot_width6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %slot_width6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool7.not.i = icmp eq i32 %37, 0
  %slot_width.0.i = select i1 %tobool7.not.i, i32 %call1.i.i, i32 %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp11.i = icmp eq i32 %28, 2
  br i1 %cmp11.i, label %land.lhs.true.i, label %params_width.exit.i.if.end15.i_crit_edge

params_width.exit.i.if.end15.i_crit_edge:         ; preds = %params_width.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %params_width.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %i2s_net.i = getelementptr inbounds %struct.fsl_ssi, ptr %24, i32 0, i32 5
  %38 = ptrtoint ptr %i2s_net.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %i2s_net.i, align 1
  %40 = and i8 %39, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %40)
  %cmp12.i = icmp eq i8 %40, 32
  %spec.select455.i = select i1 %cmp12.i, i32 32, i32 %slot_width.0.i
  br label %if.end15.i

if.end15.i:                                       ; preds = %land.lhs.true.i, %params_width.exit.i.if.end15.i_crit_edge
  %slot_width.1.i = phi i32 [ %slot_width.0.i, %params_width.exit.i.if.end15.i_crit_edge ], [ %spec.select455.i, %land.lhs.true.i ]
  %mul.i = mul i32 %slot_width.1.i, %spec.select.i
  %arrayidx.i.i456.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %41 = ptrtoint ptr %arrayidx.i.i456.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i456.i, align 4
  %mul17.i = mul i32 %mul.i, %42
  %baudclk.i = getelementptr inbounds %struct.fsl_ssi, ptr %24, i32 0, i32 15
  %43 = ptrtoint ptr %baudclk.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %baudclk.i, align 4
  %cmp.i.i = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end15.i.cleanup_crit_edge, label %if.end20.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20.i:                                       ; preds = %if.end15.i
  %mul21.i = mul i32 %mul17.i, 5
  %clk.i = getelementptr inbounds %struct.fsl_ssi, ptr %24, i32 0, i32 14
  %45 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clk.i, align 8
  %call22.i = tail call i32 @clk_get_rate(ptr noundef %46) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %mul21.i, i32 %call22.i)
  %cmp23.i = icmp ugt i32 %mul21.i, %call22.i
  br i1 %cmp23.i, label %if.end20.i.cleanup.sink.split.i_crit_edge, label %if.end26.i

if.end20.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end26.i:                                       ; preds = %if.end20.i
  %baudclk_streams.i = getelementptr inbounds %struct.fsl_ssi, ptr %24, i32 0, i32 16
  %47 = ptrtoint ptr %baudclk_streams.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %baudclk_streams.i, align 8
  %49 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %stream, align 4
  %shl.i = shl nuw i32 1, %50
  %neg.i = xor i32 %shl.i, -1
  %and28.i = and i32 %48, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  %mul37.i = shl i32 %mul17.i, 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end26.i
  %savesub.0485.i = phi i64 [ 100000, %if.end26.i ], [ %savesub.2.i, %for.inc.i.for.body.i_crit_edge ]
  %baudrate.0484.i = phi i32 [ -1, %if.end26.i ], [ %baudrate.2.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0483.i = phi i32 [ 0, %if.end26.i ], [ %add38.i, %for.inc.i.for.body.i_crit_edge ]
  %pm.0482.i = phi i32 [ 999, %if.end26.i ], [ %pm.2.i, %for.inc.i.for.body.i_crit_edge ]
  %add38.i = add nuw nsw i32 %i.0483.i, 1
  %mul39.i = mul i32 %add38.i, %mul37.i
  %51 = ptrtoint ptr %baudclk.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %baudclk.i, align 4
  br i1 %tobool29.not.i, label %if.else.i, label %if.then41.i

if.then41.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call43.i = tail call i32 @clk_get_rate(ptr noundef %52) #11
  br label %if.end46.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call45.i = tail call i32 @clk_round_rate(ptr noundef %52, i32 noundef %mul39.i) #11
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else.i, %if.then41.i
  %clkrate.0.i = phi i32 [ %call43.i, %if.then41.i ], [ %call45.i, %if.else.i ]
  %div453.i = lshr i32 %clkrate.0.i, 1
  %div48.i = udiv i32 %div453.i, %add38.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul17.i, i32 %div48.i)
  %cmp49.i = icmp eq i32 %mul17.i, %div48.i
  br i1 %cmp49.i, label %if.end46.i.if.end69.i_crit_edge, label %if.else52.i

if.end46.i.if.end69.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69.i

if.else52.i:                                      ; preds = %if.end46.i
  %div53.i = udiv i32 %mul17.i, %div48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div53.i)
  %cmp54.i = icmp eq i32 %div53.i, 1
  br i1 %cmp54.i, label %if.then56.i, label %if.else59.i

if.then56.i:                                      ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub57.i = sub i32 %mul17.i, %div48.i
  br label %if.end69.i

if.else59.i:                                      ; preds = %if.else52.i
  %div60.i = udiv i32 %div48.i, %mul17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div60.i)
  %cmp61.i = icmp eq i32 %div60.i, 1
  br i1 %cmp61.i, label %if.then63.i, label %if.else59.i.for.inc.i_crit_edge

if.else59.i.for.inc.i_crit_edge:                  ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then63.i:                                      ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub64.i = sub i32 %div48.i, %mul17.i
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then63.i, %if.then56.i, %if.end46.i.if.end69.i_crit_edge
  %sub.0.shrunk.i = phi i32 [ %sub57.i, %if.then56.i ], [ %sub64.i, %if.then63.i ], [ 0, %if.end46.i.if.end69.i_crit_edge ]
  %sub.0.i = zext i32 %sub.0.shrunk.i to i64
  %mul70.i = mul nuw nsw i64 %sub.0.i, 100000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul70.i)
  %cmp250.i = icmp ult i64 %mul70.i, 4294967296
  br i1 %cmp250.i, label %if.then254.i, label %if.else260.i, !prof !188

if.then254.i:                                     ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv255.i = trunc i64 %mul70.i to i32
  %div258.i = udiv i32 %conv255.i, %mul17.i
  %conv259.i = zext i32 %div258.i to i64
  br label %if.end264.i

if.else260.i:                                     ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul17.i, i64 %mul70.i) #16, !srcloc !189
  %asmresult1.i.i = extractvalue { i64, i64 } %53, 1
  br label %if.end264.i

if.end264.i:                                      ; preds = %if.else260.i, %if.then254.i
  %sub.1.i = phi i64 [ %conv259.i, %if.then254.i ], [ %asmresult1.i.i, %if.else260.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.1.i, i64 %savesub.0485.i)
  %cmp266.i = icmp uge i64 %sub.1.i, %savesub.0485.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0483.i)
  %cmp269.i = icmp eq i32 %i.0483.i, 0
  %or.cond.i = select i1 %cmp266.i, i1 true, i1 %cmp269.i
  %pm.1.i = select i1 %or.cond.i, i32 %pm.0482.i, i32 %i.0483.i
  %baudrate.1.i = select i1 %or.cond.i, i32 %baudrate.0484.i, i32 %mul39.i
  %savesub.1.i = select i1 %or.cond.i, i64 %savesub.0485.i, i64 %sub.1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %savesub.1.i)
  %cmp273.i = icmp eq i64 %savesub.1.i, 0
  br i1 %cmp273.i, label %if.end264.i.for.end.i_crit_edge, label %if.end264.i.for.inc.i_crit_edge

if.end264.i.for.inc.i_crit_edge:                  ; preds = %if.end264.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end264.i.for.end.i_crit_edge:                  ; preds = %if.end264.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end264.i.for.inc.i_crit_edge, %if.else59.i.for.inc.i_crit_edge
  %pm.2.i = phi i32 [ %pm.1.i, %if.end264.i.for.inc.i_crit_edge ], [ %pm.0482.i, %if.else59.i.for.inc.i_crit_edge ]
  %baudrate.2.i = phi i32 [ %baudrate.1.i, %if.end264.i.for.inc.i_crit_edge ], [ %baudrate.0484.i, %if.else59.i.for.inc.i_crit_edge ]
  %savesub.2.i = phi i64 [ %savesub.1.i, %if.end264.i.for.inc.i_crit_edge ], [ %savesub.0485.i, %if.else59.i.for.inc.i_crit_edge ]
  %exitcond.not.i = icmp eq i32 %add38.i, 255
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end264.i.for.end.i_crit_edge
  %pm.3.i = phi i32 [ %pm.1.i, %if.end264.i.for.end.i_crit_edge ], [ %pm.2.i, %for.inc.i.for.end.i_crit_edge ]
  %baudrate.3.i = phi i32 [ %baudrate.1.i, %if.end264.i.for.end.i_crit_edge ], [ %baudrate.2.i, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %pm.3.i)
  %cmp277.i = icmp eq i32 %pm.3.i, 999
  br i1 %cmp277.i, label %for.end.i.cleanup.sink.split.i_crit_edge, label %if.end284.i

for.end.i.cleanup.sink.split.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end284.i:                                      ; preds = %for.end.i
  %and288.i = and i32 %pm.3.i, 255
  br i1 %cmp.i81, label %if.end284.i.lor.end.i_crit_edge, label %lor.rhs.i

if.end284.i.lor.end.i_crit_edge:                  ; preds = %if.end284.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.end284.i
  call void @__sanitizer_cov_trace_pc() #13
  %synchronous.i = getelementptr inbounds %struct.fsl_ssi, ptr %24, i32 0, i32 6
  %54 = ptrtoint ptr %synchronous.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %synchronous.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool291.not.i = icmp eq i8 %55, 0
  %phi.sel.i = select i1 %tobool291.not.i, i32 40, i32 36
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.end284.i.lor.end.i_crit_edge
  %56 = phi i32 [ 36, %if.end284.i.lor.end.i_crit_edge ], [ %phi.sel.i, %lor.rhs.i ]
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %56, i32 noundef 393471, i32 noundef %and288.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br i1 %tobool29.not.i, label %if.then299.i, label %lor.end.i.if.end_crit_edge

lor.end.i.if.end_crit_edge:                       ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then299.i:                                     ; preds = %lor.end.i
  %57 = ptrtoint ptr %baudclk.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %baudclk.i, align 4
  %call301.i = tail call i32 @clk_set_rate(ptr noundef %58, i32 noundef %baudrate.3.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call301.i)
  %tobool302.not.i = icmp eq i32 %call301.i, 0
  br i1 %tobool302.not.i, label %if.then299.i.if.end_crit_edge, label %if.then299.i.cleanup.sink.split.i_crit_edge

if.then299.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.then299.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.then299.i.if.end_crit_edge:                    ; preds = %if.then299.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup.sink.split.i:                             ; preds = %if.then299.i.cleanup.sink.split.i_crit_edge, %for.end.i.cleanup.sink.split.i_crit_edge, %if.end20.i.cleanup.sink.split.i_crit_edge
  %.str.53.sink.i = phi ptr [ @.str.47, %if.end20.i.cleanup.sink.split.i_crit_edge ], [ @.str.50, %for.end.i.cleanup.sink.split.i_crit_edge ], [ @.str.53, %if.then299.i.cleanup.sink.split.i_crit_edge ]
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull %.str.53.sink.i) #15
  br label %cleanup

if.end:                                           ; preds = %if.then299.i.if.end_crit_edge, %lor.end.i.if.end_crit_edge
  %baudclk_streams = getelementptr inbounds %struct.fsl_ssi, ptr %5, i32 0, i32 16
  %61 = ptrtoint ptr %baudclk_streams to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %baudclk_streams, align 8
  %63 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %stream, align 4
  %shl8 = shl nuw i32 1, %64
  %and9 = and i32 %shl8, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then11:                                        ; preds = %if.end
  %baudclk = getelementptr inbounds %struct.fsl_ssi, ptr %5, i32 0, i32 15
  %65 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %baudclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i83 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i83, label %if.end.i, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then11
  %call1.i84 = tail call i32 @clk_enable(ptr noundef %66) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i84)
  %tobool2.not.i = icmp eq i32 %call1.i84, 0
  br i1 %tobool2.not.i, label %if.end15, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %66) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %stream, align 4
  %shl17 = shl nuw i32 1, %68
  %69 = ptrtoint ptr %baudclk_streams to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %baudclk_streams, align 8
  %or = or i32 %70, %shl17
  store i32 %or, ptr %baudclk_streams, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.end15, %if.end.if.end20_crit_edge, %params_width.exit.if.end20_crit_edge
  %streams = getelementptr inbounds %struct.fsl_ssi, ptr %5, i32 0, i32 4
  %71 = ptrtoint ptr %streams to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %streams, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool21.not = icmp eq i8 %72, 0
  br i1 %tobool21.not, label %if.end20.if.end25_crit_edge, label %land.lhs.true

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end20
  %synchronous = getelementptr inbounds %struct.fsl_ssi, ptr %5, i32 0, i32 6
  %73 = ptrtoint ptr %synchronous to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %synchronous, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool22.not = icmp eq i8 %74, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end20.if.end25_crit_edge
  %75 = ptrtoint ptr %dai_fmt.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dai_fmt.i, align 8
  %and.i87 = and i32 %76, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i87)
  %cmp.i88 = icmp eq i32 %and.i87, 6
  br i1 %cmp.i88, label %if.end25.if.end42_crit_edge, label %if.then27

if.end25.if.end42_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %i2s_net28 = getelementptr inbounds %struct.fsl_ssi, ptr %5, i32 0, i32 5
  %77 = ptrtoint ptr %i2s_net28 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %i2s_net28, align 1
  %and.i90 = and i32 %76, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %and.i90)
  %cmp.i91 = icmp eq i32 %and.i90, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call1.i)
  %cmp32 = icmp eq i32 %call1.i, 16
  %or.cond = select i1 %cmp.i91, i1 %cmp32, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp36 = icmp eq i32 %9, 1
  %79 = zext i8 %78 to i32
  %80 = select i1 %or.cond, i32 8, i32 %79
  %conv40 = select i1 %cmp36, i32 0, i32 %80
  %call.i92 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 16, i32 noundef 104, i32 noundef %conv40, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %if.end42

if.end42:                                         ; preds = %if.then27, %if.end25.if.end42_crit_edge
  br i1 %cmp, label %if.end42.lor.end_crit_edge, label %lor.rhs

if.end42.lor.end_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.rhs:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %synchronous45 = getelementptr inbounds %struct.fsl_ssi, ptr %5, i32 0, i32 6
  %81 = ptrtoint ptr %synchronous45 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %synchronous45, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool46.not = icmp eq i8 %82, 0
  %phi.sel = select i1 %tobool46.not, i32 40, i32 36
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end42.lor.end_crit_edge
  %83 = phi i32 [ 36, %if.end42.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ]
  %call.i93 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %83, i32 noundef 122880, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %lor.end, %land.lhs.true.cleanup_crit_edge, %if.then3.i, %if.then11.cleanup_crit_edge, %cleanup.sink.split.i, %if.end15.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end15.i.cleanup_crit_edge ], [ -22, %cleanup.sink.split.i ], [ %call1.i84, %if.then3.i ], [ %call.i, %if.then11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ssi_hw_free(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %dai_fmt.i = getelementptr inbounds %struct.fsl_ssi, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dai_fmt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dai_fmt.i, align 8
  %and.i = and i32 %11, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 16384
  br i1 %cmp.i, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %baudclk_streams = getelementptr inbounds %struct.fsl_ssi, ptr %9, i32 0, i32 16
  %12 = ptrtoint ptr %baudclk_streams to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %baudclk_streams, align 8
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream, align 4
  %shl = shl nuw i32 1, %15
  %and = and i32 %shl, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %baudclk = getelementptr inbounds %struct.fsl_ssi, ptr %9, i32 0, i32 15
  %16 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %baudclk, align 4
  tail call void @clk_disable(ptr noundef %17) #11
  tail call void @clk_unprepare(ptr noundef %17) #11
  %18 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream, align 4
  %shl3 = shl nuw i32 1, %19
  %neg = xor i32 %shl3, -1
  %20 = ptrtoint ptr %baudclk_streams to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %baudclk_streams, align 8
  %and5 = and i32 %21, %neg
  store i32 %and5, ptr %baudclk_streams, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ssi_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  %sfcsr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
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
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge29
    i32 4, label %entry.sw.bb_crit_edge30
    i32 0, label %entry.sw.bb3_crit_edge
    i32 5, label %entry.sw.bb3_crit_edge31
    i32 3, label %entry.sw.bb3_crit_edge32
  ]

entry.sw.bb3_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

entry.sw.bb3_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

entry.sw.bb_crit_edge30:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge29:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge29, %entry.sw.bb_crit_edge30
  br i1 %cmp, label %land.lhs.true, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %dai_fmt.i = getelementptr inbounds %struct.fsl_ssi, ptr %9, i32 0, i32 3
  %13 = ptrtoint ptr %dai_fmt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dai_fmt.i, align 8
  %and.i = and i32 %14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 6
  br i1 %cmp.i, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %soc.i = getelementptr inbounds %struct.fsl_ssi, ptr %9, i32 0, i32 27
  %15 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %soc.i, align 8
  %imx21regs.i = getelementptr inbounds %struct.fsl_ssi_soc_data, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %imx21regs.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %imx21regs.i, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %9, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 88, i32 noundef 255) #11
  %call2.i = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 84, i32 noundef 768) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %cond2.i = phi i32 [ 16, %if.then.i ], [ 16, %if.then.if.end_crit_edge ], [ 16, %land.lhs.true.if.end_crit_edge ], [ 32, %sw.bb.if.end_crit_edge ]
  %regvals.i = getelementptr inbounds %struct.fsl_ssi, ptr %9, i32 0, i32 13
  %cond.i = zext i1 %cmp to i32
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %9, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 52, i32 noundef %cond2.i, i32 noundef %cond2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %soc.i13 = getelementptr inbounds %struct.fsl_ssi, ptr %9, i32 0, i32 27
  %23 = ptrtoint ptr %soc.i13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %soc.i13, align 8
  %offline_config.i = getelementptr inbounds %struct.fsl_ssi_soc_data, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %offline_config.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %offline_config.i, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool5.not.i = icmp eq i8 %26, 0
  br i1 %tobool5.not.i, label %if.else.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end
  %streams.i = getelementptr inbounds %struct.fsl_ssi, ptr %9, i32 0, i32 4
  %27 = ptrtoint ptr %streams.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %streams.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool6.not.i = icmp eq i8 %28, 0
  br i1 %tobool6.not.i, label %if.then10.i, label %land.lhs.true.i.enable_scr.i_crit_edge

land.lhs.true.i.enable_scr.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enable_scr.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %srcr11.i = getelementptr inbounds %struct.fsl_ssi, ptr %9, i32 0, i32 13, i32 0, i32 1
  %29 = ptrtoint ptr %srcr11.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %srcr11.i, align 4
  %arrayidx12.i = getelementptr %struct.fsl_ssi, ptr %9, i32 0, i32 13, i32 1
  %srcr13.i = getelementptr %struct.fsl_ssi, ptr %9, i32 0, i32 13, i32 1, i32 1
  %31 = ptrtoint ptr %srcr13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %srcr13.i, align 4
  %or.i = or i32 %32, %30
  %stcr15.i = getelementptr inbounds %struct.fsl_ssi, ptr %9, i32 0, i32 13, i32 0, i32 2
  %33 = ptrtoint ptr %stcr15.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stcr15.i, align 4
  %stcr17.i = getelementptr %struct.fsl_ssi, ptr %9, i32 0, i32 13, i32 1, i32 2
  %35 = ptrtoint ptr %stcr17.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stcr17.i, align 4
  %or18.i = or i32 %36, %34
  %37 = ptrtoint ptr %regvals.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %regvals.i, align 4
  %39 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx12.i, align 4
  %or23.i = or i32 %40, %38
  br label %if.end30.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx24.i = getelementptr %struct.fsl_ssi_regvals, ptr %regvals.i, i32 %cond.i
  %srcr25.i = getelementptr %struct.fsl_ssi_regvals, ptr %regvals.i, i32 %cond.i, i32 1
  %41 = ptrtoint ptr %srcr25.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %srcr25.i, align 4
  %stcr27.i = getelementptr %struct.fsl_ssi_regvals, ptr %regvals.i, i32 %cond.i, i32 2
  %43 = ptrtoint ptr %stcr27.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stcr27.i, align 4
  %45 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx24.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else.i, %if.then10.i
  %sier.0.i = phi i32 [ %or23.i, %if.then10.i ], [ %46, %if.else.i ]
  %srcr.0.i = phi i32 [ %or.i, %if.then10.i ], [ %42, %if.else.i ]
  %stcr.0.i = phi i32 [ %or18.i, %if.then10.i ], [ %44, %if.else.i ]
  %47 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %9, align 8
  %call.i103.i = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 32, i32 noundef %srcr.0.i, i32 noundef %srcr.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %49 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %9, align 8
  %call.i104.i = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 28, i32 noundef %stcr.0.i, i32 noundef %stcr.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %51 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %9, align 8
  %call.i105.i = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 24, i32 noundef %sier.0.i, i32 noundef %sier.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %enable_scr.i

enable_scr.i:                                     ; preds = %if.end30.i, %land.lhs.true.i.enable_scr.i_crit_edge
  %use_dma.i = getelementptr inbounds %struct.fsl_ssi, ptr %9, i32 0, i32 7
  %53 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %use_dma.i, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool37.not.i = icmp ne i8 %54, 0
  %55 = and i1 %cmp, %tobool37.not.i
  br i1 %55, label %if.then42.i, label %enable_scr.i.fsl_ssi_config_enable.exit_crit_edge

enable_scr.i.fsl_ssi_config_enable.exit_crit_edge: ; preds = %enable_scr.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsl_ssi_config_enable.exit

if.then42.i:                                      ; preds = %enable_scr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sfcsr.i) #11
  %56 = ptrtoint ptr %sfcsr.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %sfcsr.i, align 4, !annotation !184
  %57 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %9, align 8
  %call.i106.i = tail call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then42.i
  %try.0.i = phi i32 [ 100, %if.then42.i ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %59 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %9, align 8
  %call46.i = call i32 @regmap_read(ptr noundef %60, i32 noundef 44, ptr noundef nonnull %sfcsr.i) #11
  %61 = ptrtoint ptr %sfcsr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sfcsr.i, align 4
  %63 = and i32 %62, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool47.not.i = icmp ne i32 %63, 0
  %dec.i = add nsw i32 %try.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool50.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool47.not.i, i1 true, i1 %tobool50.not.i
  br i1 %or.cond.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool53.not.i = icmp eq i32 %63, 0
  br i1 %tobool53.not.i, label %do.end57.i, label %do.end.i.if.end58.i_crit_edge

do.end.i.if.end58.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

do.end57.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i14 = getelementptr inbounds %struct.fsl_ssi, ptr %9, i32 0, i32 28
  %64 = ptrtoint ptr %dev.i14 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i14, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %65, ptr noundef nonnull @.str.55) #15
  br label %if.end58.i

if.end58.i:                                       ; preds = %do.end57.i, %do.end.i.if.end58.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sfcsr.i) #11
  br label %fsl_ssi_config_enable.exit

fsl_ssi_config_enable.exit:                       ; preds = %if.end58.i, %enable_scr.i.fsl_ssi_config_enable.exit_crit_edge
  %66 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %9, align 8
  %scr.i = getelementptr %struct.fsl_ssi_regvals, ptr %regvals.i, i32 %cond.i, i32 3
  %68 = ptrtoint ptr %scr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %scr.i, align 4
  %call.i107.i = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 16, i32 noundef %69, i32 noundef %69, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %shl.i = shl nuw i32 1, %cond.i
  %streams65.i = getelementptr inbounds %struct.fsl_ssi, ptr %9, i32 0, i32 4
  %70 = ptrtoint ptr %streams65.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %streams65.i, align 4
  %72 = trunc i32 %shl.i to i8
  %conv68.i = or i8 %71, %72
  store i8 %conv68.i, ptr %streams65.i, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge31, %entry.sw.bb3_crit_edge32
  %not.tx.i = xor i1 %cmp, true
  %cond.i15 = zext i1 %not.tx.i to i32
  %cond2.i16 = zext i1 %cmp to i32
  %streams.i17 = getelementptr inbounds %struct.fsl_ssi, ptr %9, i32 0, i32 4
  %73 = ptrtoint ptr %streams.i17 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %streams.i17, align 4
  %conv.i = zext i8 %74 to i32
  %shl.i18 = shl nuw nsw i32 1, %cond.i15
  %and.i19 = and i32 %shl.i18, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19)
  %tobool3.not.i = icmp eq i32 %and.i19, 0
  %arrayidx.i = getelementptr %struct.fsl_ssi, ptr %9, i32 0, i32 13, i32 %cond2.i16
  %arrayidx6.i = getelementptr %struct.fsl_ssi, ptr %9, i32 0, i32 13, i32 %cond.i15
  %scr7.i = getelementptr %struct.fsl_ssi, ptr %9, i32 0, i32 13, i32 %cond2.i16, i32 3
  %75 = ptrtoint ptr %scr7.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %scr7.i, align 4
  %scr9.i = getelementptr %struct.fsl_ssi, ptr %9, i32 0, i32 13, i32 %cond.i15, i32 3
  %77 = ptrtoint ptr %scr9.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %scr9.i, align 4
  %.op.i = xor i32 %78, -1
  %79 = select i1 %tobool3.not.i, i32 -1, i32 %.op.i
  %and12.i = and i32 %79, %76
  %80 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %9, align 8
  %call.i.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef 16, i32 noundef %and12.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %shl13.i = shl nuw nsw i32 1, %cond2.i16
  %82 = ptrtoint ptr %streams.i17 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %streams.i17, align 4
  %84 = trunc i32 %shl13.i to i8
  %85 = xor i8 %84, -1
  %conv17.i = and i8 %83, %85
  store i8 %conv17.i, ptr %streams.i17, align 4
  %soc.i21 = getelementptr inbounds %struct.fsl_ssi, ptr %9, i32 0, i32 27
  %86 = ptrtoint ptr %soc.i21 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %soc.i21, align 8
  %offline_config.i22 = getelementptr inbounds %struct.fsl_ssi_soc_data, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %offline_config.i22 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %offline_config.i22, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool18.not.i = icmp eq i8 %89, 0
  %brmerge.i = select i1 %tobool18.not.i, i1 true, i1 %tobool3.not.i
  br i1 %brmerge.i, label %if.end.i, label %sw.bb3.fsl_ssi_config_disable.exit_crit_edge

sw.bb3.fsl_ssi_config_disable.exit_crit_edge:     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsl_ssi_config_disable.exit

if.end.i:                                         ; preds = %sw.bb3
  br i1 %tobool18.not.i, label %if.else.i24, label %if.then25.i

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %srcr26.i = getelementptr %struct.fsl_ssi, ptr %9, i32 0, i32 13, i32 %cond2.i16, i32 1
  %90 = ptrtoint ptr %srcr26.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %srcr26.i, align 4
  %srcr27.i = getelementptr %struct.fsl_ssi, ptr %9, i32 0, i32 13, i32 %cond.i15, i32 1
  %92 = ptrtoint ptr %srcr27.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %srcr27.i, align 4
  %or.i23 = or i32 %93, %91
  %stcr28.i = getelementptr %struct.fsl_ssi, ptr %9, i32 0, i32 13, i32 %cond2.i16, i32 2
  %94 = ptrtoint ptr %stcr28.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %stcr28.i, align 4
  %stcr29.i = getelementptr %struct.fsl_ssi, ptr %9, i32 0, i32 13, i32 %cond.i15, i32 2
  %96 = ptrtoint ptr %stcr29.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %stcr29.i, align 4
  %or30.i = or i32 %97, %95
  %98 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx.i, align 4
  %100 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx6.i, align 4
  %or33.i = or i32 %101, %99
  br label %if.end58.i28

if.else.i24:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i, align 4
  %104 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx6.i, align 4
  %.op108.i = xor i32 %105, -1
  %106 = select i1 %tobool3.not.i, i32 -1, i32 %.op108.i
  %and41.i = and i32 %106, %103
  %srcr42.i = getelementptr %struct.fsl_ssi, ptr %9, i32 0, i32 13, i32 %cond2.i16, i32 1
  %107 = ptrtoint ptr %srcr42.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %srcr42.i, align 4
  %srcr44.i = getelementptr %struct.fsl_ssi, ptr %9, i32 0, i32 13, i32 %cond.i15, i32 1
  %109 = ptrtoint ptr %srcr44.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %srcr44.i, align 4
  %.op109.i = xor i32 %110, -1
  %111 = select i1 %tobool3.not.i, i32 -1, i32 %.op109.i
  %and49.i = and i32 %111, %108
  %stcr50.i = getelementptr %struct.fsl_ssi, ptr %9, i32 0, i32 13, i32 %cond2.i16, i32 2
  %112 = ptrtoint ptr %stcr50.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %stcr50.i, align 4
  %stcr52.i = getelementptr %struct.fsl_ssi, ptr %9, i32 0, i32 13, i32 %cond.i15, i32 2
  %114 = ptrtoint ptr %stcr52.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %stcr52.i, align 4
  %.op110.i = xor i32 %115, -1
  %116 = select i1 %tobool3.not.i, i32 -1, i32 %.op110.i
  %and57.i = and i32 %116, %113
  br label %if.end58.i28

if.end58.i28:                                     ; preds = %if.else.i24, %if.then25.i
  %srcr.0.i25 = phi i32 [ %or.i23, %if.then25.i ], [ %and49.i, %if.else.i24 ]
  %stcr.0.i26 = phi i32 [ %or30.i, %if.then25.i ], [ %and57.i, %if.else.i24 ]
  %sier.0.i27 = phi i32 [ %or33.i, %if.then25.i ], [ %and41.i, %if.else.i24 ]
  %117 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %9, align 8
  %call.i111.i = tail call i32 @regmap_update_bits_base(ptr noundef %118, i32 noundef 32, i32 noundef %srcr.0.i25, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %119 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %9, align 8
  %call.i112.i = tail call i32 @regmap_update_bits_base(ptr noundef %120, i32 noundef 28, i32 noundef %stcr.0.i26, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %121 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %9, align 8
  %call.i113.i = tail call i32 @regmap_update_bits_base(ptr noundef %122, i32 noundef 24, i32 noundef %sier.0.i27, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %fsl_ssi_config_disable.exit

fsl_ssi_config_disable.exit:                      ; preds = %if.end58.i28, %sw.bb3.fsl_ssi_config_disable.exit_crit_edge
  %123 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %9, align 8
  %cond68.i = select i1 %cmp, i32 16, i32 32
  %call.i114.i = tail call i32 @regmap_update_bits_base(ptr noundef %124, i32 noundef 52, i32 noundef %cond68.i, i32 noundef %cond68.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %fsl_ssi_config_disable.exit, %fsl_ssi_config_enable.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %fsl_ssi_config_disable.exit ], [ 0, %fsl_ssi_config_enable.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_fsl_ssi_set_dai_fmt(ptr nocapture noundef %ssi, i32 noundef %fmt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dai_fmt = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 3
  %0 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %fmt, ptr %dai_fmt, align 8
  %i2s_net = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 5
  %1 = ptrtoint ptr %i2s_net to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 8, ptr %i2s_net, align 1
  %and = and i32 %fmt, 15
  %2 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %entry.sw.epilog31_crit_edge
    i32 4, label %sw.bb24
    i32 5, label %sw.bb26
    i32 6, label %sw.bb28
  ]

entry.sw.epilog31_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog31

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = trunc i32 %fmt to i16
  %trunc110 = and i16 %3, -4096
  %4 = zext i16 %trunc110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %trunc110, label %sw.bb.cleanup_crit_edge [
    i16 16384, label %sw.bb3
    i16 12288, label %sw.bb.sw.bb4_crit_edge
    i16 4096, label %sw.bb.sw.epilog_crit_edge
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.sw.bb4_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  %baudclk = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 15
  %5 = ptrtoint ptr %baudclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %baudclk, align 4
  %cmp.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %sw.bb3.sw.bb4_crit_edge

sw.bb3.sw.bb4_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

do.end:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 28
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.40) #15
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb3.sw.bb4_crit_edge, %sw.bb.sw.bb4_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb.sw.epilog_crit_edge
  %storemerge = phi i8 [ 40, %sw.bb4 ], [ 72, %sw.bb.sw.epilog_crit_edge ]
  %9 = ptrtoint ptr %i2s_net to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %storemerge, ptr %i2s_net, align 1
  %slots13 = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 12
  %10 = ptrtoint ptr %slots13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slots13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %12 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ssi, align 8
  %.op = shl i32 %11, 8
  %.op.op = add i32 %.op, 7936
  %.op.op.op = and i32 %.op.op, 7936
  %and14 = select i1 %tobool.not, i32 256, i32 %.op.op.op
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 36, i32 noundef 7936, i32 noundef %and14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %14 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ssi, align 8
  %call.i111 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 40, i32 noundef 7936, i32 noundef %and14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %sw.epilog31

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog31

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog31

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog31

sw.epilog31:                                      ; preds = %sw.bb28, %sw.bb26, %sw.bb24, %sw.epilog, %entry.sw.epilog31_crit_edge
  %strcr.0 = phi i32 [ 513, %sw.bb28 ], [ 522, %sw.bb26 ], [ 523, %sw.bb24 ], [ 525, %sw.epilog ], [ 520, %entry.sw.epilog31_crit_edge ]
  %16 = ptrtoint ptr %i2s_net to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i2s_net, align 1
  %conv33 = zext i8 %17 to i32
  %or34 = or i32 %conv33, 4096
  %and35 = lshr i32 %fmt, 8
  %18 = and i32 %and35, 15
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %18, label %sw.epilog31.cleanup_crit_edge [
    i32 0, label %sw.epilog31.sw.epilog43_crit_edge
    i32 3, label %sw.bb36
    i32 2, label %sw.bb37
    i32 4, label %sw.bb39
  ]

sw.epilog31.sw.epilog43_crit_edge:                ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog43

sw.epilog31.cleanup_crit_edge:                    ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb36:                                          ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #13
  %xor = xor i32 %strcr.0, 8
  br label %sw.epilog43

sw.bb37:                                          ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #13
  %xor38 = xor i32 %strcr.0, 4
  br label %sw.epilog43

sw.bb39:                                          ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #13
  %xor41 = xor i32 %strcr.0, 12
  br label %sw.epilog43

sw.epilog43:                                      ; preds = %sw.bb39, %sw.bb37, %sw.bb36, %sw.epilog31.sw.epilog43_crit_edge
  %strcr.1 = phi i32 [ %xor41, %sw.bb39 ], [ %xor38, %sw.bb37 ], [ %xor, %sw.bb36 ], [ %strcr.0, %sw.epilog31.sw.epilog43_crit_edge ]
  %20 = trunc i32 %fmt to i16
  %trunc = and i16 %20, -4096
  %21 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %trunc, label %sw.epilog43.cleanup_crit_edge [
    i16 16384, label %sw.bb45
    i16 4096, label %sw.epilog43.sw.epilog51_crit_edge
    i16 12288, label %sw.bb48
  ]

sw.epilog43.sw.epilog51_crit_edge:                ; preds = %sw.epilog43
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog51

sw.epilog43.cleanup_crit_edge:                    ; preds = %sw.epilog43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb45:                                          ; preds = %sw.epilog43
  call void @__sanitizer_cov_trace_pc() #13
  %or46 = or i32 %strcr.1, 96
  %or47 = or i32 %conv33, 4224
  br label %sw.epilog51

sw.bb48:                                          ; preds = %sw.epilog43
  call void @__sanitizer_cov_trace_pc() #13
  %or49 = or i32 %strcr.1, 64
  br label %sw.epilog51

sw.epilog51:                                      ; preds = %sw.bb48, %sw.bb45, %sw.epilog43.sw.epilog51_crit_edge
  %strcr.2 = phi i32 [ %or49, %sw.bb48 ], [ %strcr.1, %sw.epilog43.sw.epilog51_crit_edge ], [ %or46, %sw.bb45 ]
  %scr.0 = phi i32 [ %or34, %sw.bb48 ], [ %or34, %sw.epilog43.sw.epilog51_crit_edge ], [ %or47, %sw.bb45 ]
  %synchronous = getelementptr inbounds %struct.fsl_ssi, ptr %ssi, i32 0, i32 6
  %22 = ptrtoint ptr %synchronous to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %synchronous, align 2, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool52.not = icmp eq i8 %23, 0
  br i1 %tobool52.not, label %lor.lhs.false, label %sw.epilog51.if.then56_crit_edge

sw.epilog51.if.then56_crit_edge:                  ; preds = %sw.epilog51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then56

lor.lhs.false:                                    ; preds = %sw.epilog51
  %24 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dai_fmt, align 8
  %and.i = and i32 %25, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %cmp.i112 = icmp eq i32 %and.i, 6
  br i1 %cmp.i112, label %lor.lhs.false.if.then56_crit_edge, label %lor.lhs.false.if.end59_crit_edge

lor.lhs.false.if.end59_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

lor.lhs.false.if.then56_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then56

if.then56:                                        ; preds = %lor.lhs.false.if.then56_crit_edge, %sw.epilog51.if.then56_crit_edge
  %and57 = and i32 %strcr.2, -33
  %or58 = or i32 %scr.0, 16
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %lor.lhs.false.if.end59_crit_edge
  %scr.1 = phi i32 [ %or58, %if.then56 ], [ %scr.0, %lor.lhs.false.if.end59_crit_edge ]
  %srcr.0 = phi i32 [ %and57, %if.then56 ], [ %strcr.2, %lor.lhs.false.if.end59_crit_edge ]
  %26 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ssi, align 8
  %call.i113 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 28, i32 noundef 623, i32 noundef %strcr.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %28 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ssi, align 8
  %call.i114 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 32, i32 noundef 623, i32 noundef %srcr.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %30 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ssi, align 8
  %call.i115 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 16, i32 noundef 4336, i32 noundef %scr.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %sw.epilog43.cleanup_crit_edge, %sw.epilog31.cleanup_crit_edge, %do.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end59 ], [ -22, %do.end ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog31.cleanup_crit_edge ], [ -22, %sw.epilog43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_pcm_fiq_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_pcm_dma_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_ssi_ac97_write(ptr nocapture noundef readnone %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fsl_ac97_data, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %conv = zext i16 %reg to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %reg)
  %cmp = icmp ugt i16 %reg, 127
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ac97_reg_lock = getelementptr inbounds %struct.fsl_ssi, ptr %0, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %ac97_reg_lock, i32 noundef 0) #11
  %3 = load ptr, ptr @fsl_ac97_data, align 4
  %clk = getelementptr inbounds %struct.fsl_ssi, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end5, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end_crit_edge ]
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %retval.0.i.ph) #15
  br label %ret_unlock

if.end5:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl nuw nsw i32 %conv, 12
  %call7 = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 60, i32 noundef %shl) #11
  %conv8 = zext i16 %val to i32
  %shl9 = shl nuw nsw i32 %conv8, 4
  %call10 = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 64, i32 noundef %shl9) #11
  %call.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 56, i32 noundef 24, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 21474800) #11
  %7 = load ptr, ptr @fsl_ac97_data, align 4
  %clk12 = getelementptr inbounds %struct.fsl_ssi, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %clk12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk12, align 8
  tail call void @clk_disable(ptr noundef %9) #11
  tail call void @clk_unprepare(ptr noundef %9) #11
  br label %ret_unlock

ret_unlock:                                       ; preds = %if.end5, %do.end
  %10 = load ptr, ptr @fsl_ac97_data, align 4
  %ac97_reg_lock13 = getelementptr inbounds %struct.fsl_ssi, ptr %10, i32 0, i32 31
  tail call void @mutex_unlock(ptr noundef %ac97_reg_lock13) #11
  br label %cleanup

cleanup:                                          ; preds = %ret_unlock, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @fsl_ssi_ac97_read(ptr nocapture noundef readnone %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fsl_ac97_data, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #11
  %3 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg_val, align 4, !annotation !184
  %ac97_reg_lock = getelementptr inbounds %struct.fsl_ssi, ptr %0, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %ac97_reg_lock, i32 noundef 0) #11
  %4 = load ptr, ptr @fsl_ac97_data, align 4
  %clk = getelementptr inbounds %struct.fsl_ssi, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %6) #11
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %retval.0.i.ph) #15
  br label %ret_unlock

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = and i16 %reg, 127
  %and = zext i16 %7 to i32
  %shl = shl nuw nsw i32 %and, 12
  %call3 = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 60, i32 noundef %shl) #11
  %call.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 56, i32 noundef 24, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #11
  %call5 = call i32 @regmap_read(ptr noundef %2, i32 noundef 64, ptr noundef nonnull %reg_val) #11
  %9 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_val, align 4
  %shr = lshr i32 %10, 4
  %conv7 = trunc i32 %shr to i16
  %11 = load ptr, ptr @fsl_ac97_data, align 4
  %clk8 = getelementptr inbounds %struct.fsl_ssi, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %clk8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk8, align 8
  call void @clk_disable(ptr noundef %13) #11
  call void @clk_unprepare(ptr noundef %13) #11
  br label %ret_unlock

ret_unlock:                                       ; preds = %if.end, %do.end
  %val.0 = phi i16 [ 0, %do.end ], [ %conv7, %if.end ]
  %14 = load ptr, ptr @fsl_ac97_data, align 4
  %ac97_reg_lock9 = getelementptr inbounds %struct.fsl_ssi, ptr %14, i32 0, i32 31
  call void @mutex_unlock(ptr noundef %ac97_reg_lock9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #11
  ret i16 %val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_ssi_dbg_isr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_pcm_fiq_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ssi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %regcache_sfcsr = getelementptr inbounds %struct.fsl_ssi, ptr %1, i32 0, i32 17
  %call2 = tail call i32 @regmap_read(ptr noundef %3, i32 noundef 44, ptr noundef %regcache_sfcsr) #11
  %regcache_sacnt = getelementptr inbounds %struct.fsl_ssi, ptr %1, i32 0, i32 18
  %call3 = tail call i32 @regmap_read(ptr noundef %3, i32 noundef 56, ptr noundef %regcache_sacnt) #11
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #11
  tail call void @regcache_mark_dirty(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ssi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext false) #11
  %regcache_sfcsr = getelementptr inbounds %struct.fsl_ssi, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %regcache_sfcsr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regcache_sfcsr, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 44, i32 noundef 16711935, i32 noundef %5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %regcache_sacnt = getelementptr inbounds %struct.fsl_ssi, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %regcache_sacnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %regcache_sacnt, align 8
  %call3 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 56, i32 noundef %7) #11
  %call4 = tail call i32 @regcache_sync(ptr noundef %3) #11
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

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

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !22, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !124, !126, !128, !130, !132, !134, !135, !136, !137, !139, !140, !141, !143, !145, !146, !147, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !163, !165, !167, !169, !171, !173}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @__initcall__kmod_snd_soc_fsl_ssi__241_1712_fsl_ssi_driver_init6, !1, !"__initcall__kmod_snd_soc_fsl_ssi__241_1712_fsl_ssi_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1712, i32 1}
!2 = !{ptr @__exitcall_fsl_ssi_driver_exit, !1, !"__exitcall_fsl_ssi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias242, !4, !"__UNIQUE_ID_alias242", i1 false, i1 false}
!4 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1714, i32 1}
!5 = !{ptr @__UNIQUE_ID_author243, !6, !"__UNIQUE_ID_author243", i1 false, i1 false}
!6 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1715, i32 1}
!7 = !{ptr @__UNIQUE_ID_description244, !8, !"__UNIQUE_ID_description244", i1 false, i1 false}
!8 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1716, i32 1}
!9 = !{ptr @__UNIQUE_ID_file245, !10, !"__UNIQUE_ID_file245", i1 false, i1 false}
!10 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1717, i32 1}
!11 = !{ptr @__UNIQUE_ID_license246, !10, !"__UNIQUE_ID_license246", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1704, i32 11}
!14 = !{ptr @fsl_ssi_driver, !15, !"fsl_ssi_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1702, i32 31}
!16 = !{ptr @fsl_ssi_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1519, i32 15}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @fsl_ssi_probe._key.3, !21, !"_key", i1 false, i1 false}
!21 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1522, i32 15}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1524, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @fsl_ssi_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @fsl_ssi_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @fsl_ssi_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1575, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1578, i32 4}
!36 = !{ptr @fsl_ssi_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @fsl_ssi_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1586, i32 3}
!40 = !{ptr @fsl_ssi_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @fsl_ssi_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1594, i32 4}
!44 = !{ptr @fsl_ssi_probe._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @fsl_ssi_probe._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1620, i32 4}
!48 = !{ptr @fsl_ssi_probe._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @fsl_ssi_probe._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @fsl_ssi_regconfig, !51, !"fsl_ssi_regconfig", i1 false, i1 false}
!51 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 184, i32 35}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1406, i32 37}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1411, i32 30}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1412, i32 30}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1415, i32 34}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1417, i32 4}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @fsl_ssi_probe_from_dt._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @fsl_ssi_probe_from_dt._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1420, i32 26}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1421, i32 35}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1435, i32 44}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1438, i32 30}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1445, i32 39}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1457, i32 48}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1458, i32 51}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1460, i32 33}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1467, i32 5}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1170, i32 18}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1163, i32 18}
!87 = !{ptr @fsl_ssi_ac97_dai, !88, !"fsl_ssi_ac97_dai", i1 false, i1 false}
!88 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1159, i32 34}
!89 = !{ptr @fsl_ssi_dai_ops, !90, !"fsl_ssi_dai_ops", i1 false, i1 false}
!90 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1126, i32 37}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 897, i32 5}
!93 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @_fsl_ssi_set_dai_fmt._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @_fsl_ssi_set_dai_fmt._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1038, i32 3}
!98 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @fsl_ssi_set_dai_tdm_slot._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @fsl_ssi_set_dai_tdm_slot._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1044, i32 3}
!103 = !{ptr @fsl_ssi_set_dai_tdm_slot._entry.44, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @fsl_ssi_set_dai_tdm_slot._entry_ptr.46, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 714, i32 3}
!107 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @fsl_ssi_set_bclk._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @fsl_ssi_set_bclk._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 763, i32 3}
!112 = !{ptr @fsl_ssi_set_bclk._entry.49, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @fsl_ssi_set_bclk._entry_ptr.51, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 777, i32 4}
!116 = !{ptr @fsl_ssi_set_bclk._entry.52, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @fsl_ssi_set_bclk._entry_ptr.54, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 461, i32 4}
!120 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @fsl_ssi_config_enable._entry, !119, !"_entry", i1 false, i1 false}
!123 = !{ptr @fsl_ssi_config_enable._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @fsl_ac97_data, !125, !"fsl_ac97_data", i1 false, i1 false}
!125 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1180, i32 24}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1146, i32 18}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1139, i32 18}
!130 = !{ptr @fsl_ssi_dai_template, !131, !"fsl_ssi_dai_template", i1 false, i1 false}
!131 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1136, i32 34}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1331, i32 3}
!134 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @fsl_ssi_imx_probe._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @fsl_ssi_imx_probe._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1339, i32 4}
!139 = !{ptr @fsl_ssi_imx_probe._entry.62, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @fsl_ssi_imx_probe._entry_ptr.64, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1345, i32 35}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1347, i32 3}
!145 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @fsl_ssi_imx_probe.__UNIQUE_ID_ddebug240, !144, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!147 = !{ptr @fsl_ssi_ac97_ops, !148, !"fsl_ssi_ac97_ops", i1 false, i1 false}
!148 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1252, i32 32}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1197, i32 3}
!151 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @fsl_ssi_ac97_write._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @fsl_ssi_ac97_write._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1231, i32 3}
!156 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @fsl_ssi_ac97_read._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @fsl_ssi_ac97_read._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1156, i32 10}
!161 = !{ptr @fsl_ssi_component, !162, !"fsl_ssi_component", i1 false, i1 false}
!162 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1155, i32 46}
!163 = !{ptr @fsl_ssi_ids, !164, !"fsl_ssi_ids", i1 false, i1 false}
!164 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 338, i32 34}
!165 = !{ptr @fsl_ssi_mpc8610, !166, !"fsl_ssi_mpc8610", i1 false, i1 false}
!166 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 308, i32 32}
!167 = !{ptr @fsl_ssi_imx51, !168, !"fsl_ssi_imx51", i1 false, i1 false}
!168 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 331, i32 32}
!169 = !{ptr @fsl_ssi_imx35, !170, !"fsl_ssi_imx35", i1 false, i1 false}
!170 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 323, i32 32}
!171 = !{ptr @fsl_ssi_imx21, !172, !"fsl_ssi_imx21", i1 false, i1 false}
!172 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 316, i32 32}
!173 = !{ptr @fsl_ssi_pm, !174, !"fsl_ssi_pm", i1 false, i1 false}
!174 = !{!"../sound/soc/fsl/fsl_ssi.c", i32 1698, i32 32}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{!"auto-init"}
!185 = !{i8 0, i8 2}
!186 = !{i64 2148198367, i64 2148198372, i64 2148198385, i64 2148198429, i64 2148198463, i64 2148198484}
!187 = !{i32 0, i32 33}
!188 = !{!"branch_weights", i32 2000, i32 1}
!189 = !{i64 2148989242, i64 2148989522, i64 2148989856, i64 2148990190}
