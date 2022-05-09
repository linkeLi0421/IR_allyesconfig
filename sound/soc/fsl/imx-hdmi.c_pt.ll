; ModuleID = '/llk/IR_all_yes/sound/soc/fsl/imx-hdmi.c_pt.bc'
source_filename = "../sound/soc/fsl/imx-hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.imx_hdmi_data = type { %struct.snd_soc_dai_link, %struct.snd_soc_card, %struct.snd_soc_jack, %struct.snd_soc_jack_pin, %struct.cpu_priv, i32 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_jack_pin = type { %struct.list_head, ptr, i32, i8 }
%struct.cpu_priv = type { [2 x i32], i32 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@__initcall__kmod_snd_soc_imx_hdmi__240_229_imx_hdmi_driver_init6 = internal global ptr @imx_hdmi_driver_init, section ".initcall6.init", align 4
@imx_hdmi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_hdmi_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_hdmi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_hdmi_driver_exit = internal global ptr @imx_hdmi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author241 = internal constant [54 x i8] c"snd_soc_imx_hdmi.author=Freescale Semiconductor, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [75 x i8] c"snd_soc_imx_hdmi.description=Freescale i.MX hdmi audio ASoC machine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [53 x i8] c"snd_soc_imx_hdmi.file=sound/soc/fsl/snd-soc-imx-hdmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [32 x i8] c"snd_soc_imx_hdmi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias245 = internal constant [41 x i8] c"snd_soc_imx_hdmi.alias=platform:imx-hdmi\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"imx-hdmi\00", [23 x i8] zeroinitializer }, align 32
@imx_hdmi_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-audio-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-audio-sii902x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi-out\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hdmi-in\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio-cpu\00", [22 x i8] zeroinitializer }, align 32
@imx_hdmi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 114, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cpu dai phandle missing or invalid\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx_hdmi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/fsl/imx-hdmi.c\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_hdmi_probe._entry_ptr = internal global ptr @imx_hdmi_probe._entry, section ".printk_index", align 4
@imx_hdmi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 121, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to find SAI platform device\0A\00", [60 x i8] zeroinitializer }, align 32
@imx_hdmi_probe._entry_ptr.11 = internal global ptr @imx_hdmi_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i.MX HDMI\00", [22 x i8] zeroinitializer }, align 32
@imx_hdmi_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @imx_hdmi_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sai\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl,imx-audio-sii902x\00", [42 x i8] zeroinitializer }, align 32
@imx_hdmi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 164, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid HDMI DAI link\0A\00", [41 x i8] zeroinitializer }, align 32
@imx_hdmi_probe._entry_ptr.17 = internal global ptr @imx_hdmi_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s-hifi\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hdmi-audio-codec.1\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hdmi-audio-codec.2\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@imx_hdmi_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 203, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"snd_soc_register_card failed (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@imx_hdmi_probe._entry_ptr.24 = internal global ptr @imx_hdmi_probe._entry.22, section ".printk_index", align 4
@imx_hdmi_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.6, i32 49, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set cpu sysclk: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx_hdmi_hw_params\00", [45 x i8] zeroinitializer }, align 32
@imx_hdmi_hw_params._entry_ptr = internal global ptr @imx_hdmi_hw_params._entry, section ".printk_index", align 4
@imx_hdmi_hw_params._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.6, i32 55, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set cpu dai tdm slot: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@imx_hdmi_hw_params._entry_ptr.29 = internal global ptr @imx_hdmi_hw_params._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HDMI Jack\00", [22 x i8] zeroinitializer }, align 32
@imx_hdmi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.6, i32 84, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't new HDMI Jack %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imx_hdmi_init\00", [18 x i8] zeroinitializer }, align 32
@imx_hdmi_init._entry_ptr = internal global ptr @imx_hdmi_init._entry, section ".printk_index", align 4
@imx_hdmi_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.6, i32 90, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't set HDMI Jack %d\0A\00", [40 x i8] zeroinitializer }, align 32
@imx_hdmi_init._entry_ptr.35 = internal global ptr @imx_hdmi_init._entry.33, section ".printk_index", align 4
@imx_hdmi_widgets = internal constant { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [44 x i8] } { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"imx_hdmi_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 221, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 223, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"imx_hdmi_dt_ids\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 214, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 100, i32 44 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 101, i32 43 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 112, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 114, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 121, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 139, i32 19 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"imx_hdmi_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 62, i32 33 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 150, i32 30 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 155, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 164, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 172, i32 32 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 173, i32 28 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 183, i32 28 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 193, i32 48 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 203, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 49, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 55, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 78, i32 28 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 84, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 90, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"imx_hdmi_widgets\00", align 1
@___asan_gen_.151 = private constant [28 x i8] c"../sound/soc/fsl/imx-hdmi.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 66, i32 41 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_alias245, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_imx_hdmi_driver_exit, ptr @__initcall__kmod_snd_soc_imx_hdmi__240_229_imx_hdmi_driver_init6, ptr @imx_hdmi_driver_exit, ptr @imx_hdmi_hw_params._entry, ptr @imx_hdmi_hw_params._entry.27, ptr @imx_hdmi_hw_params._entry_ptr, ptr @imx_hdmi_hw_params._entry_ptr.29, ptr @imx_hdmi_init._entry, ptr @imx_hdmi_init._entry.33, ptr @imx_hdmi_init._entry_ptr, ptr @imx_hdmi_init._entry_ptr.35, ptr @imx_hdmi_probe._entry, ptr @imx_hdmi_probe._entry.15, ptr @imx_hdmi_probe._entry.22, ptr @imx_hdmi_probe._entry.9, ptr @imx_hdmi_probe._entry_ptr, ptr @imx_hdmi_probe._entry_ptr.11, ptr @imx_hdmi_probe._entry_ptr.17, ptr @imx_hdmi_probe._entry_ptr.24, ptr @imx_hdmi_driver, ptr @.str, ptr @imx_hdmi_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @imx_hdmi_ops, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @imx_hdmi_widgets], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_hdmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_hdmi_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_hdmi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_hdmi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_hdmi_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_hdmi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_hdmi_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_hdmi_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_hdmi_hw_params._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_hdmi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_hdmi_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_hdmi_widgets to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_hdmi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_hdmi_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_hdmi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_hdmi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_hdmi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #5
  %tobool.i = icmp ne ptr %call.i, null
  %call.i226 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef null) #5
  %tobool.i227 = icmp ne ptr %call.i226, null
  %call.i228 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i228, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i229 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229)
  %tobool.not.i = icmp eq i32 %call.i229, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %fail

