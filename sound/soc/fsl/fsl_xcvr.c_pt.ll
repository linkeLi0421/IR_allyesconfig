; ModuleID = '/llk/IR_all_yes/sound/soc/fsl/fsl_xcvr.c_pt.bc'
source_filename = "../sound/soc/fsl/fsl_xcvr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fsl_xcvr_soc_data = type { ptr }
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
%struct.fsl_xcvr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, %struct.snd_aes_iec958, %struct.snd_aes_iec958, [256 x i8] }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.85, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.85 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.80, [128 x i8] }
%union.anon.80 = type { %union.anon.82 }
%union.anon.82 = type { [64 x i64] }
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
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.76, [64 x i8] }
%union.anon.76 = type { %struct.anon.79, [40 x i8] }
%struct.anon.79 = type { i32, i32, [64 x i8], i64, i32 }
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
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_snd_soc_fsl_xcvr__252_1374_fsl_xcvr_driver_init6 = internal global ptr @fsl_xcvr_driver_init, section ".initcall6.init", align 4
@fsl_xcvr_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_xcvr_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_xcvr_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_xcvr_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_xcvr_driver_exit = internal global ptr @fsl_xcvr_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author253 = internal constant [60 x i8] c"snd_soc_fsl_xcvr.author=Viorel Suman <viorel.suman@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [65 x i8] c"snd_soc_fsl_xcvr.description=NXP Audio Transceiver (XCVR) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [53 x i8] c"snd_soc_fsl_xcvr.file=sound/soc/fsl/snd-soc-fsl-xcvr\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [32 x i8] c"snd_soc_fsl_xcvr.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl,imx8mp-audio-xcvr\00", [42 x i8] zeroinitializer }, align 32
@fsl_xcvr_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mp-xcvr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_xcvr_imx8mp_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@fsl_xcvr_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_xcvr_runtime_suspend, ptr @fsl_xcvr_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@fsl_xcvr_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1153, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get ipg clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl_xcvr_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/fsl/fsl_xcvr.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_xcvr_probe._entry_ptr = internal global ptr @fsl_xcvr_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@fsl_xcvr_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1159, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get phy clock\0A\00", [39 x i8] zeroinitializer }, align 32
@fsl_xcvr_probe._entry_ptr.10 = internal global ptr @fsl_xcvr_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spba\00", [27 x i8] zeroinitializer }, align 32
@fsl_xcvr_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1165, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get spba clock\0A\00", [38 x i8] zeroinitializer }, align 32
@fsl_xcvr_probe._entry_ptr.14 = internal global ptr @fsl_xcvr_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll_ipg\00", [24 x i8] zeroinitializer }, align 32
@fsl_xcvr_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1171, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get pll_ipg clock\0A\00", [35 x i8] zeroinitializer }, align 32
@fsl_xcvr_probe._entry_ptr.18 = internal global ptr @fsl_xcvr_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ram\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@fsl_xcvr_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@fsl_xcvr_regmap_cfg = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @fsl_xcvr_writeable_reg, ptr @fsl_xcvr_readable_reg, ptr @fsl_xcvr_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 752, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_xcvr_reg_defaults, i32 30, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fsl_xcvr:1184:(&fsl_xcvr_regmap_cfg)->lock\00", [53 x i8] zeroinitializer }, align 32
@fsl_xcvr_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 1187, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to init XCVR regmap: %ld\0A\00", [63 x i8] zeroinitializer }, align 32
@fsl_xcvr_probe._entry_ptr.24 = internal global ptr @fsl_xcvr_probe._entry.22, section ".printk_index", align 4
@fsl_xcvr_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 1193, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get XCVR reset control\0A\00", [62 x i8] zeroinitializer }, align 32
@fsl_xcvr_probe._entry_ptr.27 = internal global ptr @fsl_xcvr_probe._entry.25, section ".printk_index", align 4
@fsl_xcvr_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 1204, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to claim IRQ0: %i\0A\00", [38 x i8] zeroinitializer }, align 32
@fsl_xcvr_probe._entry_ptr.30 = internal global ptr @fsl_xcvr_probe._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rxfifo\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"txfifo\00", [25 x i8] zeroinitializer }, align 32
@fsl_xcvr_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 1211, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"could not find rxfifo or txfifo resource\0A\00", [54 x i8] zeroinitializer }, align 32
@fsl_xcvr_probe._entry_ptr.35 = internal global ptr @fsl_xcvr_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@fsl_xcvr_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.3, ptr @.str.4, i32 1231, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to pcm register\0A\00", [40 x i8] zeroinitializer }, align 32
@fsl_xcvr_probe._entry_ptr.40 = internal global ptr @fsl_xcvr_probe._entry.38, section ".printk_index", align 4
@fsl_xcvr_comp = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.53, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@fsl_xcvr_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @fsl_xcvr_dai_probe, ptr null, ptr null, ptr null, ptr @fsl_xcvr_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.54, i64 262144, i32 -2147483648, i32 32000, i32 1536000, i32 1, i32 32, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.55, i64 262144, i32 -2147483648, i32 32000, i32 1536000, i32 1, i32 32, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@fsl_xcvr_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.3, ptr @.str.4, i32 1239, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register component %s\0A\00", [63 x i8] zeroinitializer }, align 32
@fsl_xcvr_probe._entry_ptr.43 = internal global ptr @fsl_xcvr_probe._entry.41, section ".printk_index", align 4
@fsl_xcvr_reg_defaults = internal constant { [30 x %struct.reg_default], [48 x i8] } { [30 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 16, i32 -132104128 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 84, i32 0 }, %struct.reg_default { i32 88, i32 0 }, %struct.reg_default { i32 92, i32 0 }, %struct.reg_default { i32 112, i32 0 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 140, i32 0 }, %struct.reg_default { i32 384, i32 11401 }, %struct.reg_default { i32 388, i32 11401 }, %struct.reg_default { i32 392, i32 11401 }, %struct.reg_default { i32 396, i32 11401 }, %struct.reg_default { i32 544, i32 0 }, %struct.reg_default { i32 548, i32 0 }, %struct.reg_default { i32 552, i32 0 }, %struct.reg_default { i32 556, i32 0 }, %struct.reg_default { i32 560, i32 0 }, %struct.reg_default { i32 564, i32 0 }, %struct.reg_default { i32 568, i32 0 }, %struct.reg_default { i32 572, i32 0 }, %struct.reg_default { i32 576, i32 0 }, %struct.reg_default { i32 580, i32 0 }, %struct.reg_default { i32 736, i32 0 }, %struct.reg_default { i32 752, i32 0 }], [48 x i8] zeroinitializer }, align 32
@irq0_isr.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.4, ptr @.str.46, i8 1, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_soc_fsl_xcvr\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irq0_isr\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Received new CS block\0A\00", [41 x i8] zeroinitializer }, align 32
@irq0_isr.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.4, ptr @.str.47, i8 1, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Received new UD block\0A\00", [41 x i8] zeroinitializer }, align 32
@irq0_isr.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.4, ptr @.str.48, i8 1, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HW mute bit detected\0A\00", [42 x i8] zeroinitializer }, align 32
@irq0_isr.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.4, ptr @.str.49, i8 1, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX/TX FIFO full/empty\0A\00", [41 x i8] zeroinitializer }, align 32
@irq0_isr.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.4, ptr @.str.50, i8 1, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CMDC SM falls out of eARC mode\0A\00", [32 x i8] zeroinitializer }, align 32
@irq0_isr.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.4, ptr @.str.51, i8 1, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DMA read request\0A\00", [46 x i8] zeroinitializer }, align 32
@irq0_isr.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.4, ptr @.str.52, i8 1, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA write request\0A\00", [45 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl-xcvr-dai\00", [19 x i8] zeroinitializer }, align 32
@fsl_xcvr_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_xcvr_startup, ptr @fsl_xcvr_shutdown, ptr null, ptr null, ptr @fsl_xcvr_prepare, ptr @fsl_xcvr_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CPU-Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CPU-Playback\00", [19 x i8] zeroinitializer }, align 32
@fsl_xcvr_mode_kctl = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @fsl_xcvr_mode_get, ptr @fsl_xcvr_mode_put, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @fsl_xcvr_mode_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@fsl_xcvr_arc_mode_kctl = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @fsl_xcvr_arc_mode_get, ptr @fsl_xcvr_arc_mode_put, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @fsl_xcvr_arc_mode_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@fsl_xcvr_earc_capds_kctl = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.63, i32 0, i32 3, i32 0, ptr @fsl_xcvr_type_capds_bytes_info, ptr @fsl_xcvr_capds_get, ptr @fsl_xcvr_capds_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@fsl_xcvr_tx_ctls = internal global { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.64, i32 0, i32 3, i32 0, ptr @fsl_xcvr_type_iec958_info, ptr @fsl_xcvr_tx_cs_get, ptr @fsl_xcvr_tx_cs_put, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.65, i32 0, i32 3, i32 0, ptr @fsl_xcvr_type_iec958_bytes_info, ptr @fsl_xcvr_tx_cs_get, ptr @fsl_xcvr_tx_cs_put, %union.anon.86 zeroinitializer, i32 0 }], [32 x i8] zeroinitializer }, align 32
@fsl_xcvr_rx_ctls = internal global { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.66, i32 0, i32 1, i32 0, ptr @fsl_xcvr_type_iec958_info, ptr @fsl_xcvr_rx_cs_get, ptr null, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.67, i32 0, i32 1, i32 0, ptr @fsl_xcvr_type_iec958_bytes_info, ptr @fsl_xcvr_rx_cs_get, ptr null, %union.anon.86 zeroinitializer, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"XCVR Mode\00", [22 x i8] zeroinitializer }, align 32
@fsl_xcvr_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 3, i32 0, ptr @fsl_xcvr_mode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@fsl_xcvr_mode = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59], [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPDIF\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ARC RX\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eARC\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ARC Mode\00", [23 x i8] zeroinitializer }, align 32
@fsl_xcvr_arc_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 2, i32 0, ptr @fsl_xcvr_arc_mode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@fsl_xcvr_arc_mode = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.61, ptr @.str.62], [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Single Ended\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Common\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Capabilities Data Structure\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Playback Channel Status\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Capture Default\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Capture Channel Status\00", [41 x i8] zeroinitializer }, align 32
@fsl_xcvr_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 530, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%sX busy\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl_xcvr_startup\00", [47 x i8] zeroinitializer }, align 32
@fsl_xcvr_startup._entry_ptr = internal global ptr @fsl_xcvr_startup._entry, section ".printk_index", align 4
@.str.70 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"T\00", [30 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"R\00", [30 x i8] zeroinitializer }, align 32
@fsl_xcvr_spdif_channels_constr = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @fsl_xcvr_spdif_channels, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@fsl_xcvr_spdif_rates_constr = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @fsl_xcvr_spdif_rates, i32 7, i32 0 }, [20 x i8] zeroinitializer }, align 32
@fsl_xcvr_earc_channels_constr = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @fsl_xcvr_earc_channels, i32 5, i32 0 }, [20 x i8] zeroinitializer }, align 32
@fsl_xcvr_earc_rates_constr = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @fsl_xcvr_earc_rates, i32 18, i32 0 }, [20 x i8] zeroinitializer }, align 32
@fsl_xcvr_spdif_channels = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 2], [28 x i8] zeroinitializer }, align 32
@fsl_xcvr_spdif_rates = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], [36 x i8] zeroinitializer }, align 32
@fsl_xcvr_earc_channels = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 8, i32 16, i32 32], [44 x i8] zeroinitializer }, align 32
@fsl_xcvr_earc_rates = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000, i32 128000, i32 176400, i32 192000, i32 256000, i32 352800, i32 384000, i32 512000, i32 705600, i32 768000, i32 1024000, i32 1411200, i32 1536000], [56 x i8] zeroinitializer }, align 32
@fsl_xcvr_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.4, i32 579, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to set IER0: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl_xcvr_shutdown\00", [46 x i8] zeroinitializer }, align 32
@fsl_xcvr_shutdown._entry_ptr = internal global ptr @fsl_xcvr_shutdown._entry, section ".printk_index", align 4
@fsl_xcvr_shutdown._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.4, i32 596, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Err setting DPATH RESET: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@fsl_xcvr_shutdown._entry_ptr.76 = internal global ptr @fsl_xcvr_shutdown._entry.74, section ".printk_index", align 4
@fsl_xcvr_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 414, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set TX freq %u: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl_xcvr_prepare\00", [47 x i8] zeroinitializer }, align 32
@fsl_xcvr_prepare._entry_ptr = internal global ptr @fsl_xcvr_prepare._entry, section ".printk_index", align 4
@fsl_xcvr_prepare._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.4, i32 421, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set TX_DPTH: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@fsl_xcvr_prepare._entry_ptr.81 = internal global ptr @fsl_xcvr_prepare._entry.79, section ".printk_index", align 4
@fsl_xcvr_prepare._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.4, i32 442, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set RX_DPTH: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@fsl_xcvr_prepare._entry_ptr.84 = internal global ptr @fsl_xcvr_prepare._entry.82, section ".printk_index", align 4
@fsl_xcvr_prepare._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.4, i32 449, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set RX freq %u: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@fsl_xcvr_prepare._entry_ptr.87 = internal global ptr @fsl_xcvr_prepare._entry.85, section ".printk_index", align 4
@fsl_xcvr_prepare._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.4, i32 461, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@fsl_xcvr_prepare._entry_ptr.89 = internal global ptr @fsl_xcvr_prepare._entry.88, section ".printk_index", align 4
@fsl_xcvr_prepare._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.78, ptr @.str.4, i32 470, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to clr TX_DPTH: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@fsl_xcvr_prepare._entry_ptr.92 = internal global ptr @fsl_xcvr_prepare._entry.90, section ".printk_index", align 4
@fsl_xcvr_prepare._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.78, ptr @.str.4, i32 486, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error while setting IER0: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@fsl_xcvr_prepare._entry_ptr.95 = internal global ptr @fsl_xcvr_prepare._entry.93, section ".printk_index", align 4
@fsl_xcvr_prepare._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.78, ptr @.str.4, i32 495, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error while setting EXT_CTRL: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@fsl_xcvr_prepare._entry_ptr.98 = internal global ptr @fsl_xcvr_prepare._entry.96, section ".printk_index", align 4
@fsl_xcvr_en_aud_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.4, i32 359, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error while setting AUD PLL rate: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl_xcvr_en_aud_pll\00", [44 x i8] zeroinitializer }, align 32
@fsl_xcvr_en_aud_pll._entry_ptr = internal global ptr @fsl_xcvr_en_aud_pll._entry, section ".printk_index", align 4
@fsl_xcvr_en_aud_pll._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.4, i32 364, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to start PHY clock: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@fsl_xcvr_en_aud_pll._entry_ptr.103 = internal global ptr @fsl_xcvr_en_aud_pll._entry.101, section ".printk_index", align 4
@fsl_xcvr_en_aud_pll._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.100, ptr @.str.4, i32 372, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@fsl_xcvr_en_aud_pll._entry_ptr.105 = internal global ptr @fsl_xcvr_en_aud_pll._entry.104, section ".printk_index", align 4
@fsl_xcvr_en_aud_pll.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.100, ptr @.str.4, ptr @.str.106, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PLL Fexp: %u\0A\00", [18 x i8] zeroinitializer }, align 32
@fsl_xcvr_ai_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.4, i32 254, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"AI timeout: failed to set %s reg 0x%02x=0x%08x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl_xcvr_ai_write\00", [46 x i8] zeroinitializer }, align 32
@fsl_xcvr_ai_write._entry_ptr = internal global ptr @fsl_xcvr_ai_write._entry, section ".printk_index", align 4
@.str.109 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PHY\00", [28 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PLL\00", [28 x i8] zeroinitializer }, align 32
@fsl_xcvr_en_phy_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.111, ptr @.str.4, i32 280, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl_xcvr_en_phy_pll\00", [44 x i8] zeroinitializer }, align 32
@fsl_xcvr_en_phy_pll._entry_ptr = internal global ptr @fsl_xcvr_en_phy_pll._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@fsl_xcvr_phy_arc_cfg = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 512, i32 1024], [24 x i8] zeroinitializer }, align 32
@fsl_xcvr_en_phy_pll.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.111, ptr @.str.4, ptr @.str.112, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"PLL Fexp: %u, Fout: %u, mfi: %u, mfn: %u, mfd: %d, div: %u, pdiv0: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@fsl_xcvr_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.4, i32 620, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"err updating isr %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl_xcvr_trigger\00", [47 x i8] zeroinitializer }, align 32
@fsl_xcvr_trigger._entry_ptr = internal global ptr @fsl_xcvr_trigger._entry, section ".printk_index", align 4
@fsl_xcvr_trigger._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.4, i32 629, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to start DATA_TX: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@fsl_xcvr_trigger._entry_ptr.117 = internal global ptr @fsl_xcvr_trigger._entry.115, section ".printk_index", align 4
@fsl_xcvr_trigger._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.114, ptr @.str.4, i32 640, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to enable DMA: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@fsl_xcvr_trigger._entry_ptr.120 = internal global ptr @fsl_xcvr_trigger._entry.118, section ".printk_index", align 4
@fsl_xcvr_trigger._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.114, ptr @.str.4, i32 649, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to clear DPATH RESET: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@fsl_xcvr_trigger._entry_ptr.123 = internal global ptr @fsl_xcvr_trigger._entry.121, section ".printk_index", align 4
@fsl_xcvr_trigger._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.114, ptr @.str.4, i32 662, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to disable DMA: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@fsl_xcvr_trigger._entry_ptr.126 = internal global ptr @fsl_xcvr_trigger._entry.124, section ".printk_index", align 4
@fsl_xcvr_trigger._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.114, ptr @.str.4, i32 673, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to stop DATA_TX: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@fsl_xcvr_trigger._entry_ptr.129 = internal global ptr @fsl_xcvr_trigger._entry.127, section ".printk_index", align 4
@fsl_xcvr_trigger._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.114, ptr @.str.4, i32 684, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Err updating ISR %d\0A\00", [43 x i8] zeroinitializer }, align 32
@fsl_xcvr_trigger._entry_ptr.132 = internal global ptr @fsl_xcvr_trigger._entry.130, section ".printk_index", align 4
@fsl_xcvr_imx8mp_data = internal constant { %struct.fsl_xcvr_soc_data, [28 x i8] } { %struct.fsl_xcvr_soc_data { ptr @.str.133 }, [28 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imx/xcvr/xcvr-imx8mp.bin\00", [39 x i8] zeroinitializer }, align 32
@fsl_xcvr_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.4, i32 1258, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to clear IER0: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fsl_xcvr_runtime_suspend\00", [39 x i8] zeroinitializer }, align 32
@fsl_xcvr_runtime_suspend._entry_ptr = internal global ptr @fsl_xcvr_runtime_suspend._entry, section ".printk_index", align 4
@fsl_xcvr_runtime_suspend._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.4, i32 1265, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to assert M0+ core: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@fsl_xcvr_runtime_suspend._entry_ptr.138 = internal global ptr @fsl_xcvr_runtime_suspend._entry.136, section ".printk_index", align 4
@fsl_xcvr_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.4, i32 1284, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to assert M0+ reset: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsl_xcvr_runtime_resume\00", [40 x i8] zeroinitializer }, align 32
@fsl_xcvr_runtime_resume._entry_ptr = internal global ptr @fsl_xcvr_runtime_resume._entry, section ".printk_index", align 4
@fsl_xcvr_runtime_resume._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.4, i32 1290, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to start IPG clock.\0A\00", [36 x i8] zeroinitializer }, align 32
@fsl_xcvr_runtime_resume._entry_ptr.143 = internal global ptr @fsl_xcvr_runtime_resume._entry.141, section ".printk_index", align 4
@fsl_xcvr_runtime_resume._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.140, ptr @.str.4, i32 1296, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to start PLL IPG clock.\0A\00", [32 x i8] zeroinitializer }, align 32
@fsl_xcvr_runtime_resume._entry_ptr.146 = internal global ptr @fsl_xcvr_runtime_resume._entry.144, section ".printk_index", align 4
@fsl_xcvr_runtime_resume._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.140, ptr @.str.4, i32 1302, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@fsl_xcvr_runtime_resume._entry_ptr.148 = internal global ptr @fsl_xcvr_runtime_resume._entry.147, section ".printk_index", align 4
@fsl_xcvr_runtime_resume._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.140, ptr @.str.4, i32 1308, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to start SPBA clock.\0A\00", [35 x i8] zeroinitializer }, align 32
@fsl_xcvr_runtime_resume._entry_ptr.151 = internal global ptr @fsl_xcvr_runtime_resume._entry.149, section ".printk_index", align 4
@fsl_xcvr_runtime_resume._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.140, ptr @.str.4, i32 1317, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to sync regcache.\0A\00", [38 x i8] zeroinitializer }, align 32
@fsl_xcvr_runtime_resume._entry_ptr.154 = internal global ptr @fsl_xcvr_runtime_resume._entry.152, section ".printk_index", align 4
@fsl_xcvr_runtime_resume._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.140, ptr @.str.4, i32 1323, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to deassert M0+ reset.\0A\00", [33 x i8] zeroinitializer }, align 32
@fsl_xcvr_runtime_resume._entry_ptr.157 = internal global ptr @fsl_xcvr_runtime_resume._entry.155, section ".printk_index", align 4
@fsl_xcvr_runtime_resume._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.140, ptr @.str.4, i32 1329, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to load firmware.\0A\00", [38 x i8] zeroinitializer }, align 32
@fsl_xcvr_runtime_resume._entry_ptr.160 = internal global ptr @fsl_xcvr_runtime_resume._entry.158, section ".printk_index", align 4
@fsl_xcvr_runtime_resume._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.140, ptr @.str.4, i32 1337, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"M0+ core release failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@fsl_xcvr_runtime_resume._entry_ptr.163 = internal global ptr @fsl_xcvr_runtime_resume._entry.161, section ".printk_index", align 4
@fsl_xcvr_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.4, i32 707, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to request firmware.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl_xcvr_load_firmware\00", [41 x i8] zeroinitializer }, align 32
@fsl_xcvr_load_firmware._entry_ptr = internal global ptr @fsl_xcvr_load_firmware._entry, section ".printk_index", align 4
@fsl_xcvr_load_firmware._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.165, ptr @.str.4, i32 715, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"FW size %d is bigger than 16KiB.\0A\00", [62 x i8] zeroinitializer }, align 32
@fsl_xcvr_load_firmware._entry_ptr.168 = internal global ptr @fsl_xcvr_load_firmware._entry.166, section ".printk_index", align 4
@fsl_xcvr_load_firmware._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.165, ptr @.str.4, i32 726, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"FW: failed to set page %d, err=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@fsl_xcvr_load_firmware._entry_ptr.171 = internal global ptr @fsl_xcvr_load_firmware._entry.169, section ".printk_index", align 4
@fsl_xcvr_load_firmware._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.165, ptr @.str.4, i32 766, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set watermarks: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@fsl_xcvr_load_firmware._entry_ptr.174 = internal global ptr @fsl_xcvr_load_firmware._entry.172, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [32 x i64] [i64 30, i64 32, i64 16, i64 48, i64 64, i64 80, i64 84, i64 88, i64 92, i64 112, i64 132, i64 136, i64 140, i64 144, i64 148, i64 152, i64 156, i64 160, i64 176, i64 384, i64 388, i64 392, i64 396, i64 548, i64 552, i64 556, i64 560, i64 564, i64 568, i64 572, i64 576, i64 580]
@__sancov_gen_cov_switch_values.175 = internal global [38 x i64] [i64 36, i64 32, i64 0, i64 16, i64 32, i64 48, i64 64, i64 80, i64 84, i64 88, i64 92, i64 112, i64 128, i64 132, i64 136, i64 140, i64 144, i64 148, i64 152, i64 156, i64 164, i64 176, i64 384, i64 388, i64 392, i64 396, i64 544, i64 548, i64 552, i64 556, i64 560, i64 564, i64 568, i64 572, i64 576, i64 580, i64 736, i64 752]
@__sancov_gen_cov_switch_values.176 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.177 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.178 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.182 = private unnamed_addr constant [16 x i8] c"fsl_xcvr_driver\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1366, i32 31 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1369, i32 11 }
@___asan_gen_.188 = private unnamed_addr constant [16 x i8] c"fsl_xcvr_dt_ids\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1130, i32 34 }
@___asan_gen_.191 = private unnamed_addr constant [16 x i8] c"fsl_xcvr_pm_ops\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1358, i32 32 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1151, i32 36 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1153, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1157, i32 36 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1159, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1163, i32 37 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1165, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1169, i32 40 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1171, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1175, i32 63 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1179, i32 53 }
@___asan_gen_.248 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [20 x i8] c"fsl_xcvr_regmap_cfg\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1039, i32 35 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1183, i32 17 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1186, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1193, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1204, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1208, i32 62 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1209, i32 62 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1211, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1214, i32 32 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1215, i32 32 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1231, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [14 x i8] c"fsl_xcvr_comp\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 913, i32 46 }
@___asan_gen_.302 = private unnamed_addr constant [13 x i8] c"fsl_xcvr_dai\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 890, i32 34 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1238, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [22 x i8] c"fsl_xcvr_reg_defaults\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 917, i32 33 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1063, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1094, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1098, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1102, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1106, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1110, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1114, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 914, i32 10 }
@___asan_gen_.344 = private unnamed_addr constant [17 x i8] c"fsl_xcvr_dai_ops\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 867, i32 37 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 903, i32 18 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 894, i32 18 }
@___asan_gen_.353 = private unnamed_addr constant [19 x i8] c"fsl_xcvr_mode_kctl\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 230, i32 32 }
@___asan_gen_.356 = private unnamed_addr constant [23 x i8] c"fsl_xcvr_arc_mode_kctl\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 123, i32 32 }
@___asan_gen_.359 = private unnamed_addr constant [25 x i8] c"fsl_xcvr_earc_capds_kctl\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 159, i32 32 }
@___asan_gen_.362 = private unnamed_addr constant [17 x i8] c"fsl_xcvr_tx_ctls\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 846, i32 32 }
@___asan_gen_.365 = private unnamed_addr constant [17 x i8] c"fsl_xcvr_rx_ctls\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 827, i32 32 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 231, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant [19 x i8] c"fsl_xcvr_mode_enum\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 228, i32 30 }
@___asan_gen_.374 = private unnamed_addr constant [14 x i8] c"fsl_xcvr_mode\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 227, i32 27 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 227, i32 47 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 227, i32 56 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 227, i32 66 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 124, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant [23 x i8] c"fsl_xcvr_arc_mode_enum\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 121, i32 30 }
@___asan_gen_.392 = private unnamed_addr constant [18 x i8] c"fsl_xcvr_arc_mode\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 120, i32 27 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 120, i32 51 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 120, i32 67 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 161, i32 10 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 850, i32 11 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 859, i32 11 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 831, i32 11 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 839, i32 11 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 530, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant [31 x i8] c"fsl_xcvr_spdif_channels_constr\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 79, i32 48 }
@___asan_gen_.434 = private unnamed_addr constant [28 x i8] c"fsl_xcvr_spdif_rates_constr\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 87, i32 48 }
@___asan_gen_.437 = private unnamed_addr constant [30 x i8] c"fsl_xcvr_earc_channels_constr\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 63, i32 48 }
@___asan_gen_.440 = private unnamed_addr constant [27 x i8] c"fsl_xcvr_earc_rates_constr\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 73, i32 48 }
@___asan_gen_.443 = private unnamed_addr constant [24 x i8] c"fsl_xcvr_spdif_channels\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 78, i32 18 }
@___asan_gen_.446 = private unnamed_addr constant [21 x i8] c"fsl_xcvr_spdif_rates\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 84, i32 18 }
@___asan_gen_.449 = private unnamed_addr constant [23 x i8] c"fsl_xcvr_earc_channels\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 62, i32 18 }
@___asan_gen_.452 = private unnamed_addr constant [20 x i8] c"fsl_xcvr_earc_rates\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 68, i32 18 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 579, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 596, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 413, i32 5 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 421, i32 5 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 442, i32 5 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 448, i32 5 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 461, i32 5 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 470, i32 5 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 486, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 495, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 359, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 364, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 372, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 391, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 253, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 280, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant [21 x i8] c"fsl_xcvr_phy_arc_cfg\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 116, i32 18 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 345, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 620, i32 6 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 629, i32 6 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 640, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 649, i32 4 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 662, i32 4 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 673, i32 6 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 683, i32 6 }
@___asan_gen_.611 = private unnamed_addr constant [21 x i8] c"fsl_xcvr_imx8mp_data\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1126, i32 39 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1127, i32 13 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1258, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1265, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1284, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1290, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1296, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1302, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1308, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1317, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1323, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1329, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1337, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 707, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 715, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 725, i32 4 }
@___asan_gen_.707 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.710 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.711 = private constant [28 x i8] c"../sound/soc/fsl/fsl_xcvr.c\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 766, i32 3 }
@llvm.compiler.used = appending global [232 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_fsl_xcvr_driver_exit, ptr @__initcall__kmod_snd_soc_fsl_xcvr__252_1374_fsl_xcvr_driver_init6, ptr @fsl_xcvr_ai_write._entry, ptr @fsl_xcvr_ai_write._entry_ptr, ptr @fsl_xcvr_driver_exit, ptr @fsl_xcvr_en_aud_pll._entry, ptr @fsl_xcvr_en_aud_pll._entry.101, ptr @fsl_xcvr_en_aud_pll._entry.104, ptr @fsl_xcvr_en_aud_pll._entry_ptr, ptr @fsl_xcvr_en_aud_pll._entry_ptr.103, ptr @fsl_xcvr_en_aud_pll._entry_ptr.105, ptr @fsl_xcvr_en_phy_pll._entry, ptr @fsl_xcvr_en_phy_pll._entry_ptr, ptr @fsl_xcvr_load_firmware._entry, ptr @fsl_xcvr_load_firmware._entry.166, ptr @fsl_xcvr_load_firmware._entry.169, ptr @fsl_xcvr_load_firmware._entry.172, ptr @fsl_xcvr_load_firmware._entry_ptr, ptr @fsl_xcvr_load_firmware._entry_ptr.168, ptr @fsl_xcvr_load_firmware._entry_ptr.171, ptr @fsl_xcvr_load_firmware._entry_ptr.174, ptr @fsl_xcvr_prepare._entry, ptr @fsl_xcvr_prepare._entry.79, ptr @fsl_xcvr_prepare._entry.82, ptr @fsl_xcvr_prepare._entry.85, ptr @fsl_xcvr_prepare._entry.88, ptr @fsl_xcvr_prepare._entry.90, ptr @fsl_xcvr_prepare._entry.93, ptr @fsl_xcvr_prepare._entry.96, ptr @fsl_xcvr_prepare._entry_ptr, ptr @fsl_xcvr_prepare._entry_ptr.81, ptr @fsl_xcvr_prepare._entry_ptr.84, ptr @fsl_xcvr_prepare._entry_ptr.87, ptr @fsl_xcvr_prepare._entry_ptr.89, ptr @fsl_xcvr_prepare._entry_ptr.92, ptr @fsl_xcvr_prepare._entry_ptr.95, ptr @fsl_xcvr_prepare._entry_ptr.98, ptr @fsl_xcvr_probe._entry, ptr @fsl_xcvr_probe._entry.12, ptr @fsl_xcvr_probe._entry.16, ptr @fsl_xcvr_probe._entry.22, ptr @fsl_xcvr_probe._entry.25, ptr @fsl_xcvr_probe._entry.28, ptr @fsl_xcvr_probe._entry.33, ptr @fsl_xcvr_probe._entry.38, ptr @fsl_xcvr_probe._entry.41, ptr @fsl_xcvr_probe._entry.8, ptr @fsl_xcvr_probe._entry_ptr, ptr @fsl_xcvr_probe._entry_ptr.10, ptr @fsl_xcvr_probe._entry_ptr.14, ptr @fsl_xcvr_probe._entry_ptr.18, ptr @fsl_xcvr_probe._entry_ptr.24, ptr @fsl_xcvr_probe._entry_ptr.27, ptr @fsl_xcvr_probe._entry_ptr.30, ptr @fsl_xcvr_probe._entry_ptr.35, ptr @fsl_xcvr_probe._entry_ptr.40, ptr @fsl_xcvr_probe._entry_ptr.43, ptr @fsl_xcvr_runtime_resume._entry, ptr @fsl_xcvr_runtime_resume._entry.141, ptr @fsl_xcvr_runtime_resume._entry.144, ptr @fsl_xcvr_runtime_resume._entry.147, ptr @fsl_xcvr_runtime_resume._entry.149, ptr @fsl_xcvr_runtime_resume._entry.152, ptr @fsl_xcvr_runtime_resume._entry.155, ptr @fsl_xcvr_runtime_resume._entry.158, ptr @fsl_xcvr_runtime_resume._entry.161, ptr @fsl_xcvr_runtime_resume._entry_ptr, ptr @fsl_xcvr_runtime_resume._entry_ptr.143, ptr @fsl_xcvr_runtime_resume._entry_ptr.146, ptr @fsl_xcvr_runtime_resume._entry_ptr.148, ptr @fsl_xcvr_runtime_resume._entry_ptr.151, ptr @fsl_xcvr_runtime_resume._entry_ptr.154, ptr @fsl_xcvr_runtime_resume._entry_ptr.157, ptr @fsl_xcvr_runtime_resume._entry_ptr.160, ptr @fsl_xcvr_runtime_resume._entry_ptr.163, ptr @fsl_xcvr_runtime_suspend._entry, ptr @fsl_xcvr_runtime_suspend._entry.136, ptr @fsl_xcvr_runtime_suspend._entry_ptr, ptr @fsl_xcvr_runtime_suspend._entry_ptr.138, ptr @fsl_xcvr_shutdown._entry, ptr @fsl_xcvr_shutdown._entry.74, ptr @fsl_xcvr_shutdown._entry_ptr, ptr @fsl_xcvr_shutdown._entry_ptr.76, ptr @fsl_xcvr_startup._entry, ptr @fsl_xcvr_startup._entry_ptr, ptr @fsl_xcvr_trigger._entry, ptr @fsl_xcvr_trigger._entry.115, ptr @fsl_xcvr_trigger._entry.118, ptr @fsl_xcvr_trigger._entry.121, ptr @fsl_xcvr_trigger._entry.124, ptr @fsl_xcvr_trigger._entry.127, ptr @fsl_xcvr_trigger._entry.130, ptr @fsl_xcvr_trigger._entry_ptr, ptr @fsl_xcvr_trigger._entry_ptr.117, ptr @fsl_xcvr_trigger._entry_ptr.120, ptr @fsl_xcvr_trigger._entry_ptr.123, ptr @fsl_xcvr_trigger._entry_ptr.126, ptr @fsl_xcvr_trigger._entry_ptr.129, ptr @fsl_xcvr_trigger._entry_ptr.132, ptr @fsl_xcvr_driver, ptr @.str, ptr @fsl_xcvr_dt_ids, ptr @fsl_xcvr_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @fsl_xcvr_probe._key, ptr @fsl_xcvr_regmap_cfg, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @fsl_xcvr_comp, ptr @fsl_xcvr_dai, ptr @.str.42, ptr @fsl_xcvr_reg_defaults, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @fsl_xcvr_dai_ops, ptr @.str.54, ptr @.str.55, ptr @fsl_xcvr_mode_kctl, ptr @fsl_xcvr_arc_mode_kctl, ptr @fsl_xcvr_earc_capds_kctl, ptr @fsl_xcvr_tx_ctls, ptr @fsl_xcvr_rx_ctls, ptr @.str.56, ptr @fsl_xcvr_mode_enum, ptr @fsl_xcvr_mode, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @fsl_xcvr_arc_mode_enum, ptr @fsl_xcvr_arc_mode, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @fsl_xcvr_spdif_channels_constr, ptr @fsl_xcvr_spdif_rates_constr, ptr @fsl_xcvr_earc_channels_constr, ptr @fsl_xcvr_earc_rates_constr, ptr @fsl_xcvr_spdif_channels, ptr @fsl_xcvr_spdif_rates, ptr @fsl_xcvr_earc_channels, ptr @fsl_xcvr_earc_rates, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @fsl_xcvr_phy_arc_cfg, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @fsl_xcvr_imx8mp_data, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.164, ptr @.str.165, ptr @.str.167, ptr @.str.170, ptr @.str.173], section "llvm.metadata"
@0 = internal global [177 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_regmap_cfg to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_comp to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_reg_defaults to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_mode_kctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_arc_mode_kctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_earc_capds_kctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_tx_ctls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_rx_ctls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_mode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_arc_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_arc_mode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_spdif_channels_constr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_spdif_rates_constr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_earc_channels_constr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_earc_rates_constr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_spdif_channels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_spdif_rates to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_earc_channels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_earc_rates to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_shutdown._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_prepare._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_prepare._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_prepare._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_prepare._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_prepare._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_prepare._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_prepare._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_en_aud_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_en_aud_pll._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_en_aud_pll._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_ai_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_en_phy_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_phy_arc_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_trigger._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_trigger._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_trigger._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_trigger._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_trigger._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_trigger._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_imx8mp_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_runtime_suspend._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_runtime_resume._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_runtime_resume._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_runtime_resume._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_runtime_resume._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_runtime_resume._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_runtime_resume._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_runtime_resume._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_runtime_resume._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_load_firmware._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_load_firmware._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_xcvr_load_firmware._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_xcvr_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_xcvr_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_xcvr_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_xcvr_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_xcvr_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 728, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev2 = getelementptr inbounds %struct.fsl_xcvr, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %pdev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev2, align 4
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #10
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %call.i, align 4
  %call5 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  %ipg_clk = getelementptr inbounds %struct.fsl_xcvr, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %ipg_clk, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #13
  %3 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ipg_clk, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  %phy_clk = getelementptr inbounds %struct.fsl_xcvr, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %phy_clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call12, ptr %phy_clk, align 4
  %cmp.i198 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i198, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #13
  %7 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_clk, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.11) #10
  %spba_clk = getelementptr inbounds %struct.fsl_xcvr, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %spba_clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call22, ptr %spba_clk, align 4
  %cmp.i199 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i199, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #13
  %11 = ptrtoint ptr %spba_clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spba_clk, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  %call32 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.15) #10
  %pll_ipg_clk = getelementptr inbounds %struct.fsl_xcvr, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %pll_ipg_clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call32, ptr %pll_ipg_clk, align 4
  %cmp.i200 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i200, label %do.end38, label %if.end41

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #13
  %15 = ptrtoint ptr %pll_ipg_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pll_ipg_clk, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end31
  %call42 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.19) #10
  %ram_addr = getelementptr inbounds %struct.fsl_xcvr, ptr %call.i, i32 0, i32 11
  %18 = ptrtoint ptr %ram_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call42, ptr %ram_addr, align 4
  %cmp.i201 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %call42 to i32
  br label %cleanup

