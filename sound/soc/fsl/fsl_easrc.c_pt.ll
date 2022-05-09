; ModuleID = '/llk/IR_all_yes/sound/soc/fsl/fsl_easrc.c_pt.bc'
source_filename = "../sound/soc/fsl/fsl_easrc.c"
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
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.reg_default = type { i32, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_mreg_control = type { i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.fsl_easrc_priv = type { [4 x [2 x %struct.fsl_easrc_slot]], ptr, ptr, ptr, ptr, ptr, i32, [4 x i32], ptr, i64, i32 }
%struct.fsl_easrc_slot = type { i8, i32, i32, i32, i32, i32, i32 }
%struct.fsl_asrc_pair = type { ptr, i32, i32, i32, [2 x ptr], [2 x ptr], %struct.imx_dma_data, i32, i8, ptr }
%struct.imx_dma_data = type { i32, i32, i32, i32 }
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
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
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
%struct.fsl_easrc_ctx_priv = type { %struct.fsl_easrc_io_params, %struct.fsl_easrc_io_params, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, i32, i32, i32, i32 }
%struct.fsl_easrc_io_params = type { %struct.fsl_easrc_data_fmt, i32, i32, i32, i32, i32, i32, i32 }
%struct.fsl_easrc_data_fmt = type { i16, i32 }
%struct.asrc_firmware_hdr = type { i32, i32, i32, i32 }
%struct.prefil_params = type { i32, i32, i32, i32, i32, i32, [256 x i64] }
%struct.firmware = type { i32, ptr, ptr }
%struct.interp_params = type <{ i32, i32, i32, i64, [8192 x i64] }>

@__initcall__kmod_snd_soc_fsl_easrc__247_2099_fsl_easrc_driver_init6 = internal global ptr @fsl_easrc_driver_init, section ".initcall6.init", align 4
@fsl_easrc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_easrc_probe, ptr @fsl_easrc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_easrc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_easrc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_easrc_driver_exit = internal global ptr @fsl_easrc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [83 x i8] c"snd_soc_fsl_easrc.description=NXP Enhanced Asynchronous Sample Rate (eASRC) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [55 x i8] c"snd_soc_fsl_easrc.file=sound/soc/fsl/snd-soc-fsl-easrc\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [33 x i8] c"snd_soc_fsl_easrc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsl-easrc\00", [22 x i8] zeroinitializer }, align 32
@fsl_easrc_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mn-easrc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@fsl_easrc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_easrc_runtime_suspend, ptr @fsl_easrc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@fsl_easrc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@fsl_easrc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 484, ptr @fsl_easrc_writeable_table, ptr @fsl_easrc_readable_table, ptr @fsl_easrc_volatileable_table, ptr null, ptr null, ptr null, ptr @fsl_easrc_reg_defaults, i32 120, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"fsl_easrc:1896:(&fsl_easrc_regmap_config)->lock\00", [48 x i8] zeroinitializer }, align 32
@fsl_easrc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1898, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to init regmap\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl_easrc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/fsl/fsl_easrc.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_easrc_probe._entry_ptr = internal global ptr @fsl_easrc_probe._entry, section ".printk_index", align 4
@fsl_easrc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1909, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to claim irq %u: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@fsl_easrc_probe._entry_ptr.9 = internal global ptr @fsl_easrc_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@fsl_easrc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1915, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get mem clock\0A\00", [39 x i8] zeroinitializer }, align 32
@fsl_easrc_probe._entry_ptr.13 = internal global ptr @fsl_easrc_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,asrc-rate\00", [18 x i8] zeroinitializer }, align 32
@fsl_easrc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 1932, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to asrc rate\0A\00", [43 x i8] zeroinitializer }, align 32
@fsl_easrc_probe._entry_ptr.17 = internal global ptr @fsl_easrc_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,asrc-format\00", [16 x i8] zeroinitializer }, align 32
@fsl_easrc_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 1938, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to asrc format\0A\00", [41 x i8] zeroinitializer }, align 32
@fsl_easrc_probe._entry_ptr.21 = internal global ptr @fsl_easrc_probe._entry.19, section ".printk_index", align 4
@fsl_easrc_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 1943, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unsupported format, switching to S24_LE\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fsl_easrc_probe._entry_ptr.25 = internal global ptr @fsl_easrc_probe._entry.22, section ".printk_index", align 4
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware-name\00", [18 x i8] zeroinitializer }, align 32
@fsl_easrc_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 1950, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get firmware name\0A\00", [35 x i8] zeroinitializer }, align 32
@fsl_easrc_probe._entry_ptr.29 = internal global ptr @fsl_easrc_probe._entry.27, section ".printk_index", align 4
@fsl_easrc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&easrc->lock\00", [19 x i8] zeroinitializer }, align 32
@fsl_easrc_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.47, ptr @fsl_easrc_snd_controls, i32 36, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@fsl_easrc_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @fsl_easrc_dai_probe, ptr null, ptr null, ptr null, ptr @fsl_easrc_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.119, i64 365072504148, i32 -2147483648, i32 8000, i32 768000, i32 1, i32 32, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.120, i64 365072242004, i32 -2147483648, i32 8000, i32 768000, i32 1, i32 32, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@fsl_easrc_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 1964, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register ASoC DAI\0A\00", [35 x i8] zeroinitializer }, align 32
@fsl_easrc_probe._entry_ptr.33 = internal global ptr @fsl_easrc_probe._entry.31, section ".printk_index", align 4
@fsl_asrc_component = external dso_local global %struct.snd_soc_component_driver, align 4
@fsl_easrc_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 1971, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register ASoC platform\0A\00", [62 x i8] zeroinitializer }, align 32
@fsl_easrc_probe._entry_ptr.36 = internal global ptr @fsl_easrc_probe._entry.34, section ".printk_index", align 4
@fsl_easrc_writeable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @fsl_easrc_writeable_ranges, i32 4, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@fsl_easrc_readable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @fsl_easrc_readable_ranges, i32 3, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@fsl_easrc_volatileable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @fsl_easrc_volatileable_ranges, i32 4, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@fsl_easrc_reg_defaults = internal constant { [120 x %struct.reg_default], [224 x i8] } { [120 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 60, i32 0 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 68, i32 0 }, %struct.reg_default { i32 72, i32 0 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 84, i32 0 }, %struct.reg_default { i32 88, i32 0 }, %struct.reg_default { i32 92, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 108, i32 0 }, %struct.reg_default { i32 112, i32 0 }, %struct.reg_default { i32 116, i32 0 }, %struct.reg_default { i32 120, i32 0 }, %struct.reg_default { i32 124, i32 0 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 140, i32 0 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 152, i32 0 }, %struct.reg_default { i32 156, i32 0 }, %struct.reg_default { i32 160, i32 0 }, %struct.reg_default { i32 164, i32 0 }, %struct.reg_default { i32 168, i32 0 }, %struct.reg_default { i32 172, i32 0 }, %struct.reg_default { i32 176, i32 0 }, %struct.reg_default { i32 180, i32 0 }, %struct.reg_default { i32 184, i32 0 }, %struct.reg_default { i32 188, i32 0 }, %struct.reg_default { i32 192, i32 0 }, %struct.reg_default { i32 196, i32 0 }, %struct.reg_default { i32 200, i32 0 }, %struct.reg_default { i32 204, i32 0 }, %struct.reg_default { i32 208, i32 0 }, %struct.reg_default { i32 212, i32 0 }, %struct.reg_default { i32 216, i32 0 }, %struct.reg_default { i32 220, i32 0 }, %struct.reg_default { i32 224, i32 0 }, %struct.reg_default { i32 228, i32 0 }, %struct.reg_default { i32 232, i32 0 }, %struct.reg_default { i32 236, i32 0 }, %struct.reg_default { i32 240, i32 0 }, %struct.reg_default { i32 244, i32 0 }, %struct.reg_default { i32 248, i32 0 }, %struct.reg_default { i32 252, i32 0 }, %struct.reg_default { i32 256, i32 0 }, %struct.reg_default { i32 260, i32 0 }, %struct.reg_default { i32 264, i32 0 }, %struct.reg_default { i32 268, i32 0 }, %struct.reg_default { i32 272, i32 0 }, %struct.reg_default { i32 280, i32 0 }, %struct.reg_default { i32 288, i32 0 }, %struct.reg_default { i32 296, i32 0 }, %struct.reg_default { i32 276, i32 0 }, %struct.reg_default { i32 284, i32 0 }, %struct.reg_default { i32 292, i32 0 }, %struct.reg_default { i32 300, i32 0 }, %struct.reg_default { i32 304, i32 0 }, %struct.reg_default { i32 308, i32 0 }, %struct.reg_default { i32 312, i32 0 }, %struct.reg_default { i32 316, i32 0 }, %struct.reg_default { i32 320, i32 2147483647 }, %struct.reg_default { i32 324, i32 2147483647 }, %struct.reg_default { i32 328, i32 2147483647 }, %struct.reg_default { i32 332, i32 2147483647 }, %struct.reg_default { i32 336, i32 0 }, %struct.reg_default { i32 340, i32 0 }, %struct.reg_default { i32 352, i32 0 }, %struct.reg_default { i32 356, i32 0 }, %struct.reg_default { i32 360, i32 0 }, %struct.reg_default { i32 364, i32 0 }, %struct.reg_default { i32 368, i32 0 }, %struct.reg_default { i32 372, i32 0 }, %struct.reg_default { i32 376, i32 4095 }, %struct.reg_default { i32 380, i32 0 }, %struct.reg_default { i32 384, i32 0 }, %struct.reg_default { i32 388, i32 0 }, %struct.reg_default { i32 392, i32 0 }, %struct.reg_default { i32 396, i32 0 }, %struct.reg_default { i32 400, i32 0 }, %struct.reg_default { i32 404, i32 0 }, %struct.reg_default { i32 408, i32 0 }, %struct.reg_default { i32 412, i32 0 }, %struct.reg_default { i32 416, i32 0 }, %struct.reg_default { i32 420, i32 0 }, %struct.reg_default { i32 424, i32 0 }, %struct.reg_default { i32 428, i32 0 }, %struct.reg_default { i32 432, i32 0 }, %struct.reg_default { i32 436, i32 0 }, %struct.reg_default { i32 440, i32 0 }, %struct.reg_default { i32 444, i32 0 }, %struct.reg_default { i32 448, i32 0 }, %struct.reg_default { i32 452, i32 0 }, %struct.reg_default { i32 456, i32 0 }, %struct.reg_default { i32 460, i32 0 }, %struct.reg_default { i32 464, i32 0 }, %struct.reg_default { i32 468, i32 0 }, %struct.reg_default { i32 472, i32 0 }, %struct.reg_default { i32 476, i32 0 }, %struct.reg_default { i32 480, i32 0 }, %struct.reg_default { i32 484, i32 0 }], [224 x i8] zeroinitializer }, align 32
@fsl_easrc_writeable_ranges = internal constant { [4 x %struct.regmap_range], [32 x i8] } { [4 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 12 }, %struct.regmap_range { i32 32, i32 252 }, %struct.regmap_range { i32 272, i32 340 }, %struct.regmap_range { i32 352, i32 480 }], [32 x i8] zeroinitializer }, align 32
@fsl_easrc_readable_ranges = internal constant { [3 x %struct.regmap_range], [40 x i8] } { [3 x %struct.regmap_range] [%struct.regmap_range { i32 16, i32 340 }, %struct.regmap_range { i32 352, i32 364 }, %struct.regmap_range { i32 372, i32 484 }], [40 x i8] zeroinitializer }, align 32
@fsl_easrc_volatileable_ranges = internal constant { [4 x %struct.regmap_range], [32 x i8] } { [4 x %struct.regmap_range] [%struct.regmap_range { i32 16, i32 28 }, %struct.regmap_range { i32 256, i32 268 }, %struct.regmap_range { i32 380, i32 380 }, %struct.regmap_range { i32 484, i32 484 }], [32 x i8] zeroinitializer }, align 32
@fsl_easrc_isr.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str.4, ptr @.str.39, i8 1, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_soc_fsl_easrc\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl_easrc_isr\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"output FIFO underflow\0A\00", [41 x i8] zeroinitializer }, align 32
@fsl_easrc_isr.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str.4, ptr @.str.40, i8 1, i8 -49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"input FIFO overflow\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ctx%c_%cx\00", [22 x i8] zeroinitializer }, align 32
@fsl_easrc_request_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 1261, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"all contexts are busy\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fsl_easrc_request_context\00", [38 x i8] zeroinitializer }, align 32
@fsl_easrc_request_context._entry_ptr = internal global ptr @fsl_easrc_request_context._entry, section ".printk_index", align 4
@fsl_easrc_request_context._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 1265, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can't give the required channels: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@fsl_easrc_request_context._entry_ptr.46 = internal global ptr @fsl_easrc_request_context._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl-easrc-dai\00", [18 x i8] zeroinitializer }, align 32
@fsl_easrc_snd_controls = internal constant { [36 x %struct.snd_kcontrol_new], [416 x i8] } { [36 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.63, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_iec958_get_bits, ptr @fsl_easrc_iec958_put_bits, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.65, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_iec958_get_bits, ptr @fsl_easrc_iec958_put_bits, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.67, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_iec958_get_bits, ptr @fsl_easrc_iec958_put_bits, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.69, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_iec958_get_bits, ptr @fsl_easrc_iec958_put_bits, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.71, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.73, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.75, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.77, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.79, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.81, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.83, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.85, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.87, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.89, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.91, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.93, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.95, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.97, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.99, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.101, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.103, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.105, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.107, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.109, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.110 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.111, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.112 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.113, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.114 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.115, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.117, i32 0, i32 3, i32 0, ptr @snd_soc_info_xr_sx, ptr @fsl_easrc_get_reg, ptr @fsl_easrc_set_reg, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }], [416 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Context 0 Dither Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 224, i32 224, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Context 1 Dither Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 228, i32 228, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Context 2 Dither Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 232, i32 232, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Context 3 Dither Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 236, i32 236, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Context 0 IEC958 Validity\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 224, i32 224, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Context 1 IEC958 Validity\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 228, i32 228, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Context 2 IEC958 Validity\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 232, i32 232, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Context 3 IEC958 Validity\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 236, i32 236, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Context 0 IEC958 Bits Per Sample\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 2, i32 0, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Context 1 IEC958 Bits Per Sample\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 2, i32 1, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Context 2 IEC958 Bits Per Sample\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 2, i32 2, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Context 3 IEC958 Bits Per Sample\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 2, i32 3, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 0 IEC958 CS0\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 384, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 1 IEC958 CS0\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 388, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 2 IEC958 CS0\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 392, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 3 IEC958 CS0\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 396, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 0 IEC958 CS1\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 400, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 1 IEC958 CS1\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 404, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 2 IEC958 CS1\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 408, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 3 IEC958 CS1\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 412, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 0 IEC958 CS2\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 416, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 1 IEC958 CS2\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 420, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 2 IEC958 CS2\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 424, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 3 IEC958 CS2\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 428, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 0 IEC958 CS3\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 432, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 1 IEC958 CS3\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 436, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 2 IEC958 CS3\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 440, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 3 IEC958 CS3\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 444, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 0 IEC958 CS4\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 448, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 1 IEC958 CS4\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 452, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 2 IEC958 CS4\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 456, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 3 IEC958 CS4\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 460, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 0 IEC958 CS5\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 464, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 1 IEC958 CS5\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 468, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 2 IEC958 CS5\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 472, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Context 3 IEC958 CS5\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 -1, i32 476, i32 1, i32 32, i32 0 }, [40 x i8] zeroinitializer }, align 32
@fsl_easrc_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_easrc_startup, ptr null, ptr @fsl_easrc_hw_params, ptr @fsl_easrc_hw_free, ptr null, ptr @fsl_easrc_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ASRC-Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ASRC-Playback\00", [18 x i8] zeroinitializer }, align 32
@easrc_rate_constraints = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @easrc_rates, i32 20, i32 0 }, [20 x i8] zeroinitializer }, align 32
@easrc_rates = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 8000, i32 11025, i32 12000, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000, i32 128000, i32 176400, i32 192000, i32 256000, i32 352800, i32 384000, i32 705600, i32 768000], [48 x i8] zeroinitializer }, align 32
@fsl_easrc_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.4, i32 1453, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request context\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl_easrc_hw_params\00", [44 x i8] zeroinitializer }, align 32
@fsl_easrc_hw_params._entry_ptr = internal global ptr @fsl_easrc_hw_params._entry, section ".printk_index", align 4
@fsl_easrc_hw_params._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.4, i32 1487, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set format %d\00", [40 x i8] zeroinitializer }, align 32
@fsl_easrc_hw_params._entry_ptr.125 = internal global ptr @fsl_easrc_hw_params._entry.123, section ".printk_index", align 4
@fsl_easrc_hw_params._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.122, ptr @.str.4, i32 1493, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to config context\0A\00", [38 x i8] zeroinitializer }, align 32
@fsl_easrc_hw_params._entry_ptr.128 = internal global ptr @fsl_easrc_hw_params._entry.126, section ".printk_index", align 4
@fsl_easrc_hw_params._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.122, ptr @.str.4, i32 1506, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set fifo organization\0A\00", [63 x i8] zeroinitializer }, align 32
@fsl_easrc_hw_params._entry_ptr.131 = internal global ptr @fsl_easrc_hw_params._entry.129, section ".printk_index", align 4
@fsl_easrc_config_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.4, i32 977, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid context id[%d]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fsl_easrc_config_context\00", [39 x i8] zeroinitializer }, align 32
@fsl_easrc_config_context._entry_ptr = internal global ptr @fsl_easrc_config_context._entry, section ".printk_index", align 4
@fsl_easrc_set_rs_ratio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.4, i32 205, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ratio exceed range\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl_easrc_set_rs_ratio\00", [41 x i8] zeroinitializer }, align 32
@fsl_easrc_set_rs_ratio._entry_ptr = internal global ptr @fsl_easrc_set_rs_ratio._entry, section ".printk_index", align 4
@fsl_easrc_prefilter_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.136, ptr @.str.4, i32 488, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fsl_easrc_prefilter_config\00", [37 x i8] zeroinitializer }, align 32
@fsl_easrc_prefilter_config._entry_ptr = internal global ptr @fsl_easrc_prefilter_config._entry, section ".printk_index", align 4
@fsl_easrc_prefilter_config.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.136, ptr @.str.4, ptr @.str.137, i8 0, i8 -111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Selected prefilter: %u insr, %u outsr, %u st1_taps, %u st2_taps\0A\00", [63 x i8] zeroinitializer }, align 32
@fsl_easrc_prefilter_config._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.136, ptr @.str.4, i32 591, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Conversion from in ratio %u(%u) to out ratio %u(%u) is not supported\0A\00", [58 x i8] zeroinitializer }, align 32
@fsl_easrc_prefilter_config._entry_ptr.140 = internal global ptr @fsl_easrc_prefilter_config._entry.138, section ".printk_index", align 4
@fsl_easrc_prefilter_config._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.136, ptr @.str.4, i32 640, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ST1 taps [%d] mus be lower than %d\0A\00", [60 x i8] zeroinitializer }, align 32
@fsl_easrc_prefilter_config._entry_ptr.143 = internal global ptr @fsl_easrc_prefilter_config._entry.141, section ".printk_index", align 4
@fsl_easrc_prefilter_config._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.136, ptr @.str.4, i32 665, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ST2 taps [%d] mus be lower than %d\0A\00", [60 x i8] zeroinitializer }, align 32
@fsl_easrc_prefilter_config._entry_ptr.146 = internal global ptr @fsl_easrc_prefilter_config._entry.144, section ".printk_index", align 4
@fsl_easrc_write_pf_coeff_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.4, i32 442, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"coef table is NULL\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fsl_easrc_write_pf_coeff_mem\00", [35 x i8] zeroinitializer }, align 32
@fsl_easrc_write_pf_coeff_mem._entry_ptr = internal global ptr @fsl_easrc_write_pf_coeff_mem._entry, section ".printk_index", align 4
@fsl_easrc_coeff_mem_ptr_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.149, ptr @.str.4, i32 254, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fsl_easrc_coeff_mem_ptr_reset\00", [34 x i8] zeroinitializer }, align 32
@fsl_easrc_coeff_mem_ptr_reset._entry_ptr = internal global ptr @fsl_easrc_coeff_mem_ptr_reset._entry, section ".printk_index", align 4
@fsl_easrc_coeff_mem_ptr_reset._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.4, i32 269, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unknown memory type\0A\00", [43 x i8] zeroinitializer }, align 32
@fsl_easrc_coeff_mem_ptr_reset._entry_ptr.152 = internal global ptr @fsl_easrc_coeff_mem_ptr_reset._entry.150, section ".printk_index", align 4
@fsl_easrc_normalize_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.4, i32 418, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"coef out of range\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fsl_easrc_normalize_filter\00", [37 x i8] zeroinitializer }, align 32
@fsl_easrc_normalize_filter._entry_ptr = internal global ptr @fsl_easrc_normalize_filter._entry, section ".printk_index", align 4
@fsl_easrc_config_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.4, i32 911, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no avail slot.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl_easrc_config_slot\00", [42 x i8] zeroinitializer }, align 32
@fsl_easrc_config_slot._entry_ptr = internal global ptr @fsl_easrc_config_slot._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@fsl_easrc_stop_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.4, i32 1362, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RUN STOP fail\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl_easrc_stop_context\00", [41 x i8] zeroinitializer }, align 32
@fsl_easrc_stop_context._entry_ptr = internal global ptr @fsl_easrc_stop_context._entry, section ".printk_index", align 4
@fsl_easrc_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.4, i32 2030, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get firmware\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fsl_easrc_runtime_resume\00", [39 x i8] zeroinitializer }, align 32
@fsl_easrc_runtime_resume._entry_ptr = internal global ptr @fsl_easrc_runtime_resume._entry, section ".printk_index", align 4
@fsl_easrc_runtime_resume._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.4, i32 2041, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"resampler config failed\0A\00", [39 x i8] zeroinitializer }, align 32
@fsl_easrc_runtime_resume._entry_ptr.163 = internal global ptr @fsl_easrc_runtime_resume._entry.161, section ".printk_index", align 4
@fsl_easrc_resampler_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.4, i32 313, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"firmware not loaded!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fsl_easrc_resampler_config\00", [37 x i8] zeroinitializer }, align 32
@fsl_easrc_resampler_config._entry_ptr = internal global ptr @fsl_easrc_resampler_config._entry, section ".printk_index", align 4
@fsl_easrc_resampler_config.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.165, ptr @.str.4, ptr @.str.166, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.166 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Selected interp_filter: %u taps - %u phases\0A\00", [51 x i8] zeroinitializer }, align 32
@fsl_easrc_resampler_config._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.165, ptr @.str.4, i32 331, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to get interpreter configuration\0A\00", [55 x i8] zeroinitializer }, align 32
@fsl_easrc_resampler_config._entry_ptr.169 = internal global ptr @fsl_easrc_resampler_config._entry.167, section ".printk_index", align 4
@switch.table.fsl_easrc_prefilter_config = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 16, i32 32, i32 64], [20 x i8] zeroinitializer }, align 32
@switch.table.fsl_easrc_resampler_config = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 32, i32 64, i32 128], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.170 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 11, i64 0, i64 2047]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"fsl_easrc_driver\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 2090, i32 31 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 2094, i32 11 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"fsl_easrc_dt_ids\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1862, i32 34 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"fsl_easrc_pm_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 2082, i32 32 }
@___asan_gen_.185 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [24 x i8] c"fsl_easrc_regmap_config\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1738, i32 35 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1896, i32 18 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1898, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1909, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1913, i32 37 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1915, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1930, i32 33 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1932, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1936, i32 33 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1938, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1943, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1947, i32 36 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1950, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1957, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [20 x i8] c"fsl_easrc_component\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1574, i32 46 }
@___asan_gen_.272 = private unnamed_addr constant [14 x i8] c"fsl_easrc_dai\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1550, i32 34 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1964, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1971, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [26 x i8] c"fsl_easrc_writeable_table\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1721, i32 41 }
@___asan_gen_.290 = private unnamed_addr constant [25 x i8] c"fsl_easrc_readable_table\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1709, i32 41 }
@___asan_gen_.293 = private unnamed_addr constant [29 x i8] c"fsl_easrc_volatileable_table\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1733, i32 41 }
@___asan_gen_.296 = private unnamed_addr constant [23 x i8] c"fsl_easrc_reg_defaults\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1580, i32 33 }
@___asan_gen_.299 = private unnamed_addr constant [27 x i8] c"fsl_easrc_writeable_ranges\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1714, i32 34 }
@___asan_gen_.302 = private unnamed_addr constant [26 x i8] c"fsl_easrc_readable_ranges\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1703, i32 34 }
@___asan_gen_.305 = private unnamed_addr constant [30 x i8] c"fsl_easrc_volatileable_ranges\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1726, i32 34 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1849, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1852, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1382, i32 16 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1261, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1264, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1575, i32 11 }
@___asan_gen_.341 = private unnamed_addr constant [23 x i8] c"fsl_easrc_snd_controls\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 124, i32 38 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 125, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 126, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 127, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 128, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 130, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 131, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 132, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 133, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 135, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 136, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 137, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 138, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 140, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 141, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 142, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 143, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 144, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 145, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 146, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 147, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 148, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 149, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 150, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 151, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 152, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 153, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 154, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 155, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 156, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 157, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 158, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 159, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 160, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 161, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 162, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 163, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [18 x i8] c"fsl_easrc_dai_ops\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1533, i32 37 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1562, i32 18 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1553, i32 18 }
@___asan_gen_.497 = private unnamed_addr constant [23 x i8] c"easrc_rate_constraints\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1395, i32 48 }
@___asan_gen_.500 = private unnamed_addr constant [12 x i8] c"easrc_rates\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1387, i32 27 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1453, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1487, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1493, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1506, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 977, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 205, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 488, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 579, i32 5 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 589, i32 4 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 639, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 664, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 442, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 254, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 269, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 418, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 911, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 1362, i32 4 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 2030, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 2041, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 313, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 324, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.653 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.654 = private constant [29 x i8] c"../sound/soc/fsl/fsl_easrc.c\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.654, i32 331, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant [40 x i8] c"switch.table.fsl_easrc_prefilter_config\00", align 1
@___asan_gen_.657 = private unnamed_addr constant [40 x i8] c"switch.table.fsl_easrc_resampler_config\00", align 1
@llvm.compiler.used = appending global [224 x ptr] [ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_fsl_easrc_driver_exit, ptr @__initcall__kmod_snd_soc_fsl_easrc__247_2099_fsl_easrc_driver_init6, ptr @fsl_easrc_coeff_mem_ptr_reset._entry, ptr @fsl_easrc_coeff_mem_ptr_reset._entry.150, ptr @fsl_easrc_coeff_mem_ptr_reset._entry_ptr, ptr @fsl_easrc_coeff_mem_ptr_reset._entry_ptr.152, ptr @fsl_easrc_config_context._entry, ptr @fsl_easrc_config_context._entry_ptr, ptr @fsl_easrc_config_slot._entry, ptr @fsl_easrc_config_slot._entry_ptr, ptr @fsl_easrc_driver_exit, ptr @fsl_easrc_hw_params._entry, ptr @fsl_easrc_hw_params._entry.123, ptr @fsl_easrc_hw_params._entry.126, ptr @fsl_easrc_hw_params._entry.129, ptr @fsl_easrc_hw_params._entry_ptr, ptr @fsl_easrc_hw_params._entry_ptr.125, ptr @fsl_easrc_hw_params._entry_ptr.128, ptr @fsl_easrc_hw_params._entry_ptr.131, ptr @fsl_easrc_normalize_filter._entry, ptr @fsl_easrc_normalize_filter._entry_ptr, ptr @fsl_easrc_prefilter_config._entry, ptr @fsl_easrc_prefilter_config._entry.138, ptr @fsl_easrc_prefilter_config._entry.141, ptr @fsl_easrc_prefilter_config._entry.144, ptr @fsl_easrc_prefilter_config._entry_ptr, ptr @fsl_easrc_prefilter_config._entry_ptr.140, ptr @fsl_easrc_prefilter_config._entry_ptr.143, ptr @fsl_easrc_prefilter_config._entry_ptr.146, ptr @fsl_easrc_probe._entry, ptr @fsl_easrc_probe._entry.11, ptr @fsl_easrc_probe._entry.15, ptr @fsl_easrc_probe._entry.19, ptr @fsl_easrc_probe._entry.22, ptr @fsl_easrc_probe._entry.27, ptr @fsl_easrc_probe._entry.31, ptr @fsl_easrc_probe._entry.34, ptr @fsl_easrc_probe._entry.7, ptr @fsl_easrc_probe._entry_ptr, ptr @fsl_easrc_probe._entry_ptr.13, ptr @fsl_easrc_probe._entry_ptr.17, ptr @fsl_easrc_probe._entry_ptr.21, ptr @fsl_easrc_probe._entry_ptr.25, ptr @fsl_easrc_probe._entry_ptr.29, ptr @fsl_easrc_probe._entry_ptr.33, ptr @fsl_easrc_probe._entry_ptr.36, ptr @fsl_easrc_probe._entry_ptr.9, ptr @fsl_easrc_request_context._entry, ptr @fsl_easrc_request_context._entry.44, ptr @fsl_easrc_request_context._entry_ptr, ptr @fsl_easrc_request_context._entry_ptr.46, ptr @fsl_easrc_resampler_config._entry, ptr @fsl_easrc_resampler_config._entry.167, ptr @fsl_easrc_resampler_config._entry_ptr, ptr @fsl_easrc_resampler_config._entry_ptr.169, ptr @fsl_easrc_runtime_resume._entry, ptr @fsl_easrc_runtime_resume._entry.161, ptr @fsl_easrc_runtime_resume._entry_ptr, ptr @fsl_easrc_runtime_resume._entry_ptr.163, ptr @fsl_easrc_set_rs_ratio._entry, ptr @fsl_easrc_set_rs_ratio._entry_ptr, ptr @fsl_easrc_stop_context._entry, ptr @fsl_easrc_stop_context._entry_ptr, ptr @fsl_easrc_write_pf_coeff_mem._entry, ptr @fsl_easrc_write_pf_coeff_mem._entry_ptr, ptr @fsl_easrc_driver, ptr @.str, ptr @fsl_easrc_dt_ids, ptr @fsl_easrc_pm_ops, ptr @fsl_easrc_probe._key, ptr @fsl_easrc_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @fsl_easrc_probe.__key, ptr @.str.30, ptr @fsl_easrc_component, ptr @fsl_easrc_dai, ptr @.str.32, ptr @.str.35, ptr @fsl_easrc_writeable_table, ptr @fsl_easrc_readable_table, ptr @fsl_easrc_volatileable_table, ptr @fsl_easrc_reg_defaults, ptr @fsl_easrc_writeable_ranges, ptr @fsl_easrc_readable_ranges, ptr @fsl_easrc_volatileable_ranges, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @fsl_easrc_snd_controls, ptr @.str.48, ptr @.compoundliteral, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @.compoundliteral.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.compoundliteral.86, ptr @.str.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @.compoundliteral.90, ptr @.str.91, ptr @.compoundliteral.92, ptr @.str.93, ptr @.compoundliteral.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @.str.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @.compoundliteral.100, ptr @.str.101, ptr @.compoundliteral.102, ptr @.str.103, ptr @.compoundliteral.104, ptr @.str.105, ptr @.compoundliteral.106, ptr @.str.107, ptr @.compoundliteral.108, ptr @.str.109, ptr @.compoundliteral.110, ptr @.str.111, ptr @.compoundliteral.112, ptr @.str.113, ptr @.compoundliteral.114, ptr @.str.115, ptr @.compoundliteral.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @fsl_easrc_dai_ops, ptr @.str.119, ptr @.str.120, ptr @easrc_rate_constraints, ptr @easrc_rates, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.168, ptr @switch.table.fsl_easrc_prefilter_config, ptr @switch.table.fsl_easrc_resampler_config], section "llvm.metadata"
@0 = internal global [187 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_writeable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_volatileable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_reg_defaults to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_writeable_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_readable_ranges to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_volatileable_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_request_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_request_context._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_snd_controls to i32), i32 1728, i32 2144, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @easrc_rate_constraints to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @easrc_rates to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_hw_params._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_hw_params._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_hw_params._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_config_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_set_rs_ratio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_prefilter_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_prefilter_config._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_prefilter_config._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_prefilter_config._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_write_pf_coeff_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_coeff_mem_ptr_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_coeff_mem_ptr_reset._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_normalize_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_config_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_stop_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_runtime_resume._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_resampler_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_easrc_resampler_config._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fsl_easrc_prefilter_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fsl_easrc_resampler_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_easrc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_easrc_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_easrc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_easrc_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_easrc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #10
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !300
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 196, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i165 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 288, i32 noundef 3520) #10
  %tobool3.not = icmp eq ptr %call.i165, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pdev6 = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %pdev6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pdev6, align 4
  %private = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 19
  %2 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i165, ptr %private, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call7 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #10
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %6 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %paddr = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %paddr, align 4
  %call12 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call7, ptr noundef nonnull @fsl_easrc_regmap_config, ptr noundef nonnull @fsl_easrc_probe._key, ptr noundef nonnull @.str.1) #10
  %regmap = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call12, ptr %regmap, align 4
  %cmp.i166 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #13
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %call19 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end21.dev_name.exit_crit_edge

