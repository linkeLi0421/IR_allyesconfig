; ModuleID = '/llk/IR_all_yes/sound/soc/ti/omap-hdmi.c_pt.bc'
source_filename = "../sound/soc/ti/omap-hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.hdmi_audio_data = type { ptr, ptr, ptr, %struct.snd_dmaengine_dai_dma_data, %struct.omap_dss_audio, %struct.snd_aes_iec958, %struct.snd_cea_861_aud_if, %struct.mutex, ptr }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.omap_dss_audio = type { ptr, ptr }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.snd_cea_861_aud_if = type { i8, i8, i8, i8, i8 }
%struct.omap_hdmi_audio_pdata = type { ptr, i32, i32, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
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
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.omap_hdmi_audio_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@__initcall__kmod_snd_soc_omap_hdmi__240_416_hdmi_audio_driver_init6 = internal global ptr @hdmi_audio_driver_init, section ".initcall6.init", align 4
@hdmi_audio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_hdmi_audio_probe, ptr @omap_hdmi_audio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hdmi_audio_driver_exit = internal global ptr @hdmi_audio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author241 = internal constant [52 x i8] c"snd_soc_omap_hdmi.author=Jyri Sarha <jsarha@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [53 x i8] c"snd_soc_omap_hdmi.description=OMAP HDMI Audio Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [54 x i8] c"snd_soc_omap_hdmi.file=sound/soc/ti/snd-soc-omap-hdmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [30 x i8] c"snd_soc_omap_hdmi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias245 = internal constant [49 x i8] c"snd_soc_omap_hdmi.alias=platform:omap-hdmi-audio\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap-hdmi-audio\00", [16 x i8] zeroinitializer }, align 32
@omap_hdmi_audio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 319, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap_hdmi_audio_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/ti/omap-hdmi.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_hdmi_audio_probe._entry_ptr = internal global ptr @omap_hdmi_audio_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"audio_tx\00", [23 x i8] zeroinitializer }, align 32
@omap_hdmi_audio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&ad->current_stream_lock\00", [39 x i8] zeroinitializer }, align 32
@omap4_hdmi_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.14, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @hdmi_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr null, i64 68, i32 7904, i32 0, i32 0, i32 2, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@omap5_hdmi_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.29, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @hdmi_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 7904, i32 0, i32 0, i32 2, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@omap_hdmi_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.30, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HDMI %s\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@omap_hdmi_audio_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 388, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"snd_soc_register_card failed (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@omap_hdmi_audio_probe._entry_ptr.13 = internal global ptr @omap_hdmi_audio_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap4-hdmi-dai\00", [17 x i8] zeroinitializer }, align 32
@hdmi_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdmi_dai_startup, ptr @hdmi_dai_shutdown, ptr @hdmi_dai_hw_params, ptr null, ptr null, ptr @hdmi_dai_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@hdmi_dai_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 76, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not apply period constraint: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi_dai_startup\00", [47 x i8] zeroinitializer }, align 32
@hdmi_dai_startup._entry_ptr = internal global ptr @hdmi_dai_startup._entry, section ".printk_index", align 4
@hdmi_dai_startup._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 83, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not apply buffer constraint: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@hdmi_dai_startup._entry_ptr.19 = internal global ptr @hdmi_dai_startup._entry.17, section ".printk_index", align 4
@hdmi_dai_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 55, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"HDMI display disabled, aborting playback\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdmi_dai_abort\00", [17 x i8] zeroinitializer }, align 32
@hdmi_dai_abort._entry_ptr = internal global ptr @hdmi_dai_abort._entry, section ".printk_index", align 4
@hdmi_dai_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"format not supported!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hdmi_dai_hw_params\00", [45 x i8] zeroinitializer }, align 32
@hdmi_dai_hw_params._entry_ptr = internal global ptr @hdmi_dai_hw_params._entry, section ".printk_index", align 4
@hdmi_dai_hw_params._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 173, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rate not supported!\0A\00", [43 x i8] zeroinitializer }, align 32
@hdmi_dai_hw_params._entry_ptr.26 = internal global ptr @hdmi_dai_hw_params._entry.24, section ".printk_index", align 4
@hdmi_dai_hw_params._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 195, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@hdmi_dai_hw_params._entry_ptr.28 = internal global ptr @hdmi_dai_hw_params._entry.27, section ".printk_index", align 4
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap5-hdmi-dai\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"omapdss_hdmi\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.32 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.34 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"hdmi_audio_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 408, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 410, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 319, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 329, i32 29 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 331, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"omap4_hdmi_dai\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 294, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant [15 x i8] c"omap5_hdmi_dai\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 280, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant [20 x i8] c"omap_hdmi_component\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 276, i32 46 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 357, i32 9 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 381, i32 33 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 382, i32 37 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 388, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 295, i32 10 }
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"hdmi_dai_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 269, i32 37 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 75, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 82, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 55, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 122, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 173, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 195, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 281, i32 10 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [28 x i8] c"../sound/soc/ti/omap-hdmi.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 277, i32 10 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_alias245, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_hdmi_audio_driver_exit, ptr @__initcall__kmod_snd_soc_omap_hdmi__240_416_hdmi_audio_driver_init6, ptr @hdmi_audio_driver_exit, ptr @hdmi_dai_abort._entry, ptr @hdmi_dai_abort._entry_ptr, ptr @hdmi_dai_hw_params._entry, ptr @hdmi_dai_hw_params._entry.24, ptr @hdmi_dai_hw_params._entry.27, ptr @hdmi_dai_hw_params._entry_ptr, ptr @hdmi_dai_hw_params._entry_ptr.26, ptr @hdmi_dai_hw_params._entry_ptr.28, ptr @hdmi_dai_startup._entry, ptr @hdmi_dai_startup._entry.17, ptr @hdmi_dai_startup._entry_ptr, ptr @hdmi_dai_startup._entry_ptr.19, ptr @omap_hdmi_audio_probe._entry, ptr @omap_hdmi_audio_probe._entry.11, ptr @omap_hdmi_audio_probe._entry_ptr, ptr @omap_hdmi_audio_probe._entry_ptr.13, ptr @hdmi_audio_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @omap_hdmi_audio_probe.__key, ptr @.str.7, ptr @omap4_hdmi_dai, ptr @omap5_hdmi_dai, ptr @omap_hdmi_component, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @hdmi_dai_ops, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_audio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hdmi_audio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hdmi_audio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_hdmi_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5_hdmi_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hdmi_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hdmi_audio_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_dai_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_dai_startup._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_dai_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_dai_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_dai_hw_params._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_dai_hw_params._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_audio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hdmi_audio_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_audio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @hdmi_audio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_hdmi_audio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 336, i32 noundef 3520) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dssdev = getelementptr inbounds %struct.hdmi_audio_data, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %dssdev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %dssdev, align 4
  %ops = getelementptr inbounds %struct.omap_hdmi_audio_pdata, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %ops7 = getelementptr inbounds %struct.hdmi_audio_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %ops7, align 4
  %audio_dma_addr = getelementptr inbounds %struct.omap_hdmi_audio_pdata, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %audio_dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %audio_dma_addr, align 4
  %dma_data = getelementptr inbounds %struct.hdmi_audio_data, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %dma_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dma_data, align 4
  %filter_data = getelementptr inbounds %struct.hdmi_audio_data, ptr %call.i, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %filter_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.6, ptr %filter_data, align 4
  %addr_width = getelementptr inbounds %struct.hdmi_audio_data, ptr %call.i, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %addr_width, align 4
  %current_stream_lock = getelementptr inbounds %struct.hdmi_audio_data, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %current_stream_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @omap_hdmi_audio_probe.__key) #5
  %version = getelementptr inbounds %struct.omap_hdmi_audio_pdata, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %version, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.end5.cleanup_crit_edge [
    i32 4, label %if.end5.sw.epilog_crit_edge
    i32 5, label %sw.bb13
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb13:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %if.end5.sw.epilog_crit_edge
  %dai_drv.0 = phi ptr [ @omap5_hdmi_dai, %sw.bb13 ], [ @omap4_hdmi_dai, %if.end5.sw.epilog_crit_edge ]
  %16 = ptrtoint ptr %dssdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dssdev, align 4
  %call15 = tail call i32 @devm_snd_soc_register_component(ptr noundef %17, ptr noundef nonnull @omap_hdmi_component, ptr noundef nonnull %dai_drv.0, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %sw.epilog
  %18 = ptrtoint ptr %dssdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dssdev, align 4
  %call20 = tail call i32 @sdma_pcm_platform_register(ptr noundef %19, ptr noundef nonnull @.str.6, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %call.i147 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 648, i32 noundef 3520) #5
  %tobool25.not = icmp eq ptr %call.i147, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %20 = ptrtoint ptr %dssdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dssdev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end27.dev_name.exit_crit_edge

if.end27.dev_name.exit_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end27.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %25, %if.end.i ], [ %23, %if.end27.dev_name.exit_crit_edge ]
  %call30 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i) #5
  %26 = ptrtoint ptr %call.i147 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call30, ptr %call.i147, align 4
  %tobool32.not = icmp eq ptr %call30, null
  br i1 %tobool32.not, label %dev_name.exit.cleanup_crit_edge, label %if.end34

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %dev_name.exit
  %owner = getelementptr inbounds %struct.snd_soc_card, ptr %call.i147, i32 0, i32 7
  %27 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %owner, align 4
  %call.i148 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 116, i32 noundef 3520) #5
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %call.i147, i32 0, i32 24
  %28 = ptrtoint ptr %dai_link to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i148, ptr %dai_link, align 4
  %tobool37.not = icmp eq ptr %call.i148, null
  br i1 %tobool37.not, label %if.end34.cleanup_crit_edge, label %if.end39

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %call.i149 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #5
  %tobool41.not = icmp eq ptr %call.i149, null
  br i1 %tobool41.not, label %if.end39.cleanup_crit_edge, label %if.end43

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %29 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dai_link, align 4
  %cpus = getelementptr inbounds %struct.snd_soc_dai_link, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %cpus to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i149, ptr %cpus, align 4
  %32 = load ptr, ptr %dai_link, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_dai_link, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %num_cpus to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %num_cpus, align 4
  %arrayidx46 = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i149, i32 1
  %34 = load ptr, ptr %dai_link, align 4
  %codecs = getelementptr inbounds %struct.snd_soc_dai_link, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx46, ptr %codecs, align 4
  %36 = load ptr, ptr %dai_link, align 4
  %num_codecs = getelementptr inbounds %struct.snd_soc_dai_link, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %num_codecs to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %num_codecs, align 4
  %arrayidx49 = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i149, i32 2
  %38 = load ptr, ptr %dai_link, align 4
  %platforms = getelementptr inbounds %struct.snd_soc_dai_link, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %platforms to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx49, ptr %platforms, align 4
  %40 = load ptr, ptr %dai_link, align 4
  %num_platforms = getelementptr inbounds %struct.snd_soc_dai_link, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %num_platforms to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %num_platforms, align 4
  %42 = ptrtoint ptr %call.i147 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i147, align 4
  %44 = load ptr, ptr %dai_link, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %44, align 4
  %46 = load ptr, ptr %call.i147, align 4
  %47 = load ptr, ptr %dai_link, align 4
  %stream_name = getelementptr inbounds %struct.snd_soc_dai_link, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %stream_name to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %stream_name, align 4
  %49 = ptrtoint ptr %dssdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dssdev, align 4
  %init_name.i150 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %init_name.i150 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i150, align 8
  %tobool.not.i151 = icmp eq ptr %52, null
  br i1 %tobool.not.i151, label %if.end.i152, label %if.end43.dev_name.exit154_crit_edge