of_parse_phandle.exit:                            ; preds = %if.end
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %of_parse_phandle.exit.fail_crit_edge, label %if.end9

of_parse_phandle.exit.fail_crit_edge:             ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end9:                                          ; preds = %of_parse_phandle.exit
  %call10 = call ptr @of_find_device_by_node(ptr noundef nonnull %4) #5
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %if.then145

if.end17:                                         ; preds = %if.end9
  %call.i230 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1020, i32 noundef 3520) #5
  %tobool20.not = icmp eq ptr %call.i230, null
  br i1 %tobool20.not, label %if.end17.if.then145_crit_edge, label %if.end22

if.end17.if.then145_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then145

if.end22:                                         ; preds = %if.end17
  %cpus = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i230, i32 0, i32 2
  %5 = ptrtoint ptr %cpus to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i228, ptr %cpus, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i230, i32 0, i32 3
  %6 = ptrtoint ptr %num_cpus to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %num_cpus, align 4
  %arrayidx24 = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i228, i32 1
  %platforms = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i230, i32 0, i32 6
  %7 = ptrtoint ptr %platforms to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx24, ptr %platforms, align 4
  %num_platforms = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i230, i32 0, i32 7
  %8 = ptrtoint ptr %num_platforms to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %num_platforms, align 4
  %arrayidx27 = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i228, i32 2
  %codecs = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i230, i32 0, i32 4
  %9 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx27, ptr %codecs, align 4
  %num_codecs = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i230, i32 0, i32 5
  %10 = ptrtoint ptr %num_codecs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %num_codecs, align 4
  %11 = ptrtoint ptr %call.i230 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.12, ptr %call.i230, align 4
  %stream_name = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i230, i32 0, i32 1
  %12 = ptrtoint ptr %stream_name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.12, ptr %stream_name, align 4
  %dev32 = getelementptr inbounds %struct.platform_device, ptr %call10, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %call10, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i231 = icmp eq ptr %14, null
  br i1 %tobool.not.i231, label %if.end.i232, label %if.end22.dev_name.exit_crit_edge