if.end21.dev_name.exit_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end21.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %if.end21.dev_name.exit_crit_edge ]
  %call.i167 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call19, ptr noundef nonnull @fsl_easrc_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %tobool25.not = icmp eq i32 %call.i167, 0
  br i1 %tobool25.not, label %if.end30, label %do.end29

do.end29:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call19, i32 noundef %call.i167) #13
  br label %cleanup

if.end30:                                         ; preds = %dev_name.exit
  %call31 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  %mem_clk = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %mem_clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call31, ptr %mem_clk, align 4
  %cmp.i168 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #13
  %20 = ptrtoint ptr %mem_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem_clk, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  %channel_avail = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 10
  %23 = ptrtoint ptr %channel_avail to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 32, ptr %channel_avail, align 4
  %get_dma_channel = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 14
  %24 = ptrtoint ptr %get_dma_channel to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @fsl_easrc_get_dma_channel, ptr %get_dma_channel, align 4
  %request_pair = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 15
  %25 = ptrtoint ptr %request_pair to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @fsl_easrc_request_context, ptr %request_pair, align 4
  %release_pair = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 16
  %26 = ptrtoint ptr %release_pair to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @fsl_easrc_release_context, ptr %release_pair, align 4
  %get_fifo_addr = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 17
  %27 = ptrtoint ptr %get_fifo_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @fsl_easrc_get_fifo_addr, ptr %get_fifo_addr, align 4
  %pair_priv_size = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 18
  %28 = ptrtoint ptr %pair_priv_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 128, ptr %pair_priv_size, align 4
  %rs_num_taps = getelementptr inbounds %struct.fsl_easrc_priv, ptr %call.i165, i32 0, i32 6
  %29 = ptrtoint ptr %rs_num_taps to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %rs_num_taps, align 4
  %const_coeff = getelementptr inbounds %struct.fsl_easrc_priv, ptr %call.i165, i32 0, i32 9
  %30 = ptrtoint ptr %const_coeff to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 4607182418800017408, ptr %const_coeff, align 8
  %asrc_rate = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 11
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef %asrc_rate, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool42.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool42.not, label %if.end47, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #13
  br label %cleanup

if.end47:                                         ; preds = %if.end40
  %asrc_format = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 12
  %call.i.i169 = call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.18, ptr noundef %asrc_format, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i169)
  %tobool49.not = icmp sgt i32 %call.i.i169, -1
  br i1 %tobool49.not, label %if.end54, label %do.end53

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.end54:                                         ; preds = %if.end47
  %31 = ptrtoint ptr %asrc_format to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %asrc_format, align 4
  %sh_prom = zext i32 %32 to i64
  %shl = shl nuw i64 1, %sh_prom
  %and = and i64 %shl, 365072242004
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool56.not = icmp eq i64 %and, 0
  br i1 %tobool56.not, label %do.end60, label %if.end54.if.end62_crit_edge

if.end54.if.end62_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.23) #13
  %33 = ptrtoint ptr %asrc_format to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 6, ptr %asrc_format, align 4
  br label %if.end62

if.end62:                                         ; preds = %do.end60, %if.end54.if.end62_crit_edge
  %fw_name = getelementptr inbounds %struct.fsl_easrc_priv, ptr %call.i165, i32 0, i32 5
  %call63 = call i32 @of_property_read_string(ptr noundef %4, ptr noundef nonnull @.str.26, ptr noundef %fw_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end69, label %do.end68

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #13
  br label %cleanup

if.end69:                                         ; preds = %if.end62
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @pm_runtime_enable(ptr noundef %dev1) #10
  %lock = getelementptr inbounds %struct.fsl_asrc, ptr %call.i, i32 0, i32 8
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.30, ptr noundef nonnull @fsl_easrc_probe.__key, i16 noundef signext 3) #10
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  call void @regcache_cache_only(ptr noundef %36, i1 noundef zeroext true) #10
  %call75 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @fsl_easrc_component, ptr noundef nonnull @fsl_easrc_dai, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end81, label %do.end80

do.end80:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #13
  br label %cleanup

if.end81:                                         ; preds = %if.end69
  %call82 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @fsl_asrc_component, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end81.cleanup_crit_edge, label %do.end87

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end87:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end87, %if.end81.cleanup_crit_edge, %do.end80, %do.end68, %do.end53, %do.end46, %do.end37, %do.end29, %if.end18.cleanup_crit_edge, %do.end, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then9 ], [ %14, %do.end ], [ %call.i167, %do.end29 ], [ %22, %do.end37 ], [ %call.i.i, %do.end46 ], [ %call.i.i169, %do.end53 ], [ %call63, %do.end68 ], [ %call75, %do.end80 ], [ %call82, %do.end87 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ 0, %if.end81.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_easrc_remove(ptr noundef %pdev) #2 align 64 {
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
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_easrc_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.fsl_asrc, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !300
  %regmap = getelementptr inbounds %struct.fsl_asrc, ptr %dev_id, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 380, ptr noundef nonnull %val) #10
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_easrc_isr.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_easrc_isr, %if.then6)) #10
          to label %if.end7 [label %if.then6], !srcloc !301

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_easrc_isr.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.39) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.body, %entry.if.end7_crit_edge
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and8 = and i32 %8, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end27_crit_edge, label %do.body11

if.end7.if.end27_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.body11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_easrc_isr.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_easrc_isr, %if.then23)) #10
          to label %if.end27 [label %if.then23], !srcloc !301

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_easrc_isr.__UNIQUE_ID_ddebug246, ptr noundef %dev1, ptr noundef nonnull @.str.40) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %do.body11, %if.end7.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fsl_easrc_get_dma_channel(ptr nocapture noundef readonly %ctx, i1 noundef zeroext %dir) #2 align 64 {
entry:
  %name = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %index1 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %name) #10
  %add = add i32 %3, 48
  %cond = select i1 %dir, i32 116, i32 114
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %name, align 8
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.41, i32 noundef %add, i32 noundef %cond)
  %pdev = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %call.i = call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull %name) #10
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = select i1 %cmp.i.i, ptr null, ptr %call.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name) #10
  ret ptr %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_easrc_request_context(i32 noundef %channels, ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %pdev = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %lock = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %arrayidx = getelementptr %struct.fsl_asrc, ptr %1, i32 0, i32 9, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %for.inc

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.fsl_asrc, ptr %1, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %7, null
  br i1 %tobool.not.1, label %for.inc.if.else_crit_edge, label %for.inc.1

for.inc.if.else_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.fsl_asrc, ptr %1, i32 0, i32 9, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %9, null
  br i1 %tobool.not.2, label %for.inc.1.if.else_crit_edge, label %for.inc.2

for.inc.1.if.else_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.fsl_asrc, ptr %1, i32 0, i32 9, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %11, null
  br i1 %tobool.not.3, label %for.inc.2.if.else_crit_edge, label %for.inc.3

for.inc.2.if.else_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42) #13
  br label %if.end27