if.end48:                                         ; preds = %if.end41
  %call49 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.20) #10
  %cmp.i202 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i202, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %call49 to i32
  br label %cleanup

if.end53:                                         ; preds = %if.end48
  %call54 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call49, ptr noundef nonnull @fsl_xcvr_regmap_cfg, ptr noundef nonnull @fsl_xcvr_probe._key, ptr noundef nonnull @.str.21) #10
  %regmap = getelementptr inbounds %struct.fsl_xcvr, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call54, ptr %regmap, align 4
  %cmp.i203 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %do.end60, label %if.end65

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %call54 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %22) #13
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %cleanup

if.end65:                                         ; preds = %if.end53
  %call.i204 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %reset = getelementptr inbounds %struct.fsl_xcvr, ptr %call.i, i32 0, i32 7
  %26 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i204, ptr %reset, align 4
  %cmp.i205 = icmp ugt ptr %call.i204, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205, label %do.end72, label %if.end75

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #13
  %27 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reset, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %cleanup

if.end75:                                         ; preds = %if.end65
  %call76 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp = icmp slt i32 %call76, 0
  br i1 %cmp, label %if.end75.cleanup_crit_edge, label %if.end78

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end78:                                         ; preds = %if.end75
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 8
  %call.i206 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call76, ptr noundef nonnull @irq0_isr, ptr noundef null, i32 noundef 0, ptr noundef %31, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %tobool80.not = icmp eq i32 %call.i206, 0
  br i1 %tobool80.not, label %if.end85, label %do.end84