if.end22.dev_name.exit_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i232:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev32, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i232, %if.end22.dev_name.exit_crit_edge
  %retval.0.i233 = phi ptr [ %16, %if.end.i232 ], [ %14, %if.end22.dev_name.exit_crit_edge ]
  %dai_name = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %call.i228, i32 0, i32 2
  %17 = ptrtoint ptr %dai_name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %retval.0.i233, ptr %dai_name, align 4
  %of_node38 = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i228, i32 1, i32 1
  %18 = ptrtoint ptr %of_node38 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %4, ptr %of_node38, align 4
  %ops = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i230, i32 0, i32 16
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @imx_hdmi_ops, ptr %ops, align 4
  %playback_only = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i230, i32 0, i32 18
  %20 = ptrtoint ptr %playback_only to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load = load i32, ptr %playback_only, align 4
  %bf.set = and i32 %bf.load, -1610612737
  %bf.clear43 = or i32 %bf.set, 1073741824
  store i32 %bf.clear43, ptr %playback_only, align 4
  %init = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i230, i32 0, i32 13
  %21 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @imx_hdmi_init, ptr %init, align 4
  call void @put_device(ptr noundef %dev32) #5
  %call47 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %4, ptr noundef nonnull @.str.13) #5
  br i1 %call47, label %if.then48, label %dev_name.exit.if.end53_crit_edge

dev_name.exit.if.end53_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then48:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %cpu_priv = getelementptr inbounds %struct.imx_hdmi_data, ptr %call.i230, i32 0, i32 4
  %arrayidx49 = getelementptr %struct.imx_hdmi_data, ptr %call.i230, i32 0, i32 4, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %arrayidx49, align 4
  %23 = ptrtoint ptr %cpu_priv to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %cpu_priv, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %dev_name.exit.if.end53_crit_edge
  %call54 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  %spec.select = select i1 %tobool55.not, i32 1, i32 3
  %spec.select246 = select i1 %tobool55.not, i32 32, i32 24
  %24 = getelementptr inbounds %struct.imx_hdmi_data, ptr %call.i230, i32 0, i32 5
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select, ptr %24, align 4
  %26 = getelementptr inbounds %struct.imx_hdmi_data, ptr %call.i230, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.select246, ptr %26, align 4
  %28 = select i1 %tobool.i, i1 %tobool.i227, i1 false
  %brmerge = xor i1 %28, true
  %brmerge225 = select i1 %tobool.i, i1 true, i1 %tobool.i227
  %or.cond = select i1 %brmerge, i1 %brmerge225, i1 false
  br i1 %or.cond, label %if.end72, label %do.end70

do.end70:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #8
  br label %if.then145

if.end72:                                         ; preds = %if.end53
  br i1 %tobool.i, label %if.then74, label %if.end72.if.end95_crit_edge

if.end72.if.end95_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %playback_only to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load77 = load i32, ptr %playback_only, align 4
  %bf.set79 = and i32 %bf.load77, -1610612737
  %bf.clear83 = or i32 %bf.set79, 1073741824
  store i32 %bf.clear83, ptr %playback_only, align 4
  %30 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %codecs, align 4
  %dai_name87 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dai_name87 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.18, ptr %dai_name87, align 4
  %33 = load ptr, ptr %codecs, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.19, ptr %33, align 4
  %35 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %24, align 4
  %or92 = or i32 %36, 16384
  %dai_fmt94 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i230, i32 0, i32 11
  %37 = ptrtoint ptr %dai_fmt94 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or92, ptr %dai_fmt94, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then74, %if.end72.if.end95_crit_edge
  br i1 %tobool.i227, label %if.then97, label %if.end95.if.end119_crit_edge

if.end95.if.end119_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end119