if.end43.dev_name.exit154_crit_edge:              ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit154

if.end.i152:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 4
  br label %dev_name.exit154

dev_name.exit154:                                 ; preds = %if.end.i152, %if.end43.dev_name.exit154_crit_edge
  %retval.0.i153 = phi ptr [ %54, %if.end.i152 ], [ %52, %if.end43.dev_name.exit154_crit_edge ]
  %55 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dai_link, align 4
  %cpus60 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %cpus60 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cpus60, align 4
  %dai_name = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %dai_name to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %retval.0.i153, ptr %dai_name, align 4
  %60 = ptrtoint ptr %dssdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dssdev, align 4
  %init_name.i155 = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %init_name.i155 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_name.i155, align 8
  %tobool.not.i156 = icmp eq ptr %63, null
  br i1 %tobool.not.i156, label %if.end.i157, label %dev_name.exit154.dev_name.exit159_crit_edge

dev_name.exit154.dev_name.exit159_crit_edge:      ; preds = %dev_name.exit154
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit159

if.end.i157:                                      ; preds = %dev_name.exit154
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %61, align 4
  br label %dev_name.exit159

dev_name.exit159:                                 ; preds = %if.end.i157, %dev_name.exit154.dev_name.exit159_crit_edge
  %retval.0.i158 = phi ptr [ %65, %if.end.i157 ], [ %63, %dev_name.exit154.dev_name.exit159_crit_edge ]
  %66 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dai_link, align 4
  %platforms64 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %platforms64 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %platforms64, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %retval.0.i158, ptr %69, align 4
  %71 = load ptr, ptr %dai_link, align 4
  %codecs67 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %codecs67 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %codecs67, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.9, ptr %73, align 4
  %75 = load ptr, ptr %dai_link, align 4
  %codecs70 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %codecs70 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %codecs70, align 4
  %dai_name71 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %dai_name71 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.10, ptr %dai_name71, align 4
  %num_links = getelementptr inbounds %struct.snd_soc_card, ptr %call.i147, i32 0, i32 25
  %79 = ptrtoint ptr %num_links to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %num_links, align 4
  %dev72 = getelementptr inbounds %struct.snd_soc_card, ptr %call.i147, i32 0, i32 5
  %80 = ptrtoint ptr %dev72 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %dev, ptr %dev72, align 4
  %call73 = tail call i32 @snd_soc_register_card(ptr noundef nonnull %call.i147) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end79, label %do.end78