do.end84:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %call.i206) #13
  br label %cleanup

if.end85:                                         ; preds = %if.end78
  %call86 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.31) #10
  %call87 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.32) #10
  %tobool88.not = icmp eq ptr %call86, null
  %tobool89.not = icmp eq ptr %call87, null
  %or.cond = select i1 %tobool88.not, i1 true, i1 %tobool89.not
  br i1 %or.cond, label %do.end93, label %if.end94

do.end93:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34) #13
  br label %cleanup

if.end94:                                         ; preds = %if.end85
  %dma_prms_rx = getelementptr inbounds %struct.fsl_xcvr, ptr %call.i, i32 0, i32 12
  %chan_name = getelementptr inbounds %struct.fsl_xcvr, ptr %call.i, i32 0, i32 12, i32 4
  %32 = ptrtoint ptr %chan_name to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.36, ptr %chan_name, align 4
  %dma_prms_tx = getelementptr inbounds %struct.fsl_xcvr, ptr %call.i, i32 0, i32 13
  %chan_name95 = getelementptr inbounds %struct.fsl_xcvr, ptr %call.i, i32 0, i32 13, i32 4
  %33 = ptrtoint ptr %chan_name95 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.37, ptr %chan_name95, align 4
  %34 = ptrtoint ptr %call86 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call86, align 4
  %36 = ptrtoint ptr %dma_prms_rx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %dma_prms_rx, align 4
  %37 = ptrtoint ptr %call87 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call87, align 4
  %39 = ptrtoint ptr %dma_prms_tx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %dma_prms_tx, align 4
  %maxburst = getelementptr inbounds %struct.fsl_xcvr, ptr %call.i, i32 0, i32 12, i32 2
  %40 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16, ptr %maxburst, align 4
  %maxburst102 = getelementptr inbounds %struct.fsl_xcvr, ptr %call.i, i32 0, i32 13, i32 2
  %41 = ptrtoint ptr %maxburst102 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 16, ptr %maxburst102, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #10
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %44, i1 noundef zeroext true) #10
  %call104 = tail call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev1, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end110, label %do.end109

do.end109:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39) #13
  br label %cleanup

if.end110:                                        ; preds = %if.end94
  %call111 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @fsl_xcvr_comp, ptr noundef nonnull @fsl_xcvr_dai, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end110.cleanup_crit_edge, label %do.end116

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end116:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.53) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end116, %if.end110.cleanup_crit_edge, %do.end109, %do.end93, %do.end84, %if.end75.cleanup_crit_edge, %do.end72, %do.end60, %if.then51, %if.then45, %do.end38, %do.end28, %do.end18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ %9, %do.end18 ], [ %13, %do.end28 ], [ %17, %do.end38 ], [ %19, %if.then45 ], [ %20, %if.then51 ], [ %25, %do.end60 ], [ %29, %do.end72 ], [ %call.i206, %do.end84 ], [ %call104, %do.end109 ], [ -22, %do.end93 ], [ -12, %entry.cleanup_crit_edge ], [ %call76, %if.end75.cleanup_crit_edge ], [ %call111, %do.end116 ], [ 0, %if.end110.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq0_isr(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  %isr = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.fsl_xcvr, ptr %devid, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %regmap2 = getelementptr inbounds %struct.fsl_xcvr, ptr %devid, i32 0, i32 2
  %2 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %isr) #10
  %4 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %isr, align 4, !annotation !367
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val, align 4, !annotation !367
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 80, ptr noundef nonnull %isr) #10
  %6 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %isr, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end54_crit_edge, label %do.body

entry.if.end54_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irq0_isr.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irq0_isr, %if.then7)) #10
          to label %do.end [label %if.then7], !srcloc !368

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irq0_isr.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.46) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %8 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap2, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 16, i32 noundef 983040, i32 noundef 524288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %ram_addr = getelementptr inbounds %struct.fsl_xcvr, ptr %devid, i32 0, i32 11
  %10 = ptrtoint ptr %ram_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ram_addr, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 32
  %add.ptr11 = getelementptr i8, ptr %11, i32 128
  call void @mmiocpy(ptr noundef nonnull %val, ptr noundef %add.ptr, i32 noundef 4) #10
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not = icmp eq i32 %13, 0
  br i1 %tobool12.not, label %if.end18, label %do.end.if.then20_crit_edge

do.end.if.then20_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end18:                                         ; preds = %do.end
  %14 = ptrtoint ptr %ram_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ram_addr, align 4
  %add.ptr15 = getelementptr i8, ptr %15, i32 36
  %add.ptr17 = getelementptr i8, ptr %15, i32 160
  call void @mmiocpy(ptr noundef nonnull %val, ptr noundef %add.ptr15, i32 noundef 4) #10
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool19.not = icmp eq i32 %.pr, 0
  br i1 %tobool19.not, label %if.end18.if.end54_crit_edge, label %if.end18.if.then20_crit_edge

if.end18.if.then20_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end18.if.end54_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then20:                                        ; preds = %if.end18.if.then20_crit_edge, %do.end.if.then20_crit_edge
  %reg_ctrl.0257 = phi ptr [ %add.ptr15, %if.end18.if.then20_crit_edge ], [ %add.ptr, %do.end.if.then20_crit_edge ]
  %reg_buff.0256 = phi ptr [ %add.ptr17, %if.end18.if.then20_crit_edge ], [ %add.ptr11, %do.end.if.then20_crit_edge ]
  %rx_iec958 = getelementptr inbounds %struct.fsl_xcvr, ptr %devid, i32 0, i32 14
  call void @mmiocpy(ptr noundef %rx_iec958, ptr noundef %reg_buff.0256, i32 noundef 24) #10
  %17 = ptrtoint ptr %rx_iec958 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_iec958, align 4
  %19 = lshr i32 %18, 8
  %conv4.i.i = and i32 %19, 255
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i
  %20 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i10.i.i, align 1
  %conv6.i.i = zext i8 %21 to i32
  %22 = shl nuw nsw i32 %conv6.i.i, 16
  %23 = and i32 %18, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %25 to i32
  %26 = shl nuw i32 %conv2.i.i, 24
  %or.i13.i = or i32 %22, %26
  %sum.shift.i = lshr i32 %18, 24
  %arrayidx.i10.i11.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i
  %27 = ptrtoint ptr %arrayidx.i10.i11.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i10.i11.i, align 1
  %conv6.i12.i = zext i8 %28 to i32
  %shl.i = or i32 %or.i13.i, %conv6.i12.i
  %shr.i = lshr i32 %18, 16
  %29 = and i32 %shr.i, 255
  %arrayidx.i.i7.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i7.i, align 1
  %conv2.i8.i = zext i8 %31 to i32
  %shl.i9.i = shl nuw nsw i32 %conv2.i8.i, 8
  %or.i = or i32 %shl.i, %shl.i9.i
  store i32 %or.i, ptr %rx_iec958, align 4
  %add.ptr23.1 = getelementptr %struct.fsl_xcvr, ptr %devid, i32 0, i32 14, i32 0, i32 4
  %32 = ptrtoint ptr %add.ptr23.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr23.1, align 4
  %34 = lshr i32 %33, 8
  %conv4.i.i.1 = and i32 %34, 255
  %arrayidx.i10.i.i.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i.1
  %35 = ptrtoint ptr %arrayidx.i10.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i10.i.i.1, align 1
  %conv6.i.i.1 = zext i8 %36 to i32
  %37 = shl nuw nsw i32 %conv6.i.i.1, 16
  %38 = and i32 %33, 255
  %arrayidx.i.i.i.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx.i.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i.i.1, align 1
  %conv2.i.i.1 = zext i8 %40 to i32
  %41 = shl nuw i32 %conv2.i.i.1, 24
  %or.i13.i.1 = or i32 %37, %41
  %sum.shift.i.1 = lshr i32 %33, 24
  %arrayidx.i10.i11.i.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i.1
  %42 = ptrtoint ptr %arrayidx.i10.i11.i.1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i10.i11.i.1, align 1
  %conv6.i12.i.1 = zext i8 %43 to i32
  %shl.i.1 = or i32 %or.i13.i.1, %conv6.i12.i.1
  %shr.i.1 = lshr i32 %33, 16
  %44 = and i32 %shr.i.1, 255
  %arrayidx.i.i7.i.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i.i7.i.1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i.i7.i.1, align 1
  %conv2.i8.i.1 = zext i8 %46 to i32
  %shl.i9.i.1 = shl nuw nsw i32 %conv2.i8.i.1, 8
  %or.i.1 = or i32 %shl.i.1, %shl.i9.i.1
  store i32 %or.i.1, ptr %add.ptr23.1, align 4
  %add.ptr23.2 = getelementptr %struct.fsl_xcvr, ptr %devid, i32 0, i32 14, i32 0, i32 8
  %47 = ptrtoint ptr %add.ptr23.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr23.2, align 4
  %49 = lshr i32 %48, 8
  %conv4.i.i.2 = and i32 %49, 255
  %arrayidx.i10.i.i.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i.2
  %50 = ptrtoint ptr %arrayidx.i10.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i10.i.i.2, align 1
  %conv6.i.i.2 = zext i8 %51 to i32
  %52 = shl nuw nsw i32 %conv6.i.i.2, 16
  %53 = and i32 %48, 255
  %arrayidx.i.i.i.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx.i.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i.i.i.2, align 1
  %conv2.i.i.2 = zext i8 %55 to i32
  %56 = shl nuw i32 %conv2.i.i.2, 24
  %or.i13.i.2 = or i32 %52, %56
  %sum.shift.i.2 = lshr i32 %48, 24
  %arrayidx.i10.i11.i.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i.2
  %57 = ptrtoint ptr %arrayidx.i10.i11.i.2 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i10.i11.i.2, align 1
  %conv6.i12.i.2 = zext i8 %58 to i32
  %shl.i.2 = or i32 %or.i13.i.2, %conv6.i12.i.2
  %shr.i.2 = lshr i32 %48, 16
  %59 = and i32 %shr.i.2, 255
  %arrayidx.i.i7.i.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx.i.i7.i.2 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i.i7.i.2, align 1
  %conv2.i8.i.2 = zext i8 %61 to i32
  %shl.i9.i.2 = shl nuw nsw i32 %conv2.i8.i.2, 8
  %or.i.2 = or i32 %shl.i.2, %shl.i9.i.2
  store i32 %or.i.2, ptr %add.ptr23.2, align 4
  %add.ptr23.3 = getelementptr %struct.fsl_xcvr, ptr %devid, i32 0, i32 14, i32 0, i32 12
  %62 = ptrtoint ptr %add.ptr23.3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr23.3, align 4
  %64 = lshr i32 %63, 8
  %conv4.i.i.3 = and i32 %64, 255
  %arrayidx.i10.i.i.3 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i.3
  %65 = ptrtoint ptr %arrayidx.i10.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i10.i.i.3, align 1
  %conv6.i.i.3 = zext i8 %66 to i32
  %67 = shl nuw nsw i32 %conv6.i.i.3, 16
  %68 = and i32 %63, 255
  %arrayidx.i.i.i.3 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx.i.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i.i.i.3, align 1
  %conv2.i.i.3 = zext i8 %70 to i32
  %71 = shl nuw i32 %conv2.i.i.3, 24
  %or.i13.i.3 = or i32 %67, %71
  %sum.shift.i.3 = lshr i32 %63, 24
  %arrayidx.i10.i11.i.3 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i.3
  %72 = ptrtoint ptr %arrayidx.i10.i11.i.3 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i10.i11.i.3, align 1
  %conv6.i12.i.3 = zext i8 %73 to i32
  %shl.i.3 = or i32 %or.i13.i.3, %conv6.i12.i.3
  %shr.i.3 = lshr i32 %63, 16
  %74 = and i32 %shr.i.3, 255
  %arrayidx.i.i7.i.3 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %74
  %75 = ptrtoint ptr %arrayidx.i.i7.i.3 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i.i7.i.3, align 1
  %conv2.i8.i.3 = zext i8 %76 to i32
  %shl.i9.i.3 = shl nuw nsw i32 %conv2.i8.i.3, 8
  %or.i.3 = or i32 %shl.i.3, %shl.i9.i.3
  store i32 %or.i.3, ptr %add.ptr23.3, align 4
  %add.ptr23.4 = getelementptr %struct.fsl_xcvr, ptr %devid, i32 0, i32 14, i32 0, i32 16
  %77 = ptrtoint ptr %add.ptr23.4 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr23.4, align 4
  %79 = lshr i32 %78, 8
  %conv4.i.i.4 = and i32 %79, 255
  %arrayidx.i10.i.i.4 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i.4
  %80 = ptrtoint ptr %arrayidx.i10.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i10.i.i.4, align 1
  %conv6.i.i.4 = zext i8 %81 to i32
  %82 = shl nuw nsw i32 %conv6.i.i.4, 16
  %83 = and i32 %78, 255
  %arrayidx.i.i.i.4 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %83
  %84 = ptrtoint ptr %arrayidx.i.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i.i.i.4, align 1
  %conv2.i.i.4 = zext i8 %85 to i32
  %86 = shl nuw i32 %conv2.i.i.4, 24
  %or.i13.i.4 = or i32 %82, %86
  %sum.shift.i.4 = lshr i32 %78, 24
  %arrayidx.i10.i11.i.4 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i.4
  %87 = ptrtoint ptr %arrayidx.i10.i11.i.4 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i10.i11.i.4, align 1
  %conv6.i12.i.4 = zext i8 %88 to i32
  %shl.i.4 = or i32 %or.i13.i.4, %conv6.i12.i.4
  %shr.i.4 = lshr i32 %78, 16
  %89 = and i32 %shr.i.4, 255
  %arrayidx.i.i7.i.4 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %89
  %90 = ptrtoint ptr %arrayidx.i.i7.i.4 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i.i7.i.4, align 1
  %conv2.i8.i.4 = zext i8 %91 to i32
  %shl.i9.i.4 = shl nuw nsw i32 %conv2.i8.i.4, 8
  %or.i.4 = or i32 %shl.i.4, %shl.i9.i.4
  store i32 %or.i.4, ptr %add.ptr23.4, align 4
  %add.ptr23.5 = getelementptr %struct.fsl_xcvr, ptr %devid, i32 0, i32 14, i32 0, i32 20
  %92 = ptrtoint ptr %add.ptr23.5 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr23.5, align 4
  %94 = lshr i32 %93, 8
  %conv4.i.i.5 = and i32 %94, 255
  %arrayidx.i10.i.i.5 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i.5
  %95 = ptrtoint ptr %arrayidx.i10.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i10.i.i.5, align 1
  %conv6.i.i.5 = zext i8 %96 to i32
  %97 = shl nuw nsw i32 %conv6.i.i.5, 16
  %98 = and i32 %93, 255
  %arrayidx.i.i.i.5 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %98
  %99 = ptrtoint ptr %arrayidx.i.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.i.i.i.5, align 1
  %conv2.i.i.5 = zext i8 %100 to i32
  %101 = shl nuw i32 %conv2.i.i.5, 24
  %or.i13.i.5 = or i32 %97, %101
  %sum.shift.i.5 = lshr i32 %93, 24
  %arrayidx.i10.i11.i.5 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i.5
  %102 = ptrtoint ptr %arrayidx.i10.i11.i.5 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i10.i11.i.5, align 1
  %conv6.i12.i.5 = zext i8 %103 to i32
  %shl.i.5 = or i32 %or.i13.i.5, %conv6.i12.i.5
  %shr.i.5 = lshr i32 %93, 16
  %104 = and i32 %shr.i.5, 255
  %arrayidx.i.i7.i.5 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %104
  %105 = ptrtoint ptr %arrayidx.i.i7.i.5 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i.i7.i.5, align 1
  %conv2.i8.i.5 = zext i8 %106 to i32
  %shl.i9.i.5 = shl nuw nsw i32 %conv2.i8.i.5, 8
  %or.i.5 = or i32 %shl.i.5, %shl.i9.i.5
  store i32 %or.i.5, ptr %add.ptr23.5, align 4
  %107 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %93, ptr %val, align 4
  call void @mmioset(ptr noundef %reg_ctrl.0257, i32 noundef 0, i32 noundef 4) #10
  br label %if.end54