if.then97:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %playback_only to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load100 = load i32, ptr %playback_only, align 4
  %bf.clear106 = and i32 %bf.load100, -1610612737
  %bf.set107 = or i32 %bf.clear106, 536870912
  store i32 %bf.set107, ptr %playback_only, align 4
  %39 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %codecs, align 4
  %dai_name110 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %dai_name110 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.18, ptr %dai_name110, align 4
  %42 = load ptr, ptr %codecs, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.20, ptr %42, align 4
  %44 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %24, align 4
  %or116 = or i32 %45, 4096
  %dai_fmt118 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i230, i32 0, i32 11
  %46 = ptrtoint ptr %dai_fmt118 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or116, ptr %dai_fmt118, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then97, %if.end95.if.end119_crit_edge
  %card = getelementptr inbounds %struct.imx_hdmi_data, ptr %call.i230, i32 0, i32 1
  %dapm_widgets = getelementptr inbounds %struct.imx_hdmi_data, ptr %call.i230, i32 0, i32 1, i32 35
  %47 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @imx_hdmi_widgets, ptr %dapm_widgets, align 4
  %num_dapm_widgets = getelementptr inbounds %struct.imx_hdmi_data, ptr %call.i230, i32 0, i32 1, i32 36
  %48 = ptrtoint ptr %num_dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %num_dapm_widgets, align 4
  %dev123 = getelementptr inbounds %struct.imx_hdmi_data, ptr %call.i230, i32 0, i32 1, i32 5
  %49 = ptrtoint ptr %dev123 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dev, ptr %dev123, align 4
  %owner = getelementptr inbounds %struct.imx_hdmi_data, ptr %call.i230, i32 0, i32 1, i32 7
  %50 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %owner, align 4
  %call126 = call i32 @snd_soc_of_parse_card_name(ptr noundef %card, ptr noundef nonnull @.str.21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end129, label %if.end119.if.then145_crit_edge

if.end119.if.then145_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then145

if.end129:                                        ; preds = %if.end119
  %num_links = getelementptr inbounds %struct.imx_hdmi_data, ptr %call.i230, i32 0, i32 1, i32 25
  %51 = ptrtoint ptr %num_links to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %num_links, align 4
  %dai_link = getelementptr inbounds %struct.imx_hdmi_data, ptr %call.i230, i32 0, i32 1, i32 24
  %52 = ptrtoint ptr %dai_link to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i230, ptr %dai_link, align 4
  %drvdata.i = getelementptr inbounds %struct.imx_hdmi_data, ptr %call.i230, i32 0, i32 1, i32 57
  %53 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i230, ptr %drvdata.i, align 4
  %call136 = call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef %card) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end129.if.then145_crit_edge, label %do.end141

if.end129.if.then145_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then145

do.end141:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call136) #8
  br label %if.then145

fail:                                             ; preds = %of_parse_phandle.exit.fail_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.then145:                                       ; preds = %do.end141, %if.end129.if.then145_crit_edge, %if.end119.if.then145_crit_edge, %do.end70, %if.end17.if.then145_crit_edge, %do.end15
  %ret.0.ph = phi i32 [ -12, %if.end17.if.then145_crit_edge ], [ -22, %do.end15 ], [ 0, %if.end129.if.then145_crit_edge ], [ %call136, %do.end141 ], [ %call126, %if.end119.if.then145_crit_edge ], [ -22, %do.end70 ]
  call void @of_node_put(ptr noundef nonnull %4) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then145, %fail, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.0.ph, %if.then145 ], [ -22, %fail ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_hdmi_init(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 11
  %4 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cpus, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %component2 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %component2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %component2, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %10 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drvdata.i, align 4
  %hdmi_jack_pin = getelementptr inbounds %struct.imx_hdmi_data, ptr %11, i32 0, i32 3
  %pin = getelementptr inbounds %struct.imx_hdmi_data, ptr %11, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %pin to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.30, ptr %pin, align 4
  %mask = getelementptr inbounds %struct.imx_hdmi_data, ptr %11, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %mask, align 4
  %hdmi_jack = getelementptr inbounds %struct.imx_hdmi_data, ptr %11, i32 0, i32 2
  %call5 = tail call i32 @snd_soc_card_jack_new(ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef 4, ptr noundef %hdmi_jack, ptr noundef %hdmi_jack_pin, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.31, i32 noundef %call5) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @snd_soc_component_set_jack(ptr noundef %9, ptr noundef %hdmi_jack, ptr noundef null) #5
  %16 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call7, label %do.end12 [
    i32 0, label %if.end.cleanup_crit_edge
    i32 -524, label %if.end.cleanup_crit_edge34
  ]

if.end.cleanup_crit_edge34:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev13 = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.34, i32 noundef %call7) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge34, %do.end
  %retval.0 = phi i32 [ %call5, %do.end ], [ %call7, %do.end12 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge34 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_hdmi_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dais, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev3 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev3, align 4
  %cpu_priv = getelementptr inbounds %struct.imx_hdmi_data, ptr %5, i32 0, i32 4
  %slot_width4 = getelementptr inbounds %struct.imx_hdmi_data, ptr %5, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %slot_width4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slot_width4, align 4
  %idxprom = zext i1 %cmp to i32
  %arrayidx6 = getelementptr [2 x i32], ptr %cpu_priv, i32 0, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6, align 4
  %mul = shl i32 %15, 3
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %mul8 = mul i32 %mul, %19
  %call10 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %11, i32 noundef %17, i32 noundef %mul8, i32 noundef %idxprom) #5
  %20 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call10, label %do.end [
    i32 0, label %entry.if.end_crit_edge
    i32 -524, label %entry.if.end_crit_edge44
  ]

entry.if.end_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.25, i32 noundef %call10) #8
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge44
  %call13 = tail call i32 @snd_soc_dai_set_tdm_slot(ptr noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef %15) #5
  %21 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call13, label %do.end20 [
    i32 0, label %if.end.cleanup_crit_edge
    i32 -524, label %if.end.cleanup_crit_edge45
  ]