if.else:                                          ; preds = %for.inc.2.if.else_crit_edge, %for.inc.1.if.else_crit_edge, %for.inc.if.else_crit_edge, %entry.if.else_crit_edge
  %i.050.lcssa = phi i32 [ 0, %entry.if.else_crit_edge ], [ 1, %for.inc.if.else_crit_edge ], [ 2, %for.inc.1.if.else_crit_edge ], [ 3, %for.inc.2.if.else_crit_edge ]
  %channel_avail = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %channel_avail to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel_avail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %channels)
  %cmp14 = icmp ult i32 %13, %channels
  br i1 %cmp14, label %do.end19, label %if.else20

do.end19:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45, i32 noundef %channels) #13
  br label %if.end27

if.else20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %index21 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %ctx, i32 0, i32 2
  %14 = ptrtoint ptr %index21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %i.050.lcssa, ptr %index21, align 4
  %channels22 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %ctx, i32 0, i32 3
  %15 = ptrtoint ptr %channels22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %channels, ptr %channels22, align 4
  %arrayidx24 = getelementptr %struct.fsl_asrc, ptr %1, i32 0, i32 9, i32 %i.050.lcssa
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ctx, ptr %arrayidx24, align 4
  %17 = ptrtoint ptr %channel_avail to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel_avail, align 4
  %sub = sub i32 %18, %channels
  store i32 %sub, ptr %channel_avail, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else20, %do.end19, %for.inc.3
  %ret.0 = phi i32 [ -16, %for.inc.3 ], [ -22, %do.end19 ], [ 0, %if.else20 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_easrc_release_context(ptr noundef readonly %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %lock = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %index = getelementptr inbounds %struct.fsl_asrc_pair, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %private.i = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %arrayidx.i = getelementptr %struct.fsl_asrc, ptr %1, i32 0, i32 9, i32 %3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %index.i = getelementptr inbounds %struct.fsl_asrc_pair, ptr %7, i32 0, i32 2
  %regmap.i = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.01.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx1.i = getelementptr [4 x [2 x %struct.fsl_easrc_slot]], ptr %5, i32 0, i32 %i.01.i
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1.i, align 8, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %ctx_index.i = getelementptr inbounds %struct.fsl_easrc_slot, ptr %arrayidx1.i, i32 0, i32 1
  %10 = ptrtoint ptr %ctx_index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx_index.i, align 4
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp6.i = icmp eq i32 %11, %13
  br i1 %cmp6.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx1.i, align 8
  %num_channel.i = getelementptr inbounds %struct.fsl_easrc_slot, ptr %arrayidx1.i, i32 0, i32 3
  %15 = ptrtoint ptr %num_channel.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %num_channel.i, align 4
  %pf_mem_used.i = getelementptr inbounds %struct.fsl_easrc_slot, ptr %arrayidx1.i, i32 0, i32 6
  %16 = ptrtoint ptr %pf_mem_used.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pf_mem_used.i, align 8
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %mul.i = shl i32 %i.01.i, 2
  %add.i = add nuw nsw i32 %mul.i, 96
  %call.i = tail call i32 @regmap_write(ptr noundef %18, i32 noundef %add.i, i32 noundef 0) #10
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %add19.i = add nuw nsw i32 %mul.i, 112
  %call20.i = tail call i32 @regmap_write(ptr noundef %20, i32 noundef %add19.i, i32 noundef 0) #10
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %add23.i = add nuw nsw i32 %mul.i, 128
  %call24.i = tail call i32 @regmap_write(ptr noundef %22, i32 noundef %add23.i, i32 noundef 0) #10
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %add27.i = add nuw nsw i32 %mul.i, 144
  %call28.i = tail call i32 @regmap_write(ptr noundef %24, i32 noundef %add27.i, i32 noundef 0) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %arrayidx31.i = getelementptr [4 x [2 x %struct.fsl_easrc_slot]], ptr %5, i32 0, i32 %i.01.i, i32 1
  %25 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx31.i, align 4, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool33.not.i = icmp eq i8 %26, 0
  br i1 %tobool33.not.i, label %if.end.i.for.inc.i_crit_edge, label %land.lhs.true34.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true34.i:                                ; preds = %if.end.i
  %ctx_index38.i = getelementptr [4 x [2 x %struct.fsl_easrc_slot]], ptr %5, i32 0, i32 %i.01.i, i32 1, i32 1
  %27 = ptrtoint ptr %ctx_index38.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ctx_index38.i, align 4
  %29 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp40.i = icmp eq i32 %28, %30
  br i1 %cmp40.i, label %if.then41.i, label %land.lhs.true34.i.for.inc.i_crit_edge

land.lhs.true34.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then41.i:                                      ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx31.i, align 4
  %num_channel49.i = getelementptr [4 x [2 x %struct.fsl_easrc_slot]], ptr %5, i32 0, i32 %i.01.i, i32 1, i32 3
  %32 = ptrtoint ptr %num_channel49.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %num_channel49.i, align 4
  %pf_mem_used53.i = getelementptr [4 x [2 x %struct.fsl_easrc_slot]], ptr %5, i32 0, i32 %i.01.i, i32 1, i32 6
  %33 = ptrtoint ptr %pf_mem_used53.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %pf_mem_used53.i, align 4
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %mul55.i = shl i32 %i.01.i, 2
  %add56.i = add nuw nsw i32 %mul55.i, 160
  %call57.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %add56.i, i32 noundef 0) #10
  %36 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i, align 4
  %add60.i = add nuw nsw i32 %mul55.i, 176
  %call61.i = tail call i32 @regmap_write(ptr noundef %37, i32 noundef %add60.i, i32 noundef 0) #10
  %38 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i, align 4
  %add64.i = add nuw nsw i32 %mul55.i, 192
  %call65.i = tail call i32 @regmap_write(ptr noundef %39, i32 noundef %add64.i, i32 noundef 0) #10
  %40 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i, align 4
  %add68.i = add nuw nsw i32 %mul55.i, 208
  %call69.i = tail call i32 @regmap_write(ptr noundef %41, i32 noundef %add68.i, i32 noundef 0) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then41.i, %land.lhs.true34.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %fsl_easrc_release_slot.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

fsl_easrc_release_slot.exit:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %channels = getelementptr inbounds %struct.fsl_asrc_pair, ptr %ctx, i32 0, i32 3
  %42 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %channels, align 4
  %channel_avail = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 10
  %44 = ptrtoint ptr %channel_avail to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %channel_avail, align 4
  %add = add i32 %45, %43
  store i32 %add, ptr %channel_avail, align 4
  %46 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.fsl_asrc, ptr %1, i32 0, i32 9, i32 %47
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %fsl_easrc_release_slot.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_easrc_get_fifo_addr(i8 noundef zeroext %dir, i32 noundef %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dir)
  %cmp = icmp eq i8 %dir, 0
  %mul = shl i32 %index, 2
  %add3 = add i32 %mul, 16
  %cond = select i1 %cmp, i32 %mul, i32 %add3
  ret i32 %cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_xr_sx(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_easrc_iec958_get_bits(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %private = getelementptr inbounds %struct.fsl_asrc, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private_value, align 4
  %10 = inttoptr i32 %9 to ptr
  %regbase = getelementptr inbounds %struct.soc_mreg_control, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %regbase, align 4
  %arrayidx = getelementptr %struct.fsl_easrc_priv, ptr %7, i32 0, i32 7, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_easrc_iec958_put_bits(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %private = getelementptr inbounds %struct.fsl_asrc, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private_value, align 4
  %10 = inttoptr i32 %9 to ptr
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  %regbase = getelementptr inbounds %struct.soc_mreg_control, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regbase, align 4
  %arrayidx1 = getelementptr %struct.fsl_easrc_priv, ptr %7, i32 0, i32 7, i32 %14
  %15 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %arrayidx1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_easrc_get_reg(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %regbase = getelementptr inbounds %struct.soc_mreg_control, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regbase, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef %6) #10
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_easrc_set_reg(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 8
  %regbase = getelementptr inbounds %struct.soc_mreg_control, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regbase, align 4
  %call = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %8, i32 noundef %6) #10
  %9 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_easrc_dai_probe(ptr nocapture noundef %cpu_dai) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %dma_params_tx = getelementptr inbounds %struct.fsl_asrc, ptr %3, i32 0, i32 1
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dma_params_tx, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 8
  %5 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %capture_dma_data.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_easrc_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @easrc_rate_constraints) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_easrc_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1, align 4
  %pdev = getelementptr inbounds %struct.fsl_asrc, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 44
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 8
  %private = getelementptr inbounds %struct.fsl_asrc_pair, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i124 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx.i.i124 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i124, align 4
  %arrayidx.i.i125 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx.i.i125 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %17, %entry.if.then.i.i_crit_edge ], [ %20, %for.inc.i.i.if.then.i.i_crit_edge ]
  %18 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #10, !range !303
  %add.i.i = or i32 %18, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.1.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call6 = tail call i32 @fsl_easrc_request_context(i32 noundef %13, ptr noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.121) #13
  br label %cleanup

if.end:                                           ; preds = %params_format.exit
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %21 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stream, align 4
  %shl = shl nuw i32 1, %22
  %ctx_streams = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %11, i32 0, i32 7
  %23 = ptrtoint ptr %ctx_streams to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ctx_streams, align 4
  %or = or i32 %24, %shl
  store i32 %or, ptr %ctx_streams, align 4
  %25 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sample_rate = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %11, i32 0, i32 5
  %26 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %15, ptr %sample_rate, align 8
  %sample_format = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %11, i32 0, i32 6
  %27 = ptrtoint ptr %sample_format to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i.i, ptr %sample_format, align 4
  %asrc_rate = getelementptr inbounds %struct.fsl_asrc, ptr %3, i32 0, i32 11
  %28 = ptrtoint ptr %asrc_rate to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %asrc_rate, align 4
  %sample_rate10 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %11, i32 0, i32 1, i32 5
  %30 = ptrtoint ptr %sample_rate10 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %sample_rate10, align 4
  %asrc_format = getelementptr inbounds %struct.fsl_asrc, ptr %3, i32 0, i32 12
  %31 = ptrtoint ptr %asrc_format to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %asrc_format, align 4
  %sample_format12 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %11, i32 0, i32 1, i32 6
  %33 = ptrtoint ptr %sample_format12 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %sample_format12, align 4
  br label %if.end23

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sample_rate14 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %11, i32 0, i32 1, i32 5
  %34 = ptrtoint ptr %sample_rate14 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %15, ptr %sample_rate14, align 4
  %sample_format16 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %11, i32 0, i32 1, i32 6
  %35 = ptrtoint ptr %sample_format16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.i, ptr %sample_format16, align 4
  %asrc_rate17 = getelementptr inbounds %struct.fsl_asrc, ptr %3, i32 0, i32 11
  %36 = ptrtoint ptr %asrc_rate17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %asrc_rate17, align 4
  %sample_rate19 = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %11, i32 0, i32 5
  %38 = ptrtoint ptr %sample_rate19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %sample_rate19, align 8
  %asrc_format20 = getelementptr inbounds %struct.fsl_asrc, ptr %3, i32 0, i32 12
  %39 = ptrtoint ptr %asrc_format20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %asrc_format20, align 4
  %sample_format22 = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %11, i32 0, i32 6
  %41 = ptrtoint ptr %sample_format22 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %sample_format22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then8
  %channels24 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %9, i32 0, i32 3
  %42 = ptrtoint ptr %channels24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %13, ptr %channels24, align 4
  %fifo_wtmk = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %11, i32 0, i32 4
  %43 = ptrtoint ptr %fifo_wtmk to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 32, ptr %fifo_wtmk, align 4
  %fifo_wtmk27 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %11, i32 0, i32 1, i32 4
  %44 = ptrtoint ptr %fifo_wtmk27 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 32, ptr %fifo_wtmk27, align 4
  %sample_format29 = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %11, i32 0, i32 6
  %sample_format31 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %11, i32 0, i32 1, i32 6
  %45 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %9, align 4
  %47 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %private, align 4
  %out_params.i = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %48, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %sample_format29, null
  %tobool2.not.i = icmp eq ptr %sample_format31, null
  %or.cond.i = or i1 %tobool.not.i, %tobool2.not.i
  br i1 %or.cond.i, label %if.end23.if.end5.i_crit_edge, label %if.then.i

if.end23.if.end5.i_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end23
  %49 = ptrtoint ptr %sample_format29 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sample_format29, align 4
  %call.i = tail call fastcc i32 @fsl_easrc_process_format(ptr noundef %9, ptr noundef %48, i32 noundef %50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end5.i_crit_edge, label %if.then.i.do.end37_crit_edge

if.then.i.do.end37_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %if.end23.if.end5.i_crit_edge
  %regmap.i = getelementptr inbounds %struct.fsl_asrc, ptr %46, i32 0, i32 3
  %51 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i, align 4
  %index.i = getelementptr inbounds %struct.fsl_asrc_pair, ptr %9, i32 0, i32 2
  %53 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %index.i, align 4
  %mul.i = shl i32 %54, 2
  %add.i = add i32 %mul.i, 32
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load.i = load i16, ptr %48, align 4
  %56 = lshr i16 %bf.load.i, 6
  %57 = and i16 %56, 768
  %and.i = zext i16 %57 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef %add.i, i32 noundef 768, i32 noundef %and.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %58 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap.i, align 4
  %60 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %index.i, align 4
  %mul9.i = shl i32 %61, 2
  %add10.i = add i32 %mul9.i, 32
  %62 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load11.i = load i16, ptr %48, align 4
  %63 = lshr i16 %bf.load11.i, 3
  %64 = and i16 %63, 1024
  %shl14.i = zext i16 %64 to i32
  %call.i166.i = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef %add10.i, i32 noundef 1024, i32 noundef %shl14.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %65 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap.i, align 4
  %67 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %index.i, align 4
  %mul18.i = shl i32 %68, 2
  %add19.i = add i32 %mul18.i, 32
  %69 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %69)
  %bf.load20.i = load i16, ptr %48, align 4
  %70 = lshr i16 %bf.load20.i, 4
  %71 = and i16 %70, 128
  %shl24.i = zext i16 %71 to i32
  %call.i167.i = tail call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef %add19.i, i32 noundef 128, i32 noundef %shl24.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %72 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i, align 4
  %74 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %index.i, align 4
  %mul28.i = shl i32 %75, 2
  %add29.i = add i32 %mul28.i, 32
  %76 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load30.i = load i16, ptr %48, align 4
  %77 = lshr i16 %bf.load30.i, 6
  %78 = and i16 %77, 64
  %shl34.i = zext i16 %78 to i32
  %call.i168.i = tail call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef %add29.i, i32 noundef 64, i32 noundef %shl34.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %79 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap.i, align 4
  %81 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %index.i, align 4
  %mul38.i = shl i32 %82, 2
  %add39.i = add i32 %mul38.i, 32
  %83 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %83)
  %bf.load40.i = load i16, ptr %48, align 4
  %84 = shl i16 %bf.load40.i, 6
  %85 = and i16 %84, -2048
  %and45.i = zext i16 %85 to i32
  %call.i169.i = tail call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef %add39.i, i32 noundef 63488, i32 noundef %and45.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br i1 %or.cond.i, label %if.end5.i.if.end38_crit_edge, label %if.then50.i

if.end5.i.if.end38_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then50.i:                                      ; preds = %if.end5.i
  %86 = ptrtoint ptr %sample_format31 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sample_format31, align 4
  %call51.i = tail call fastcc i32 @fsl_easrc_process_format(ptr noundef %9, ptr noundef %out_params.i, i32 noundef %87) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.then50.i.if.end38_crit_edge, label %if.then50.i.do.end37_crit_edge

if.then50.i.do.end37_crit_edge:                   ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

if.then50.i.if.end38_crit_edge:                   ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.end37:                                         ; preds = %if.then50.i.do.end37_crit_edge, %if.then.i.do.end37_crit_edge
  %retval.0.i.ph = phi i32 [ %call51.i, %if.then50.i.do.end37_crit_edge ], [ %call.i, %if.then.i.do.end37_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.124, i32 noundef %retval.0.i.ph) #13
  br label %cleanup

if.end38:                                         ; preds = %if.then50.i.if.end38_crit_edge, %if.end5.i.if.end38_crit_edge
  %88 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap.i, align 4
  %90 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %index.i, align 4
  %mul58.i = shl i32 %91, 2
  %add59.i = add i32 %mul58.i, 224
  %92 = ptrtoint ptr %out_params.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %bf.load60.i = load i16, ptr %out_params.i, align 4
  %93 = lshr i16 %bf.load60.i, 6
  %94 = and i16 %93, 768
  %and64.i = zext i16 %94 to i32
  %call.i170.i = tail call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef %add59.i, i32 noundef 768, i32 noundef %and64.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %95 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap.i, align 4
  %97 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %index.i, align 4
  %mul68.i = shl i32 %98, 2
  %add69.i = add i32 %mul68.i, 224
  %99 = ptrtoint ptr %out_params.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %bf.load70.i = load i16, ptr %out_params.i, align 4
  %100 = lshr i16 %bf.load70.i, 3
  %101 = and i16 %100, 1024
  %shl74.i = zext i16 %101 to i32
  %call.i171.i = tail call i32 @regmap_update_bits_base(ptr noundef %96, i32 noundef %add69.i, i32 noundef 1024, i32 noundef %shl74.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %102 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regmap.i, align 4
  %104 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %index.i, align 4
  %mul78.i = shl i32 %105, 2
  %add79.i = add i32 %mul78.i, 224
  %106 = ptrtoint ptr %out_params.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %bf.load80.i = load i16, ptr %out_params.i, align 4
  %107 = lshr i16 %bf.load80.i, 4
  %108 = and i16 %107, 128
  %shl84.i = zext i16 %108 to i32
  %call.i172.i = tail call i32 @regmap_update_bits_base(ptr noundef %103, i32 noundef %add79.i, i32 noundef 128, i32 noundef %shl84.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %109 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap.i, align 4
  %111 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %index.i, align 4
  %mul88.i = shl i32 %112, 2
  %add89.i = add i32 %mul88.i, 224
  %113 = ptrtoint ptr %out_params.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %bf.load90.i = load i16, ptr %out_params.i, align 4
  %114 = lshr i16 %bf.load90.i, 6
  %115 = and i16 %114, 64
  %shl94.i = zext i16 %115 to i32
  %call.i173.i = tail call i32 @regmap_update_bits_base(ptr noundef %110, i32 noundef %add89.i, i32 noundef 64, i32 noundef %shl94.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %116 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regmap.i, align 4
  %118 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %index.i, align 4
  %mul98.i = shl i32 %119, 2
  %add99.i = add i32 %mul98.i, 224
  %120 = ptrtoint ptr %out_params.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %bf.load100.i = load i16, ptr %out_params.i, align 4
  %121 = shl i16 %bf.load100.i, 6
  %122 = and i16 %121, -2048
  %and105.i = zext i16 %122 to i32
  %call.i174.i = tail call i32 @regmap_update_bits_base(ptr noundef %117, i32 noundef %add99.i, i32 noundef 63488, i32 noundef %and105.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %123 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regmap.i, align 4
  %125 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %index.i, align 4
  %mul109.i = shl i32 %126, 2
  %add110.i = add i32 %mul109.i, 224
  %127 = ptrtoint ptr %out_params.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %bf.load111.i = load i16, ptr %out_params.i, align 4
  %128 = lshr i16 %bf.load111.i, 9
  %129 = and i16 %128, 2
  %shl115.i = zext i16 %129 to i32
  %call.i175.i = tail call i32 @regmap_update_bits_base(ptr noundef %124, i32 noundef %add110.i, i32 noundef 2, i32 noundef %shl115.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %130 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %index.i, align 4
  %tobool.not.i126 = icmp eq ptr %3, null
  br i1 %tobool.not.i126, label %if.end38.do.end44_crit_edge, label %if.end.i

if.end38.do.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

if.end.i:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %131)
  %cmp.i = icmp ugt i32 %131, 3
  br i1 %cmp.i, label %do.end.i, label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pdev, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %133, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.132, i32 noundef %131) #13
  br label %do.end44

if.end3.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.fsl_asrc, ptr %3, i32 0, i32 9, i32 %131
  %134 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i, align 4
  %private.i127 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %135, i32 0, i32 9
  %136 = ptrtoint ptr %private.i127 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %private.i127, align 4
  %tobool.not.i.i128 = icmp eq ptr %135, null
  br i1 %tobool.not.i.i128, label %if.end3.i.fsl_easrc_normalize_rates.exit.i_crit_edge, label %if.end.i.i

if.end3.i.fsl_easrc_normalize_rates.exit.i_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_easrc_normalize_rates.exit.i

if.end.i.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %sample_rate.i.i = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %137, i32 0, i32 5
  %138 = ptrtoint ptr %sample_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %sample_rate.i.i, align 8
  %sample_rate1.i.i = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %137, i32 0, i32 1, i32 5
  %140 = ptrtoint ptr %sample_rate1.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %sample_rate1.i.i, align 4
  %call.i.i129 = tail call i32 @gcd(i32 noundef %139, i32 noundef %141) #14
  %div.i.i = udiv i32 %139, %call.i.i129
  %norm_rate.i.i = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %137, i32 0, i32 7
  %142 = ptrtoint ptr %norm_rate.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %div.i.i, ptr %norm_rate.i.i, align 8
  %div7.i.i = udiv i32 %141, %call.i.i129
  %norm_rate9.i.i = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %137, i32 0, i32 1, i32 7
  %143 = ptrtoint ptr %norm_rate9.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %div7.i.i, ptr %norm_rate9.i.i, align 4
  br label %fsl_easrc_normalize_rates.exit.i

fsl_easrc_normalize_rates.exit.i:                 ; preds = %if.end.i.i, %if.end3.i.fsl_easrc_normalize_rates.exit.i_crit_edge
  %call.i130 = tail call fastcc i32 @fsl_easrc_set_rs_ratio(ptr noundef %135) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool4.not.i = icmp eq i32 %call.i130, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %fsl_easrc_normalize_rates.exit.i.do.end44_crit_edge

fsl_easrc_normalize_rates.exit.i.do.end44_crit_edge: ; preds = %fsl_easrc_normalize_rates.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

if.end6.i:                                        ; preds = %fsl_easrc_normalize_rates.exit.i
  %index.i131 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %135, i32 0, i32 2
  %144 = ptrtoint ptr %index.i131 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %index.i131, align 4
  %call7.i = tail call fastcc i32 @fsl_easrc_prefilter_config(ptr noundef nonnull %3, i32 noundef %145) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %do.body12.i, label %if.end6.i.do.end44_crit_edge

if.end6.i.do.end44_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

do.body12.i:                                      ; preds = %if.end6.i
  %lock.i = getelementptr inbounds %struct.fsl_asrc, ptr %3, i32 0, i32 8
  %call15.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %146 = ptrtoint ptr %index.i131 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %index.i131, align 4
  %private.i88.i = getelementptr inbounds %struct.fsl_asrc, ptr %3, i32 0, i32 19
  %148 = ptrtoint ptr %private.i88.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %private.i88.i, align 4
  %arrayidx.i.i132 = getelementptr %struct.fsl_asrc, ptr %3, i32 0, i32 9, i32 %147
  %150 = ptrtoint ptr %arrayidx.i.i132 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.i.i132, align 4
  %channels.i.i = getelementptr inbounds %struct.fsl_asrc_pair, ptr %151, i32 0, i32 3
  %152 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %channels.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %153)
  %cmp.i.i = icmp slt i32 %153, 1
  br i1 %cmp.i.i, label %do.body12.i.fsl_easrc_config_slot.exit.i_crit_edge, label %for.cond.preheader.i.i

do.body12.i.fsl_easrc_config_slot.exit.i_crit_edge: ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_easrc_config_slot.exit.i

for.cond.preheader.i.i:                           ; preds = %do.body12.i
  %index.i.i = getelementptr inbounds %struct.fsl_asrc_pair, ptr %151, i32 0, i32 2
  %private.i.i.i = getelementptr inbounds %struct.fsl_asrc_pair, ptr %151, i32 0, i32 9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i134.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %i.0117.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc.i.i, %for.inc.i.i134.for.body.i.i_crit_edge ]
  %start_channel.0114.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %start_channel.1.i.i, %for.inc.i.i134.for.body.i.i_crit_edge ]
  %req_channels.0111.i.i = phi i32 [ %153, %for.cond.preheader.i.i ], [ %req_channels.1.i.i, %for.inc.i.i134.for.body.i.i_crit_edge ]
  %arrayidx2.i.i = getelementptr [4 x [2 x %struct.fsl_easrc_slot]], ptr %149, i32 0, i32 %i.0117.i.i
  %arrayidx6.i.i = getelementptr [4 x [2 x %struct.fsl_easrc_slot]], ptr %149, i32 0, i32 %i.0117.i.i, i32 1
  %154 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx2.i.i, align 4, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i89.i = icmp eq i8 %155, 0
  %156 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx6.i.i, align 4, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool15.not.i.i = icmp eq i8 %157, 0
  br i1 %tobool.not.i89.i, label %lor.lhs.false.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  br i1 %tobool15.not.i.i, label %land.lhs.true12.i.i, label %land.lhs.true.i.i.for.inc.i.i134_crit_edge

land.lhs.true.i.i.for.inc.i.i134_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i134

land.lhs.true12.i.i:                              ; preds = %land.lhs.true.i.i
  %ctx_index.i.i = getelementptr inbounds %struct.fsl_easrc_slot, ptr %arrayidx2.i.i, i32 0, i32 1
  %158 = ptrtoint ptr %ctx_index.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ctx_index.i.i, align 4
  %160 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %161)
  %cmp13.i.i = icmp eq i32 %159, %161
  br i1 %cmp13.i.i, label %land.lhs.true12.i.i.for.inc.i.i134_crit_edge, label %if.then28.i.i