do.end78:                                         ; preds = %dev_name.exit159
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call73) #8
  br label %cleanup

if.end79:                                         ; preds = %dev_name.exit159
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i147, ptr %call.i, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %call.i147, i32 0, i32 57
  %82 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i, ptr %drvdata.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %83 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %do.end78, %if.end39.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call73, %do.end78 ], [ 0, %if.end79 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ %call15, %sw.epilog.cleanup_crit_edge ], [ %call20, %if.end18.cleanup_crit_edge ], [ -12, %if.end23.cleanup_crit_edge ], [ -12, %dev_name.exit.cleanup_crit_edge ], [ -12, %if.end34.cleanup_crit_edge ], [ -12, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_hdmi_audio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @snd_soc_unregister_card(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdma_pcm_platform_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_dai_startup(ptr noundef %substream, ptr nocapture noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %card.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card.i, align 4
  %drvdata.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i.i, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %6 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime, align 4
  %call1 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %7, i32 noundef 0, i32 noundef 14, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.15, i32 noundef %call1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %call3 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %11, i32 noundef 0, i32 noundef 18, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev9 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18, i32 noundef %call3) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %dma_data = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 3
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %14 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.sink.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %16 = ptrtoint ptr %capture_dma_data.sink.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dma_data, ptr %capture_dma_data.sink.i, align 4
  %current_stream_lock = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %current_stream_lock, i32 noundef 0) #5
  %current_stream = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 8
  %17 = ptrtoint ptr %current_stream to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %substream, ptr %current_stream, align 4
  tail call void @mutex_unlock(ptr noundef %current_stream_lock) #5
  %ops = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %dssdev = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %dssdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dssdev, align 4
  %call12 = tail call i32 %21(ptr noundef %23, ptr noundef nonnull @hdmi_dai_abort) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %if.then13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_lock_nested(ptr noundef %current_stream_lock, i32 noundef 0) #5
  %24 = ptrtoint ptr %current_stream to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %current_stream, align 4
  tail call void @mutex_unlock(ptr noundef %current_stream_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end10.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call3, %do.end8 ], [ %call12, %if.then13 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_dai_shutdown(ptr noundef readonly %substream, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %card.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card.i, align 4
  %drvdata.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i.i, align 4
  %current_stream = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %current_stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %current_stream, align 4
  %cmp.not = icmp eq ptr %7, %substream
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !88

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 260, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ops = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %audio_shutdown = getelementptr inbounds %struct.omap_hdmi_audio_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %audio_shutdown to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %audio_shutdown, align 4
  %dssdev = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %dssdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dssdev, align 4
  %call19 = tail call i32 %11(ptr noundef %13) #5
  %current_stream_lock = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %current_stream_lock, i32 noundef 0) #5
  %14 = ptrtoint ptr %current_stream to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %current_stream, align 4
  tail call void @mutex_unlock(ptr noundef %current_stream_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_dai_hw_params(ptr noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %card.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card.i, align 4
  %drvdata.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i.i, align 4
  %iec1 = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 5
  %cea2 = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 6
  %current_stream = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %current_stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %current_stream, align 4
  %cmp.not = icmp eq ptr %7, %substream
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !88

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end.params_format.exit_crit_edge

if.end.params_format.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.1.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.do.end27_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit

for.inc.i.i.do.end27_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end27

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.end.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %9, %if.end.params_format.exit_crit_edge ], [ %11, %for.inc.i.i.params_format.exit_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #5, !range !89
  %add.i.i = or i32 %12, %i.09.lcssa.i.i
  %13 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %add.i.i, label %params_format.exit.do.end27_crit_edge [
    i32 2, label %params_format.exit.sw.epilog_crit_edge
    i32 6, label %sw.bb22
  ]

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

params_format.exit.do.end27_crit_edge:            ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end27

sw.bb22:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end27:                                         ; preds = %params_format.exit.do.end27_crit_edge, %for.inc.i.i.do.end27_crit_edge
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.22) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb22, %params_format.exit.sw.epilog_crit_edge
  %.sink249 = phi i32 [ 32, %sw.bb22 ], [ 16, %params_format.exit.sw.epilog_crit_edge ]
  %maxburst24 = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %maxburst24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink249, ptr %maxburst24, align 4
  %dss_audio = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %dss_audio to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %iec1, ptr %dss_audio, align 4
  %cea30 = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %cea30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cea2, ptr %cea30, align 4
  %19 = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 5, i32 0, i32 2
  %20 = call ptr @memset(ptr %19, i32 0, i32 22)
  %21 = ptrtoint ptr %iec1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %iec1, align 1
  %arrayidx48 = getelementptr %struct.hdmi_audio_data, ptr %5, i32 0, i32 5, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx48, align 1
  %arrayidx.i.i232 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %arrayidx.i.i232 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i232, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %24, label %do.end105 [
    i32 32000, label %sw.epilog.sw.epilog107.sink.split_crit_edge
    i32 44100, label %sw.epilog.sw.epilog107_crit_edge
    i32 48000, label %sw.bb72
    i32 88200, label %sw.bb78
    i32 96000, label %sw.bb84
    i32 176400, label %sw.bb90
    i32 192000, label %sw.bb96
  ]

sw.epilog.sw.epilog107_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog107

sw.epilog.sw.epilog107.sink.split_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog107.sink.split

sw.bb72:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog107.sink.split

sw.bb78:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog107.sink.split

sw.bb84:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog107.sink.split

sw.bb90:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog107.sink.split

sw.bb96:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog107.sink.split

do.end105:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %dev106 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %26 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev106, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.25) #8
  br label %cleanup

sw.epilog107.sink.split:                          ; preds = %sw.bb96, %sw.bb90, %sw.bb84, %sw.bb78, %sw.bb72, %sw.epilog.sw.epilog107.sink.split_crit_edge
  %.sink252 = phi i8 [ 14, %sw.bb96 ], [ 12, %sw.bb90 ], [ 10, %sw.bb84 ], [ 8, %sw.bb78 ], [ 2, %sw.bb72 ], [ 3, %sw.epilog.sw.epilog107.sink.split_crit_edge ]
  %arrayidx62 = getelementptr %struct.hdmi_audio_data, ptr %5, i32 0, i32 5, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx62, align 1
  %30 = or i8 %29, %.sink252
  store i8 %30, ptr %arrayidx62, align 1
  br label %sw.epilog107

sw.epilog107:                                     ; preds = %sw.epilog107.sink.split, %sw.epilog.sw.epilog107_crit_edge
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i234 = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i234, label %for.inc.i.i241, label %sw.epilog107.params_format.exit243_crit_edge

sw.epilog107.params_format.exit243_crit_edge:     ; preds = %sw.epilog107
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit243

for.inc.i.i241:                                   ; preds = %sw.epilog107
  %arrayidx.1.i.i239 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx.1.i.i239 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.1.i.i239, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.1.i.i240 = icmp eq i32 %34, 0
  br i1 %tobool.not.1.i.i240, label %for.inc.i.i241.do.end139_crit_edge, label %for.inc.i.i241.params_format.exit243_crit_edge

for.inc.i.i241.params_format.exit243_crit_edge:   ; preds = %for.inc.i.i241
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit243

for.inc.i.i241.do.end139_crit_edge:               ; preds = %for.inc.i.i241
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end139

params_format.exit243:                            ; preds = %for.inc.i.i241.params_format.exit243_crit_edge, %sw.epilog107.params_format.exit243_crit_edge
  %i.09.lcssa.i.i235 = phi i32 [ 0, %sw.epilog107.params_format.exit243_crit_edge ], [ 32, %for.inc.i.i241.params_format.exit243_crit_edge ]
  %.lcssa.i.i236 = phi i32 [ %32, %sw.epilog107.params_format.exit243_crit_edge ], [ %34, %for.inc.i.i241.params_format.exit243_crit_edge ]
  %35 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i236, i1 true) #5, !range !89
  %add.i.i237 = or i32 %35, %i.09.lcssa.i.i235
  %36 = zext i32 %add.i.i237 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %add.i.i237, label %params_format.exit243.do.end139_crit_edge [
    i32 2, label %sw.bb114
    i32 6, label %sw.bb125
  ]

params_format.exit243.do.end139_crit_edge:        ; preds = %params_format.exit243
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end139

sw.bb114:                                         ; preds = %params_format.exit243
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx116 = getelementptr %struct.hdmi_audio_data, ptr %5, i32 0, i32 5, i32 0, i32 4
  %37 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx116, align 1
  %39 = and i8 %38, -4
  %40 = or i8 %39, 2
  store i8 %40, ptr %arrayidx116, align 1
  br label %sw.epilog141

sw.bb125:                                         ; preds = %params_format.exit243
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx127 = getelementptr %struct.hdmi_audio_data, ptr %5, i32 0, i32 5, i32 0, i32 4
  %41 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx127, align 1
  %43 = or i8 %42, 11
  store i8 %43, ptr %arrayidx127, align 1
  br label %sw.epilog141

do.end139:                                        ; preds = %params_format.exit243.do.end139_crit_edge, %for.inc.i.i241.do.end139_crit_edge
  %dev140 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %44 = ptrtoint ptr %dev140 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev140, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.22) #8
  br label %cleanup