if.end54:                                         ; preds = %if.then20, %if.end18.if.end54_crit_edge, %entry.if.end54_crit_edge
  %isr_clr.0 = phi i32 [ 1, %if.then20 ], [ 1, %if.end18.if.end54_crit_edge ], [ 0, %entry.if.end54_crit_edge ]
  %108 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %isr, align 4
  %and55 = and i32 %109, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.if.end75_crit_edge, label %do.body58

if.end54.if.end75_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

do.body58:                                        ; preds = %if.end54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irq0_isr.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irq0_isr, %if.then70)) #10
          to label %do.end73 [label %if.then70], !srcloc !368

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irq0_isr.__UNIQUE_ID_ddebug246, ptr noundef %dev1, ptr noundef nonnull @.str.47) #10
  br label %do.end73

do.end73:                                         ; preds = %if.then70, %do.body58
  %or74 = or i32 %isr_clr.0, 2
  br label %if.end75

if.end75:                                         ; preds = %do.end73, %if.end54.if.end75_crit_edge
  %isr_clr.1 = phi i32 [ %or74, %do.end73 ], [ %isr_clr.0, %if.end54.if.end75_crit_edge ]
  %110 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %isr, align 4
  %and76 = and i32 %111, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end96_crit_edge, label %do.body79

if.end75.if.end96_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

do.body79:                                        ; preds = %if.end75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irq0_isr.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irq0_isr, %if.then91)) #10
          to label %do.end94 [label %if.then91], !srcloc !368

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irq0_isr.__UNIQUE_ID_ddebug247, ptr noundef %dev1, ptr noundef nonnull @.str.48) #10
  br label %do.end94

do.end94:                                         ; preds = %if.then91, %do.body79
  %or95 = or i32 %isr_clr.1, 4
  br label %if.end96

if.end96:                                         ; preds = %do.end94, %if.end75.if.end96_crit_edge
  %isr_clr.2 = phi i32 [ %or95, %do.end94 ], [ %isr_clr.1, %if.end75.if.end96_crit_edge ]
  %112 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %isr, align 4
  %and97 = and i32 %113, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end96.if.end117_crit_edge, label %do.body100

if.end96.if.end117_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

do.body100:                                       ; preds = %if.end96
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irq0_isr.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irq0_isr, %if.then112)) #10
          to label %do.end115 [label %if.then112], !srcloc !368

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irq0_isr.__UNIQUE_ID_ddebug248, ptr noundef %dev1, ptr noundef nonnull @.str.49) #10
  br label %do.end115

do.end115:                                        ; preds = %if.then112, %do.body100
  %or116 = or i32 %isr_clr.2, 64
  br label %if.end117

if.end117:                                        ; preds = %do.end115, %if.end96.if.end117_crit_edge
  %isr_clr.3 = phi i32 [ %or116, %do.end115 ], [ %isr_clr.2, %if.end96.if.end117_crit_edge ]
  %114 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %isr, align 4
  %and118 = and i32 %115, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end117.if.end138_crit_edge, label %do.body121

if.end117.if.end138_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

do.body121:                                       ; preds = %if.end117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irq0_isr.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irq0_isr, %if.then133)) #10
          to label %do.end136 [label %if.then133], !srcloc !368

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irq0_isr.__UNIQUE_ID_ddebug249, ptr noundef %dev1, ptr noundef nonnull @.str.50) #10
  br label %do.end136

do.end136:                                        ; preds = %if.then133, %do.body121
  %or137 = or i32 %isr_clr.3, 2097152
  br label %if.end138

if.end138:                                        ; preds = %do.end136, %if.end117.if.end138_crit_edge
  %isr_clr.4 = phi i32 [ %or137, %do.end136 ], [ %isr_clr.3, %if.end117.if.end138_crit_edge ]
  %116 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %isr, align 4
  %and139 = and i32 %117, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.end138.if.end159_crit_edge, label %do.body142

if.end138.if.end159_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

do.body142:                                       ; preds = %if.end138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irq0_isr.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irq0_isr, %if.then154)) #10
          to label %do.end157 [label %if.then154], !srcloc !368

if.then154:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irq0_isr.__UNIQUE_ID_ddebug250, ptr noundef %dev1, ptr noundef nonnull @.str.51) #10
  br label %do.end157

do.end157:                                        ; preds = %if.then154, %do.body142
  %or158 = or i32 %isr_clr.4, 16384
  br label %if.end159

if.end159:                                        ; preds = %do.end157, %if.end138.if.end159_crit_edge
  %isr_clr.5 = phi i32 [ %or158, %do.end157 ], [ %isr_clr.4, %if.end138.if.end159_crit_edge ]
  %118 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %isr, align 4
  %and160 = and i32 %119, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.end180, label %do.body163

do.body163:                                       ; preds = %if.end159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irq0_isr.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irq0_isr, %if.then175)) #10
          to label %if.end180.thread [label %if.then175], !srcloc !368

if.then175:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irq0_isr.__UNIQUE_ID_ddebug251, ptr noundef %dev1, ptr noundef nonnull @.str.52) #10
  br label %if.end180.thread

if.end180.thread:                                 ; preds = %if.then175, %do.body163
  %or179 = or i32 %isr_clr.5, 32768
  br label %if.then182

if.end180:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isr_clr.5)
  %tobool181.not = icmp eq i32 %isr_clr.5, 0
  br i1 %tobool181.not, label %if.end180.cleanup_crit_edge, label %if.end180.if.then182_crit_edge

if.end180.if.then182_crit_edge:                   ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then182

if.end180.cleanup_crit_edge:                      ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then182:                                       ; preds = %if.end180.if.then182_crit_edge, %if.end180.thread
  %isr_clr.6266 = phi i32 [ %or179, %if.end180.thread ], [ %isr_clr.5, %if.end180.if.then182_crit_edge ]
  %call183 = call i32 @regmap_write(ptr noundef %3, i32 noundef 88, i32 noundef %isr_clr.6266) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then182, %if.end180.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then182 ], [ 0, %if.end180.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %isr) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_xcvr_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 16, label %entry.return_crit_edge
    i32 48, label %entry.return_crit_edge1
    i32 64, label %entry.return_crit_edge2
    i32 80, label %entry.return_crit_edge3
    i32 84, label %entry.return_crit_edge4
    i32 88, label %entry.return_crit_edge5
    i32 92, label %entry.return_crit_edge6
    i32 112, label %entry.return_crit_edge7
    i32 132, label %entry.return_crit_edge8
    i32 136, label %entry.return_crit_edge9
    i32 140, label %entry.return_crit_edge10
    i32 144, label %entry.return_crit_edge11
    i32 148, label %entry.return_crit_edge12
    i32 152, label %entry.return_crit_edge13
    i32 156, label %entry.return_crit_edge14
    i32 160, label %entry.return_crit_edge15
    i32 176, label %entry.return_crit_edge16
    i32 384, label %entry.return_crit_edge17
    i32 388, label %entry.return_crit_edge18
    i32 392, label %entry.return_crit_edge19
    i32 396, label %entry.return_crit_edge20
    i32 548, label %entry.return_crit_edge21
    i32 552, label %entry.return_crit_edge22
    i32 556, label %entry.return_crit_edge23
    i32 560, label %entry.return_crit_edge24
    i32 564, label %entry.return_crit_edge25
    i32 568, label %entry.return_crit_edge26
    i32 572, label %entry.return_crit_edge27
    i32 576, label %entry.return_crit_edge28
    i32 580, label %entry.return_crit_edge29
  ]

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_xcvr_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 16, label %entry.return_crit_edge1
    i32 32, label %entry.return_crit_edge2
    i32 48, label %entry.return_crit_edge3
    i32 64, label %entry.return_crit_edge4
    i32 80, label %entry.return_crit_edge5
    i32 84, label %entry.return_crit_edge6
    i32 88, label %entry.return_crit_edge7
    i32 92, label %entry.return_crit_edge8
    i32 112, label %entry.return_crit_edge9
    i32 128, label %entry.return_crit_edge10
    i32 132, label %entry.return_crit_edge11
    i32 136, label %entry.return_crit_edge12
    i32 140, label %entry.return_crit_edge13
    i32 144, label %entry.return_crit_edge14
    i32 148, label %entry.return_crit_edge15
    i32 152, label %entry.return_crit_edge16
    i32 156, label %entry.return_crit_edge17
    i32 164, label %entry.return_crit_edge18
    i32 176, label %entry.return_crit_edge19
    i32 384, label %entry.return_crit_edge20
    i32 388, label %entry.return_crit_edge21
    i32 392, label %entry.return_crit_edge22
    i32 396, label %entry.return_crit_edge23
    i32 544, label %entry.return_crit_edge24
    i32 548, label %entry.return_crit_edge25
    i32 552, label %entry.return_crit_edge26
    i32 556, label %entry.return_crit_edge27
    i32 560, label %entry.return_crit_edge28
    i32 564, label %entry.return_crit_edge29
    i32 568, label %entry.return_crit_edge30
    i32 572, label %entry.return_crit_edge31
    i32 576, label %entry.return_crit_edge32
    i32 580, label %entry.return_crit_edge33
    i32 736, label %entry.return_crit_edge34
    i32 752, label %entry.return_crit_edge35
  ]

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_xcvr_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @fsl_xcvr_readable_reg(ptr noundef %dev, i32 noundef %reg)
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_xcvr_dai_probe(ptr noundef %dai) #2 align 64 {
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
  %dma_prms_tx = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 13
  %dma_prms_rx = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 12
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dma_prms_tx, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %5 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dma_prms_rx, ptr %capture_dma_data.i, align 4
  %call1 = tail call i32 @snd_soc_add_dai_controls(ptr noundef %dai, ptr noundef nonnull @fsl_xcvr_mode_kctl, i32 noundef 1) #10
  %call2 = tail call i32 @snd_soc_add_dai_controls(ptr noundef %dai, ptr noundef nonnull @fsl_xcvr_arc_mode_kctl, i32 noundef 1) #10
  %call3 = tail call i32 @snd_soc_add_dai_controls(ptr noundef %dai, ptr noundef nonnull @fsl_xcvr_earc_capds_kctl, i32 noundef 1) #10
  %call4 = tail call i32 @snd_soc_add_dai_controls(ptr noundef %dai, ptr noundef nonnull @fsl_xcvr_tx_ctls, i32 noundef 2) #10
  %call5 = tail call i32 @snd_soc_add_dai_controls(ptr noundef %dai, ptr noundef nonnull @fsl_xcvr_rx_ctls, i32 noundef 2) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_dai_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_xcvr_mode_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %mode = getelementptr inbounds %struct.fsl_xcvr, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_xcvr_mode_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %component, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_component, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card1, align 4
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %values.i = getelementptr inbounds %struct.soc_enum, ptr %8, i32 0, i32 6
  %15 = ptrtoint ptr %values.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %values.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %entry.snd_soc_enum_item_to_val.exit_crit_edge, label %if.end.i

entry.snd_soc_enum_item_to_val.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_soc_enum_item_to_val.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr i32, ptr %16, i32 %14
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  br label %snd_soc_enum_item_to_val.exit