land.lhs.true12.i.i.for.inc.i.i134_crit_edge:     ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i134

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  br i1 %tobool15.not.i.i, label %lor.lhs.false.i.i.if.then24.i.i_crit_edge, label %land.lhs.true16.i.i

lor.lhs.false.i.i.if.then24.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24.i.i

land.lhs.true16.i.i:                              ; preds = %lor.lhs.false.i.i
  %ctx_index17.i.i = getelementptr [4 x [2 x %struct.fsl_easrc_slot]], ptr %149, i32 0, i32 %i.0117.i.i, i32 1, i32 1
  %162 = ptrtoint ptr %ctx_index17.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %ctx_index17.i.i, align 4
  %164 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %165)
  %cmp19.i.i = icmp eq i32 %163, %165
  br i1 %cmp19.i.i, label %land.lhs.true16.i.i.for.inc.i.i134_crit_edge, label %land.lhs.true16.i.i.if.then24.i.i_crit_edge

land.lhs.true16.i.i.if.then24.i.i_crit_edge:      ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24.i.i

land.lhs.true16.i.i.for.inc.i.i134_crit_edge:     ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i134

if.then24.i.i:                                    ; preds = %land.lhs.true16.i.i.if.then24.i.i_crit_edge, %lor.lhs.false.i.i.if.then24.i.i_crit_edge
  %slot_index.i.i = getelementptr inbounds %struct.fsl_easrc_slot, ptr %arrayidx2.i.i, i32 0, i32 2
  %166 = ptrtoint ptr %slot_index.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %slot_index.i.i, align 4
  br label %if.end33.i.i

if.then28.i.i:                                    ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %slot_index29.i.i = getelementptr [4 x [2 x %struct.fsl_easrc_slot]], ptr %149, i32 0, i32 %i.0117.i.i, i32 1, i32 2
  %167 = ptrtoint ptr %slot_index29.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 1, ptr %slot_index29.i.i, align 4
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.then28.i.i, %if.then24.i.i
  %slota.1.i.i = phi ptr [ %arrayidx6.i.i, %if.then28.i.i ], [ %arrayidx2.i.i, %if.then24.i.i ]
  %slotb.1.i.i = phi ptr [ %arrayidx2.i.i, %if.then28.i.i ], [ %arrayidx6.i.i, %if.then24.i.i ]
  %tobool34.not.i.i = icmp eq ptr %slota.1.i.i, null
  %tobool36.not.i.i = icmp eq ptr %slotb.1.i.i, null
  %or.cond.i133 = or i1 %tobool34.not.i.i, %tobool36.not.i.i
  br i1 %or.cond.i133, label %if.end33.i.i.for.inc.i.i134_crit_edge, label %if.end38.i.i

if.end33.i.i.for.inc.i.i134_crit_edge:            ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i134

if.end38.i.i:                                     ; preds = %if.end33.i.i
  %168 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %private.i.i.i, align 4
  %num_channel.i.i.i = getelementptr inbounds %struct.fsl_easrc_slot, ptr %slotb.1.i.i, i32 0, i32 3
  %170 = ptrtoint ptr %num_channel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %num_channel.i.i.i, align 4
  %st1_num_taps.i.i.i = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %169, i32 0, i32 2
  %172 = ptrtoint ptr %st1_num_taps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %st1_num_taps.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp.not.i.i.i = icmp eq i32 %173, 0
  br i1 %cmp.not.i.i.i, label %if.end38.i.i.if.end6.i.i.i_crit_edge, label %if.then.i.i.i

if.end38.i.i.if.end6.i.i.i_crit_edge:             ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.i.i

if.then.i.i.i:                                    ; preds = %if.end38.i.i
  %st2_num_taps.i.i.i = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %169, i32 0, i32 3
  %174 = ptrtoint ptr %st2_num_taps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %st2_num_taps.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %cmp1.not.i.i.i = icmp eq i32 %175, 0
  br i1 %cmp1.not.i.i.i, label %if.then.i.i.i.if.end6.i.i.i_crit_edge, label %if.then2.i.i.i

if.then.i.i.i.if.end6.i.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.i.i

if.then2.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub4.i.i.i = add i32 %173, -1
  %st1_num_exp.i.i.i = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %169, i32 0, i32 4
  %176 = ptrtoint ptr %st1_num_exp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %st1_num_exp.i.i.i, align 8
  %mul.i.i.i = mul i32 %177, %sub4.i.i.i
  %add.i.i.i = add i32 %mul.i.i.i, 1
  br label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %if.then2.i.i.i, %if.then.i.i.i.if.end6.i.i.i_crit_edge, %if.end38.i.i.if.end6.i.i.i_crit_edge
  %st1_mem_alloc.0.i.i.i = phi i32 [ %add.i.i.i, %if.then2.i.i.i ], [ 0, %if.end38.i.i.if.end6.i.i.i_crit_edge ], [ %173, %if.then.i.i.i.if.end6.i.i.i_crit_edge ]
  %st2_num_taps7.i.i.i = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %169, i32 0, i32 3
  %178 = ptrtoint ptr %st2_num_taps7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %st2_num_taps7.i.i.i, align 4
  %add12.i.i.i = add i32 %179, %st1_mem_alloc.0.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add12.i.i.i)
  %cmp13.not.i.i.i = icmp eq i32 %add12.i.i.i, 0
  br i1 %cmp13.not.i.i.i, label %if.end6.i.i.i.fsl_easrc_max_ch_for_slot.exit.i.i_crit_edge, label %if.then14.i.i.i

if.end6.i.i.i.fsl_easrc_max_ch_for_slot.exit.i.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_easrc_max_ch_for_slot.exit.i.i

if.then14.i.i.i:                                  ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %pf_mem_used.i.i.i = getelementptr inbounds %struct.fsl_easrc_slot, ptr %slotb.1.i.i, i32 0, i32 6
  %180 = ptrtoint ptr %pf_mem_used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %pf_mem_used.i.i.i, align 4
  %sub15.i.i.i = sub i32 6144, %181
  %div.i.i.i = sdiv i32 %sub15.i.i.i, %add12.i.i.i
  br label %fsl_easrc_max_ch_for_slot.exit.i.i

fsl_easrc_max_ch_for_slot.exit.i.i:               ; preds = %if.then14.i.i.i, %if.end6.i.i.i.fsl_easrc_max_ch_for_slot.exit.i.i_crit_edge
  %channels.0.i.i.i = phi i32 [ %div.i.i.i, %if.then14.i.i.i ], [ 8, %if.end6.i.i.i.fsl_easrc_max_ch_for_slot.exit.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %171
  %182 = tail call i32 @llvm.smin.i32(i32 %channels.0.i.i.i, i32 %sub.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %182)
  %cmp39.i.i = icmp slt i32 %182, 1
  br i1 %cmp39.i.i, label %fsl_easrc_max_ch_for_slot.exit.i.i.for.inc.i.i134_crit_edge, label %if.end41.i.i

fsl_easrc_max_ch_for_slot.exit.i.i.for.inc.i.i134_crit_edge: ; preds = %fsl_easrc_max_ch_for_slot.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i134

if.end41.i.i:                                     ; preds = %fsl_easrc_max_ch_for_slot.exit.i.i
  %183 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %151, align 4
  %slot_index.i.i.i = getelementptr inbounds %struct.fsl_easrc_slot, ptr %slota.1.i.i, i32 0, i32 2
  %185 = ptrtoint ptr %slot_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %slot_index.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp.i.i.i = icmp eq i32 %186, 0
  %mul.i89.i.i = shl i32 %i.0117.i.i, 2
  %..i.i.i = select i1 %cmp.i.i.i, i32 96, i32 160
  %.13.i.i.i = select i1 %cmp.i.i.i, i32 112, i32 176
  %.14.i.i.i = select i1 %cmp.i.i.i, i32 128, i32 192
  %.15.i.i.i = select i1 %cmp.i.i.i, i32 144, i32 208
  %add8.i.i.i = add i32 %..i.i.i, %mul.i89.i.i
  %add10.i.i.i = add i32 %.13.i.i.i, %mul.i89.i.i
  %add12.i90.i.i = add i32 %.14.i.i.i, %mul.i89.i.i
  %add14.i.i.i = add i32 %.15.i.i.i, %mul.i89.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %req_channels.0111.i.i, i32 %182)
  %cmp15.not.i.i.i = icmp ugt i32 %req_channels.0111.i.i, %182
  %num_channel18.i.i.i = getelementptr inbounds %struct.fsl_easrc_slot, ptr %slota.1.i.i, i32 0, i32 3
  br i1 %cmp15.not.i.i.i, label %if.else17.i.i.i, label %if.then16.i.i.i

if.then16.i.i.i:                                  ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %187 = ptrtoint ptr %num_channel18.i.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %req_channels.0111.i.i, ptr %num_channel18.i.i.i, align 4
  br label %if.end19.i.i.i

if.else17.i.i.i:                                  ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %188 = ptrtoint ptr %num_channel18.i.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %182, ptr %num_channel18.i.i.i, align 4
  %sub.i91.i.i = sub i32 %req_channels.0111.i.i, %182
  br label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %if.else17.i.i.i, %if.then16.i.i.i
  %storemerge.i.i.i = phi i32 [ %sub.i91.i.i, %if.else17.i.i.i ], [ 0, %if.then16.i.i.i ]
  %min_channel.i.i.i = getelementptr inbounds %struct.fsl_easrc_slot, ptr %slota.1.i.i, i32 0, i32 4
  %189 = ptrtoint ptr %min_channel.i.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %start_channel.0114.i.i, ptr %min_channel.i.i.i, align 4
  %190 = ptrtoint ptr %num_channel18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %num_channel18.i.i.i, align 4
  %add21.i.i.i = add i32 %191, %start_channel.0114.i.i
  %sub22.i.i.i = add i32 %add21.i.i.i, -1
  %max_channel.i.i.i = getelementptr inbounds %struct.fsl_easrc_slot, ptr %slota.1.i.i, i32 0, i32 5
  %192 = ptrtoint ptr %max_channel.i.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %sub22.i.i.i, ptr %max_channel.i.i.i, align 4
  %193 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %index.i.i, align 4
  %ctx_index.i.i.i = getelementptr inbounds %struct.fsl_easrc_slot, ptr %slota.1.i.i, i32 0, i32 1
  %195 = ptrtoint ptr %ctx_index.i.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %ctx_index.i.i.i, align 4
  %196 = ptrtoint ptr %slota.1.i.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 1, ptr %slota.1.i.i, align 4
  %regmap.i.i.i = getelementptr inbounds %struct.fsl_asrc, ptr %184, i32 0, i32 3
  %197 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %regmap.i.i.i, align 4
  %shl.i.i.i = shl i32 %sub22.i.i.i, 24
  %and.i.i.i = and i32 %shl.i.i.i, 520093696
  %call.i.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %198, i32 noundef %add8.i.i.i, i32 noundef 520093696, i32 noundef %and.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %199 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %regmap.i.i.i, align 4
  %201 = ptrtoint ptr %min_channel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %min_channel.i.i.i, align 4
  %shl28.i.i.i = shl i32 %202, 16
  %and29.i.i.i = and i32 %shl28.i.i.i, 2031616
  %call.i1.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %200, i32 noundef %add8.i.i.i, i32 noundef 2031616, i32 noundef %and29.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %203 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %regmap.i.i.i, align 4
  %205 = ptrtoint ptr %num_channel18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %num_channel18.i.i.i, align 4
  %sub33.i.i.i = shl i32 %206, 8
  %shl34.i.i.i = add i32 %sub33.i.i.i, 7936
  %and35.i.i.i = and i32 %shl34.i.i.i, 7936
  %call.i2.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %204, i32 noundef %add8.i.i.i, i32 noundef 7936, i32 noundef %and35.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %207 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %regmap.i.i.i, align 4
  %209 = ptrtoint ptr %ctx_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %ctx_index.i.i.i, align 4
  %shl39.i.i.i = shl i32 %210, 1
  %and40.i.i.i = and i32 %shl39.i.i.i, 6
  %call.i3.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %208, i32 noundef %add8.i.i.i, i32 noundef 6, i32 noundef %and40.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %211 = ptrtoint ptr %st1_num_taps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %st1_num_taps.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp42.not.i.i.i = icmp eq i32 %212, 0
  br i1 %cmp42.not.i.i.i, label %if.end19.i.i.i.if.end72.i.i.i_crit_edge, label %if.then43.i.i.i

if.end19.i.i.i.if.end72.i.i.i_crit_edge:          ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72.i.i.i

if.then43.i.i.i:                                  ; preds = %if.end19.i.i.i
  %213 = ptrtoint ptr %st2_num_taps7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %st2_num_taps7.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp44.not.i.i.i = icmp eq i32 %214, 0
  br i1 %cmp44.not.i.i.i, label %if.else53.i.i.i, label %if.then45.i.i.i

if.then45.i.i.i:                                  ; preds = %if.then43.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub47.i.i.i = add i32 %212, -1
  %215 = ptrtoint ptr %num_channel18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %num_channel18.i.i.i, align 4
  %mul49.i.i.i = mul i32 %216, %sub47.i.i.i
  %st1_num_exp.i94.i.i = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %169, i32 0, i32 4
  %217 = ptrtoint ptr %st1_num_exp.i94.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %st1_num_exp.i94.i.i, align 8
  %mul50.i.i.i = mul i32 %mul49.i.i.i, %218
  %add52.i.i.i = add i32 %mul50.i.i.i, %216
  br label %if.end57.i.i.i

if.else53.i.i.i:                                  ; preds = %if.then43.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %219 = ptrtoint ptr %num_channel18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %num_channel18.i.i.i, align 4
  %mul56.i.i.i = mul i32 %220, %212
  br label %if.end57.i.i.i

if.end57.i.i.i:                                   ; preds = %if.else53.i.i.i, %if.then45.i.i.i
  %st1_mem_alloc.0.i95.i.i = phi i32 [ %add52.i.i.i, %if.then45.i.i.i ], [ %mul56.i.i.i, %if.else53.i.i.i ]
  %pf_mem_used.i96.i.i = getelementptr inbounds %struct.fsl_easrc_slot, ptr %slota.1.i.i, i32 0, i32 6
  %221 = ptrtoint ptr %pf_mem_used.i96.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %st1_mem_alloc.0.i95.i.i, ptr %pf_mem_used.i96.i.i, align 4
  %222 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %regmap.i.i.i, align 4
  %shl59.i.i.i = shl i32 %st1_mem_alloc.0.i95.i.i, 16
  %and60.i.i.i = and i32 %shl59.i.i.i, 536805376
  %call.i4.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %223, i32 noundef %add12.i90.i.i, i32 noundef 536805376, i32 noundef %and60.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %224 = ptrtoint ptr %slot_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %slot_index.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %225)
  %cmp63.i.i.i = icmp eq i32 %225, 1
  %sub65.i.i.i = sub i32 6144, %st1_mem_alloc.0.i95.i.i
  %phi.bo.i.i.i = and i32 %sub65.i.i.i, 8191
  %addr.0.i.i.i = select i1 %cmp63.i.i.i, i32 %phi.bo.i.i.i, i32 0
  %226 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i5.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %227, i32 noundef %add12.i90.i.i, i32 noundef 8191, i32 noundef %addr.0.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end72.i.i.i