sw.epilog141:                                     ; preds = %sw.bb125, %sw.bb114
  %arrayidx.i.i244 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %46 = ptrtoint ptr %arrayidx.i.i244 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i244, align 4
  %48 = trunc i32 %47 to i8
  %49 = add i8 %48, 7
  %conv144 = and i8 %49, 7
  %50 = ptrtoint ptr %cea2 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv144, ptr %cea2, align 1
  %db2_sf_ss = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 6, i32 1
  %51 = ptrtoint ptr %db2_sf_ss to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %db2_sf_ss, align 1
  %db3 = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 6, i32 2
  %52 = ptrtoint ptr %db3 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %db3, align 1
  %53 = load i32, ptr %arrayidx.i.i244, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %53)
  %switch.selectcmp = icmp eq i32 %53, 6
  %switch.select = select i1 %switch.selectcmp, i8 11, i8 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %switch.selectcmp255 = icmp eq i32 %53, 2
  %switch.select256 = select i1 %switch.selectcmp255, i8 0, i8 %switch.select
  %db4_ca161 = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 6, i32 3
  %54 = ptrtoint ptr %db4_ca161 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %switch.select256, ptr %db4_ca161, align 1
  %.sink = select i1 %switch.selectcmp255, i8 0, i8 -128
  %55 = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 6, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %.sink, ptr %55, align 1
  %ops = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 1
  %57 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops, align 4
  %audio_config = getelementptr inbounds %struct.omap_hdmi_audio_ops, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %audio_config to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %audio_config, align 4
  %dssdev = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 2
  %61 = ptrtoint ptr %dssdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dssdev, align 4
  %call179 = tail call i32 %60(ptr noundef %62, ptr noundef %dss_audio) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog141, %do.end139, %do.end105, %do.end27
  %retval.0 = phi i32 [ -22, %do.end27 ], [ -22, %do.end105 ], [ -22, %do.end139 ], [ %call179, %sw.epilog141 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_dai_trigger(ptr noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readnone %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %card.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card.i, align 4
  %drvdata.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i.i, align 4
  %current_stream = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %current_stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %current_stream, align 4
  %cmp.not = icmp eq ptr %7, %substream
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !88

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 236, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %cmd, label %if.end.sw.epilog_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 6, label %if.end.sw.bb_crit_edge29
    i32 4, label %if.end.sw.bb_crit_edge30
    i32 0, label %if.end.sw.bb20_crit_edge
    i32 5, label %if.end.sw.bb20_crit_edge31
    i32 3, label %if.end.sw.bb20_crit_edge32
  ]

if.end.sw.bb20_crit_edge32:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

if.end.sw.bb20_crit_edge31:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

if.end.sw.bb20_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

if.end.sw.bb_crit_edge30:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge29:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge29, %if.end.sw.bb_crit_edge30
  %ops = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %audio_start = getelementptr inbounds %struct.omap_hdmi_audio_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %audio_start to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %audio_start, align 4
  %dssdev = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %dssdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dssdev, align 4
  %call19 = tail call i32 %12(ptr noundef %14) #5
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end.sw.bb20_crit_edge, %if.end.sw.bb20_crit_edge31, %if.end.sw.bb20_crit_edge32
  %ops21 = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %ops21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops21, align 4
  %audio_stop = getelementptr inbounds %struct.omap_hdmi_audio_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %audio_stop to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %audio_stop, align 4
  %dssdev22 = getelementptr inbounds %struct.hdmi_audio_data, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %dssdev22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dssdev22, align 4
  tail call void %18(ptr noundef %20) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb, %if.end.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %sw.bb20 ], [ %call19, %sw.bb ], [ -22, %if.end.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_dai_abort(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %current_stream_lock = getelementptr inbounds %struct.hdmi_audio_data, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %current_stream_lock, i32 noundef 0) #5
  %current_stream = getelementptr inbounds %struct.hdmi_audio_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %current_stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_stream, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %status.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 37
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %status.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %9, label %land.lhs.true3.if.end_crit_edge [
    i32 3, label %land.lhs.true3.do.end_crit_edge
    i32 5, label %snd_pcm_running.exit
  ]

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

snd_pcm_running.exit:                             ; preds = %land.lhs.true3
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5.i.not = icmp eq i32 %12, 0
  br i1 %cmp5.i.not, label %snd_pcm_running.exit.do.end_crit_edge, label %snd_pcm_running.exit.if.end_crit_edge

snd_pcm_running.exit.if.end_crit_edge:            ; preds = %snd_pcm_running.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

snd_pcm_running.exit.do.end_crit_edge:            ; preds = %snd_pcm_running.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %snd_pcm_running.exit.do.end_crit_edge, %land.lhs.true3.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #8
  %13 = ptrtoint ptr %current_stream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %current_stream, align 4
  tail call void @snd_pcm_stream_lock_irq(ptr noundef %14) #5
  %15 = ptrtoint ptr %current_stream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %current_stream, align 4
  %call9 = tail call i32 @snd_pcm_stop(ptr noundef %16, i32 noundef 8) #5
  %17 = ptrtoint ptr %current_stream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %current_stream, align 4
  tail call void @snd_pcm_stream_unlock_irq(ptr noundef %18) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %snd_pcm_running.exit.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %current_stream_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_lock_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_unlock_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_unregister_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !31, !33, !35, !37, !38, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !73, !75, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__initcall__kmod_snd_soc_omap_hdmi__240_416_hdmi_audio_driver_init6, !1, !"__initcall__kmod_snd_soc_omap_hdmi__240_416_hdmi_audio_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/ti/omap-hdmi.c", i32 416, i32 1}