snd_soc_enum_item_to_val.exit:                    ; preds = %if.end.i, %entry.snd_soc_enum_item_to_val.exit_crit_edge
  %retval.0.i = phi i32 [ %18, %if.end.i ], [ %14, %entry.snd_soc_enum_item_to_val.exit_crit_edge ]
  %mode = getelementptr inbounds %struct.fsl_xcvr, ptr %5, i32 0, i32 9
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i, ptr %mode, align 4
  %20 = load ptr, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @fsl_xcvr_arc_mode_kctl, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 1
  %21 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %component, align 4
  %card1.i = getelementptr inbounds %struct.snd_soc_component, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card1.i, align 4
  %call.i = tail call ptr @snd_soc_card_get_kcontrol(ptr noundef %24, ptr noundef %20) #10
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %snd_soc_enum_item_to_val.exit.fsl_xcvr_activate_ctl.exit_crit_edge, label %if.end.i20

snd_soc_enum_item_to_val.exit.fsl_xcvr_activate_ctl.exit_crit_edge: ; preds = %snd_soc_enum_item_to_val.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_xcvr_activate_ctl.exit

if.end.i20:                                       ; preds = %snd_soc_enum_item_to_val.exit
  %access.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %access.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %access.i, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %28 = icmp eq i32 %27, 0
  %cmp6.i = xor i1 %cmp, %28
  br i1 %cmp6.i, label %if.end.i20.fsl_xcvr_activate_ctl.exit_crit_edge, label %if.end9.i

if.end.i20.fsl_xcvr_activate_ctl.exit_crit_edge:  ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_xcvr_activate_ctl.exit

if.end9.i:                                        ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #12
  %and18.i = and i32 %26, -3
  %masksel.i = select i1 %cmp, i32 2, i32 0
  %storemerge.i = or i32 %and18.i, %masksel.i
  %29 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %storemerge.i, ptr %access.i, align 4
  %snd_card.i = getelementptr inbounds %struct.snd_soc_card, ptr %24, i32 0, i32 6
  %30 = ptrtoint ptr %snd_card.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %snd_card.i, align 4
  %id.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %31, i32 noundef 2, ptr noundef %id.i) #10
  br label %fsl_xcvr_activate_ctl.exit

fsl_xcvr_activate_ctl.exit:                       ; preds = %if.end9.i, %if.end.i20.fsl_xcvr_activate_ctl.exit_crit_edge, %snd_soc_enum_item_to_val.exit.fsl_xcvr_activate_ctl.exit_crit_edge
  %32 = load ptr, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @fsl_xcvr_earc_capds_kctl, i32 0, i32 3), align 4
  %33 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp6 = icmp eq i32 %34, 2
  %35 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %component, align 4
  %card1.i22 = getelementptr inbounds %struct.snd_soc_component, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %card1.i22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card1.i22, align 4
  %call.i23 = tail call ptr @snd_soc_card_get_kcontrol(ptr noundef %38, ptr noundef %32) #10
  %cmp.i24 = icmp eq ptr %call.i23, null
  br i1 %cmp.i24, label %fsl_xcvr_activate_ctl.exit.fsl_xcvr_activate_ctl.exit34_crit_edge, label %if.end.i27

fsl_xcvr_activate_ctl.exit.fsl_xcvr_activate_ctl.exit34_crit_edge: ; preds = %fsl_xcvr_activate_ctl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_xcvr_activate_ctl.exit34

if.end.i27:                                       ; preds = %fsl_xcvr_activate_ctl.exit
  %access.i25 = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i23, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %access.i25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %access.i25, align 4
  %41 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %42 = icmp eq i32 %41, 0
  %cmp6.i26 = xor i1 %cmp6, %42
  br i1 %cmp6.i26, label %if.end.i27.fsl_xcvr_activate_ctl.exit34_crit_edge, label %if.end9.i33

if.end.i27.fsl_xcvr_activate_ctl.exit34_crit_edge: ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_xcvr_activate_ctl.exit34

if.end9.i33:                                      ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #12
  %and18.i28 = and i32 %40, -3
  %masksel.i29 = select i1 %cmp6, i32 2, i32 0
  %storemerge.i30 = or i32 %and18.i28, %masksel.i29
  %43 = ptrtoint ptr %access.i25 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %storemerge.i30, ptr %access.i25, align 4
  %snd_card.i31 = getelementptr inbounds %struct.snd_soc_card, ptr %38, i32 0, i32 6
  %44 = ptrtoint ptr %snd_card.i31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %snd_card.i31, align 4
  %id.i32 = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i23, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %45, i32 noundef 2, ptr noundef %id.i32) #10
  br label %fsl_xcvr_activate_ctl.exit34

fsl_xcvr_activate_ctl.exit34:                     ; preds = %if.end9.i33, %if.end.i27.fsl_xcvr_activate_ctl.exit34_crit_edge, %fsl_xcvr_activate_ctl.exit.fsl_xcvr_activate_ctl.exit34_crit_edge
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %12, i32 0, i32 24
  %46 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dai_link, align 4
  %call8 = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %12, ptr noundef %47) #10
  %48 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp10 = icmp eq i32 %49, 0
  %cond = zext i1 %cmp10 to i32
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call8, i32 0, i32 7
  %50 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcm, align 4
  %substream_count = getelementptr inbounds %struct.snd_pcm, ptr %51, i32 0, i32 8, i32 0, i32 2
  %52 = ptrtoint ptr %substream_count to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond, ptr %substream_count, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_get_pcm_runtime(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_card_get_kcontrol(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_xcvr_arc_mode_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %arc_mode = getelementptr inbounds %struct.fsl_xcvr, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %arc_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arc_mode, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_xcvr_arc_mode_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_soc_enum_item_to_val.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr i32, ptr %12, i32 %10
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  br label %snd_soc_enum_item_to_val.exit

snd_soc_enum_item_to_val.exit:                    ; preds = %if.end.i, %entry.snd_soc_enum_item_to_val.exit_crit_edge
  %retval.0.i = phi i32 [ %14, %if.end.i ], [ %10, %entry.snd_soc_enum_item_to_val.exit_crit_edge ]
  %arc_mode = getelementptr inbounds %struct.fsl_xcvr, ptr %5, i32 0, i32 10
  %15 = ptrtoint ptr %arc_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %arc_mode, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fsl_xcvr_type_capds_bytes_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
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
  store i32 256, ptr %count, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_xcvr_capds_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %cap_ds = getelementptr inbounds %struct.fsl_xcvr, ptr %5, i32 0, i32 16
  %6 = call ptr @memcpy(ptr %value, ptr %cap_ds, i32 256)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_xcvr_capds_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #8 align 64 {
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
  %cap_ds = getelementptr inbounds %struct.fsl_xcvr, ptr %5, i32 0, i32 16
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %cap_ds, ptr %value, i32 256)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fsl_xcvr_type_iec958_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
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

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_xcvr_tx_cs_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %tx_iec958 = getelementptr inbounds %struct.fsl_xcvr, ptr %5, i32 0, i32 15
  %6 = call ptr @memcpy(ptr %value, ptr %tx_iec958, i32 24)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_xcvr_tx_cs_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #8 align 64 {
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
  %tx_iec958 = getelementptr inbounds %struct.fsl_xcvr, ptr %5, i32 0, i32 15
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %tx_iec958, ptr %value, i32 24)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fsl_xcvr_type_iec958_bytes_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
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
  store i32 24, ptr %count, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_xcvr_rx_cs_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %rx_iec958 = getelementptr inbounds %struct.fsl_xcvr, ptr %5, i32 0, i32 14
  %6 = call ptr @memcpy(ptr %value, ptr %rx_iec958, i32 24)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_xcvr_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %streams = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %streams to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %streams, align 4
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 1, %5
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %cond = select i1 %cmp, ptr @.str.70, ptr @.str.71
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.68, ptr noundef nonnull %cond) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %9, label %if.end.if.end10_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge69
    i32 2, label %sw.bb5
  ]

if.end.sw.bb_crit_edge69:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge69
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %11 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime.i, align 4
  %call.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %12, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @fsl_xcvr_spdif_channels_constr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %12, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @fsl_xcvr_spdif_rates_constr) #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %runtime.i32 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %13 = ptrtoint ptr %runtime.i32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %runtime.i32, align 4
  %call.i33 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %14, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @fsl_xcvr_earc_channels_constr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp.i34 = icmp slt i32 %call.i33, 0
  br i1 %cmp.i34, label %sw.bb5.cleanup_crit_edge, label %if.end.i36

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i36:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i35 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %14, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @fsl_xcvr_earc_rates_constr) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i36, %if.end.i
  %call1.i35.sink = phi i32 [ %call1.i35, %if.end.i36 ], [ %call1.i, %if.end.i ]
  %15 = tail call i32 @llvm.smin.i32(i32 %call1.i35.sink, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35.sink)
  %cmp7 = icmp slt i32 %call1.i35.sink, 0
  br i1 %cmp7, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end10_crit_edge

sw.epilog.if.end10_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %sw.epilog.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %16 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream, align 4
  %shl12 = shl nuw i32 1, %17
  %18 = ptrtoint ptr %streams to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %streams, align 4
  %20 = trunc i32 %shl12 to i8
  %conv15 = or i8 %19, %20
  store i8 %conv15, ptr %streams, align 4
  %21 = load ptr, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @fsl_xcvr_mode_kctl, i32 0, i32 3), align 4
  %component.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %22 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %component.i, align 4
  %card1.i = getelementptr inbounds %struct.snd_soc_component, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card1.i, align 4
  %call.i39 = tail call ptr @snd_soc_card_get_kcontrol(ptr noundef %25, ptr noundef %21) #10
  %cmp.i40 = icmp eq ptr %call.i39, null
  br i1 %cmp.i40, label %if.end10.fsl_xcvr_activate_ctl.exit_crit_edge, label %if.end.i41

if.end10.fsl_xcvr_activate_ctl.exit_crit_edge:    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_xcvr_activate_ctl.exit

if.end.i41:                                       ; preds = %if.end10
  %access.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i39, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %access.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %access.i, align 4
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %if.end.i41.fsl_xcvr_activate_ctl.exit_crit_edge, label %if.end9.i

if.end.i41.fsl_xcvr_activate_ctl.exit_crit_edge:  ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_xcvr_activate_ctl.exit

if.end9.i:                                        ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #12
  %and18.i = and i32 %27, -3
  %30 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and18.i, ptr %access.i, align 4
  %snd_card.i = getelementptr inbounds %struct.snd_soc_card, ptr %25, i32 0, i32 6
  %31 = ptrtoint ptr %snd_card.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %snd_card.i, align 4
  %id.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i39, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %32, i32 noundef 2, ptr noundef %id.i) #10
  br label %fsl_xcvr_activate_ctl.exit

fsl_xcvr_activate_ctl.exit:                       ; preds = %if.end9.i, %if.end.i41.fsl_xcvr_activate_ctl.exit_crit_edge, %if.end10.fsl_xcvr_activate_ctl.exit_crit_edge
  %33 = load ptr, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @fsl_xcvr_arc_mode_kctl, i32 0, i32 3), align 4
  %34 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %component.i, align 4
  %card1.i43 = getelementptr inbounds %struct.snd_soc_component, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %card1.i43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card1.i43, align 4
  %call.i44 = tail call ptr @snd_soc_card_get_kcontrol(ptr noundef %37, ptr noundef %33) #10
  %cmp.i45 = icmp eq ptr %call.i44, null
  br i1 %cmp.i45, label %fsl_xcvr_activate_ctl.exit.fsl_xcvr_activate_ctl.exit52_crit_edge, label %if.end.i47

fsl_xcvr_activate_ctl.exit.fsl_xcvr_activate_ctl.exit52_crit_edge: ; preds = %fsl_xcvr_activate_ctl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_xcvr_activate_ctl.exit52

if.end.i47:                                       ; preds = %fsl_xcvr_activate_ctl.exit
  %access.i46 = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i44, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %access.i46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %access.i46, align 4
  %40 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %if.end.i47.fsl_xcvr_activate_ctl.exit52_crit_edge, label %if.end9.i51

if.end.i47.fsl_xcvr_activate_ctl.exit52_crit_edge: ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_xcvr_activate_ctl.exit52

if.end9.i51:                                      ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #12
  %and18.i48 = and i32 %39, -3
  %42 = ptrtoint ptr %access.i46 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and18.i48, ptr %access.i46, align 4
  %snd_card.i49 = getelementptr inbounds %struct.snd_soc_card, ptr %37, i32 0, i32 6
  %43 = ptrtoint ptr %snd_card.i49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %snd_card.i49, align 4
  %id.i50 = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i44, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %44, i32 noundef 2, ptr noundef %id.i50) #10
  br label %fsl_xcvr_activate_ctl.exit52

fsl_xcvr_activate_ctl.exit52:                     ; preds = %if.end9.i51, %if.end.i47.fsl_xcvr_activate_ctl.exit52_crit_edge, %fsl_xcvr_activate_ctl.exit.fsl_xcvr_activate_ctl.exit52_crit_edge
  %45 = load ptr, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @fsl_xcvr_earc_capds_kctl, i32 0, i32 3), align 4
  %46 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %component.i, align 4
  %card1.i54 = getelementptr inbounds %struct.snd_soc_component, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %card1.i54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card1.i54, align 4
  %call.i55 = tail call ptr @snd_soc_card_get_kcontrol(ptr noundef %49, ptr noundef %45) #10
  %cmp.i56 = icmp eq ptr %call.i55, null
  br i1 %cmp.i56, label %fsl_xcvr_activate_ctl.exit52.cleanup_crit_edge, label %if.end.i58

fsl_xcvr_activate_ctl.exit52.cleanup_crit_edge:   ; preds = %fsl_xcvr_activate_ctl.exit52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i58:                                       ; preds = %fsl_xcvr_activate_ctl.exit52
  %access.i57 = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i55, i32 1, i32 0, i32 1
  %50 = ptrtoint ptr %access.i57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %access.i57, align 4
  %52 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %if.end.i58.cleanup_crit_edge, label %if.end9.i62

if.end.i58.cleanup_crit_edge:                     ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.i62:                                      ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #12
  %and18.i59 = and i32 %51, -3
  %54 = ptrtoint ptr %access.i57 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and18.i59, ptr %access.i57, align 4
  %snd_card.i60 = getelementptr inbounds %struct.snd_soc_card, ptr %49, i32 0, i32 6
  %55 = ptrtoint ptr %snd_card.i60 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %snd_card.i60, align 4
  %id.i61 = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i55, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %56, i32 noundef 2, ptr noundef %id.i61) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i62, %if.end.i58.cleanup_crit_edge, %fsl_xcvr_activate_ctl.exit52.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %15, %sw.epilog.cleanup_crit_edge ], [ 0, %fsl_xcvr_activate_ctl.exit52.cleanup_crit_edge ], [ 0, %if.end.i58.cleanup_crit_edge ], [ 0, %if.end9.i62 ], [ %call.i33, %sw.bb5.cleanup_crit_edge ], [ %call.i, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_xcvr_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %shl = shl nuw i32 1, %5
  %streams = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %streams to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %streams, align 4
  %8 = trunc i32 %shl to i8
  %9 = xor i8 %8, -1
  %conv2 = and i8 %7, %9
  store i8 %conv2, ptr %streams, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2)
  %tobool.not = icmp eq i8 %conv2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @fsl_xcvr_mode_kctl, i32 0, i32 3), align 4
  %component.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %11 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %component.i, align 4
  %card1.i = getelementptr inbounds %struct.snd_soc_component, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card1.i, align 4
  %call.i = tail call ptr @snd_soc_card_get_kcontrol(ptr noundef %14, ptr noundef %10) #10
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then.fsl_xcvr_activate_ctl.exit_crit_edge, label %if.end.i

if.then.fsl_xcvr_activate_ctl.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_xcvr_activate_ctl.exit

if.end.i:                                         ; preds = %if.then
  %access.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %access.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %access.i, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %if.end9.i, label %if.end.i.fsl_xcvr_activate_ctl.exit_crit_edge

if.end.i.fsl_xcvr_activate_ctl.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_xcvr_activate_ctl.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %storemerge.i = or i32 %16, 2
  %18 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge.i, ptr %access.i, align 4
  %snd_card.i = getelementptr inbounds %struct.snd_soc_card, ptr %14, i32 0, i32 6
  %19 = ptrtoint ptr %snd_card.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %snd_card.i, align 4
  %id.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %20, i32 noundef 2, ptr noundef %id.i) #10
  br label %fsl_xcvr_activate_ctl.exit

fsl_xcvr_activate_ctl.exit:                       ; preds = %if.end9.i, %if.end.i.fsl_xcvr_activate_ctl.exit_crit_edge, %if.then.fsl_xcvr_activate_ctl.exit_crit_edge
  %21 = load ptr, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @fsl_xcvr_arc_mode_kctl, i32 0, i32 3), align 4
  %mode = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 9
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp5 = icmp eq i32 %23, 1
  %24 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %component.i, align 4
  %card1.i69 = getelementptr inbounds %struct.snd_soc_component, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %card1.i69 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card1.i69, align 4
  %call.i70 = tail call ptr @snd_soc_card_get_kcontrol(ptr noundef %27, ptr noundef %21) #10
  %cmp.i71 = icmp eq ptr %call.i70, null
  br i1 %cmp.i71, label %fsl_xcvr_activate_ctl.exit.fsl_xcvr_activate_ctl.exit80_crit_edge, label %if.end.i74