if.end72.i.i.i:                                   ; preds = %if.end57.i.i.i, %if.end19.i.i.i.if.end72.i.i.i_crit_edge
  %st1_mem_alloc.1.i.i.i = phi i32 [ %st1_mem_alloc.0.i95.i.i, %if.end57.i.i.i ], [ 0, %if.end19.i.i.i.if.end72.i.i.i_crit_edge ]
  %228 = ptrtoint ptr %st2_num_taps7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %st2_num_taps7.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %cmp74.not.i.i.i = icmp eq i32 %229, 0
  br i1 %cmp74.not.i.i.i, label %if.end72.i.i.i.fsl_easrc_config_one_slot.exit.i.i_crit_edge, label %if.then75.i.i.i

if.end72.i.i.i.fsl_easrc_config_one_slot.exit.i.i_crit_edge: ; preds = %if.end72.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_easrc_config_one_slot.exit.i.i

if.then75.i.i.i:                                  ; preds = %if.end72.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %230 = ptrtoint ptr %num_channel18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %num_channel18.i.i.i, align 4
  %st1_num_exp77.i.i.i = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %169, i32 0, i32 4
  %232 = ptrtoint ptr %st1_num_exp77.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %st1_num_exp77.i.i.i, align 8
  %sub78.i.i.i = add i32 %233, 8191
  %mul79.i.i.i = mul i32 %sub78.i.i.i, %231
  %234 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regmap.i.i.i, align 4
  %and82.i.i.i = and i32 %mul79.i.i.i, 8191
  %call.i6.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %235, i32 noundef %add10.i.i.i, i32 noundef 8191, i32 noundef %and82.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %236 = ptrtoint ptr %num_channel18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %num_channel18.i.i.i, align 4
  %238 = ptrtoint ptr %st2_num_taps7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %st2_num_taps7.i.i.i, align 4
  %mul86.i.i.i = mul i32 %239, %237
  %pf_mem_used87.i.i.i = getelementptr inbounds %struct.fsl_easrc_slot, ptr %slota.1.i.i, i32 0, i32 6
  %240 = ptrtoint ptr %pf_mem_used87.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %pf_mem_used87.i.i.i, align 4
  %add88.i.i.i = add i32 %241, %mul86.i.i.i
  store i32 %add88.i.i.i, ptr %pf_mem_used87.i.i.i, align 4
  %242 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %regmap.i.i.i, align 4
  %shl90.i.i.i = shl i32 %mul86.i.i.i, 16
  %and91.i.i.i = and i32 %shl90.i.i.i, 536805376
  %call.i7.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %243, i32 noundef %add14.i.i.i, i32 noundef 536805376, i32 noundef %and91.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %244 = ptrtoint ptr %slot_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %slot_index.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %245)
  %cmp94.i.i.i = icmp eq i32 %245, 1
  %246 = add i32 %st1_mem_alloc.1.i.i.i, %mul86.i.i.i
  %sub97.i.i.i = sub i32 6144, %246
  %addr.1.i.i.i = select i1 %cmp94.i.i.i, i32 %sub97.i.i.i, i32 %st1_mem_alloc.1.i.i.i
  %247 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %regmap.i.i.i, align 4
  %and102.i.i.i = and i32 %addr.1.i.i.i, 8191
  %call.i8.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %248, i32 noundef %add14.i.i.i, i32 noundef 8191, i32 noundef %and102.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %fsl_easrc_config_one_slot.exit.i.i

fsl_easrc_config_one_slot.exit.i.i:               ; preds = %if.then75.i.i.i, %if.end72.i.i.i.fsl_easrc_config_one_slot.exit.i.i_crit_edge
  %249 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i9.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %250, i32 noundef %add8.i.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.i.i.i)
  %cmp46.i.i = icmp sgt i32 %storemerge.i.i.i, 0
  br i1 %cmp46.i.i, label %fsl_easrc_config_one_slot.exit.i.i.for.inc.i.i134_crit_edge, label %fsl_easrc_config_one_slot.exit.i.i.if.end45_crit_edge

fsl_easrc_config_one_slot.exit.i.i.if.end45_crit_edge: ; preds = %fsl_easrc_config_one_slot.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

fsl_easrc_config_one_slot.exit.i.i.for.inc.i.i134_crit_edge: ; preds = %fsl_easrc_config_one_slot.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i134

for.inc.i.i134:                                   ; preds = %fsl_easrc_config_one_slot.exit.i.i.for.inc.i.i134_crit_edge, %fsl_easrc_max_ch_for_slot.exit.i.i.for.inc.i.i134_crit_edge, %if.end33.i.i.for.inc.i.i134_crit_edge, %land.lhs.true16.i.i.for.inc.i.i134_crit_edge, %land.lhs.true12.i.i.for.inc.i.i134_crit_edge, %land.lhs.true.i.i.for.inc.i.i134_crit_edge
  %req_channels.1.i.i = phi i32 [ %req_channels.0111.i.i, %if.end33.i.i.for.inc.i.i134_crit_edge ], [ %req_channels.0111.i.i, %fsl_easrc_max_ch_for_slot.exit.i.i.for.inc.i.i134_crit_edge ], [ %storemerge.i.i.i, %fsl_easrc_config_one_slot.exit.i.i.for.inc.i.i134_crit_edge ], [ %req_channels.0111.i.i, %land.lhs.true16.i.i.for.inc.i.i134_crit_edge ], [ %req_channels.0111.i.i, %land.lhs.true12.i.i.for.inc.i.i134_crit_edge ], [ %req_channels.0111.i.i, %land.lhs.true.i.i.for.inc.i.i134_crit_edge ]
  %start_channel.1.i.i = phi i32 [ %start_channel.0114.i.i, %if.end33.i.i.for.inc.i.i134_crit_edge ], [ %start_channel.0114.i.i, %fsl_easrc_max_ch_for_slot.exit.i.i.for.inc.i.i134_crit_edge ], [ %add21.i.i.i, %fsl_easrc_config_one_slot.exit.i.i.for.inc.i.i134_crit_edge ], [ %start_channel.0114.i.i, %land.lhs.true16.i.i.for.inc.i.i134_crit_edge ], [ %start_channel.0114.i.i, %land.lhs.true12.i.i.for.inc.i.i134_crit_edge ], [ %start_channel.0114.i.i, %land.lhs.true.i.i.for.inc.i.i134_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.0117.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 4
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i134.for.body.i.i_crit_edge

for.inc.i.i134.for.body.i.i_crit_edge:            ; preds = %for.inc.i.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %req_channels.1.i.i)
  %cmp49.i.i = icmp sgt i32 %req_channels.1.i.i, 0
  br i1 %cmp49.i.i, label %do.end.i.i, label %for.end.i.i.if.end45_crit_edge

for.end.i.i.if.end45_crit_edge:                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

do.end.i.i:                                       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %251 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %pdev, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %252, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.155) #13
  br label %fsl_easrc_config_slot.exit.i

fsl_easrc_config_slot.exit.i:                     ; preds = %do.end.i.i, %do.body12.i.fsl_easrc_config_slot.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call15.i) #10
  br label %do.end44

do.end44:                                         ; preds = %fsl_easrc_config_slot.exit.i, %if.end6.i.do.end44_crit_edge, %fsl_easrc_normalize_rates.exit.i.do.end44_crit_edge, %do.end.i, %if.end38.do.end44_crit_edge
  %retval.0.i139.ph = phi i32 [ -22, %fsl_easrc_config_slot.exit.i ], [ %call7.i, %if.end6.i.do.end44_crit_edge ], [ %call.i130, %fsl_easrc_normalize_rates.exit.i.do.end44_crit_edge ], [ -19, %if.end38.do.end44_crit_edge ], [ -22, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.127) #13
  br label %cleanup