!2 = !{ptr @__exitcall_hdmi_audio_driver_exit, !1, !"__exitcall_hdmi_audio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author241, !4, !"__UNIQUE_ID_author241", i1 false, i1 false}
!4 = !{!"../sound/soc/ti/omap-hdmi.c", i32 418, i32 1}
!5 = !{ptr @__UNIQUE_ID_description242, !6, !"__UNIQUE_ID_description242", i1 false, i1 false}
!6 = !{!"../sound/soc/ti/omap-hdmi.c", i32 419, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../sound/soc/ti/omap-hdmi.c", i32 420, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias245, !11, !"__UNIQUE_ID_alias245", i1 false, i1 false}
!11 = !{!"../sound/soc/ti/omap-hdmi.c", i32 421, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/ti/omap-hdmi.c", i32 410, i32 11}
!14 = !{ptr @hdmi_audio_driver, !15, !"hdmi_audio_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/ti/omap-hdmi.c", i32 408, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/ti/omap-hdmi.c", i32 319, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @omap_hdmi_audio_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @omap_hdmi_audio_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/ti/omap-hdmi.c", i32 329, i32 29}
!26 = !{ptr @omap_hdmi_audio_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../sound/soc/ti/omap-hdmi.c", i32 331, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/ti/omap-hdmi.c", i32 357, i32 9}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/ti/omap-hdmi.c", i32 381, i32 33}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/ti/omap-hdmi.c", i32 382, i32 37}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/ti/omap-hdmi.c", i32 388, i32 3}
!37 = !{ptr @omap_hdmi_audio_probe._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @omap_hdmi_audio_probe._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/ti/omap-hdmi.c", i32 295, i32 10}
!41 = !{ptr @omap4_hdmi_dai, !42, !"omap4_hdmi_dai", i1 false, i1 false}
!42 = !{!"../sound/soc/ti/omap-hdmi.c", i32 294, i32 34}
!43 = !{ptr @hdmi_dai_ops, !44, !"hdmi_dai_ops", i1 false, i1 false}
!44 = !{!"../sound/soc/ti/omap-hdmi.c", i32 269, i32 37}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/ti/omap-hdmi.c", i32 75, i32 3}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @hdmi_dai_startup._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @hdmi_dai_startup._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/ti/omap-hdmi.c", i32 82, i32 3}
!52 = !{ptr @hdmi_dai_startup._entry.17, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @hdmi_dai_startup._entry_ptr.19, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/ti/omap-hdmi.c", i32 55, i32 3}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @hdmi_dai_abort._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @hdmi_dai_abort._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/ti/omap-hdmi.c", i32 122, i32 3}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @hdmi_dai_hw_params._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @hdmi_dai_hw_params._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/ti/omap-hdmi.c", i32 173, i32 3}
!66 = !{ptr @hdmi_dai_hw_params._entry.24, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @hdmi_dai_hw_params._entry_ptr.26, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @hdmi_dai_hw_params._entry.27, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../sound/soc/ti/omap-hdmi.c", i32 195, i32 3}
!70 = !{ptr @hdmi_dai_hw_params._entry_ptr.28, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/ti/omap-hdmi.c", i32 281, i32 10}
!73 = !{ptr @omap5_hdmi_dai, !74, !"omap5_hdmi_dai", i1 false, i1 false}
!74 = !{!"../sound/soc/ti/omap-hdmi.c", i32 280, i32 34}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/ti/omap-hdmi.c", i32 277, i32 10}
!77 = !{ptr @omap_hdmi_component, !78, !"omap_hdmi_component", i1 false, i1 false}
!78 = !{!"../sound/soc/ti/omap-hdmi.c", i32 276, i32 46}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"branch_weights", i32 2000, i32 1}
!89 = !{i32 0, i32 33}