fsl_xcvr_activate_ctl.exit.fsl_xcvr_activate_ctl.exit80_crit_edge: ; preds = %fsl_xcvr_activate_ctl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_xcvr_activate_ctl.exit80

if.end.i74:                                       ; preds = %fsl_xcvr_activate_ctl.exit
  %access.i72 = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i70, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %access.i72 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %access.i72, align 4
  %30 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %31 = icmp eq i32 %30, 0
  %cmp6.i73 = xor i1 %cmp5, %31
  br i1 %cmp6.i73, label %if.end.i74.fsl_xcvr_activate_ctl.exit80_crit_edge, label %if.end9.i79

if.end.i74.fsl_xcvr_activate_ctl.exit80_crit_edge: ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_xcvr_activate_ctl.exit80

if.end9.i79:                                      ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #12
  %and18.i75 = and i32 %29, -3
  %masksel.i = select i1 %cmp5, i32 2, i32 0
  %storemerge.i76 = or i32 %and18.i75, %masksel.i
  %32 = ptrtoint ptr %access.i72 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge.i76, ptr %access.i72, align 4
  %snd_card.i77 = getelementptr inbounds %struct.snd_soc_card, ptr %27, i32 0, i32 6
  %33 = ptrtoint ptr %snd_card.i77 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %snd_card.i77, align 4
  %id.i78 = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i70, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %34, i32 noundef 2, ptr noundef %id.i78) #10
  br label %fsl_xcvr_activate_ctl.exit80

fsl_xcvr_activate_ctl.exit80:                     ; preds = %if.end9.i79, %if.end.i74.fsl_xcvr_activate_ctl.exit80_crit_edge, %fsl_xcvr_activate_ctl.exit.fsl_xcvr_activate_ctl.exit80_crit_edge
  %35 = load ptr, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @fsl_xcvr_earc_capds_kctl, i32 0, i32 3), align 4
  %36 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp9 = icmp eq i32 %37, 2
  %38 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %component.i, align 4
  %card1.i82 = getelementptr inbounds %struct.snd_soc_component, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %card1.i82 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card1.i82, align 4
  %call.i83 = tail call ptr @snd_soc_card_get_kcontrol(ptr noundef %41, ptr noundef %35) #10
  %cmp.i84 = icmp eq ptr %call.i83, null
  br i1 %cmp.i84, label %fsl_xcvr_activate_ctl.exit80.fsl_xcvr_activate_ctl.exit94_crit_edge, label %if.end.i87

fsl_xcvr_activate_ctl.exit80.fsl_xcvr_activate_ctl.exit94_crit_edge: ; preds = %fsl_xcvr_activate_ctl.exit80
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_xcvr_activate_ctl.exit94

if.end.i87:                                       ; preds = %fsl_xcvr_activate_ctl.exit80
  %access.i85 = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i83, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %access.i85 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %access.i85, align 4
  %44 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %45 = icmp eq i32 %44, 0
  %cmp6.i86 = xor i1 %cmp9, %45
  br i1 %cmp6.i86, label %if.end.i87.fsl_xcvr_activate_ctl.exit94_crit_edge, label %if.end9.i93

if.end.i87.fsl_xcvr_activate_ctl.exit94_crit_edge: ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_xcvr_activate_ctl.exit94

if.end9.i93:                                      ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #12
  %and18.i88 = and i32 %43, -3
  %masksel.i89 = select i1 %cmp9, i32 2, i32 0
  %storemerge.i90 = or i32 %and18.i88, %masksel.i89
  %46 = ptrtoint ptr %access.i85 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %storemerge.i90, ptr %access.i85, align 4
  %snd_card.i91 = getelementptr inbounds %struct.snd_soc_card, ptr %41, i32 0, i32 6
  %47 = ptrtoint ptr %snd_card.i91 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %snd_card.i91, align 4
  %id.i92 = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i83, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %48, i32 noundef 2, ptr noundef %id.i92) #10
  br label %fsl_xcvr_activate_ctl.exit94

fsl_xcvr_activate_ctl.exit94:                     ; preds = %if.end9.i93, %if.end.i87.fsl_xcvr_activate_ctl.exit94_crit_edge, %fsl_xcvr_activate_ctl.exit80.fsl_xcvr_activate_ctl.exit94_crit_edge
  %regmap = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 2
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %call.i95 = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 48, i32 noundef 2097351, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %cmp13 = icmp slt i32 %call.i95, 0
  br i1 %cmp13, label %do.end, label %if.end

do.end:                                           ; preds = %fsl_xcvr_activate_ctl.exit94
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.72, i32 noundef %call.i95) #13
  br label %cleanup

if.end:                                           ; preds = %fsl_xcvr_activate_ctl.exit94
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp17 = icmp eq i32 %54, 0
  %spec.select = select i1 %cmp17, i32 8388608, i32 0
  br label %if.end21

if.end21:                                         ; preds = %if.end, %entry.if.end21_crit_edge
  %mask.0 = phi i32 [ 0, %entry.if.end21_crit_edge ], [ %spec.select, %if.end ]
  %mode22 = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 9
  %55 = ptrtoint ptr %mode22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mode22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp23 = icmp eq i32 %56, 2
  %cond = select i1 %cmp, i32 536870912, i32 1073741824
  %or28 = select i1 %cmp23, i32 %cond, i32 0
  %mask.1 = or i32 %or28, %mask.0
  %regmap34 = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 2
  %57 = ptrtoint ptr %regmap34 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap34, align 4
  %call.i96 = tail call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 16, i32 noundef %mask.1, i32 noundef %or28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %cmp36 = icmp slt i32 %call.i96, 0
  br i1 %cmp36, label %do.end41, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end41:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.75, i32 noundef %call.i96) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.end21.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_xcvr_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channels, align 8
  %mul2 = mul i32 %9, 640
  %mul4 = mul i32 %mul2, %11
  %mode = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %13, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge151
    i32 2, label %sw.bb36
  ]

entry.sw.bb_crit_edge151:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge151
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %call5 = tail call fastcc i32 @fsl_xcvr_en_aud_pll(ptr noundef %3, i32 noundef %mul4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.77, i32 noundef %mul4, i32 noundef %call5) #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %regmap = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 548, i32 noundef 2048) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end13, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.80, i32 noundef %call8) #13
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  %regmap17 = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap17, align 4
  %call18 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 388, i32 noundef 603983936) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.83, i32 noundef %call18) #13
  br label %cleanup

if.end25:                                         ; preds = %if.else
  %call27 = tail call fastcc i32 @fsl_xcvr_en_phy_pll(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end32, label %if.end25.sw.epilog_crit_edge

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.86, i32 noundef 175000000, i32 noundef %call27) #13
  br label %cleanup

sw.bb36:                                          ; preds = %entry
  br i1 %cmp, label %sw.bb36.sw.epilog_crit_edge, label %if.then38

sw.bb36.sw.epilog_crit_edge:                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then38:                                        ; preds = %sw.bb36
  %regmap39 = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %regmap39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap39, align 4
  %call40 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 388, i32 noundef 4160) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end45, label %if.end47

do.end45:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.83, i32 noundef %call40) #13
  br label %cleanup

if.end47:                                         ; preds = %if.then38
  %31 = ptrtoint ptr %regmap39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap39, align 4
  %call49 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 392, i32 noundef 603979776) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end54, label %if.end47.sw.epilog_crit_edge

if.end47.sw.epilog_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.91, i32 noundef %call49) #13
  br label %cleanup

sw.epilog:                                        ; preds = %if.end47.sw.epilog_crit_edge, %sw.bb36.sw.epilog_crit_edge, %if.end25.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %m_ctl.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %if.end25.sw.epilog_crit_edge ], [ 8388608, %if.end.sw.epilog_crit_edge ], [ 1140850688, %if.end47.sw.epilog_crit_edge ], [ 603979776, %sw.bb36.sw.epilog_crit_edge ]
  %v_ctl.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %if.end25.sw.epilog_crit_edge ], [ 8388608, %if.end.sw.epilog_crit_edge ], [ 0, %if.end47.sw.epilog_crit_edge ], [ 67108864, %sw.bb36.sw.epilog_crit_edge ]
  %regmap64 = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 2
  %35 = ptrtoint ptr %regmap64 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap64, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 48, i32 noundef 2097351, i32 noundef 2097351, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp66 = icmp slt i32 %call.i, 0
  br i1 %cmp66, label %do.end70, label %if.end72

do.end70:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.94, i32 noundef %call.i) #13
  br label %cleanup

if.end72:                                         ; preds = %sw.epilog
  %cond74 = select i1 %cmp, i32 134217728, i32 268435456
  %or75 = or i32 %m_ctl.0, %cond74
  %or78 = or i32 %v_ctl.0, %cond74
  %39 = ptrtoint ptr %regmap64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap64, align 4
  %call.i150 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 16, i32 noundef %or75, i32 noundef %or78, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %cmp81 = icmp slt i32 %call.i150, 0
  br i1 %cmp81, label %do.end85, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end85:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.97, i32 noundef %call.i150) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end85, %if.end72.cleanup_crit_edge, %do.end70, %do.end54, %do.end45, %do.end32, %do.end23, %do.end13, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end70 ], [ %call.i150, %do.end85 ], [ %call40, %do.end45 ], [ %call49, %do.end54 ], [ %call5, %do.end ], [ %call8, %do.end13 ], [ %call18, %do.end23 ], [ %call27, %do.end32 ], [ 0, %if.end72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_xcvr_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge121
    i32 4, label %entry.sw.bb_crit_edge122
    i32 0, label %entry.sw.bb37_crit_edge
    i32 5, label %entry.sw.bb37_crit_edge123
    i32 3, label %entry.sw.bb37_crit_edge124
  ]

entry.sw.bb37_crit_edge124:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb37

entry.sw.bb37_crit_edge123:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb37

entry.sw.bb37_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb37

entry.sw.bb_crit_edge122:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge121:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge121, %entry.sw.bb_crit_edge122
  br i1 %cmp, label %if.then, label %sw.bb.if.end15_crit_edge

sw.bb.if.end15_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then:                                          ; preds = %sw.bb
  %mode = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %8, label %if.then.if.end15_crit_edge [
    i32 2, label %sw.bb1
    i32 0, label %if.then.sw.bb5_crit_edge
  ]

if.then.sw.bb5_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

sw.bb1:                                           ; preds = %if.then
  %regmap = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 132, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end, label %sw.bb1.sw.bb5_crit_edge

sw.bb1.sw.bb5_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb5

do.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.113, i32 noundef %call2) #13
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb1.sw.bb5_crit_edge, %if.then.sw.bb5_crit_edge
  %regmap6 = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap6, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 548, i32 noundef 16384) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end12, label %sw.bb5.if.end15_crit_edge

sw.bb5.if.end15_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

do.end12:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.116, i32 noundef %call7) #13
  br label %cleanup

if.end15:                                         ; preds = %sw.bb5.if.end15_crit_edge, %if.then.if.end15_crit_edge, %sw.bb.if.end15_crit_edge
  %cond = phi i32 [ 16777216, %if.then.if.end15_crit_edge ], [ 16777216, %sw.bb5.if.end15_crit_edge ], [ 33554432, %sw.bb.if.end15_crit_edge ]
  %regmap16 = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap16, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 16, i32 noundef %cond, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp19 = icmp slt i32 %call.i, 0
  br i1 %cmp19, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.119, i32 noundef %call.i) #13
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %22 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap16, align 4
  %cond28 = select i1 %cmp, i32 134217728, i32 268435456
  %call.i119 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 16, i32 noundef %cond28, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp30 = icmp slt i32 %call.i119, 0
  br i1 %cmp30, label %do.end34, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end34:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.122, i32 noundef %call.i119) #13
  br label %cleanup

sw.bb37:                                          ; preds = %entry.sw.bb37_crit_edge, %entry.sw.bb37_crit_edge123, %entry.sw.bb37_crit_edge124
  %regmap38 = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 2
  %26 = ptrtoint ptr %regmap38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap38, align 4
  %cond40 = select i1 %cmp, i32 16777216, i32 33554432
  %call.i120 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 16, i32 noundef %cond40, i32 noundef %cond40, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp44 = icmp slt i32 %call.i120, 0
  br i1 %cmp44, label %do.end48, label %if.end50

do.end48:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.125, i32 noundef %call.i120) #13
  br label %cleanup

if.end50:                                         ; preds = %sw.bb37
  br i1 %cmp, label %if.then52, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then52:                                        ; preds = %if.end50
  %mode53 = getelementptr inbounds %struct.fsl_xcvr, ptr %3, i32 0, i32 9
  %30 = ptrtoint ptr %mode53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mode53, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %31, label %if.then52.cleanup_crit_edge [
    i32 0, label %sw.bb54
    i32 2, label %if.then52.sw.bb64_crit_edge
  ]

if.then52.sw.bb64_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb64

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb54:                                          ; preds = %if.then52
  %33 = ptrtoint ptr %regmap38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap38, align 4
  %call56 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 552, i32 noundef 16384) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %do.end61, label %sw.bb54.sw.bb64_crit_edge

sw.bb54.sw.bb64_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb64

do.end61:                                         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.128, i32 noundef %call56) #13
  br label %cleanup

sw.bb64:                                          ; preds = %sw.bb54.sw.bb64_crit_edge, %if.then52.sw.bb64_crit_edge
  %37 = ptrtoint ptr %regmap38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap38, align 4
  %call66 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 136, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %do.end71, label %sw.bb64.cleanup_crit_edge

sw.bb64.cleanup_crit_edge:                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end71:                                         ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.131, i32 noundef %call66) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %sw.bb64.cleanup_crit_edge, %do.end61, %if.then52.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %do.end48, %do.end34, %if.end25.cleanup_crit_edge, %do.end23, %do.end12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i120, %do.end48 ], [ %call66, %do.end71 ], [ %call56, %do.end61 ], [ %call.i, %do.end23 ], [ %call.i119, %do.end34 ], [ %call7, %do.end12 ], [ %call2, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ], [ 0, %sw.bb64.cleanup_crit_edge ], [ 0, %if.then52.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_xcvr_en_aud_pll(ptr nocapture noundef readonly %xcvr, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.fsl_xcvr, ptr %xcvr, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %phy_clk = getelementptr inbounds %struct.fsl_xcvr, ptr %xcvr, i32 0, i32 5
  %2 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  %4 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_clk, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %5, i32 noundef %freq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.99, i32 noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end9, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %7) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then3.i, %if.end.do.end8_crit_edge
  %retval.0.i53.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end8_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.102, i32 noundef %retval.0.i53.ph) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end.i
  %regmap = getelementptr inbounds %struct.fsl_xcvr, ptr %xcvr, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 148, i32 noundef 32768) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.94, i32 noundef %call10) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %mode = getelementptr inbounds %struct.fsl_xcvr, ptr %xcvr, i32 0, i32 9
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp17 = icmp eq i32 %11, 2
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fsl_xcvr_ai_write(ptr noundef %xcvr, i8 noundef zeroext 4, i32 noundef 33, i1 noundef zeroext true)
  tail call fastcc void @fsl_xcvr_ai_write(ptr noundef %xcvr, i8 noundef zeroext 116, i32 noundef 16384, i1 noundef zeroext true)
  br label %do.body23

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fsl_xcvr_ai_write(ptr noundef %xcvr, i8 noundef zeroext 4, i32 noundef 67109120, i1 noundef zeroext true)
  br label %do.body23

do.body23:                                        ; preds = %if.else, %if.then18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_xcvr_en_aud_pll.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_xcvr_en_aud_pll, %if.then28)) #10
          to label %cleanup [label %if.then28], !srcloc !368

if.then28:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_xcvr_en_aud_pll.__UNIQUE_ID_ddebug242, ptr noundef %dev1, ptr noundef nonnull @.str.106, i32 noundef %freq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %do.body23, %do.end15, %do.end8, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %retval.0.i53.ph, %do.end8 ], [ %call10, %do.end15 ], [ 0, %if.then28 ], [ 0, %do.body23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_xcvr_en_phy_pll(ptr nocapture noundef readonly %xcvr) unnamed_addr #2 align 64 {
for.end:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.fsl_xcvr, ptr %xcvr, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %regmap = getelementptr inbounds %struct.fsl_xcvr, ptr %xcvr, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 148, i32 noundef 32768) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end, label %if.end18

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.94, i32 noundef %call14) #13
  br label %cleanup