if.end45:                                         ; preds = %for.end.i.i.if.end45_crit_edge, %fsl_easrc_config_one_slot.exit.i.i.if.end45_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call15.i) #10
  %regmap.i135 = getelementptr inbounds %struct.fsl_asrc, ptr %3, i32 0, i32 3
  %253 = ptrtoint ptr %regmap.i135 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %regmap.i135, align 4
  %mul.i136 = shl i32 %131, 2
  %add.i137 = add i32 %mul.i136, 48
  %rs_init_mode.i = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %137, i32 0, i32 6
  %255 = ptrtoint ptr %rs_init_mode.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %rs_init_mode.i, align 8
  %shl.i = shl i32 %256, 2
  %and.i138 = and i32 %shl.i, 12
  %call.i90.i = tail call i32 @regmap_update_bits_base(ptr noundef %254, i32 noundef %add.i137, i32 noundef 12, i32 noundef %and.i138, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %257 = ptrtoint ptr %regmap.i135 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %regmap.i135, align 4
  %pf_init_mode.i = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %137, i32 0, i32 5
  %259 = ptrtoint ptr %pf_init_mode.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %pf_init_mode.i, align 4
  %and31.i = and i32 %260, 3
  %call.i91.i = tail call i32 @regmap_update_bits_base(ptr noundef %258, i32 noundef %add.i137, i32 noundef 3, i32 noundef %and31.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %261 = ptrtoint ptr %regmap.i135 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %regmap.i135, align 4
  %add35.i = add i32 %mul.i136, 32
  %fifo_wtmk.i = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %137, i32 0, i32 4
  %263 = ptrtoint ptr %fifo_wtmk.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %fifo_wtmk.i, align 4
  %shl36.i = shl i32 %264, 16
  %and37.i = and i32 %shl36.i, 8323072
  %call.i92.i = tail call i32 @regmap_update_bits_base(ptr noundef %262, i32 noundef %add35.i, i32 noundef 8323072, i32 noundef %and37.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %265 = ptrtoint ptr %regmap.i135 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %regmap.i135, align 4
  %add41.i = add i32 %mul.i136, 224
  %fifo_wtmk42.i = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %137, i32 0, i32 1, i32 4
  %267 = ptrtoint ptr %fifo_wtmk42.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %fifo_wtmk42.i, align 4
  %sub.i = shl i32 %268, 16
  %shl43.i = add i32 %sub.i, 8323072
  %and44.i = and i32 %shl43.i, 8323072
  %call.i93.i = tail call i32 @regmap_update_bits_base(ptr noundef %266, i32 noundef %add41.i, i32 noundef 8323072, i32 noundef %and44.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %269 = ptrtoint ptr %regmap.i135 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %regmap.i135, align 4
  %channels.i = getelementptr inbounds %struct.fsl_asrc_pair, ptr %135, i32 0, i32 3
  %271 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %channels.i, align 4
  %sub49.i = add i32 %272, 31
  %and51.i = and i32 %sub49.i, 31
  %call.i94.i = tail call i32 @regmap_update_bits_base(ptr noundef %270, i32 noundef %add35.i, i32 noundef 31, i32 noundef %and51.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %iterations = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %11, i32 0, i32 2
  %273 = ptrtoint ptr %iterations to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 1, ptr %iterations, align 4
  %274 = ptrtoint ptr %channels24 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %channels24, align 4
  %group_len = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %11, i32 0, i32 1
  %276 = ptrtoint ptr %group_len to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %275, ptr %group_len, align 8
  %277 = load i32, ptr %channels24, align 4
  %access_len = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %11, i32 0, i32 3
  %278 = ptrtoint ptr %access_len to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %277, ptr %access_len, align 8
  %iterations52 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %11, i32 0, i32 1, i32 2
  %279 = ptrtoint ptr %iterations52 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 1, ptr %iterations52, align 4
  %280 = load i32, ptr %channels24, align 4
  %group_len55 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %11, i32 0, i32 1, i32 1
  %281 = ptrtoint ptr %group_len55 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %280, ptr %group_len55, align 4
  %282 = load i32, ptr %channels24, align 4
  %access_len58 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %11, i32 0, i32 1, i32 3
  %283 = ptrtoint ptr %access_len58 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %282, ptr %access_len58, align 4
  %tobool.not.i140 = icmp eq ptr %9, null
  br i1 %tobool.not.i140, label %do.end64, label %fsl_easrc_set_ctx_organziation.exit.thread

fsl_easrc_set_ctx_organziation.exit.thread:       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %284 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %9, align 4
  %286 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %private, align 4
  %regmap.i142 = getelementptr inbounds %struct.fsl_asrc, ptr %285, i32 0, i32 3
  %288 = ptrtoint ptr %regmap.i142 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %regmap.i142, align 4
  %290 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %index.i, align 4
  %mul.i144 = shl i32 %291, 2
  %add.i145 = add i32 %mul.i144, 80
  %iterations.i = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %287, i32 0, i32 2
  %292 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %iterations.i, align 4
  %shl.i146 = shl i32 %293, 16
  %and.i147 = and i32 %shl.i146, 4128768
  %call.i.i148 = tail call i32 @regmap_update_bits_base(ptr noundef %289, i32 noundef %add.i145, i32 noundef 4128768, i32 noundef %and.i147, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %294 = ptrtoint ptr %regmap.i142 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %regmap.i142, align 4
  %296 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %index.i, align 4
  %mul3.i = shl i32 %297, 2
  %add4.i = add i32 %mul3.i, 80
  %group_len.i = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %287, i32 0, i32 1
  %298 = ptrtoint ptr %group_len.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %group_len.i, align 8
  %shl6.i = shl i32 %299, 8
  %and7.i = and i32 %shl6.i, 16128
  %call.i62.i = tail call i32 @regmap_update_bits_base(ptr noundef %295, i32 noundef %add4.i, i32 noundef 16128, i32 noundef %and7.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %300 = ptrtoint ptr %regmap.i142 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %regmap.i142, align 4
  %302 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %index.i, align 4
  %mul11.i = shl i32 %303, 2
  %add12.i = add i32 %mul11.i, 80
  %access_len.i = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %287, i32 0, i32 3
  %304 = ptrtoint ptr %access_len.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %access_len.i, align 8
  %and15.i = and i32 %305, 63
  %call.i63.i = tail call i32 @regmap_update_bits_base(ptr noundef %301, i32 noundef %add12.i, i32 noundef 63, i32 noundef %and15.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %306 = ptrtoint ptr %regmap.i142 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %regmap.i142, align 4
  %308 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %index.i, align 4
  %mul19.i = shl i32 %309, 2
  %add20.i = add i32 %mul19.i, 240
  %iterations21.i = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %287, i32 0, i32 1, i32 2
  %310 = ptrtoint ptr %iterations21.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %iterations21.i, align 4
  %shl22.i = shl i32 %311, 16
  %and23.i = and i32 %shl22.i, 4128768
  %call.i64.i = tail call i32 @regmap_update_bits_base(ptr noundef %307, i32 noundef %add20.i, i32 noundef 4128768, i32 noundef %and23.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %312 = ptrtoint ptr %regmap.i142 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %regmap.i142, align 4
  %314 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %index.i, align 4
  %mul27.i = shl i32 %315, 2
  %add28.i = add i32 %mul27.i, 240
  %group_len30.i = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %287, i32 0, i32 1, i32 1
  %316 = ptrtoint ptr %group_len30.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %group_len30.i, align 4
  %shl31.i = shl i32 %317, 8
  %and32.i = and i32 %shl31.i, 16128
  %call.i65.i = tail call i32 @regmap_update_bits_base(ptr noundef %313, i32 noundef %add28.i, i32 noundef 16128, i32 noundef %and32.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %318 = ptrtoint ptr %regmap.i142 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %regmap.i142, align 4
  %320 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %index.i, align 4
  %mul36.i = shl i32 %321, 2
  %add37.i = add i32 %mul36.i, 240
  %access_len39.i = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %287, i32 0, i32 1, i32 3
  %322 = ptrtoint ptr %access_len39.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %access_len39.i, align 4
  %and41.i = and i32 %323, 63
  %call.i66.i = tail call i32 @regmap_update_bits_base(ptr noundef %319, i32 noundef %add37.i, i32 noundef 63, i32 noundef %and41.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

do.end64:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.130) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %fsl_easrc_set_ctx_organziation.exit.thread, %do.end44, %do.end37, %do.end
  %retval.0 = phi i32 [ %call6, %do.end ], [ %retval.0.i.ph, %do.end37 ], [ %retval.0.i139.ph, %do.end44 ], [ -19, %do.end64 ], [ 0, %fsl_easrc_set_ctx_organziation.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_easrc_hw_free(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.fsl_asrc_pair, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %ctx_streams = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %ctx_streams to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctx_streams, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream, align 4
  %shl = shl nuw i32 1, %9
  %and = and i32 %shl, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %neg = xor i32 %shl, -1
  %and7 = and i32 %7, %neg
  %10 = ptrtoint ptr %ctx_streams to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and7, ptr %ctx_streams, align 4
  tail call void @fsl_easrc_release_context(ptr noundef nonnull %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_easrc_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge36
    i32 4, label %entry.sw.bb_crit_edge37
    i32 0, label %entry.sw.bb2_crit_edge
    i32 5, label %entry.sw.bb2_crit_edge38
    i32 3, label %entry.sw.bb2_crit_edge39
  ]

entry.sw.bb2_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb_crit_edge37:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge36:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge36, %entry.sw.bb_crit_edge37
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %regmap.i = getelementptr inbounds %struct.fsl_asrc, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %index.i = getelementptr inbounds %struct.fsl_asrc_pair, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i, align 4
  %mul.i = shl i32 %10, 2
  %add.i = add i32 %mul.i, 32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %add.i, i32 noundef 268435456, i32 noundef 268435456, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i, align 4
  %mul3.i = shl i32 %14, 2
  %add4.i = add i32 %mul3.i, 224
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %add4.i, i32 noundef 268435456, i32 noundef 268435456, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %17 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i, align 4
  %mul8.i = shl i32 %18, 2
  %add9.i = add i32 %mul8.i, 32
  %call.i2.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %add9.i, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge38, %entry.sw.bb2_crit_edge39
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i, align 4, !annotation !300
  %regmap.i13 = getelementptr inbounds %struct.fsl_asrc, ptr %20, i32 0, i32 3
  %22 = ptrtoint ptr %regmap.i13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i13, align 4
  %index.i14 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %index.i14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index.i14, align 4
  %mul.i15 = shl i32 %25, 2
  %add.i16 = add i32 %mul.i15, 32
  %call.i = call i32 @regmap_read(ptr noundef %23, i32 noundef %add.i16, ptr noundef nonnull %val.i) #10
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %tobool.not.i = icmp sgt i32 %27, -1
  br i1 %tobool.not.i, label %sw.bb2.fsl_easrc_stop_context.exit_crit_edge, label %if.then.i

sw.bb2.fsl_easrc_stop_context.exit_crit_edge:     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_easrc_stop_context.exit

if.then.i:                                        ; preds = %sw.bb2
  %28 = ptrtoint ptr %regmap.i13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i13, align 4
  %30 = ptrtoint ptr %index.i14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index.i14, align 4
  %mul3.i17 = shl i32 %31, 2
  %add4.i18 = add i32 %mul3.i17, 32
  %call.i.i19 = call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %add4.i18, i32 noundef 536870912, i32 noundef 536870912, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %channels.i = getelementptr inbounds %struct.fsl_asrc_pair, ptr %3, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then.i
  %retry.0.i = phi i32 [ 200, %if.then.i ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %32 = ptrtoint ptr %regmap.i13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i13, align 4
  %34 = ptrtoint ptr %index.i14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index.i14, align 4
  %mul8.i20 = shl i32 %35, 2
  %add9.i21 = add i32 %mul8.i20, 256
  %call10.i = call i32 @regmap_read(ptr noundef %33, i32 noundef %add9.i21, ptr noundef nonnull %val.i) #10
  %36 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.i, align 4
  %and11.i = and i32 %37, 127
  store i32 %and11.i, ptr %val.i, align 4
  %38 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %channels.i, align 4
  %mul129.i = mul i32 %39, %and11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul129.i)
  %cmp10.not.i = icmp eq i32 %mul129.i, 0
  br i1 %cmp10.not.i, label %do.body.i.for.end.i_crit_edge, label %do.body.i.for.body.i_crit_edge

do.body.i.for.body.i_crit_edge:                   ; preds = %do.body.i
  br label %for.body.i

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body.i.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body.i.for.body.i_crit_edge ]
  %40 = ptrtoint ptr %regmap.i13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i13, align 4
  %42 = ptrtoint ptr %index.i14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index.i14, align 4
  %mul15.i = shl i32 %43, 2
  %add16.i = add i32 %mul15.i, 16
  %call17.i = call i32 @regmap_read(ptr noundef %41, i32 noundef %add16.i, ptr noundef nonnull %val.i) #10
  %inc.i = add nuw i32 %i.011.i, 1
  %44 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %channels.i, align 4
  %mul12.i = mul i32 %45, %and11.i
  %cmp.i = icmp ult i32 %inc.i, %mul12.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.body.i.for.end.i_crit_edge
  %46 = ptrtoint ptr %regmap.i13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i13, align 4
  %call19.i = call i32 @regmap_read(ptr noundef %47, i32 noundef 380, ptr noundef nonnull %val.i) #10
  %48 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val.i, align 4
  %50 = ptrtoint ptr %index.i14 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index.i14, align 4
  %shl21.i = shl i32 256, %51
  %and22.i = and i32 %shl21.i, 3840
  %and23.i = and i32 %and22.i, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end.i, label %do.end.i

if.end.i:                                         ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 21474800) #10
  %dec.i = add nsw i32 %retry.0.i, -1
  %tobool36.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool36.not.i, label %if.end.i.do.end41.i_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.end.i.do.end41.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41.i

do.end.i:                                         ; preds = %for.end.i
  %53 = ptrtoint ptr %regmap.i13 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap.i13, align 4
  %call.i1.i22 = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 380, i32 noundef %and22.i, i32 noundef %and22.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0.i)
  %cmp37.i = icmp eq i32 %retry.0.i, 0
  br i1 %cmp37.i, label %do.end.i.do.end41.i_crit_edge, label %do.end.i.fsl_easrc_stop_context.exit_crit_edge

do.end.i.fsl_easrc_stop_context.exit_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_easrc_stop_context.exit

do.end.i.do.end41.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41.i

do.end41.i:                                       ; preds = %do.end.i.do.end41.i_crit_edge, %if.end.i.do.end41.i_crit_edge
  %pdev.i = getelementptr inbounds %struct.fsl_asrc, ptr %20, i32 0, i32 2
  %55 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %56, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.157) #13
  br label %fsl_easrc_stop_context.exit

fsl_easrc_stop_context.exit:                      ; preds = %do.end41.i, %do.end.i.fsl_easrc_stop_context.exit_crit_edge, %sw.bb2.fsl_easrc_stop_context.exit_crit_edge
  %57 = ptrtoint ptr %regmap.i13 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i13, align 4
  %59 = ptrtoint ptr %index.i14 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %index.i14, align 4
  %mul46.i = shl i32 %60, 2
  %add47.i = add i32 %mul46.i, 32
  %call.i2.i23 = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef %add47.i, i32 noundef -1610612736, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %61 = ptrtoint ptr %regmap.i13 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap.i13, align 4
  %63 = ptrtoint ptr %index.i14 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %index.i14, align 4
  %mul51.i = shl i32 %64, 2
  %add52.i = add i32 %mul51.i, 32
  %call.i3.i = call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef %add52.i, i32 noundef 268435456, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %65 = ptrtoint ptr %regmap.i13 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap.i13, align 4
  %67 = ptrtoint ptr %index.i14 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %index.i14, align 4
  %mul56.i = shl i32 %68, 2
  %add57.i = add i32 %mul56.i, 224
  %call.i4.i = call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef %add57.i, i32 noundef 268435456, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %cleanup

cleanup:                                          ; preds = %fsl_easrc_stop_context.exit, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %fsl_easrc_stop_context.exit ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_easrc_process_format(ptr nocapture noundef readonly %ctx, ptr noundef %fmt, i32 noundef %raw_fmt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %private = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %fmt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @snd_pcm_format_linear(i32 noundef %raw_fmt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %fmt, align 4
  %bf.shl = select i1 %tobool1.not, i16 2048, i16 0
  %bf.clear = and i16 %bf.load, -4065
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %fmt, align 4
  %call8 = tail call i32 @snd_pcm_format_width(i32 noundef %raw_fmt) #10
  %5 = add i32 %call8, -16
  %6 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 30)
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %6, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 2, label %sw.bb17
    i32 4, label %sw.bb22
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load9 = load i16, ptr %fmt, align 4
  %bf.clear10 = and i16 %bf.load9, 16383
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load13 = load i16, ptr %fmt, align 4
  %bf.clear14 = and i16 %bf.load13, 16383
  %bf.set15 = or i16 %bf.clear14, 16384
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load18 = load i16, ptr %fmt, align 4
  %bf.clear19 = and i16 %bf.load18, 16383
  %bf.set20 = or i16 %bf.clear19, -32768
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load23 = load i16, ptr %fmt, align 4
  %bf.set25 = or i16 %bf.load23, -16384
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb17, %sw.bb12, %sw.bb
  %bf.set25.sink = phi i16 [ %bf.set25, %sw.bb22 ], [ %bf.set20, %sw.bb17 ], [ %bf.set15, %sw.bb12 ], [ %bf.clear10, %sw.bb ]
  %.sink = phi i32 [ 31, %sw.bb22 ], [ 23, %sw.bb17 ], [ 19, %sw.bb12 ], [ 15, %sw.bb ]
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %bf.set25.sink, ptr %fmt, align 4
  %addexp26 = getelementptr inbounds %struct.fsl_easrc_data_fmt, ptr %fmt, i32 0, i32 1
  %13 = ptrtoint ptr %addexp26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %addexp26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %raw_fmt)
  %cond90 = icmp eq i32 %raw_fmt, 18
  br i1 %cond90, label %sw.bb27, label %sw.epilog.sw.epilog69_crit_edge

sw.epilog.sw.epilog69_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog69

sw.bb27:                                          ; preds = %sw.epilog
  %index = getelementptr inbounds %struct.fsl_asrc_pair, ptr %ctx, i32 0, i32 2
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.fsl_easrc_priv, ptr %3, i32 0, i32 7, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %18 = trunc i32 %17 to i16
  %19 = ptrtoint ptr %fmt to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load28 = load i16, ptr %fmt, align 4
  %bf.shl30 = shl i16 %18, 14
  %bf.clear31 = and i16 %bf.load28, 13311
  %bf.set32 = or i16 %bf.clear31, %bf.shl30
  %bf.set36 = or i16 %bf.set32, 1024
  store i16 %bf.set36, ptr %fmt, align 4
  %bf.lshr = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.lshr)
  %.not = icmp eq i32 %bf.lshr, 3
  br i1 %.not, label %sw.bb27.sw.epilog69_crit_edge, label %switch.lookup

sw.bb27.sw.epilog69_crit_edge:                    ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog69

switch.lookup:                                    ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #12
  %switch.idx.cast = trunc i32 %bf.lshr to i16
  %switch.idx.mult = mul nsw i16 %switch.idx.cast, -128
  %switch.offset = add nsw i16 %switch.idx.mult, 384
  %switch.idx.mult125 = shl nuw nsw i32 %bf.lshr, 2
  %switch.offset126 = add nuw nsw i32 %switch.idx.mult125, 15
  %bf.clear43 = and i16 %bf.set36, -3041
  %bf.set44 = or i16 %bf.clear43, %switch.offset
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %bf.set44, ptr %fmt, align 4
  %addexp45 = getelementptr inbounds %struct.fsl_easrc_data_fmt, ptr %fmt, i32 0, i32 1
  %21 = ptrtoint ptr %addexp45 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %switch.offset126, ptr %addexp45, align 4
  br label %sw.epilog69

sw.epilog69:                                      ; preds = %switch.lookup, %sw.bb27.sw.epilog69_crit_edge, %sw.epilog.sw.epilog69_crit_edge
  %call70 = tail call i32 @snd_pcm_format_big_endian(i32 noundef %raw_fmt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %sw.epilog69.cleanup_crit_edge, label %if.end73

sw.epilog69.cleanup_crit_edge:                    ; preds = %sw.epilog69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end73:                                         ; preds = %sw.epilog69
  call void @__sanitizer_cov_trace_pc() #12
  %22 = trunc i32 %call70 to i16
  %23 = ptrtoint ptr %fmt to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load74 = load i16, ptr %fmt, align 4
  %bf.value75 = shl i16 %22, 13
  %bf.shl76 = and i16 %bf.value75, 8192
  %bf.clear77 = and i16 %bf.load74, -8193
  %bf.set78 = or i16 %bf.clear77, %bf.shl76
  store i16 %bf.set78, ptr %fmt, align 4
  %call80 = tail call i32 @snd_pcm_format_unsigned(i32 noundef %raw_fmt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp sgt i32 %call80, 0
  %24 = ptrtoint ptr %fmt to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load82 = load i16, ptr %fmt, align 4
  %bf.shl84 = select i1 %cmp81, i16 4096, i16 0
  %bf.clear85 = and i16 %bf.load82, -4097
  %bf.set86 = or i16 %bf.clear85, %bf.shl84
  store i16 %bf.set86, ptr %fmt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %sw.epilog69.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end73 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call70, %sw.epilog69.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_linear(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_big_endian(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_unsigned(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_easrc_set_rs_ratio(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %private = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %private1 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %ctx, i32 0, i32 9
  %4 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private1, align 4
  %norm_rate2 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %5, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %norm_rate2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %norm_rate2, align 4
  %rs_num_taps = getelementptr inbounds %struct.fsl_easrc_priv, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %rs_num_taps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rs_num_taps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %norm_rate = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %5, i32 0, i32 7
  %11 = ptrtoint ptr %norm_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %norm_rate, align 8
  %switch.offset = sub i32 39, %9
  %conv = zext i32 %12 to i64
  %sh_prom = zext i32 %switch.offset to i64
  %shl = shl i64 %conv, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl)
  %cmp172 = icmp eq i64 %shl, 0
  br i1 %cmp172, label %switch.lookup.if.end191_crit_edge, label %if.else182, !prof !304

switch.lookup.if.end191_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191

if.else182:                                       ; preds = %switch.lookup
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %shl) #15, !srcloc !305
  %asmresult1.i = extractvalue { i64, i64 } %13, 1
  %extract370 = lshr i64 %asmresult1.i, 32
  %extract.t371 = trunc i64 %extract370 to i32
  %extract.t367 = trunc i64 %asmresult1.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %extract.t367)
  %tobool189.not = icmp ult i32 %extract.t367, 4096
  br i1 %tobool189.not, label %if.else182.if.end191_crit_edge, label %do.end

if.else182.if.end191_crit_edge:                   ; preds = %if.else182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191

do.end:                                           ; preds = %if.else182
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.134) #13
  br label %cleanup

if.end191:                                        ; preds = %if.else182.if.end191_crit_edge, %switch.lookup.if.end191_crit_edge
  %val.sroa.0.0365 = phi i32 [ %extract.t371, %if.else182.if.end191_crit_edge ], [ 0, %switch.lookup.if.end191_crit_edge ]
  %val.sroa.13.0364 = phi i32 [ %extract.t367, %if.else182.if.end191_crit_edge ], [ 0, %switch.lookup.if.end191_crit_edge ]
  %regmap = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %index = getelementptr inbounds %struct.fsl_asrc_pair, ptr %ctx, i32 0, i32 2
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %mul192 = shl i32 %19, 3
  %add193 = add i32 %mul192, 272
  %call196 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef %add193, i32 noundef %val.sroa.0.0365) #10
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index, align 4
  %mul199 = shl i32 %23, 3
  %add200 = add i32 %mul199, 276
  %call204 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %add200, i32 noundef %val.sroa.13.0364) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end191, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end191 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_easrc_prefilter_config(ptr noundef %easrc, i32 noundef %ctx_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %easrc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.fsl_asrc, ptr %easrc, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ctx_id)
  %cmp = icmp ugt i32 %ctx_id, 3
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.132, i32 noundef %ctx_id) #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %private = getelementptr inbounds %struct.fsl_asrc, ptr %easrc, i32 0, i32 19
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %arrayidx = getelementptr %struct.fsl_asrc, ptr %easrc, i32 0, i32 9, i32 %ctx_id
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %private4 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %private4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private4, align 4
  %sample_rate = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sample_rate, align 8
  %sample_rate5 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %sample_rate5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sample_rate5, align 4
  %sample_format = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %sample_format to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sample_format, align 4
  %sample_format8 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 1, i32 6
  %14 = ptrtoint ptr %sample_format8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sample_format8, align 4
  %rs_num_taps = getelementptr inbounds %struct.fsl_easrc_priv, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %rs_num_taps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rs_num_taps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %switch.lookup, label %if.end3.bits_taps_to_val.exit_crit_edge

if.end3.bits_taps_to_val.exit_crit_edge:          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %bits_taps_to_val.exit

switch.lookup:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.fsl_easrc_prefilter_config, i32 0, i32 %17
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bits_taps_to_val.exit

bits_taps_to_val.exit:                            ; preds = %switch.lookup, %if.end3.bits_taps_to_val.exit_crit_edge
  %retval.0.i366 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end3.bits_taps_to_val.exit_crit_edge ]
  %in_filled_sample = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 11
  %20 = ptrtoint ptr %in_filled_sample to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i366, ptr %in_filled_sample, align 8
  %mul = mul i32 %retval.0.i366, %11
  %div10 = udiv i32 %mul, %9
  %out_missed_sample = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 12
  %21 = ptrtoint ptr %out_missed_sample to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div10, ptr %out_missed_sample, align 4
  %st1_num_taps = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 2
  %22 = ptrtoint ptr %st1_num_taps to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %st1_num_taps, align 8
  %st2_num_taps = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 3
  %23 = ptrtoint ptr %st2_num_taps to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %st2_num_taps, align 4
  %regmap = getelementptr inbounds %struct.fsl_asrc, ptr %easrc, i32 0, i32 3
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %mul11 = shl nuw nsw i32 %ctx_id, 2
  %add = add nuw nsw i32 %mul11, 48
  %call12 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef %add, i32 noundef 0) #10
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %add15 = add nuw nsw i32 %mul11, 64
  %call16 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef %add15, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp17.not = icmp ult i32 %11, %9
  br i1 %cmp17.not, label %if.else39, label %if.then18

if.then18:                                        ; preds = %bits_taps_to_val.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp19 = icmp eq i32 %11, %9
  br i1 %cmp19, label %if.then20, label %if.then18.if.end25_crit_edge

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %add, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.then18.if.end25_crit_edge
  %30 = ptrtoint ptr %st1_num_taps to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %st1_num_taps, align 8
  %const_coeff = getelementptr inbounds %struct.fsl_easrc_priv, ptr %3, i32 0, i32 9
  %st1_coeff = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 9
  %31 = ptrtoint ptr %st1_coeff to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %const_coeff, ptr %st1_coeff, align 8
  %st1_num_exp = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 4
  %32 = ptrtoint ptr %st1_num_exp to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %st1_num_exp, align 8
  %33 = ptrtoint ptr %st2_num_taps to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %st2_num_taps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %13)
  %cmp28 = icmp ne i32 %13, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %15)
  %cmp29.not = icmp eq i32 %15, 14
  %or.cond = select i1 %cmp28, i1 true, i1 %cmp29.not
  br i1 %or.cond, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %st1_addexp = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 13
  %34 = ptrtoint ptr %st1_addexp to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 31, ptr %st1_addexp, align 8
  br label %if.end113

if.else:                                          ; preds = %if.end25
  %or.cond363 = select i1 %cmp28, i1 %cmp29.not, i1 false
  br i1 %or.cond363, label %if.then34, label %if.else.if.end113_crit_edge

if.else.if.end113_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %addexp = getelementptr inbounds %struct.fsl_easrc_data_fmt, ptr %7, i32 0, i32 1
  %35 = ptrtoint ptr %addexp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addexp, align 4
  %st1_addexp36 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 13
  %37 = ptrtoint ptr %st1_addexp36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %st1_addexp36, align 8
  %sub = sub i32 %38, %36
  store i32 %sub, ptr %st1_addexp36, align 8
  br label %if.end113

if.else39:                                        ; preds = %bits_taps_to_val.exit
  %norm_rate = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %7, i32 0, i32 7
  %39 = ptrtoint ptr %norm_rate to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %norm_rate, align 8
  %norm_rate42 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 1, i32 7
  %41 = ptrtoint ptr %norm_rate42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %norm_rate42, align 4
  %firmware_hdr = getelementptr inbounds %struct.fsl_easrc_priv, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %firmware_hdr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %firmware_hdr, align 8
  %prefil43 = getelementptr inbounds %struct.fsl_easrc_priv, ptr %3, i32 0, i32 3
  %45 = ptrtoint ptr %prefil43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prefil43, align 8
  %prefil_scen = getelementptr inbounds %struct.asrc_firmware_hdr, ptr %44, i32 0, i32 2
  %47 = ptrtoint ptr %prefil_scen to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %prefil_scen, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp44379.not = icmp eq i32 %48, 0
  br i1 %cmp44379.not, label %if.else39.do.end68_crit_edge, label %if.else39.for.body_crit_edge

if.else39.for.body_crit_edge:                     ; preds = %if.else39
  br label %for.body

if.else39.do.end68_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else39.for.body_crit_edge
  %i.0380 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.else39.for.body_crit_edge ]
  %insr = getelementptr %struct.prefil_params, ptr %46, i32 %i.0380, i32 1
  %49 = ptrtoint ptr %insr to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %insr, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %50)
  %cmp46 = icmp eq i32 %40, %50
  br i1 %cmp46, label %land.lhs.true47, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true47:                                  ; preds = %for.body
  %outsr = getelementptr %struct.prefil_params, ptr %46, i32 %i.0380, i32 2
  %51 = ptrtoint ptr %outsr to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %outsr, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %52)
  %cmp49 = icmp eq i32 %42, %52
  br i1 %cmp49, label %if.then50, label %land.lhs.true47.for.inc_crit_edge

land.lhs.true47.for.inc_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then50:                                        ; preds = %land.lhs.true47
  %arrayidx45.le = getelementptr %struct.prefil_params, ptr %46, i32 %i.0380
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_easrc_prefilter_config.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_easrc_prefilter_config, %if.then57)) #10
          to label %for.end [label %if.then57], !srcloc !301

if.then57:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %insr to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %insr, align 1
  %55 = ptrtoint ptr %outsr to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %outsr, align 1
  %st1_taps = getelementptr %struct.prefil_params, ptr %46, i32 %i.0380, i32 3
  %57 = ptrtoint ptr %st1_taps to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %st1_taps, align 1
  %st2_taps = getelementptr %struct.prefil_params, ptr %46, i32 %i.0380, i32 4
  %59 = ptrtoint ptr %st2_taps to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %st2_taps, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_easrc_prefilter_config.__UNIQUE_ID_ddebug244, ptr noundef %dev1, ptr noundef nonnull @.str.137, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60) #10
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true47.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0380, 1
  %exitcond.not = icmp eq i32 %inc, %48
  br i1 %exitcond.not, label %for.inc.do.end68_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.end68_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

for.end:                                          ; preds = %if.then57, %if.then50
  %tobool64.not = icmp eq ptr %arrayidx45.le, null
  br i1 %tobool64.not, label %for.end.do.end68_crit_edge, label %if.end69

for.end.do.end68_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

do.end68:                                         ; preds = %for.end.do.end68_crit_edge, %for.inc.do.end68_crit_edge, %if.else39.do.end68_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.139, i32 noundef %9, i32 noundef %40, i32 noundef %11, i32 noundef %42) #13
  br label %cleanup