if.end.cleanup_crit_edge45:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.28, i32 noundef %call13) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge45, %do.end
  %retval.0 = phi i32 [ %call10, %do.end ], [ %call13, %do.end20 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge45 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_tdm_slot(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_set_jack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !43, !44, !46, !48, !50, !52, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_snd_soc_imx_hdmi__240_229_imx_hdmi_driver_init6, !1, !"__initcall__kmod_snd_soc_imx_hdmi__240_229_imx_hdmi_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 229, i32 1}
!2 = !{ptr @__exitcall_imx_hdmi_driver_exit, !1, !"__exitcall_imx_hdmi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author241, !4, !"__UNIQUE_ID_author241", i1 false, i1 false}
!4 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 231, i32 1}
!5 = !{ptr @__UNIQUE_ID_description242, !6, !"__UNIQUE_ID_description242", i1 false, i1 false}
!6 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 232, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 233, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias245, !11, !"__UNIQUE_ID_alias245", i1 false, i1 false}
!11 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 234, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 223, i32 11}
!14 = !{ptr @imx_hdmi_driver, !15, !"imx_hdmi_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 221, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 100, i32 44}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 101, i32 43}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 112, i32 32}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 114, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @imx_hdmi_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @imx_hdmi_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 121, i32 3}
!32 = !{ptr @imx_hdmi_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @imx_hdmi_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 139, i32 19}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 150, i32 30}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 155, i32 34}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 164, i32 3}
!42 = !{ptr @imx_hdmi_probe._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @imx_hdmi_probe._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 172, i32 32}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 173, i32 28}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 183, i32 28}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 193, i32 48}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 203, i32 3}
!54 = !{ptr @imx_hdmi_probe._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @imx_hdmi_probe._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @imx_hdmi_ops, !57, !"imx_hdmi_ops", i1 false, i1 false}
!57 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 62, i32 33}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 49, i32 3}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @imx_hdmi_hw_params._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @imx_hdmi_hw_params._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 55, i32 3}
!65 = !{ptr @imx_hdmi_hw_params._entry.27, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @imx_hdmi_hw_params._entry_ptr.29, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 78, i32 28}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 84, i32 3}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @imx_hdmi_init._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @imx_hdmi_init._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 90, i32 3}
!76 = !{ptr @imx_hdmi_init._entry.33, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @imx_hdmi_init._entry_ptr.35, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @imx_hdmi_widgets, !79, !"imx_hdmi_widgets", i1 false, i1 false}
!79 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 66, i32 41}
!80 = !{ptr @imx_hdmi_dt_ids, !81, !"imx_hdmi_dt_ids", i1 false, i1 false}
!81 = !{!"../sound/soc/fsl/imx-hdmi.c", i32 214, i32 34}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