if.end18:                                         ; preds = %for.end
  tail call fastcc void @fsl_xcvr_ai_write(ptr noundef %xcvr, i8 noundef zeroext 84, i32 noundef 1, i1 noundef zeroext false)
  tail call fastcc void @fsl_xcvr_ai_write(ptr noundef %xcvr, i8 noundef zeroext 0, i32 noundef 29, i1 noundef zeroext false)
  tail call fastcc void @fsl_xcvr_ai_write(ptr noundef %xcvr, i8 noundef zeroext 32, i32 noundef 1, i1 noundef zeroext false)
  tail call fastcc void @fsl_xcvr_ai_write(ptr noundef %xcvr, i8 noundef zeroext 48, i32 noundef 6, i1 noundef zeroext false)
  tail call fastcc void @fsl_xcvr_ai_write(ptr noundef %xcvr, i8 noundef zeroext 4, i32 noundef 24576, i1 noundef zeroext false)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 5368700) #10
  tail call fastcc void @fsl_xcvr_ai_write(ptr noundef %xcvr, i8 noundef zeroext 8, i32 noundef 8192, i1 noundef zeroext false)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 21474800) #10
  %mode = getelementptr inbounds %struct.fsl_xcvr, ptr %xcvr, i32 0, i32 9
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp33 = icmp eq i32 %7, 2
  %. = select i1 %cmp33, i32 32, i32 512
  %.11 = select i1 %cmp33, i32 33554432, i32 67108864
  tail call fastcc void @fsl_xcvr_ai_write(ptr noundef %xcvr, i8 noundef zeroext 64, i32 noundef %., i1 noundef zeroext false)
  tail call fastcc void @fsl_xcvr_ai_write(ptr noundef %xcvr, i8 noundef zeroext 4, i32 noundef %.11, i1 noundef zeroext false)
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %9, label %if.else61 [
    i32 2, label %if.then50
    i32 0, label %if.then59
  ]

if.then50:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fsl_xcvr_ai_write(ptr noundef %xcvr, i8 noundef zeroext 4, i32 noundef 33, i1 noundef zeroext true)
  tail call fastcc void @fsl_xcvr_ai_write(ptr noundef %xcvr, i8 noundef zeroext 116, i32 noundef 16384, i1 noundef zeroext true)
  br label %do.body67

if.then59:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @fsl_xcvr_ai_write(ptr noundef %xcvr, i8 noundef zeroext 4, i32 noundef 256, i1 noundef zeroext true)
  br label %do.body67

if.else61:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %arc_mode = getelementptr inbounds %struct.fsl_xcvr, ptr %xcvr, i32 0, i32 10
  %11 = ptrtoint ptr %arc_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arc_mode, align 4
  %arrayidx62 = getelementptr [2 x i32], ptr @fsl_xcvr_phy_arc_cfg, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx62, align 4
  %or = or i32 %14, 3
  tail call fastcc void @fsl_xcvr_ai_write(ptr noundef %xcvr, i8 noundef zeroext 4, i32 noundef %or, i1 noundef zeroext true)
  br label %do.body67

do.body67:                                        ; preds = %if.else61, %if.then59, %if.then50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_xcvr_en_phy_pll.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_xcvr_en_phy_pll, %if.then73)) #10
          to label %cleanup [label %if.then73], !srcloc !368

if.then73:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_xcvr_en_phy_pll.__UNIQUE_ID_ddebug241, ptr noundef %dev1, ptr noundef nonnull @.str.112, i32 noundef 175000000, i32 noundef 700000000, i32 noundef 29, i32 noundef 1, i32 noundef 6, i32 noundef 4, i32 noundef 2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %do.body67, %do.end
  %retval.0 = phi i32 [ %call14, %do.end ], [ 0, %if.then73 ], [ 0, %do.body67 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsl_xcvr_ai_write(ptr nocapture noundef readonly %xcvr, i8 noundef zeroext %reg, i32 noundef %data, i1 noundef zeroext %phy) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.fsl_xcvr, ptr %xcvr, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !367
  %shl = select i1 %phy, i32 67108864, i32 16777216
  %shl4 = select i1 %phy, i32 134217728, i32 33554432
  %regmap = getelementptr inbounds %struct.fsl_xcvr, ptr %xcvr, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 152, i32 noundef 255) #10
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %conv = zext i8 %reg to i32
  %call6 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 148, i32 noundef %conv) #10
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 160, i32 noundef %data) #10
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 156, i32 noundef %shl) #10
  %call11 = tail call i64 @ktime_get() #10
  %add.i = add i64 %call11, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 251) #10
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call2112 = call i32 @regmap_read(ptr noundef %12, i32 noundef 144, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2112)
  %tobool22.not13 = icmp eq i32 %call2112, 0
  br i1 %tobool22.not13, label %entry.lor.lhs.false_crit_edge, label %entry.do.end55_crit_edge

entry.do.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then38.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and = and i32 %14, %shl
  %and23 = and i32 %14, %shl4
  %shr = lshr exact i32 %and23, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %shr)
  %cmp24 = icmp eq i32 %and, %shr
  br i1 %cmp24, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call29 = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call29, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call29, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then38

if.then38:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call21 = call i32 @regmap_read(ptr noundef %16, i32 noundef 144, ptr noundef nonnull %val) #10
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then38.lor.lhs.false_crit_edge, label %if.then38.do.end55_crit_edge

if.then38.do.end55_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

if.then38.lor.lhs.false_crit_edge:                ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call35 = call i32 @regmap_read(ptr noundef %18, i32 noundef 144, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool41.not = icmp eq i32 %call35, 0
  br i1 %tobool41.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end55_crit_edge

for.end.do.end55_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %and42 = and i32 %20, %shl
  %and43 = and i32 %20, %shl4
  %shr44 = lshr exact i32 %and43, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and42, i32 %shr44)
  %cmp45 = icmp eq i32 %and42, %shr44
  br i1 %cmp45, label %lor.rhs.if.end60_crit_edge, label %lor.rhs.do.end55_crit_edge

lor.rhs.do.end55_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end55

lor.rhs.if.end60_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

do.end55:                                         ; preds = %lor.rhs.do.end55_crit_edge, %for.end.do.end55_crit_edge, %if.then38.do.end55_crit_edge, %entry.do.end55_crit_edge
  %cond58 = select i1 %phy, ptr @.str.109, ptr @.str.110
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.107, ptr noundef nonnull %cond58, i32 noundef %conv, i32 noundef %data) #13
  br label %if.end60

if.end60:                                         ; preds = %do.end55, %lor.rhs.if.end60_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_xcvr_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.fsl_xcvr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 48, i32 noundef 2097351, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.134, i32 noundef %call.i) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 16, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %cmp4 = icmp slt i32 %call.i22, 0
  br i1 %cmp4, label %do.end8, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.137, i32 noundef %call.i22) #13
  br label %if.end9

if.end9:                                          ; preds = %do.end8, %if.end.if.end9_crit_edge
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext true) #10
  %spba_clk = getelementptr inbounds %struct.fsl_xcvr, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %spba_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spba_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #10
  tail call void @clk_unprepare(ptr noundef %9) #10
  %phy_clk = getelementptr inbounds %struct.fsl_xcvr, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #10
  tail call void @clk_unprepare(ptr noundef %11) #10
  %pll_ipg_clk = getelementptr inbounds %struct.fsl_xcvr, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %pll_ipg_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pll_ipg_clk, align 4
  tail call void @clk_disable(ptr noundef %13) #10
  tail call void @clk_unprepare(ptr noundef %13) #10
  %ipg_clk = getelementptr inbounds %struct.fsl_xcvr, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ipg_clk, align 4
  tail call void @clk_disable(ptr noundef %15) #10
  tail call void @clk_unprepare(ptr noundef %15) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_xcvr_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reset = getelementptr inbounds %struct.fsl_xcvr, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.139, i32 noundef %call1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ipg_clk = getelementptr inbounds %struct.fsl_xcvr, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipg_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end6_crit_edge

if.end.do.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end7, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %do.end6

do.end6:                                          ; preds = %if.then3.i, %if.end.do.end6_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end6_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.142) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end.i
  %pll_ipg_clk = getelementptr inbounds %struct.fsl_xcvr, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %pll_ipg_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll_ipg_clk, align 4
  %call.i103 = tail call i32 @clk_prepare(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool.not.i104 = icmp eq i32 %call.i103, 0
  br i1 %tobool.not.i104, label %if.end.i107, label %if.end7.do.end13_crit_edge

if.end7.do.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

if.end.i107:                                      ; preds = %if.end7
  %call1.i105 = tail call i32 @clk_enable(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i105)
  %tobool2.not.i106 = icmp eq i32 %call1.i105, 0
  br i1 %tobool2.not.i106, label %if.end14, label %if.then3.i108

if.then3.i108:                                    ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %7) #10
  br label %do.end13

do.end13:                                         ; preds = %if.then3.i108, %if.end7.do.end13_crit_edge
  %retval.0.i109.ph = phi i32 [ %call1.i105, %if.then3.i108 ], [ %call.i103, %if.end7.do.end13_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.145) #13
  br label %stop_ipg_clk

if.end14:                                         ; preds = %if.end.i107
  %phy_clk = getelementptr inbounds %struct.fsl_xcvr, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_clk, align 4
  %call.i111 = tail call i32 @clk_prepare(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool.not.i112 = icmp eq i32 %call.i111, 0
  br i1 %tobool.not.i112, label %if.end.i115, label %if.end14.do.end20_crit_edge

if.end14.do.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end20

if.end.i115:                                      ; preds = %if.end14
  %call1.i113 = tail call i32 @clk_enable(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i113)
  %tobool2.not.i114 = icmp eq i32 %call1.i113, 0
  br i1 %tobool2.not.i114, label %if.end21, label %if.then3.i116

if.then3.i116:                                    ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %9) #10
  br label %do.end20

do.end20:                                         ; preds = %if.then3.i116, %if.end14.do.end20_crit_edge
  %retval.0.i117.ph = phi i32 [ %call1.i113, %if.then3.i116 ], [ %call.i111, %if.end14.do.end20_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.102, i32 noundef %retval.0.i117.ph) #13
  br label %stop_pll_ipg_clk

if.end21:                                         ; preds = %if.end.i115
  %spba_clk = getelementptr inbounds %struct.fsl_xcvr, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %spba_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spba_clk, align 4
  %call.i119 = tail call i32 @clk_prepare(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i120 = icmp eq i32 %call.i119, 0
  br i1 %tobool.not.i120, label %if.end.i123, label %if.end21.do.end27_crit_edge

if.end21.do.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

if.end.i123:                                      ; preds = %if.end21
  %call1.i121 = tail call i32 @clk_enable(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i121)
  %tobool2.not.i122 = icmp eq i32 %call1.i121, 0
  br i1 %tobool2.not.i122, label %if.end28, label %if.then3.i124

if.then3.i124:                                    ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %11) #10
  br label %do.end27

do.end27:                                         ; preds = %if.then3.i124, %if.end21.do.end27_crit_edge
  %retval.0.i125.ph = phi i32 [ %call1.i121, %if.then3.i124 ], [ %call.i119, %if.end21.do.end27_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.150) #13
  br label %stop_phy_clk

if.end28:                                         ; preds = %if.end.i123
  %regmap = getelementptr inbounds %struct.fsl_xcvr, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %13, i1 noundef zeroext false) #10
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %15) #10
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call31 = tail call i32 @regcache_sync(ptr noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end37, label %do.end36

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.153) #13
  br label %stop_spba_clk

if.end37:                                         ; preds = %if.end28
  %18 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reset, align 4
  %call39 = tail call i32 @reset_control_deassert(ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end45, label %do.end44

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.156) #13
  br label %stop_spba_clk

if.end45:                                         ; preds = %if.end37
  %pdev.i = getelementptr inbounds %struct.fsl_xcvr, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #10
  %22 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !367
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call.i127 = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef %26, ptr noundef %dev1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %tobool.not.i128 = icmp eq i32 %call.i127, 0
  br i1 %tobool.not.i128, label %if.end.i129, label %do.end.i

do.end.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.164) #13
  br label %do.end51

if.end.i129:                                      ; preds = %if.end45
  %27 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %30)
  %cmp.i = icmp sgt i32 %30, 16384
  br i1 %cmp.i, label %do.end6.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i129
  %ram_addr25.i = getelementptr inbounds %struct.fsl_xcvr, ptr %1, i32 0, i32 11
  br label %for.body.i

do.end6.i:                                        ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.167, i32 noundef %30) #13
  %31 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %32) #10
  br label %do.end51

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %page.0100.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %rem.099.i = phi i32 [ %30, %for.cond.preheader.i ], [ %rem.1.i, %for.inc.i.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %shl.i = shl i32 %page.0100.i, 16
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 16, i32 noundef 983040, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp10.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp10.i, label %err_firmware.thread.i, label %if.end15.i

err_firmware.thread.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.170, i32 noundef %page.0100.i, i32 noundef %call.i.i) #13
  %35 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %36) #10
  br label %do.end51

if.end15.i:                                       ; preds = %for.body.i
  %37 = call i32 @llvm.smin.i32(i32 %rem.099.i, i32 2048) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.099.i)
  %cmp17.i = icmp sgt i32 %rem.099.i, 0
  br i1 %cmp17.i, label %if.then18.i, label %if.else.i

if.then18.i:                                      ; preds = %if.end15.i
  %mul.i = shl i32 %page.0100.i, 11
  %38 = ptrtoint ptr %ram_addr25.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ram_addr25.i, align 4
  %40 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 %mul.i
  call void @mmiocpy(ptr noundef %39, ptr noundef %add.ptr.i, i32 noundef %37) #10
  %sub.i = sub i32 %rem.099.i, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp19.i = icmp eq i32 %sub.i, 0
  br i1 %cmp19.i, label %if.then20.i, label %if.then18.i.for.inc.i_crit_edge

if.then18.i.for.inc.i_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then20.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %ram_addr25.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ram_addr25.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %45, i32 %37
  %sub23.i = sub nuw nsw i32 2048, %37
  call void @mmioset(ptr noundef %add.ptr22.i, i32 noundef 0, i32 noundef %sub23.i) #10
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %ram_addr25.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ram_addr25.i, align 4
  call void @mmioset(ptr noundef %47, i32 noundef 0, i32 noundef 2048) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then20.i, %if.then18.i.for.inc.i_crit_edge
  %rem.1.i = phi i32 [ 0, %if.then20.i ], [ %sub.i, %if.then18.i.for.inc.i_crit_edge ], [ %rem.099.i, %if.else.i ]
  %inc.i = add nuw nsw i32 %page.0100.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %if.end29.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end29.i:                                       ; preds = %for.inc.i
  %48 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %49) #10
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %call.i95.i = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 16, i32 noundef 51347327, i32 noundef 50872384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95.i)
  %cmp36.i = icmp slt i32 %call.i95.i, 0
  br i1 %cmp36.i, label %do.end40.i, label %if.end52

do.end40.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.173, i32 noundef %call.i95.i) #13
  br label %do.end51

do.end51:                                         ; preds = %do.end40.i, %err_firmware.thread.i, %do.end6.i, %do.end.i
  %retval.0.i130.ph = phi i32 [ %call.i.i, %err_firmware.thread.i ], [ %call.i95.i, %do.end40.i ], [ -12, %do.end6.i ], [ %call.i127, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.159) #13
  br label %stop_spba_clk

if.end52:                                         ; preds = %if.end29.i
  %52 = ptrtoint ptr %ram_addr25.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ram_addr25.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %53, i32 768
  %cap_ds.i = getelementptr inbounds %struct.fsl_xcvr, ptr %1, i32 0, i32 16
  call void @mmiocpy(ptr noundef %add.ptr43.i, ptr noundef %cap_ds.i, i32 noundef 256) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #10
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %call.i131 = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 16, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %cmp55 = icmp slt i32 %call.i131, 0
  br i1 %cmp55, label %do.end59, label %if.end60

do.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.162, i32 noundef %call.i131) #13
  br label %stop_spba_clk

if.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef 50) #10
  br label %cleanup

stop_spba_clk:                                    ; preds = %do.end59, %do.end51, %do.end44, %do.end36
  %ret.0 = phi i32 [ %call31, %do.end36 ], [ %call39, %do.end44 ], [ %retval.0.i130.ph, %do.end51 ], [ %call.i131, %do.end59 ]
  %56 = ptrtoint ptr %spba_clk to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %spba_clk, align 4
  call void @clk_disable(ptr noundef %57) #10
  call void @clk_unprepare(ptr noundef %57) #10
  br label %stop_phy_clk

stop_phy_clk:                                     ; preds = %stop_spba_clk, %do.end27
  %ret.1 = phi i32 [ %retval.0.i125.ph, %do.end27 ], [ %ret.0, %stop_spba_clk ]
  %58 = ptrtoint ptr %phy_clk to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phy_clk, align 4
  call void @clk_disable(ptr noundef %59) #10
  call void @clk_unprepare(ptr noundef %59) #10
  br label %stop_pll_ipg_clk

stop_pll_ipg_clk:                                 ; preds = %stop_phy_clk, %do.end20
  %ret.2 = phi i32 [ %retval.0.i117.ph, %do.end20 ], [ %ret.1, %stop_phy_clk ]
  %60 = ptrtoint ptr %pll_ipg_clk to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pll_ipg_clk, align 4
  call void @clk_disable(ptr noundef %61) #10
  call void @clk_unprepare(ptr noundef %61) #10
  br label %stop_ipg_clk

stop_ipg_clk:                                     ; preds = %stop_pll_ipg_clk, %do.end13
  %ret.3 = phi i32 [ %retval.0.i109.ph, %do.end13 ], [ %ret.2, %stop_pll_ipg_clk ]
  %62 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ipg_clk, align 4
  call void @clk_disable(ptr noundef %63) #10
  call void @clk_unprepare(ptr noundef %63) #10
  br label %cleanup