if.end69:                                         ; preds = %for.end
  %st1_taps70 = getelementptr %struct.prefil_params, ptr %46, i32 %i.0380, i32 3
  %61 = ptrtoint ptr %st1_taps70 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %st1_taps70, align 1
  %63 = ptrtoint ptr %st1_num_taps to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %st1_num_taps, align 8
  %coeff = getelementptr %struct.prefil_params, ptr %46, i32 %i.0380, i32 6
  %st1_coeff72 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 9
  %64 = ptrtoint ptr %st1_coeff72 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %coeff, ptr %st1_coeff72, align 8
  %st1_exp = getelementptr %struct.prefil_params, ptr %46, i32 %i.0380, i32 5
  %65 = ptrtoint ptr %st1_exp to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %st1_exp, align 1
  %st1_num_exp73 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 4
  %67 = ptrtoint ptr %st1_num_exp73 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %st1_num_exp73, align 8
  %68 = load i32, ptr %st1_taps70, align 1
  %add75 = add i32 %68, 1
  %div76360 = lshr i32 %add75, 1
  %st2_taps77 = getelementptr %struct.prefil_params, ptr %46, i32 %i.0380, i32 4
  %69 = ptrtoint ptr %st2_taps77 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %st2_taps77, align 1
  %71 = ptrtoint ptr %st2_num_taps to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %st2_num_taps, align 4
  %add.ptr = getelementptr i64, ptr %coeff, i32 %div76360
  %st2_coeff = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 10
  %72 = ptrtoint ptr %st2_coeff to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr, ptr %st2_coeff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %13)
  %cmp81 = icmp ne i32 %13, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %15)
  %cmp83.not = icmp eq i32 %15, 14
  %or.cond364 = select i1 %cmp81, i1 true, i1 %cmp83.not
  br i1 %or.cond364, label %if.else91, label %if.then84

if.then84:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp86.not = icmp eq i32 %70, 0
  br i1 %cmp86.not, label %if.else88, label %if.then87

if.then87:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  %st2_addexp = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 14
  %73 = ptrtoint ptr %st2_addexp to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 31, ptr %st2_addexp, align 4
  br label %if.end113

if.else88:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #12
  %st1_addexp89 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 13
  %74 = ptrtoint ptr %st1_addexp89 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 31, ptr %st1_addexp89, align 8
  br label %if.end113

if.else91:                                        ; preds = %if.end69
  %or.cond365 = select i1 %cmp81, i1 %cmp83.not, i1 false
  br i1 %or.cond365, label %if.then95, label %if.else91.if.end113_crit_edge

if.else91.if.end113_crit_edge:                    ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then95:                                        ; preds = %if.else91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp97.not = icmp eq i32 %70, 0
  %addexp107 = getelementptr inbounds %struct.fsl_easrc_data_fmt, ptr %7, i32 0, i32 1
  %75 = ptrtoint ptr %addexp107 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %addexp107, align 4
  br i1 %cmp97.not, label %if.else104, label %if.then98

if.then98:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  %st2_addexp102 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 14
  %77 = ptrtoint ptr %st2_addexp102 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %st2_addexp102, align 4
  %sub103 = sub i32 %78, %76
  store i32 %sub103, ptr %st2_addexp102, align 4
  br label %if.end113

if.else104:                                       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  %st1_addexp108 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 13
  %79 = ptrtoint ptr %st1_addexp108 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %st1_addexp108, align 8
  %sub109 = sub i32 %80, %76
  store i32 %sub109, ptr %st1_addexp108, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.else104, %if.then98, %if.else91.if.end113_crit_edge, %if.else88, %if.then87, %if.then34, %if.else.if.end113_crit_edge, %if.then30
  %81 = ptrtoint ptr %st1_num_taps to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %st1_num_taps, align 8
  %div115361 = lshr i32 %82, 1
  %st1_num_exp116 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 4
  %83 = ptrtoint ptr %st1_num_exp116 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %st1_num_exp116, align 8
  %mul117 = mul i32 %div115361, %84
  %85 = ptrtoint ptr %st2_num_taps to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %st2_num_taps, align 4
  %div119362 = lshr i32 %86, 1
  %add120 = add i32 %div119362, %mul117
  %87 = ptrtoint ptr %in_filled_sample to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %in_filled_sample, align 8
  %add122 = add i32 %add120, %88
  store i32 %add122, ptr %in_filled_sample, align 8
  %mul124 = mul i32 %add122, %11
  %mul124.frozen = freeze i32 %mul124
  %.frozen = freeze i32 %9
  %div125 = udiv i32 %mul124.frozen, %.frozen
  %89 = mul i32 %div125, %.frozen
  %rem.decomposed = sub i32 %mul124.frozen, %89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp129.not = icmp ne i32 %rem.decomposed, 0
  %add132 = zext i1 %cmp129.not to i32
  %spec.select = add i32 %div125, %add132
  %90 = ptrtoint ptr %out_missed_sample to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %spec.select, ptr %out_missed_sample, align 4
  %91 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap, align 4
  %add136 = add i32 %mul11, 32
  %call.i367 = tail call i32 @regmap_update_bits_base(ptr noundef %92, i32 noundef %add136, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %93 = ptrtoint ptr %st1_num_taps to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %st1_num_taps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %94)
  %cmp139 = icmp ugt i32 %94, 384
  br i1 %cmp139, label %do.end143, label %if.end145

do.end143:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.142, i32 noundef %94, i32 noundef 384) #13
  br label %ctx_error

if.end145:                                        ; preds = %if.end113
  %95 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap, align 4
  %sub150 = add nuw nsw i32 %94, 511
  %and = and i32 %sub150, 511
  %call.i368 = tail call i32 @regmap_update_bits_base(ptr noundef %96, i32 noundef %add15, i32 noundef 511, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %97 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regmap, align 4
  %call.i369 = tail call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef %add, i32 noundef 33554432, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %st1_coeff156 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 9
  %99 = ptrtoint ptr %st1_coeff156 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %st1_coeff156, align 8
  %101 = ptrtoint ptr %st1_num_taps to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %st1_num_taps, align 8
  %st1_addexp158 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 13
  %103 = ptrtoint ptr %st1_addexp158 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %st1_addexp158, align 8
  %call159 = tail call fastcc i32 @fsl_easrc_write_pf_coeff_mem(ptr noundef nonnull %easrc, i32 noundef %ctx_id, ptr noundef %100, i32 noundef %102, i32 noundef %104)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end162, label %if.end145.ctx_error_crit_edge

if.end145.ctx_error_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  br label %ctx_error

if.end162:                                        ; preds = %if.end145
  %105 = ptrtoint ptr %st2_num_taps to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %st2_num_taps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp164.not = icmp eq i32 %106, 0
  br i1 %cmp164.not, label %if.end162.cleanup_crit_edge, label %if.then165

if.end162.cleanup_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then165:                                       ; preds = %if.end162
  %107 = ptrtoint ptr %st1_num_taps to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %st1_num_taps, align 8
  %add168 = add i32 %108, %106
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %add168)
  %cmp169 = icmp ugt i32 %add168, 384
  br i1 %cmp169, label %do.end173, label %if.end175

do.end173:                                        ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.145, i32 noundef %106, i32 noundef 384) #13
  br label %ctx_error

if.end175:                                        ; preds = %if.then165
  %109 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap, align 4
  %call.i370 = tail call i32 @regmap_update_bits_base(ptr noundef %110, i32 noundef %add, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %111 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap, align 4
  %call.i371 = tail call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef %add, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %113 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regmap, align 4
  %115 = ptrtoint ptr %st1_num_exp116 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %st1_num_exp116, align 8
  %sub188 = shl i32 %116, 16
  %shl189 = add i32 %sub188, 16711680
  %and190 = and i32 %shl189, 16711680
  %call.i372 = tail call i32 @regmap_update_bits_base(ptr noundef %114, i32 noundef %add, i32 noundef 16711680, i32 noundef %and190, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %117 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regmap, align 4
  %119 = ptrtoint ptr %st2_num_taps to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %st2_num_taps, align 4
  %sub196 = shl i32 %120, 16
  %shl197 = add i32 %sub196, 33488896
  %and198 = and i32 %shl197, 33488896
  %call.i373 = tail call i32 @regmap_update_bits_base(ptr noundef %118, i32 noundef %add15, i32 noundef 33488896, i32 noundef %and198, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %121 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regmap, align 4
  %call.i374 = tail call i32 @regmap_update_bits_base(ptr noundef %122, i32 noundef %add, i32 noundef 33554432, i32 noundef 33554432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %st2_coeff204 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 10
  %123 = ptrtoint ptr %st2_coeff204 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %st2_coeff204, align 4
  %125 = ptrtoint ptr %st2_num_taps to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %st2_num_taps, align 4
  %st2_addexp206 = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %7, i32 0, i32 14
  %127 = ptrtoint ptr %st2_addexp206 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %st2_addexp206, align 4
  %call207 = tail call fastcc i32 @fsl_easrc_write_pf_coeff_mem(ptr noundef nonnull %easrc, i32 noundef %ctx_id, ptr noundef %124, i32 noundef %126, i32 noundef %128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %if.end175.cleanup_crit_edge, label %if.end175.ctx_error_crit_edge

if.end175.ctx_error_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #12
  br label %ctx_error

if.end175.cleanup_crit_edge:                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ctx_error:                                        ; preds = %if.end175.ctx_error_crit_edge, %do.end173, %if.end145.ctx_error_crit_edge, %do.end143
  %ret.0 = phi i32 [ -22, %do.end143 ], [ %call159, %if.end145.ctx_error_crit_edge ], [ -22, %do.end173 ], [ %call207, %if.end175.ctx_error_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %ctx_error, %if.end175.cleanup_crit_edge, %if.end162.cleanup_crit_edge, %do.end68, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %ctx_error ], [ -22, %do.end68 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end175.cleanup_crit_edge ], [ 0, %if.end162.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_easrc_write_pf_coeff_mem(ptr noundef %easrc, i32 noundef %ctx_id, ptr noundef readonly %coef, i32 noundef %n_taps, i32 noundef %shift) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.fsl_asrc, ptr %easrc, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_taps)
  %tobool.not = icmp eq i32 %n_taps, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %coef, null
  br i1 %tobool2.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.147) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call = tail call fastcc i32 @fsl_easrc_coeff_mem_ptr_reset(ptr noundef %easrc, i32 noundef %ctx_id, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %for.cond.preheader, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end4
  %add = add i32 %n_taps, 1
  %div = sdiv i32 %add, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp48 = icmp sgt i32 %add, 1
  br i1 %cmp48, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv.i = sext i32 %shift to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shift)
  %cmp3.i = icmp sgt i32 %shift, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shift)
  %cmp8.i = icmp slt i32 %shift, 0
  %regmap = getelementptr inbounds %struct.fsl_asrc, ptr %easrc, i32 0, i32 3
  %mul = shl i32 %ctx_id, 2
  %add12 = add i32 %mul, 352
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end11.for.body_crit_edge ]
  %arrayidx = getelementptr i64, ptr %coef, i32 %i.049
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %and.i = lshr i64 %3, 52
  %trunc.i = trunc i64 %and.i to i11
  %extract.t53 = trunc i64 %3 to i32
  %extract55 = lshr i64 %3, 32
  %extract.t56 = trunc i64 %extract55 to i32
  %4 = zext i11 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.171)
  switch i11 %trunc.i, label %if.end.i [
    i11 0, label %for.body.if.end11_crit_edge
    i11 -1, label %for.body.if.end11_crit_edge57
  ]

for.body.if.end11_crit_edge57:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end.i:                                         ; preds = %for.body
  %shr.i = and i64 %and.i, 2047
  %add.i = add nsw i64 %shr.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 2046, i64 %add.i)
  %cmp5.i = icmp sgt i64 %add.i, 2046
  %or.cond.i = select i1 %cmp3.i, i1 %cmp5.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %add.i)
  %cmp11.i = icmp slt i64 %add.i, 1
  %or.cond30.i = select i1 %cmp8.i, i1 %cmp11.i, i1 false
  %or.cond = select i1 %or.cond.i, i1 true, i1 %or.cond30.i
  br i1 %or.cond, label %fsl_easrc_normalize_filter.exit, label %if.end14.i

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %and15.i = and i64 %3, -9218868437227405313
  %shl.i = shl i64 %add.i, 52
  %add16.i = add i64 %shl.i, %and15.i
  %extract.t = trunc i64 %add16.i to i32
  %extract = lshr i64 %add16.i, 32
  %extract.t54 = trunc i64 %extract to i32
  br label %if.end11

fsl_easrc_normalize_filter.exit:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %dev1.i.le = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.le, ptr noundef nonnull @.str.153) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end14.i, %for.body.if.end11_crit_edge, %for.body.if.end11_crit_edge57
  %.sink52.off0 = phi i32 [ %extract.t, %if.end14.i ], [ %extract.t53, %for.body.if.end11_crit_edge ], [ %extract.t53, %for.body.if.end11_crit_edge57 ]
  %.sink52.off32 = phi i32 [ %extract.t54, %if.end14.i ], [ %extract.t56, %for.body.if.end11_crit_edge ], [ %extract.t56, %for.body.if.end11_crit_edge57 ]
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %add12, i32 noundef %.sink52.off32) #10
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call20 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %add12, i32 noundef %.sink52.off0) #10
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %if.end11.cleanup_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %fsl_easrc_normalize_filter.exit, %for.cond.preheader.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end4.cleanup_crit_edge ], [ -22, %fsl_easrc_normalize_filter.exit ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_easrc_coeff_mem_ptr_reset(ptr noundef readonly %easrc, i32 noundef %ctx_id, i32 noundef %mem_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %easrc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.fsl_asrc, ptr %easrc, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %2 = zext i32 %mem_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %mem_type, label %do.end7 [
    i32 1, label %sw.bb
    i32 0, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ctx_id)
  %cmp = icmp ugt i32 %ctx_id, 3
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.132, i32 noundef %ctx_id) #13
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %mul = shl nuw nsw i32 %ctx_id, 2
  %add = add nuw nsw i32 %mul, 48
  br label %sw.epilog

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.151) #13
  br label %cleanup

sw.epilog:                                        ; preds = %if.end3, %if.end.sw.epilog_crit_edge
  %reg.0 = phi i32 [ %add, %if.end3 ], [ 372, %if.end.sw.epilog_crit_edge ]
  %val.0 = phi i32 [ 16777216, %if.end3 ], [ 1, %if.end.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.fsl_asrc, ptr %easrc, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %reg.0, i32 noundef %val.0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %reg.0, i32 noundef %val.0, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %reg.0, i32 noundef %val.0, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end7, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end7 ], [ 0, %sw.epilog ], [ -22, %do.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_easrc_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #10
  %mem_clk = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %mem_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #10
  tail call void @clk_unprepare(ptr noundef %7) #10
  %lock = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %firmware_loaded = getelementptr inbounds %struct.fsl_easrc_priv, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %firmware_loaded to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %firmware_loaded, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_easrc_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %mem_clk = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %mem_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %regmap = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext false) #10
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %9) #10
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regcache_sync(ptr noundef %11) #10
  %lock = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 8
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %firmware_loaded = getelementptr inbounds %struct.fsl_easrc_priv, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %firmware_loaded to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %firmware_loaded, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %14 = ptrtoint ptr %firmware_loaded to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %firmware_loaded, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #10
  %tobool.not.i106 = icmp eq ptr %1, null
  br i1 %tobool.not.i106, label %if.end13.disable_mem_clk.sink.split_crit_edge, label %if.end.i108

if.end13.disable_mem_clk.sink.split_crit_edge:    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_mem_clk.sink.split

if.end.i108:                                      ; preds = %if.end13
  %15 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private, align 4
  %fw.i = getelementptr inbounds %struct.fsl_easrc_priv, ptr %16, i32 0, i32 4
  %fw_name.i = getelementptr inbounds %struct.fsl_easrc_priv, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %fw_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw_name.i, align 8
  %pdev.i = getelementptr inbounds %struct.fsl_asrc, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %call.i107 = tail call i32 @request_firmware(ptr noundef %fw.i, ptr noundef %18, ptr noundef %dev.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool1.not.i = icmp eq i32 %call.i107, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i108.disable_mem_clk.sink.split_crit_edge

if.end.i108.disable_mem_clk.sink.split_crit_edge: ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_mem_clk.sink.split

if.end3.i:                                        ; preds = %if.end.i108
  %21 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw.i, align 4
  %data5.i = getelementptr inbounds %struct.firmware, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %data5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data5.i, align 4
  %firmware_hdr.i = getelementptr inbounds %struct.fsl_easrc_priv, ptr %16, i32 0, i32 1
  %25 = ptrtoint ptr %firmware_hdr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %firmware_hdr.i, align 8
  %prefil_scen.i = getelementptr inbounds %struct.asrc_firmware_hdr, ptr %24, i32 0, i32 2
  %26 = ptrtoint ptr %prefil_scen.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %prefil_scen.i, align 1
  %interp_scen.i = getelementptr inbounds %struct.asrc_firmware_hdr, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %interp_scen.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %interp_scen.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool8.not.i = icmp eq i32 %29, 0
  br i1 %tobool8.not.i, label %if.end3.i.if.end10.i_crit_edge, label %if.then9.i

if.end3.i.if.end10.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %24, i32 16
  %interp.i = getelementptr inbounds %struct.fsl_easrc_priv, ptr %16, i32 0, i32 2
  %30 = ptrtoint ptr %interp.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i, ptr %interp.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end3.i.if.end10.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool11.not.i = icmp eq i32 %27, 0
  br i1 %tobool11.not.i, label %if.end10.i.if.end22_crit_edge, label %if.then12.i

if.end10.i.if.end22_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i = mul i32 %29, 65556
  %add.i = add i32 %mul.i, 16
  %add.ptr13.i = getelementptr i8, ptr %24, i32 %add.i
  %prefil.i = getelementptr inbounds %struct.fsl_easrc_priv, ptr %16, i32 0, i32 3
  %31 = ptrtoint ptr %prefil.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr13.i, ptr %prefil.i, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then12.i, %if.end10.i.if.end22_crit_edge
  %call23 = tail call fastcc i32 @fsl_easrc_resampler_config(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.for.body_crit_edge, label %if.end22.disable_mem_clk.sink.split_crit_edge

if.end22.disable_mem_clk.sink.split_crit_edge:    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_mem_clk.sink.split

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end22.for.body_crit_edge
  %i.0114 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end22.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fsl_asrc, ptr %1, i32 0, i32 9, i32 %i.0114
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %tobool32.not = icmp eq ptr %33, null
  br i1 %tobool32.not, label %for.body.for.inc_crit_edge, label %if.end34

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end34:                                         ; preds = %for.body
  %private35 = getelementptr inbounds %struct.fsl_asrc_pair, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %private35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private35, align 4
  %call36 = tail call fastcc i32 @fsl_easrc_set_rs_ratio(ptr noundef nonnull %33)
  %in_filled_sample = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %in_filled_sample to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %in_filled_sample, align 8
  %sample_rate = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %35, i32 0, i32 1, i32 5
  %38 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sample_rate, align 4
  %mul = mul i32 %39, %37
  %sample_rate37 = getelementptr inbounds %struct.fsl_easrc_io_params, ptr %35, i32 0, i32 5
  %40 = ptrtoint ptr %sample_rate37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sample_rate37, align 8
  %mul.frozen = freeze i32 %mul
  %.frozen = freeze i32 %41
  %div = udiv i32 %mul.frozen, %.frozen
  %out_missed_sample = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %35, i32 0, i32 12
  %42 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %mul.frozen, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp44.not = icmp ne i32 %rem.decomposed, 0
  %add = zext i1 %cmp44.not to i32
  %spec.select = add i32 %div, %add
  %43 = ptrtoint ptr %out_missed_sample to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %spec.select, ptr %out_missed_sample, align 4
  %st1_coeff = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %35, i32 0, i32 9
  %44 = ptrtoint ptr %st1_coeff to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %st1_coeff, align 8
  %st1_num_taps = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %35, i32 0, i32 2
  %46 = ptrtoint ptr %st1_num_taps to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %st1_num_taps, align 8
  %st1_addexp = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %35, i32 0, i32 13
  %48 = ptrtoint ptr %st1_addexp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %st1_addexp, align 8
  %call49 = tail call fastcc i32 @fsl_easrc_write_pf_coeff_mem(ptr noundef nonnull %1, i32 noundef %i.0114, ptr noundef %45, i32 noundef %47, i32 noundef %49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end34.disable_mem_clk_crit_edge

if.end34.disable_mem_clk_crit_edge:               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_mem_clk

if.end52:                                         ; preds = %if.end34
  %st2_coeff = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %35, i32 0, i32 10
  %50 = ptrtoint ptr %st2_coeff to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %st2_coeff, align 4
  %st2_num_taps = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %35, i32 0, i32 3
  %52 = ptrtoint ptr %st2_num_taps to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %st2_num_taps, align 4
  %st2_addexp = getelementptr inbounds %struct.fsl_easrc_ctx_priv, ptr %35, i32 0, i32 14
  %54 = ptrtoint ptr %st2_addexp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %st2_addexp, align 4
  %call53 = tail call fastcc i32 @fsl_easrc_write_pf_coeff_mem(ptr noundef nonnull %1, i32 noundef %i.0114, ptr noundef %51, i32 noundef %53, i32 noundef %55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end52.for.inc_crit_edge, label %if.end52.disable_mem_clk_crit_edge

if.end52.disable_mem_clk_crit_edge:               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_mem_clk

if.end52.for.inc_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end52.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0114, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

disable_mem_clk.sink.split:                       ; preds = %if.end22.disable_mem_clk.sink.split_crit_edge, %if.end.i108.disable_mem_clk.sink.split_crit_edge, %if.end13.disable_mem_clk.sink.split_crit_edge
  %.str.162.sink = phi ptr [ @.str.159, %if.end.i108.disable_mem_clk.sink.split_crit_edge ], [ @.str.159, %if.end13.disable_mem_clk.sink.split_crit_edge ], [ @.str.162, %if.end22.disable_mem_clk.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call.i107, %if.end.i108.disable_mem_clk.sink.split_crit_edge ], [ -22, %if.end13.disable_mem_clk.sink.split_crit_edge ], [ %call23, %if.end22.disable_mem_clk.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.162.sink) #13
  br label %disable_mem_clk

disable_mem_clk:                                  ; preds = %disable_mem_clk.sink.split, %if.end52.disable_mem_clk_crit_edge, %if.end34.disable_mem_clk_crit_edge
  %ret.0 = phi i32 [ %ret.0.ph, %disable_mem_clk.sink.split ], [ %call53, %if.end52.disable_mem_clk_crit_edge ], [ %call49, %if.end34.disable_mem_clk_crit_edge ]
  %56 = ptrtoint ptr %mem_clk to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mem_clk, align 4
  tail call void @clk_disable(ptr noundef %57) #10
  tail call void @clk_unprepare(ptr noundef %57) #10
  br label %cleanup

cleanup:                                          ; preds = %disable_mem_clk, %for.inc.cleanup_crit_edge, %if.then11, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %disable_mem_clk ], [ 0, %if.then11 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_easrc_resampler_config(ptr noundef readonly %easrc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.fsl_asrc, ptr %easrc, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %private = getelementptr inbounds %struct.fsl_asrc, ptr %easrc, i32 0, i32 19
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %firmware_hdr = getelementptr inbounds %struct.fsl_easrc_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %firmware_hdr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %firmware_hdr, align 8
  %interp2 = getelementptr inbounds %struct.fsl_easrc_priv, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %interp2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interp2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %for.cond.preheader

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %entry
  %interp_scen = getelementptr inbounds %struct.asrc_firmware_hdr, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %interp_scen to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %interp_scen, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp101.not = icmp eq i32 %9, 0
  br i1 %cmp101.not, label %for.cond.preheader.cleanup.sink.split_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rs_num_taps = getelementptr inbounds %struct.fsl_easrc_priv, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %rs_num_taps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rs_num_taps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %12 = icmp ult i32 %11, 3
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.fsl_easrc_resampler_config, i32 0, i32 %11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0102 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %num_taps = getelementptr %struct.interp_params, ptr %7, i32 %i.0102, i32 1
  %13 = ptrtoint ptr %num_taps to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %num_taps, align 1
  %sub = add i32 %14, -1
  br i1 %12, label %switch.lookup, label %for.body.bits_taps_to_val.exit_crit_edge

for.body.bits_taps_to_val.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %bits_taps_to_val.exit

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bits_taps_to_val.exit

bits_taps_to_val.exit:                            ; preds = %switch.lookup, %for.body.bits_taps_to_val.exit_crit_edge
  %retval.0.i91 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %for.body.bits_taps_to_val.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %retval.0.i91)
  %cmp3.not = icmp eq i32 %sub, %retval.0.i91
  br i1 %cmp3.not, label %if.end5, label %for.inc

if.end5:                                          ; preds = %bits_taps_to_val.exit
  %arrayidx.le = getelementptr %struct.interp_params, ptr %7, i32 %i.0102
  %coeff = getelementptr %struct.interp_params, ptr %7, i32 %i.0102, i32 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_easrc_resampler_config.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_easrc_resampler_config, %if.then13)) #10
          to label %for.end [label %if.then13], !srcloc !301

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %num_taps to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %num_taps, align 1
  %num_phases = getelementptr %struct.interp_params, ptr %7, i32 %i.0102, i32 2
  %18 = ptrtoint ptr %num_phases to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %num_phases, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_easrc_resampler_config.__UNIQUE_ID_ddebug243, ptr noundef %dev1, ptr noundef nonnull @.str.166, i32 noundef %17, i32 noundef %19) #10
  br label %for.end

for.inc:                                          ; preds = %bits_taps_to_val.exit
  %inc = add nuw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.cleanup.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.end:                                          ; preds = %if.then13, %if.end5
  %tobool18.not = icmp eq ptr %arrayidx.le, null
  br i1 %tobool18.not, label %for.end.cleanup.sink.split_crit_edge, label %if.end23

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end23:                                         ; preds = %for.end
  %center_tap = getelementptr %struct.interp_params, ptr %7, i32 %i.0102, i32 3
  %regmap = getelementptr inbounds %struct.fsl_asrc, ptr %easrc, i32 0, i32 3
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %22 = ptrtoint ptr %center_tap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %center_tap, align 4
  %call25 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 336, i32 noundef %23) #10
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %arrayidx27 = getelementptr i32, ptr %center_tap, i32 1
  %26 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx27, align 4
  %call29 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 340, i32 noundef %27) #10
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %30 = ptrtoint ptr %rs_num_taps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rs_num_taps, align 4
  %shl32 = shl i32 %31, 1
  %and = and i32 %shl32, 6
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 372, i32 noundef 6, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %tobool.not.i = icmp eq ptr %easrc, null
  br i1 %tobool.not.i, label %if.end23.cleanup_crit_edge, label %fsl_easrc_coeff_mem_ptr_reset.exit

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

fsl_easrc_coeff_mem_ptr_reset.exit:               ; preds = %if.end23
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 372, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call.i26.i = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 372, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call.i27.i = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 372, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %for.body40

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %fsl_easrc_coeff_mem_ptr_reset.exit
  %i.1103 = phi i32 [ 0, %fsl_easrc_coeff_mem_ptr_reset.exit ], [ %inc51, %for.body40.for.body40_crit_edge ]
  %arrayidx41 = getelementptr i64, ptr %coeff, i32 %i.1103
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %40 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx41, align 4
  %call45 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 368, i32 noundef %41) #10
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %arrayidx47 = getelementptr i32, ptr %arrayidx41, i32 1
  %44 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx47, align 4
  %call49 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 368, i32 noundef %45) #10
  %inc51 = add nuw nsw i32 %i.1103, 1
  %exitcond107.not = icmp eq i32 %inc51, 8192
  br i1 %exitcond107.not, label %for.body40.cleanup_crit_edge, label %for.body40.for.body40_crit_edge

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body40

for.body40.cleanup_crit_edge:                     ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.end.cleanup.sink.split_crit_edge, %for.inc.cleanup.sink.split_crit_edge, %for.cond.preheader.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.168.sink = phi ptr [ @.str.164, %entry.cleanup.sink.split_crit_edge ], [ @.str.168, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ @.str.168, %for.end.cleanup.sink.split_crit_edge ], [ @.str.168, %for.inc.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -19, %entry.cleanup.sink.split_crit_edge ], [ -22, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ -22, %for.end.cleanup.sink.split_crit_edge ], [ -22, %for.inc.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.168.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body40.cleanup_crit_edge, %if.end23.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.end23.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %for.body40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 187)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 187)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !32, !33, !35, !37, !38, !39, !41, !43, !44, !45, !47, !48, !49, !50, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !87, !88, !90, !91, !93, !95, !96, !97, !98, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !256, !258, !259, !260, !261, !263, !264, !265, !266, !268, !270, !272, !273, !274, !275, !277, !278, !279, !281, !282, !283, !284, !286, !287, !289, !290}
!llvm.module.flags = !{!291, !292, !293, !294, !295, !296, !297, !298}
!llvm.ident = !{!299}

!0 = !{ptr @__initcall__kmod_snd_soc_fsl_easrc__247_2099_fsl_easrc_driver_init6, !1, !"__initcall__kmod_snd_soc_fsl_easrc__247_2099_fsl_easrc_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 2099, i32 1}
!2 = !{ptr @__exitcall_fsl_easrc_driver_exit, !1, !"__exitcall_fsl_easrc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description248, !4, !"__UNIQUE_ID_description248", i1 false, i1 false}
!4 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 2101, i32 1}
!5 = !{ptr @__UNIQUE_ID_file249, !6, !"__UNIQUE_ID_file249", i1 false, i1 false}
!6 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 2102, i32 1}
!7 = !{ptr @__UNIQUE_ID_license250, !6, !"__UNIQUE_ID_license250", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 2094, i32 11}
!10 = !{ptr @fsl_easrc_driver, !11, !"fsl_easrc_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 2090, i32 31}
!12 = !{ptr @fsl_easrc_probe._key, !13, !"_key", i1 false, i1 false}
!13 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1896, i32 18}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1898, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @fsl_easrc_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @fsl_easrc_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1909, i32 3}
!25 = !{ptr @fsl_easrc_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @fsl_easrc_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1913, i32 37}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1915, i32 3}
!31 = !{ptr @fsl_easrc_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @fsl_easrc_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1930, i32 33}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1932, i32 3}
!37 = !{ptr @fsl_easrc_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @fsl_easrc_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1936, i32 33}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1938, i32 3}
!43 = !{ptr @fsl_easrc_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @fsl_easrc_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1943, i32 3}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @fsl_easrc_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @fsl_easrc_probe._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1947, i32 36}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1950, i32 3}
!54 = !{ptr @fsl_easrc_probe._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @fsl_easrc_probe._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @fsl_easrc_probe.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1957, i32 2}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1964, i32 3}
!61 = !{ptr @fsl_easrc_probe._entry.31, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @fsl_easrc_probe._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1971, i32 3}
!65 = !{ptr @fsl_easrc_probe._entry.34, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @fsl_easrc_probe._entry_ptr.36, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @fsl_easrc_regmap_config, !68, !"fsl_easrc_regmap_config", i1 false, i1 false}
!68 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1738, i32 35}
!69 = !{ptr @fsl_easrc_writeable_table, !70, !"fsl_easrc_writeable_table", i1 false, i1 false}
!70 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1721, i32 41}
!71 = !{ptr @fsl_easrc_writeable_ranges, !72, !"fsl_easrc_writeable_ranges", i1 false, i1 false}
!72 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1714, i32 34}
!73 = !{ptr @fsl_easrc_readable_table, !74, !"fsl_easrc_readable_table", i1 false, i1 false}
!74 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1709, i32 41}
!75 = !{ptr @fsl_easrc_readable_ranges, !76, !"fsl_easrc_readable_ranges", i1 false, i1 false}
!76 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1703, i32 34}
!77 = !{ptr @fsl_easrc_volatileable_table, !78, !"fsl_easrc_volatileable_table", i1 false, i1 false}
!78 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1733, i32 41}
!79 = !{ptr @fsl_easrc_volatileable_ranges, !80, !"fsl_easrc_volatileable_ranges", i1 false, i1 false}
!80 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1726, i32 34}
!81 = !{ptr @fsl_easrc_reg_defaults, !82, !"fsl_easrc_reg_defaults", i1 false, i1 false}
!82 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1580, i32 33}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1849, i32 3}
!85 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @fsl_easrc_isr.__UNIQUE_ID_ddebug245, !84, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1852, i32 3}
!90 = !{ptr @fsl_easrc_isr.__UNIQUE_ID_ddebug246, !89, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1382, i32 16}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1261, i32 3}
!95 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @fsl_easrc_request_context._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @fsl_easrc_request_context._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1264, i32 3}
!100 = !{ptr @fsl_easrc_request_context._entry.44, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @fsl_easrc_request_context._entry_ptr.46, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1575, i32 11}
!104 = !{ptr @fsl_easrc_component, !105, !"fsl_easrc_component", i1 false, i1 false}
!105 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1574, i32 46}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 125, i32 2}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 126, i32 2}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 127, i32 2}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 128, i32 2}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 130, i32 2}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 131, i32 2}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 132, i32 2}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 133, i32 2}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 135, i32 2}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 136, i32 2}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 137, i32 2}
!128 = !{ptr @.str.69, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 138, i32 2}
!130 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 140, i32 2}
!132 = !{ptr @.str.73, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 141, i32 2}
!134 = !{ptr @.str.75, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 142, i32 2}
!136 = !{ptr @.str.77, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 143, i32 2}
!138 = !{ptr @.str.79, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 144, i32 2}
!140 = !{ptr @.str.81, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 145, i32 2}
!142 = !{ptr @.str.83, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 146, i32 2}
!144 = !{ptr @.str.85, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 147, i32 2}
!146 = !{ptr @.str.87, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 148, i32 2}
!148 = !{ptr @.str.89, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 149, i32 2}
!150 = !{ptr @.str.91, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 150, i32 2}
!152 = !{ptr @.str.93, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 151, i32 2}
!154 = !{ptr @.str.95, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 152, i32 2}
!156 = !{ptr @.str.97, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 153, i32 2}
!158 = !{ptr @.str.99, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 154, i32 2}
!160 = !{ptr @.str.101, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 155, i32 2}
!162 = !{ptr @.str.103, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 156, i32 2}
!164 = !{ptr @.str.105, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 157, i32 2}
!166 = !{ptr @.str.107, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 158, i32 2}
!168 = !{ptr @.str.109, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 159, i32 2}
!170 = !{ptr @.str.111, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 160, i32 2}
!172 = !{ptr @.str.113, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 161, i32 2}
!174 = !{ptr @.str.115, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 162, i32 2}
!176 = !{ptr @.str.117, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 163, i32 2}
!178 = !{ptr @fsl_easrc_snd_controls, !179, !"fsl_easrc_snd_controls", i1 false, i1 false}
!179 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 124, i32 38}
!180 = !{ptr @.str.119, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1562, i32 18}
!182 = !{ptr @.str.120, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1553, i32 18}
!184 = !{ptr @fsl_easrc_dai, !185, !"fsl_easrc_dai", i1 false, i1 false}
!185 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1550, i32 34}
!186 = !{ptr @fsl_easrc_dai_ops, !187, !"fsl_easrc_dai_ops", i1 false, i1 false}
!187 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1533, i32 37}
!188 = !{ptr @easrc_rate_constraints, !189, !"easrc_rate_constraints", i1 false, i1 false}
!189 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1395, i32 48}
!190 = !{ptr @easrc_rates, !191, !"easrc_rates", i1 false, i1 false}
!191 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1387, i32 27}
!192 = !{ptr @.str.121, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1453, i32 3}
!194 = !{ptr @.str.122, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @fsl_easrc_hw_params._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @fsl_easrc_hw_params._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.124, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1487, i32 3}
!199 = !{ptr @fsl_easrc_hw_params._entry.123, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @fsl_easrc_hw_params._entry_ptr.125, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.127, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1493, i32 3}
!203 = !{ptr @fsl_easrc_hw_params._entry.126, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @fsl_easrc_hw_params._entry_ptr.128, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.130, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1506, i32 3}
!207 = !{ptr @fsl_easrc_hw_params._entry.129, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @fsl_easrc_hw_params._entry_ptr.131, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.132, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 977, i32 3}
!211 = !{ptr @.str.133, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @fsl_easrc_config_context._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @fsl_easrc_config_context._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.134, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 205, i32 3}
!216 = !{ptr @.str.135, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @fsl_easrc_set_rs_ratio._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @fsl_easrc_set_rs_ratio._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.136, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 488, i32 3}
!221 = !{ptr @fsl_easrc_prefilter_config._entry, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @fsl_easrc_prefilter_config._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.137, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 579, i32 5}
!225 = !{ptr @fsl_easrc_prefilter_config.__UNIQUE_ID_ddebug244, !224, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!226 = !{ptr @.str.139, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 589, i32 4}
!228 = !{ptr @fsl_easrc_prefilter_config._entry.138, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @fsl_easrc_prefilter_config._entry_ptr.140, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.142, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 639, i32 3}
!232 = !{ptr @fsl_easrc_prefilter_config._entry.141, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @fsl_easrc_prefilter_config._entry_ptr.143, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.145, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 664, i32 4}
!236 = !{ptr @fsl_easrc_prefilter_config._entry.144, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @fsl_easrc_prefilter_config._entry_ptr.146, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.147, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 442, i32 3}
!240 = !{ptr @.str.148, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @fsl_easrc_write_pf_coeff_mem._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @fsl_easrc_write_pf_coeff_mem._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.149, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 254, i32 4}
!245 = !{ptr @fsl_easrc_coeff_mem_ptr_reset._entry, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @fsl_easrc_coeff_mem_ptr_reset._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.151, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 269, i32 3}
!249 = !{ptr @fsl_easrc_coeff_mem_ptr_reset._entry.150, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @fsl_easrc_coeff_mem_ptr_reset._entry_ptr.152, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.153, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 418, i32 3}
!253 = !{ptr @.str.154, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @fsl_easrc_normalize_filter._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @fsl_easrc_normalize_filter._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.155, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 911, i32 3}
!258 = !{ptr @.str.156, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @fsl_easrc_config_slot._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @fsl_easrc_config_slot._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.157, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1362, i32 4}
!263 = !{ptr @.str.158, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @fsl_easrc_stop_context._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @fsl_easrc_stop_context._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @fsl_easrc_dt_ids, !267, !"fsl_easrc_dt_ids", i1 false, i1 false}
!267 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 1862, i32 34}
!268 = !{ptr @fsl_easrc_pm_ops, !269, !"fsl_easrc_pm_ops", i1 false, i1 false}
!269 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 2082, i32 32}
!270 = !{ptr @.str.159, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 2030, i32 3}
!272 = !{ptr @.str.160, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @fsl_easrc_runtime_resume._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @fsl_easrc_runtime_resume._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.162, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 2041, i32 3}
!277 = !{ptr @fsl_easrc_runtime_resume._entry.161, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @fsl_easrc_runtime_resume._entry_ptr.163, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.164, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 313, i32 3}
!281 = !{ptr @.str.165, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @fsl_easrc_resampler_config._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @fsl_easrc_resampler_config._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.166, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 324, i32 3}
!286 = !{ptr @fsl_easrc_resampler_config.__UNIQUE_ID_ddebug243, !285, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!287 = !{ptr @.str.168, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/fsl/fsl_easrc.c", i32 331, i32 3}
!289 = !{ptr @fsl_easrc_resampler_config._entry.167, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @fsl_easrc_resampler_config._entry_ptr.169, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{i32 1, !"wchar_size", i32 2}
!292 = !{i32 1, !"min_enum_size", i32 4}
!293 = !{i32 8, !"branch-target-enforcement", i32 0}
!294 = !{i32 8, !"sign-return-address", i32 0}
!295 = !{i32 8, !"sign-return-address-all", i32 0}
!296 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!297 = !{i32 7, !"uwtable", i32 1}
!298 = !{i32 7, !"frame-pointer", i32 2}
!299 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!300 = !{!"auto-init"}
!301 = !{i64 2148779534, i64 2148779539, i64 2148779552, i64 2148779596, i64 2148779630, i64 2148779651}
!302 = !{i8 0, i8 2}
!303 = !{i32 0, i32 33}
!304 = !{!"branch_weights", i32 2000, i32 1}
!305 = !{i64 2148688253, i64 2148688533, i64 2148688867, i64 2148689201}