cleanup:                                          ; preds = %stop_ipg_clk, %if.end60, %do.end6, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %retval.0.i.ph, %do.end6 ], [ %ret.3, %stop_ipg_clk ], [ 0, %if.end60 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !67, !68, !69, !71, !73, !75, !76, !77, !79, !80, !81, !83, !85, !87, !88, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !165, !166, !167, !168, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !231, !233, !234, !235, !237, !238, !240, !241, !243, !244, !245, !246, !247, !248, !250, !251, !252, !254, !255, !257, !259, !261, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !292, !294, !296, !298, !299, !300, !301, !303, !304, !305, !307, !308, !309, !310, !312, !313, !314, !316, !317, !318, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !340, !341, !343, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357}
!llvm.module.flags = !{!358, !359, !360, !361, !362, !363, !364, !365}
!llvm.ident = !{!366}

!0 = !{ptr @__initcall__kmod_snd_soc_fsl_xcvr__252_1374_fsl_xcvr_driver_init6, !1, !"__initcall__kmod_snd_soc_fsl_xcvr__252_1374_fsl_xcvr_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1374, i32 1}
!2 = !{ptr @__exitcall_fsl_xcvr_driver_exit, !1, !"__exitcall_fsl_xcvr_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author253, !4, !"__UNIQUE_ID_author253", i1 false, i1 false}
!4 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1376, i32 1}
!5 = !{ptr @__UNIQUE_ID_description254, !6, !"__UNIQUE_ID_description254", i1 false, i1 false}
!6 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1377, i32 1}
!7 = !{ptr @__UNIQUE_ID_file255, !8, !"__UNIQUE_ID_file255", i1 false, i1 false}
!8 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1378, i32 1}
!9 = !{ptr @__UNIQUE_ID_license256, !8, !"__UNIQUE_ID_license256", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1369, i32 11}
!12 = !{ptr @fsl_xcvr_driver, !13, !"fsl_xcvr_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1366, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1151, i32 36}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1153, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @fsl_xcvr_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @fsl_xcvr_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1157, i32 36}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1159, i32 3}
!28 = !{ptr @fsl_xcvr_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @fsl_xcvr_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1163, i32 37}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1165, i32 3}
!34 = !{ptr @fsl_xcvr_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @fsl_xcvr_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1169, i32 40}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1171, i32 3}
!40 = !{ptr @fsl_xcvr_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @fsl_xcvr_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1175, i32 63}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1179, i32 53}
!46 = !{ptr @fsl_xcvr_probe._key, !47, !"_key", i1 false, i1 false}
!47 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1183, i32 17}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1186, i32 3}
!51 = !{ptr @fsl_xcvr_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @fsl_xcvr_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1193, i32 3}
!55 = !{ptr @fsl_xcvr_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @fsl_xcvr_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1204, i32 3}
!59 = !{ptr @fsl_xcvr_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @fsl_xcvr_probe._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1208, i32 62}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1209, i32 62}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1211, i32 3}
!67 = !{ptr @fsl_xcvr_probe._entry.33, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @fsl_xcvr_probe._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1214, i32 32}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1215, i32 32}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1231, i32 3}
!75 = !{ptr @fsl_xcvr_probe._entry.38, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @fsl_xcvr_probe._entry_ptr.40, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1238, i32 3}
!79 = !{ptr @fsl_xcvr_probe._entry.41, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @fsl_xcvr_probe._entry_ptr.43, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @fsl_xcvr_regmap_cfg, !82, !"fsl_xcvr_regmap_cfg", i1 false, i1 false}
!82 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1039, i32 35}
!83 = !{ptr @fsl_xcvr_reg_defaults, !84, !"fsl_xcvr_reg_defaults", i1 false, i1 false}
!84 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 917, i32 33}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1063, i32 3}
!87 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @irq0_isr.__UNIQUE_ID_ddebug245, !86, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1094, i32 3}
!92 = !{ptr @irq0_isr.__UNIQUE_ID_ddebug246, !91, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1098, i32 3}
!95 = !{ptr @irq0_isr.__UNIQUE_ID_ddebug247, !94, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1102, i32 3}
!98 = !{ptr @irq0_isr.__UNIQUE_ID_ddebug248, !97, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1106, i32 3}
!101 = !{ptr @irq0_isr.__UNIQUE_ID_ddebug249, !100, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1110, i32 3}
!104 = !{ptr @irq0_isr.__UNIQUE_ID_ddebug250, !103, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1114, i32 3}
!107 = !{ptr @irq0_isr.__UNIQUE_ID_ddebug251, !106, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 914, i32 10}
!110 = !{ptr @fsl_xcvr_comp, !111, !"fsl_xcvr_comp", i1 false, i1 false}
!111 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 913, i32 46}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 903, i32 18}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 894, i32 18}
!116 = !{ptr @fsl_xcvr_dai, !117, !"fsl_xcvr_dai", i1 false, i1 false}
!117 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 890, i32 34}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 231, i32 2}
!120 = !{ptr @fsl_xcvr_mode_kctl, !121, !"fsl_xcvr_mode_kctl", i1 false, i1 false}
!121 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 230, i32 32}
!122 = !{ptr @fsl_xcvr_mode_enum, !123, !"fsl_xcvr_mode_enum", i1 false, i1 false}
!123 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 228, i32 30}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 227, i32 47}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 227, i32 56}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 227, i32 66}
!130 = !{ptr @fsl_xcvr_mode, !131, !"fsl_xcvr_mode", i1 false, i1 false}
!131 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 227, i32 27}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 124, i32 2}
!134 = !{ptr @fsl_xcvr_arc_mode_kctl, !135, !"fsl_xcvr_arc_mode_kctl", i1 false, i1 false}
!135 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 123, i32 32}
!136 = !{ptr @fsl_xcvr_arc_mode_enum, !137, !"fsl_xcvr_arc_mode_enum", i1 false, i1 false}
!137 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 121, i32 30}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 120, i32 51}
!140 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 120, i32 67}
!142 = !{ptr @fsl_xcvr_arc_mode, !143, !"fsl_xcvr_arc_mode", i1 false, i1 false}
!143 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 120, i32 27}
!144 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 161, i32 10}
!146 = !{ptr @fsl_xcvr_earc_capds_kctl, !147, !"fsl_xcvr_earc_capds_kctl", i1 false, i1 false}
!147 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 159, i32 32}
!148 = !{ptr @.str.64, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 850, i32 11}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 859, i32 11}
!152 = !{ptr @fsl_xcvr_tx_ctls, !153, !"fsl_xcvr_tx_ctls", i1 false, i1 false}
!153 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 846, i32 32}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 831, i32 11}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 839, i32 11}
!158 = !{ptr @fsl_xcvr_rx_ctls, !159, !"fsl_xcvr_rx_ctls", i1 false, i1 false}
!159 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 827, i32 32}
!160 = !{ptr @fsl_xcvr_dai_ops, !161, !"fsl_xcvr_dai_ops", i1 false, i1 false}
!161 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 867, i32 37}
!162 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 530, i32 3}
!164 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @fsl_xcvr_startup._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @fsl_xcvr_startup._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @fsl_xcvr_spdif_channels_constr, !170, !"fsl_xcvr_spdif_channels_constr", i1 false, i1 false}
!170 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 79, i32 48}
!171 = !{ptr @fsl_xcvr_spdif_channels, !172, !"fsl_xcvr_spdif_channels", i1 false, i1 false}
!172 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 78, i32 18}
!173 = !{ptr @fsl_xcvr_spdif_rates_constr, !174, !"fsl_xcvr_spdif_rates_constr", i1 false, i1 false}
!174 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 87, i32 48}
!175 = !{ptr @fsl_xcvr_spdif_rates, !176, !"fsl_xcvr_spdif_rates", i1 false, i1 false}
!176 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 84, i32 18}
!177 = !{ptr @fsl_xcvr_earc_channels_constr, !178, !"fsl_xcvr_earc_channels_constr", i1 false, i1 false}
!178 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 63, i32 48}
!179 = !{ptr @fsl_xcvr_earc_channels, !180, !"fsl_xcvr_earc_channels", i1 false, i1 false}
!180 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 62, i32 18}
!181 = !{ptr @fsl_xcvr_earc_rates_constr, !182, !"fsl_xcvr_earc_rates_constr", i1 false, i1 false}
!182 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 73, i32 48}
!183 = !{ptr @fsl_xcvr_earc_rates, !184, !"fsl_xcvr_earc_rates", i1 false, i1 false}
!184 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 68, i32 18}
!185 = !{ptr @.str.72, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 579, i32 4}
!187 = !{ptr @.str.73, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @fsl_xcvr_shutdown._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @fsl_xcvr_shutdown._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.75, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 596, i32 3}
!192 = !{ptr @fsl_xcvr_shutdown._entry.74, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @fsl_xcvr_shutdown._entry_ptr.76, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.77, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 413, i32 5}
!196 = !{ptr @.str.78, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @fsl_xcvr_prepare._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @fsl_xcvr_prepare._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.80, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 421, i32 5}
!201 = !{ptr @fsl_xcvr_prepare._entry.79, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @fsl_xcvr_prepare._entry_ptr.81, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.83, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 442, i32 5}
!205 = !{ptr @fsl_xcvr_prepare._entry.82, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @fsl_xcvr_prepare._entry_ptr.84, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.86, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 448, i32 5}
!209 = !{ptr @fsl_xcvr_prepare._entry.85, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @fsl_xcvr_prepare._entry_ptr.87, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @fsl_xcvr_prepare._entry.88, !212, !"_entry", i1 false, i1 false}
!212 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 461, i32 5}
!213 = !{ptr @fsl_xcvr_prepare._entry_ptr.89, !212, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.91, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 470, i32 5}
!216 = !{ptr @fsl_xcvr_prepare._entry.90, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @fsl_xcvr_prepare._entry_ptr.92, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.94, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 486, i32 3}
!220 = !{ptr @fsl_xcvr_prepare._entry.93, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @fsl_xcvr_prepare._entry_ptr.95, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.97, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 495, i32 3}
!224 = !{ptr @fsl_xcvr_prepare._entry.96, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @fsl_xcvr_prepare._entry_ptr.98, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.99, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 359, i32 3}
!228 = !{ptr @.str.100, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @fsl_xcvr_en_aud_pll._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @fsl_xcvr_en_aud_pll._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.102, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 364, i32 3}
!233 = !{ptr @fsl_xcvr_en_aud_pll._entry.101, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @fsl_xcvr_en_aud_pll._entry_ptr.103, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @fsl_xcvr_en_aud_pll._entry.104, !236, !"_entry", i1 false, i1 false}
!236 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 372, i32 3}
!237 = !{ptr @fsl_xcvr_en_aud_pll._entry_ptr.105, !236, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.106, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 391, i32 2}
!240 = !{ptr @fsl_xcvr_en_aud_pll.__UNIQUE_ID_ddebug242, !239, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!241 = !{ptr @.str.107, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 253, i32 3}
!243 = !{ptr @.str.108, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @fsl_xcvr_ai_write._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @fsl_xcvr_ai_write._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.109, !242, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.110, !242, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.111, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 280, i32 3}
!250 = !{ptr @fsl_xcvr_en_phy_pll._entry, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @fsl_xcvr_en_phy_pll._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.112, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 345, i32 2}
!254 = !{ptr @fsl_xcvr_en_phy_pll.__UNIQUE_ID_ddebug241, !253, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!255 = distinct !{null, !256, !"fsl_xcvr_pll_cfg", i1 false, i1 false}
!256 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 51, i32 3}
!257 = !{ptr @fsl_xcvr_phy_arc_cfg, !258, !"fsl_xcvr_phy_arc_cfg", i1 false, i1 false}
!258 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 116, i32 18}
!259 = !{ptr @.str.113, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 620, i32 6}
!261 = !{ptr @.str.114, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @fsl_xcvr_trigger._entry, !260, !"_entry", i1 false, i1 false}
!263 = !{ptr @fsl_xcvr_trigger._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.116, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 629, i32 6}
!266 = !{ptr @fsl_xcvr_trigger._entry.115, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @fsl_xcvr_trigger._entry_ptr.117, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.119, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 640, i32 4}
!270 = !{ptr @fsl_xcvr_trigger._entry.118, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @fsl_xcvr_trigger._entry_ptr.120, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.122, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 649, i32 4}
!274 = !{ptr @fsl_xcvr_trigger._entry.121, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @fsl_xcvr_trigger._entry_ptr.123, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.125, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 662, i32 4}
!278 = !{ptr @fsl_xcvr_trigger._entry.124, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @fsl_xcvr_trigger._entry_ptr.126, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.128, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 673, i32 6}
!282 = !{ptr @fsl_xcvr_trigger._entry.127, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @fsl_xcvr_trigger._entry_ptr.129, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.131, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 683, i32 6}
!286 = !{ptr @fsl_xcvr_trigger._entry.130, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @fsl_xcvr_trigger._entry_ptr.132, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @fsl_xcvr_dt_ids, !289, !"fsl_xcvr_dt_ids", i1 false, i1 false}
!289 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1130, i32 34}
!290 = !{ptr @.str.133, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1127, i32 13}
!292 = !{ptr @fsl_xcvr_imx8mp_data, !293, !"fsl_xcvr_imx8mp_data", i1 false, i1 false}
!293 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1126, i32 39}
!294 = !{ptr @fsl_xcvr_pm_ops, !295, !"fsl_xcvr_pm_ops", i1 false, i1 false}
!295 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1358, i32 32}
!296 = !{ptr @.str.134, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1258, i32 3}
!298 = !{ptr @.str.135, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @fsl_xcvr_runtime_suspend._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @fsl_xcvr_runtime_suspend._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.137, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1265, i32 3}
!303 = !{ptr @fsl_xcvr_runtime_suspend._entry.136, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @fsl_xcvr_runtime_suspend._entry_ptr.138, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.139, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1284, i32 3}
!307 = !{ptr @.str.140, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @fsl_xcvr_runtime_resume._entry, !306, !"_entry", i1 false, i1 false}
!309 = !{ptr @fsl_xcvr_runtime_resume._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.142, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1290, i32 3}
!312 = !{ptr @fsl_xcvr_runtime_resume._entry.141, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @fsl_xcvr_runtime_resume._entry_ptr.143, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.145, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1296, i32 3}
!316 = !{ptr @fsl_xcvr_runtime_resume._entry.144, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @fsl_xcvr_runtime_resume._entry_ptr.146, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @fsl_xcvr_runtime_resume._entry.147, !319, !"_entry", i1 false, i1 false}
!319 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1302, i32 3}
!320 = !{ptr @fsl_xcvr_runtime_resume._entry_ptr.148, !319, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.150, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1308, i32 3}
!323 = !{ptr @fsl_xcvr_runtime_resume._entry.149, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @fsl_xcvr_runtime_resume._entry_ptr.151, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.153, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1317, i32 3}
!327 = !{ptr @fsl_xcvr_runtime_resume._entry.152, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @fsl_xcvr_runtime_resume._entry_ptr.154, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.156, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1323, i32 3}
!331 = !{ptr @fsl_xcvr_runtime_resume._entry.155, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @fsl_xcvr_runtime_resume._entry_ptr.157, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.159, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1329, i32 3}
!335 = !{ptr @fsl_xcvr_runtime_resume._entry.158, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @fsl_xcvr_runtime_resume._entry_ptr.160, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.162, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 1337, i32 3}
!339 = !{ptr @fsl_xcvr_runtime_resume._entry.161, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @fsl_xcvr_runtime_resume._entry_ptr.163, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.164, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 707, i32 3}
!343 = !{ptr @.str.165, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @fsl_xcvr_load_firmware._entry, !342, !"_entry", i1 false, i1 false}
!345 = !{ptr @fsl_xcvr_load_firmware._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.167, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 715, i32 3}
!348 = !{ptr @fsl_xcvr_load_firmware._entry.166, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @fsl_xcvr_load_firmware._entry_ptr.168, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.170, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 725, i32 4}
!352 = !{ptr @fsl_xcvr_load_firmware._entry.169, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @fsl_xcvr_load_firmware._entry_ptr.171, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.173, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/fsl/fsl_xcvr.c", i32 766, i32 3}
!356 = !{ptr @fsl_xcvr_load_firmware._entry.172, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @fsl_xcvr_load_firmware._entry_ptr.174, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{i32 1, !"wchar_size", i32 2}
!359 = !{i32 1, !"min_enum_size", i32 4}
!360 = !{i32 8, !"branch-target-enforcement", i32 0}
!361 = !{i32 8, !"sign-return-address", i32 0}
!362 = !{i32 8, !"sign-return-address-all", i32 0}
!363 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!364 = !{i32 7, !"uwtable", i32 1}
!365 = !{i32 7, !"frame-pointer", i32 2}
!366 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!367 = !{!"auto-init"}
!368 = !{i64 2148762323, i64 2148762328, i64 2148762341, i64 2148762385, i64 2148762419, i64 2148762440}
