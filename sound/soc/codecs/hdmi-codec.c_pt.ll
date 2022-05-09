; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/hdmi-codec.c_pt.bc'
source_filename = "../sound/soc/codecs/hdmi-codec.c"
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
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
%struct.atomic_t = type { i32 }
%struct.hdmi_codec_cea_spk_alloc = type { i32, i32, i32 }
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
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.hdmi_codec_priv = type { %struct.hdmi_codec_pdata, [128 x i8], ptr, i32, %struct.mutex, i8, ptr, i32, [24 x i8] }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_chmap = type { ptr, i32, ptr, ptr, i32, i32, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.95, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.95 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.90, [128 x i8] }
%union.anon.90 = type { %union.anon.92 }
%union.anon.92 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.86, [64 x i8] }
%union.anon.86 = type { %struct.anon.89, [40 x i8] }
%struct.anon.89 = type { i32, i32, [64 x i8], i64, i32 }
%struct.hdmi_codec_daifmt = type { i32, i8, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@__initcall__kmod_snd_soc_hdmi_codec__314_1055_hdmi_codec_driver_init6 = internal global ptr @hdmi_codec_driver_init, section ".initcall6.init", align 4
@hdmi_codec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hdmi_codec_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hdmi_codec_driver_exit = internal global ptr @hdmi_codec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author315 = internal constant [53 x i8] c"snd_soc_hdmi_codec.author=Jyri Sarha <jsarha@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description316 = internal constant [55 x i8] c"snd_soc_hdmi_codec.description=HDMI Audio Codec Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file317 = internal constant [60 x i8] c"snd_soc_hdmi_codec.file=sound/soc/codecs/snd-soc-hdmi-codec\00", section ".modinfo", align 1
@__UNIQUE_ID_license318 = internal constant [31 x i8] c"snd_soc_hdmi_codec.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias319 = internal constant [51 x i8] c"snd_soc_hdmi_codec.alias=platform:hdmi-audio-codec\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi-audio-codec\00", [47 x i8] zeroinitializer }, align 32
@hdmi_codec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 999, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: No platform data\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi_codec_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/codecs/hdmi-codec.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hdmi_codec_probe._entry_ptr = internal global ptr @hdmi_codec_probe._entry, section ".printk_index", align 4
@hdmi_codec_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1007, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Invalid parameters\0A\00", [40 x i8] zeroinitializer }, align 32
@hdmi_codec_probe._entry_ptr.8 = internal global ptr @hdmi_codec_probe._entry.6, section ".printk_index", align 4
@hdmi_codec_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&hcp->lock\00", [21 x i8] zeroinitializer }, align 32
@hdmi_i2s_dai = internal constant { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.13, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @hdmi_dai_probe, ptr @hdmi_codec_dai_remove, ptr null, ptr @hdmi_codec_pcm_new, ptr @hdmi_codec_i2s_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.14, i64 219043597516, i32 7904, i32 0, i32 0, i32 2, i32 8, i32 24 }, %struct.snd_soc_pcm_stream { ptr @.str.15, i64 219043597516, i32 7904, i32 0, i32 0, i32 2, i32 8, i32 24 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@hdmi_spdif_dai = internal constant { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.34, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @hdmi_dai_spdif_probe, ptr @hdmi_codec_dai_remove, ptr null, ptr @hdmi_codec_pcm_new, ptr @hdmi_codec_spdif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.14, i64 219043332300, i32 7904, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.35, i64 219043332300, i32 7904, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@hdmi_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr @hdmi_widgets, i32 2, ptr null, i32 0, ptr null, ptr @hdmi_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdmi_codec_set_jack, ptr null, ptr @hdmi_of_xlate_dai_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@hdmi_codec_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1042, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: snd_soc_register_component() failed (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@hdmi_codec_probe._entry_ptr.12 = internal global ptr @hdmi_codec_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s-hifi\00", [23 x i8] zeroinitializer }, align 32
@hdmi_codec_i2s_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @hdmi_codec_i2s_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdmi_codec_mute, ptr @hdmi_codec_startup, ptr @hdmi_codec_shutdown, ptr @hdmi_codec_hw_params, ptr null, ptr @hdmi_codec_prepare, ptr null, ptr null, ptr null, ptr @hdmi_codec_formats, i32 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S Playback\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hdmi_codec_controls = internal global { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.19, i32 0, i32 1, i32 0, ptr @hdmi_codec_iec958_info, ptr @hdmi_codec_iec958_mask_get, ptr null, %union.anon.96 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @hdmi_codec_iec958_info, ptr @hdmi_codec_iec958_default_get, ptr @hdmi_codec_iec958_default_put, %union.anon.96 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.21, i32 0, i32 5, i32 0, ptr @hdmi_eld_ctl_info, ptr @hdmi_eld_ctl_get, ptr null, %union.anon.96 zeroinitializer, i32 0 }], [48 x i8] zeroinitializer }, align 32
@hdmi_codec_stereo_chmaps = internal constant { <{ { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }>, [32 x i8] } { <{ { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }> <{ { i8, <{ i8, i8, [13 x i8] }> } { i8 2, <{ i8, i8, [13 x i8] }> <{ i8 3, i8 4, [13 x i8] zeroinitializer }> }, %struct.snd_pcm_chmap_elem zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Playback Mask\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ELD\00", [28 x i8] zeroinitializer }, align 32
@hdmi_codec_formats = internal global { i64, [24 x i8] } { i64 64424509566, [24 x i8] zeroinitializer }, align 32
@hdmi_codec_i2s_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 661, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid DAI interface format\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hdmi_codec_i2s_set_fmt\00", [41 x i8] zeroinitializer }, align 32
@hdmi_codec_i2s_set_fmt._entry_ptr = internal global ptr @hdmi_codec_i2s_set_fmt._entry, section ".printk_index", align 4
@hdmi_codec_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 439, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Only one simultaneous stream supported!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hdmi_codec_startup\00", [45 x i8] zeroinitializer }, align 32
@hdmi_codec_startup._entry_ptr = internal global ptr @hdmi_codec_startup._entry, section ".printk_index", align 4
@hdmi_codec_8ch_chmaps = internal constant { <{ { i8, <{ i8, i8, [13 x i8] }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem }>, [144 x i8] } { <{ { i8, <{ i8, i8, [13 x i8] }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> }, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem, %struct.snd_pcm_chmap_elem }> <{ { i8, <{ i8, i8, [13 x i8] }> } { i8 2, <{ i8, i8, [13 x i8] }> <{ i8 3, i8 4, [13 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> } { i8 4, <{ i8, i8, i8, i8, [11 x i8] }> <{ i8 3, i8 4, i8 8, i8 1, [11 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> } { i8 4, <{ i8, i8, i8, i8, [11 x i8] }> <{ i8 3, i8 4, i8 1, i8 7, [11 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, [11 x i8] }> } { i8 4, <{ i8, i8, i8, i8, [11 x i8] }> <{ i8 3, i8 4, i8 8, i8 7, [11 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> } { i8 6, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 4, i8 1, i8 1, i8 11, i8 1, [9 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> } { i8 6, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 4, i8 8, i8 1, i8 11, i8 1, [9 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> } { i8 6, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 4, i8 1, i8 7, i8 11, i8 1, [9 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> } { i8 6, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 4, i8 8, i8 7, i8 11, i8 1, [9 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> } { i8 6, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 4, i8 1, i8 1, i8 5, i8 6, [9 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> } { i8 6, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 4, i8 8, i8 1, i8 5, i8 6, [9 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> } { i8 6, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 4, i8 1, i8 7, i8 5, i8 6, [9 x i8] zeroinitializer }> }, { i8, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> } { i8 6, <{ i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 3, i8 4, i8 8, i8 7, i8 5, i8 6, [9 x i8] zeroinitializer }> }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\01\05\06\0B\01\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\01\05\06\0B\01\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\07\05\06\0B\01\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\07\05\06\0B\01\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\01\05\06\0E\0F\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\01\05\06\0E\0F\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\07\05\06\0E\0F\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\07\05\06\0E\0F\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\01\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\01\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\07\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\07\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\01\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\01\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\07\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\07\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\01\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\01\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\01\07\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem { i8 8, [15 x i8] c"\03\04\08\07\01\01\0C\0D\00\00\00\00\00\00\00" }, %struct.snd_pcm_chmap_elem zeroinitializer }>, [144 x i8] zeroinitializer }, align 32
@hdmi_codec_hw_params.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_soc_hdmi_codec\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hdmi_codec_hw_params\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s() width %d rate %d channels %d\0A\00", [61 x i8] zeroinitializer }, align 32
@hdmi_codec_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 556, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Creating IEC958 channel status failed %d\0A\00", [54 x i8] zeroinitializer }, align 32
@hdmi_codec_hw_params._entry_ptr = internal global ptr @hdmi_codec_hw_params._entry, section ".printk_index", align 4
@hdmi_codec_fill_codec_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 497, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Not able to map channels to speakers (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hdmi_codec_fill_codec_params\00", [35 x i8] zeroinitializer }, align 32
@hdmi_codec_fill_codec_params._entry_ptr = internal global ptr @hdmi_codec_fill_codec_params._entry, section ".printk_index", align 4
@hdmi_codec_channel_alloc = internal constant { [32 x %struct.hdmi_codec_cea_spk_alloc], [96 x i8] } { [32 x %struct.hdmi_codec_cea_spk_alloc] [%struct.hdmi_codec_cea_spk_alloc { i32 0, i32 2, i32 5 }, %struct.hdmi_codec_cea_spk_alloc { i32 1, i32 4, i32 1029 }, %struct.hdmi_codec_cea_spk_alloc { i32 2, i32 4, i32 7 }, %struct.hdmi_codec_cea_spk_alloc { i32 11, i32 6, i32 1191 }, %struct.hdmi_codec_cea_spk_alloc { i32 8, i32 6, i32 165 }, %struct.hdmi_codec_cea_spk_alloc { i32 9, i32 6, i32 1189 }, %struct.hdmi_codec_cea_spk_alloc { i32 10, i32 6, i32 167 }, %struct.hdmi_codec_cea_spk_alloc { i32 15, i32 8, i32 1255 }, %struct.hdmi_codec_cea_spk_alloc { i32 19, i32 8, i32 1959 }, %struct.hdmi_codec_cea_spk_alloc { i32 3, i32 8, i32 1031 }, %struct.hdmi_codec_cea_spk_alloc { i32 4, i32 8, i32 69 }, %struct.hdmi_codec_cea_spk_alloc { i32 5, i32 8, i32 1093 }, %struct.hdmi_codec_cea_spk_alloc { i32 6, i32 8, i32 71 }, %struct.hdmi_codec_cea_spk_alloc { i32 7, i32 8, i32 1095 }, %struct.hdmi_codec_cea_spk_alloc { i32 12, i32 8, i32 229 }, %struct.hdmi_codec_cea_spk_alloc { i32 13, i32 8, i32 1253 }, %struct.hdmi_codec_cea_spk_alloc { i32 14, i32 8, i32 231 }, %struct.hdmi_codec_cea_spk_alloc { i32 16, i32 8, i32 933 }, %struct.hdmi_codec_cea_spk_alloc { i32 17, i32 8, i32 1957 }, %struct.hdmi_codec_cea_spk_alloc { i32 18, i32 8, i32 935 }, %struct.hdmi_codec_cea_spk_alloc { i32 20, i32 8, i32 29 }, %struct.hdmi_codec_cea_spk_alloc { i32 21, i32 8, i32 1053 }, %struct.hdmi_codec_cea_spk_alloc { i32 22, i32 8, i32 31 }, %struct.hdmi_codec_cea_spk_alloc { i32 23, i32 8, i32 1055 }, %struct.hdmi_codec_cea_spk_alloc { i32 24, i32 8, i32 93 }, %struct.hdmi_codec_cea_spk_alloc { i32 25, i32 8, i32 1117 }, %struct.hdmi_codec_cea_spk_alloc { i32 26, i32 8, i32 95 }, %struct.hdmi_codec_cea_spk_alloc { i32 27, i32 8, i32 1119 }, %struct.hdmi_codec_cea_spk_alloc { i32 28, i32 8, i32 189 }, %struct.hdmi_codec_cea_spk_alloc { i32 29, i32 8, i32 1213 }, %struct.hdmi_codec_cea_spk_alloc { i32 30, i32 8, i32 191 }, %struct.hdmi_codec_cea_spk_alloc { i32 31, i32 8, i32 1215 }], [96 x i8] zeroinitializer }, align 32
@hdmi_codec_prepare.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.33, ptr @.str.3, ptr @.str.29, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hdmi_codec_prepare\00", [45 x i8] zeroinitializer }, align 32
@hdmi_codec_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.33, ptr @.str.3, i32 592, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@hdmi_codec_prepare._entry_ptr = internal global ptr @hdmi_codec_prepare._entry, section ".printk_index", align 4
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spdif-hifi\00", [21 x i8] zeroinitializer }, align 32
@hdmi_codec_spdif_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdmi_codec_mute, ptr @hdmi_codec_startup, ptr @hdmi_codec_shutdown, ptr @hdmi_codec_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SPDIF Playback\00", [17 x i8] zeroinitializer }, align 32
@hdmi_widgets = internal constant { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [88 x i8] } { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.16, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.17, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 768, i64 1024]
@__sancov_gen_cov_switch_values.38 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"hdmi_codec_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1048, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1050, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 999, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1007, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1016, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [13 x i8] c"hdmi_i2s_dai\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 908, i32 40 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"hdmi_spdif_dai\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 933, i32 40 }
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"hdmi_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 977, i32 46 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1041, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 909, i32 10 }
@___asan_gen_.93 = private unnamed_addr constant [23 x i8] c"hdmi_codec_i2s_dai_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 707, i32 37 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 922, i32 18 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 914, i32 18 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 820, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 825, i32 14 }
@___asan_gen_.108 = private unnamed_addr constant [20 x i8] c"hdmi_codec_controls\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 750, i32 32 }
@___asan_gen_.111 = private unnamed_addr constant [25 x i8] c"hdmi_codec_stereo_chmaps\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 62, i32 40 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 754, i32 11 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 760, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 769, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant [19 x i8] c"hdmi_codec_formats\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 695, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 661, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 439, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [22 x i8] c"hdmi_codec_8ch_chmaps\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 69, i32 40 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 539, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 555, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 496, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [25 x i8] c"hdmi_codec_channel_alloc\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 195, i32 46 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 580, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 591, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 934, i32 10 }
@___asan_gen_.183 = private unnamed_addr constant [25 x i8] c"hdmi_codec_spdif_dai_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 718, i32 37 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 939, i32 18 }
@___asan_gen_.189 = private unnamed_addr constant [13 x i8] c"hdmi_widgets\00", align 1
@___asan_gen_.190 = private constant [33 x i8] c"../sound/soc/codecs/hdmi-codec.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 283, i32 41 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_alias319, ptr @__UNIQUE_ID_author315, ptr @__UNIQUE_ID_description316, ptr @__UNIQUE_ID_file317, ptr @__UNIQUE_ID_license318, ptr @__exitcall_hdmi_codec_driver_exit, ptr @__initcall__kmod_snd_soc_hdmi_codec__314_1055_hdmi_codec_driver_init6, ptr @hdmi_codec_driver_exit, ptr @hdmi_codec_fill_codec_params._entry, ptr @hdmi_codec_fill_codec_params._entry_ptr, ptr @hdmi_codec_hw_params._entry, ptr @hdmi_codec_hw_params._entry_ptr, ptr @hdmi_codec_i2s_set_fmt._entry, ptr @hdmi_codec_i2s_set_fmt._entry_ptr, ptr @hdmi_codec_prepare._entry, ptr @hdmi_codec_prepare._entry_ptr, ptr @hdmi_codec_probe._entry, ptr @hdmi_codec_probe._entry.10, ptr @hdmi_codec_probe._entry.6, ptr @hdmi_codec_probe._entry_ptr, ptr @hdmi_codec_probe._entry_ptr.12, ptr @hdmi_codec_probe._entry_ptr.8, ptr @hdmi_codec_startup._entry, ptr @hdmi_codec_startup._entry_ptr, ptr @hdmi_codec_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @hdmi_codec_probe.__key, ptr @.str.9, ptr @hdmi_i2s_dai, ptr @hdmi_spdif_dai, ptr @hdmi_driver, ptr @.str.11, ptr @.str.13, ptr @hdmi_codec_i2s_dai_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @hdmi_codec_controls, ptr @hdmi_codec_stereo_chmaps, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @hdmi_codec_formats, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @hdmi_codec_8ch_chmaps, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @hdmi_codec_channel_alloc, ptr @.str.33, ptr @.str.34, ptr @hdmi_codec_spdif_dai_ops, ptr @.str.35, ptr @hdmi_widgets], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_i2s_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_spdif_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_i2s_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_stereo_chmaps to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_i2s_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_8ch_chmaps to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_fill_codec_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_channel_alloc to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_codec_spdif_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_widgets to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_codec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hdmi_codec_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_codec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @hdmi_codec_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_codec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2s = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %i2s to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %i2s, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.lshr4 = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr4, 1
  %narrow = add nuw nsw i8 %bf.clear, %bf.lshr
  %add = zext i8 %narrow to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %narrow)
  %cmp = icmp eq i8 %narrow, 0
  br i1 %cmp, label %if.end.do.end18_crit_edge, label %lor.lhs.false

if.end.do.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %lor.lhs.false.do.end18_crit_edge, label %lor.lhs.false7

lor.lhs.false.do.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %hw_params = getelementptr inbounds %struct.hdmi_codec_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_params, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %land.lhs.true, label %lor.lhs.false7.lor.lhs.false12_crit_edge

lor.lhs.false7.lor.lhs.false12_crit_edge:         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false12

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %prepare = getelementptr inbounds %struct.hdmi_codec_ops, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prepare, align 4
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %land.lhs.true.do.end18_crit_edge, label %land.lhs.true.lor.lhs.false12_crit_edge

land.lhs.true.lor.lhs.false12_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false12

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

lor.lhs.false12:                                  ; preds = %land.lhs.true.lor.lhs.false12_crit_edge, %lor.lhs.false7.lor.lhs.false12_crit_edge
  %audio_shutdown = getelementptr inbounds %struct.hdmi_codec_ops, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %audio_shutdown to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %audio_shutdown, align 4
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %lor.lhs.false12.do.end18_crit_edge, label %if.end19

lor.lhs.false12.do.end18_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

do.end18:                                         ; preds = %lor.lhs.false12.do.end18_crit_edge, %land.lhs.true.do.end18_crit_edge, %lor.lhs.false.do.end18_crit_edge, %if.end.do.end18_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2) #14
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false12
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 280, i32 noundef 3520) #11
  %tobool20.not = icmp eq ptr %call.i, null
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %if.end22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %11 = call ptr @memcpy(ptr %call.i, ptr %1, i32 16)
  %lock = getelementptr inbounds %struct.hdmi_codec_priv, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @hdmi_codec_probe.__key) #11
  %iec_status = getelementptr inbounds %struct.hdmi_codec_priv, ptr %call.i, i32 0, i32 8
  %call27 = tail call i32 @snd_pcm_create_iec958_consumer_default(ptr noundef %iec_status, i32 noundef 24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end22.cleanup_crit_edge, label %devm_kcalloc.exit

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end22
  %12 = mul nuw nsw i32 %add, 168
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %12, i32 noundef 3520) #11
  %tobool32.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool32.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end34

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end34:                                         ; preds = %devm_kcalloc.exit
  %13 = ptrtoint ptr %i2s to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load36 = load i8, ptr %i2s, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load36)
  %tobool39.not = icmp sgt i8 %bf.load36, -1
  br i1 %tobool39.not, label %if.end34.if.end42_crit_edge, label %if.then40

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %14 = call ptr @memcpy(ptr %call5.i.i, ptr @hdmi_i2s_dai, i32 168)
  %max_i2s_channels = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %max_i2s_channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_i2s_channels, align 4
  %channels_max = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call5.i.i, i32 0, i32 11, i32 6
  %17 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %channels_max, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end34.if.end42_crit_edge
  %i.0 = phi i32 [ 1, %if.then40 ], [ 0, %if.end34.if.end42_crit_edge ]
  %18 = ptrtoint ptr %i2s to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load44 = load i8, ptr %i2s, align 4
  %19 = and i8 %bf.load44, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool48.not = icmp eq i8 %19, 0
  br i1 %tobool48.not, label %if.end42.if.end51_crit_edge, label %if.then49

if.end42.if.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx50 = getelementptr %struct.snd_soc_dai_driver, ptr %call5.i.i, i32 %i.0
  %20 = call ptr @memcpy(ptr %arrayidx50, ptr @hdmi_spdif_dai, i32 168)
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end42.if.end51_crit_edge
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call52 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @hdmi_driver, ptr noundef nonnull %call5.i.i, i32 noundef %add) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end51.cleanup_crit_edge, label %do.end57

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef %call52) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end57, %if.end51.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end18, %do.end
  %retval.0 = phi i32 [ -22, %do.end18 ], [ %call52, %do.end57 ], [ -22, %do.end ], [ -12, %if.end19.cleanup_crit_edge ], [ %call27, %if.end22.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_create_iec958_consumer_default(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_dai_probe(ptr nocapture noundef %dai) #2 align 64 {
entry:
  %route = alloca [2 x %struct.snd_soc_dapm_route], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %route) #11
  %0 = getelementptr inbounds i8, ptr %route, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 100)
  %2 = ptrtoint ptr %route to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.16, ptr %route, align 4
  %source = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %route, i32 0, i32 2
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %playback = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %playback to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %playback, align 8
  %7 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %source, align 4
  %arrayinit.element = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %route, i32 1
  %capture = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %4, i32 0, i32 10
  %8 = ptrtoint ptr %capture to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %capture, align 8
  %10 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %arrayinit.element, align 4
  %source4 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %route, i32 1, i32 2
  %11 = ptrtoint ptr %source4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.17, ptr %source4, align 4
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %12 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %component, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %13, i32 0, i32 17
  %call5 = call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef nonnull %route, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 12) #15
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %15 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %playback_dma_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %route) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_codec_dai_remove(ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %0 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %playback_dma_data, align 4
  tail call void @kfree(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_codec_pcm_new(ptr nocapture noundef readonly %rtd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %6 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm, align 4
  %channels_max = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %1, i32 0, i32 11, i32 6
  %8 = ptrtoint ptr %channels_max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channels_max, align 8
  %chmap_info = getelementptr inbounds %struct.hdmi_codec_priv, ptr %5, i32 0, i32 2
  %call1 = tail call i32 @snd_pcm_add_chmap_ctls(ptr noundef %7, i32 noundef 0, ptr noundef null, i32 noundef %9, i32 noundef 0, ptr noundef %chmap_info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup16_crit_edge, label %if.end

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup16

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %chmap_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chmap_info, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_chmap, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %5, ptr %private_data, align 4
  %13 = load ptr, ptr %chmap_info, align 4
  %kctl = getelementptr inbounds %struct.snd_pcm_chmap, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kctl, align 4
  %get = getelementptr inbounds %struct.snd_kcontrol, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @hdmi_codec_chmap_ctl_get, ptr %get, align 4
  %17 = load ptr, ptr %chmap_info, align 4
  %chmap = getelementptr inbounds %struct.snd_pcm_chmap, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %chmap to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @hdmi_codec_stereo_chmaps, ptr %chmap, align 4
  %chmap_idx = getelementptr inbounds %struct.hdmi_codec_priv, ptr %5, i32 0, i32 3
  %19 = ptrtoint ptr %chmap_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %chmap_idx, align 4
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %20 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %component, align 4
  %call7 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @hdmi_codec_controls, ptr noundef %21) #11
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end.cleanup16_crit_edge, label %cleanup

if.end.cleanup16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup16

for.cond:                                         ; preds = %cleanup
  %22 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %component, align 4
  %call7.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @hdmi_codec_controls, i32 0, i32 1), ptr noundef %23) #11
  %tobool.not.1 = icmp eq ptr %call7.1, null
  br i1 %tobool.not.1, label %for.cond.cleanup16_crit_edge, label %cleanup.1

for.cond.cleanup16_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup16

cleanup.1:                                        ; preds = %for.cond
  %24 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcm, align 4
  %device.1 = getelementptr inbounds %struct.snd_pcm, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %device.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %device.1, align 4
  %device11.1 = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.1, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %device11.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %device11.1, align 4
  %29 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card, align 4
  %snd_card.1 = getelementptr inbounds %struct.snd_soc_card, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %snd_card.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %snd_card.1, align 4
  %call12.1 = tail call i32 @snd_ctl_add(ptr noundef %32, ptr noundef nonnull %call7.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1)
  %cmp13.1 = icmp slt i32 %call12.1, 0
  br i1 %cmp13.1, label %cleanup.1.cleanup16_crit_edge, label %for.cond.1

cleanup.1.cleanup16_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup16

for.cond.1:                                       ; preds = %cleanup.1
  %33 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %component, align 4
  %call7.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @hdmi_codec_controls, i32 0, i32 2), ptr noundef %34) #11
  %tobool.not.2 = icmp eq ptr %call7.2, null
  br i1 %tobool.not.2, label %for.cond.1.cleanup16_crit_edge, label %cleanup.2

for.cond.1.cleanup16_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup16

cleanup.2:                                        ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcm, align 4
  %device.2 = getelementptr inbounds %struct.snd_pcm, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %device.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %device.2, align 4
  %device11.2 = getelementptr inbounds %struct.snd_kcontrol, ptr %call7.2, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %device11.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %device11.2, align 4
  %40 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card, align 4
  %snd_card.2 = getelementptr inbounds %struct.snd_soc_card, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %snd_card.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %snd_card.2, align 4
  %call12.2 = tail call i32 @snd_ctl_add(ptr noundef %43, ptr noundef nonnull %call7.2) #11
  %44 = call i32 @llvm.smin.i32(i32 %call12.2, i32 0)
  br label %cleanup16

cleanup:                                          ; preds = %if.end
  %45 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcm, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %device, align 4
  %device11 = getelementptr inbounds %struct.snd_kcontrol, ptr %call7, i32 0, i32 1, i32 2
  %49 = ptrtoint ptr %device11 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %device11, align 4
  %50 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %card, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %snd_card, align 4
  %call12 = tail call i32 @snd_ctl_add(ptr noundef %53, ptr noundef nonnull %call7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %cleanup.cleanup16_crit_edge, label %for.cond

cleanup.cleanup16_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup16

cleanup16:                                        ; preds = %cleanup.cleanup16_crit_edge, %cleanup.2, %for.cond.1.cleanup16_crit_edge, %cleanup.1.cleanup16_crit_edge, %for.cond.cleanup16_crit_edge, %if.end.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  %retval.2 = phi i32 [ %call1, %entry.cleanup16_crit_edge ], [ %call12, %cleanup.cleanup16_crit_edge ], [ -12, %if.end.cleanup16_crit_edge ], [ -12, %for.cond.cleanup16_crit_edge ], [ %call12.1, %cleanup.1.cleanup16_crit_edge ], [ -12, %for.cond.1.cleanup16_crit_edge ], [ %44, %cleanup.2 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_codec_chmap_ctl_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 4
  %chmap = getelementptr inbounds %struct.snd_pcm_chmap, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %chmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chmap, align 4
  %chmap_idx = getelementptr inbounds %struct.hdmi_codec_priv, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %chmap_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chmap_idx, align 4
  %map2 = getelementptr %struct.snd_pcm_chmap_elem, ptr %5, i32 %7, i32 1
  %max_channels = getelementptr inbounds %struct.snd_pcm_chmap, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp17.not = icmp eq i32 %9, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %value7 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %chmap_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chmap_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp4 = icmp eq i32 %11, -1
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx6 = getelementptr i8, ptr %map2, i32 %i.018
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx6, align 1
  %conv = zext i8 %13 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.for.inc_crit_edge
  %.sink = phi i32 [ %conv, %if.else ], [ 0, %for.body.for.inc_crit_edge ]
  %arrayidx5 = getelementptr [128 x i32], ptr %value7, i32 0, i32 %i.018
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %arrayidx5, align 4
  %inc = add nuw i32 %i.018, 1
  %15 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_channels, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hdmi_codec_iec958_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hdmi_codec_iec958_mask_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = call ptr @memset(ptr %value, i32 255, i32 24)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hdmi_codec_iec958_default_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %iec_status = getelementptr inbounds %struct.hdmi_codec_priv, ptr %5, i32 0, i32 8
  %6 = call ptr @memcpy(ptr %value, ptr %iec_status, i32 24)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hdmi_codec_iec958_default_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %iec_status = getelementptr inbounds %struct.hdmi_codec_priv, ptr %5, i32 0, i32 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %iec_status, ptr %value, i32 24)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @hdmi_eld_ctl_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 128, ptr %count, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hdmi_eld_ctl_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %eld = getelementptr inbounds %struct.hdmi_codec_priv, ptr %5, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %value, ptr %eld, i32 128)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_codec_i2s_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %0 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %playback_dma_data, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %and = and i32 %fmt, 61440
  %3 = add nsw i32 %and, -4096
  %4 = lshr exact i32 %3, 12
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb4
    i32 2, label %sw.bb9
    i32 3, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb9, %sw.bb4, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 32, %sw.bb9 ], [ 16, %sw.bb4 ], [ 48, %entry.sw.epilog.sink.split_crit_edge ]
  %bit_clk_master = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %bit_clk_master to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load11 = load i8, ptr %bit_clk_master, align 4
  %bf.set13 = or i8 %bf.load11, %.sink
  store i8 %bf.set13, ptr %bit_clk_master, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %and14 = and i32 %fmt, 3840
  %7 = zext i32 %and14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %and14, label %sw.epilog.sw.epilog32_crit_edge [
    i32 1024, label %sw.bb23
    i32 512, label %sw.epilog.sw.epilog32.sink.split_crit_edge
    i32 768, label %sw.bb19
  ]

sw.epilog.sw.epilog32.sink.split_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog32.sink.split

sw.epilog.sw.epilog32_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog32

sw.bb19:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog32.sink.split

sw.bb23:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog32.sink.split

sw.epilog32.sink.split:                           ; preds = %sw.bb23, %sw.bb19, %sw.epilog.sw.epilog32.sink.split_crit_edge
  %.sink66 = phi i8 [ -64, %sw.bb23 ], [ -128, %sw.bb19 ], [ 64, %sw.epilog.sw.epilog32.sink.split_crit_edge ]
  %frame_clk_inv = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %frame_clk_inv to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load25 = load i8, ptr %frame_clk_inv, align 4
  %bf.set31 = or i8 %bf.load25, %.sink66
  store i8 %bf.set31, ptr %frame_clk_inv, align 4
  br label %sw.epilog32

sw.epilog32:                                      ; preds = %sw.epilog32.sink.split, %sw.epilog.sw.epilog32_crit_edge
  %and33 = and i32 %fmt, 15
  %9 = zext i32 %and33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %and33, label %do.end [
    i32 1, label %sw.bb34
    i32 4, label %sw.bb36
    i32 5, label %sw.bb38
    i32 2, label %sw.bb40
    i32 3, label %sw.bb42
    i32 6, label %sw.bb44
  ]

sw.bb34:                                          ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %1, align 4
  br label %cleanup

sw.bb36:                                          ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %1, align 4
  br label %cleanup

sw.bb38:                                          ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %1, align 4
  br label %cleanup

sw.bb40:                                          ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %1, align 4
  br label %cleanup

sw.bb42:                                          ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %1, align 4
  br label %cleanup

sw.bb44:                                          ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %1, align 4
  br label %cleanup

do.end:                                           ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.22) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb44, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb34, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb44 ], [ 0, %sw.bb42 ], [ 0, %sw.bb40 ], [ 0, %sw.bb38 ], [ 0, %sw.bb36 ], [ 0, %sw.bb34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_codec_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %mute_stream = getelementptr inbounds %struct.hdmi_codec_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %mute_stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mute_stream, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp = icmp eq i32 %direction, 0
  br i1 %cmp, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %no_capture_mute = getelementptr inbounds %struct.hdmi_codec_ops, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %no_capture_mute to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %no_capture_mute, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool3.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool3.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %data = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool8 = icmp ne i32 %mute, 0
  %call9 = tail call i32 %7(ptr noundef %10, ptr noundef %12, i1 noundef zeroext %tobool8, i32 noundef %direction) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then ], [ -524, %lor.lhs.false.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_codec_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %lock = getelementptr inbounds %struct.hdmi_codec_priv, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %busy = getelementptr inbounds %struct.hdmi_codec_priv, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %busy, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.24) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %if.end.if.end13_crit_edge, label %if.then3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then3:                                         ; preds = %if.end
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 8
  %data = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %call9 = tail call i32 %13(ptr noundef %17, ptr noundef %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then3.if.end13_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.if.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end13:                                         ; preds = %if.then3.if.end13_crit_edge, %if.end.if.end13_crit_edge
  br i1 %cmp, label %land.lhs.true, label %if.end13.if.end36_crit_edge

if.end13.if.end36_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end13
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %get_eld = getelementptr inbounds %struct.hdmi_codec_ops, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %get_eld to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_eld, align 4
  %tobool17.not = icmp eq ptr %23, null
  br i1 %tobool17.not, label %land.lhs.true.if.end36_crit_edge, label %if.then18

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then18:                                        ; preds = %land.lhs.true
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %parent23 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %parent23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent23, align 8
  %data25 = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %3, i32 0, i32 3
  %28 = ptrtoint ptr %data25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data25, align 4
  %eld = getelementptr inbounds %struct.hdmi_codec_priv, ptr %3, i32 0, i32 1
  %call26 = tail call i32 %23(ptr noundef %27, ptr noundef %29, ptr noundef %eld, i32 noundef 128) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.then18
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %30 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %runtime, align 4
  %call32 = tail call i32 @snd_pcm_hw_constraint_eld(ptr noundef %31, ptr noundef %eld) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %arrayidx.i.i = getelementptr %struct.hdmi_codec_priv, ptr %3, i32 0, i32 1, i32 7
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i, align 1
  %34 = and i8 %33, 127
  %conv.i = zext i8 %34 to i32
  %and.i.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 0, i32 5
  %and.1.i.i = shl nuw nsw i32 %conv.i, 9
  %35 = and i32 %and.1.i.i, 1024
  %and.2.i.i = lshr i32 %conv.i, 1
  %36 = and i32 %and.2.i.i, 2
  %37 = or i32 %36, %35
  %38 = or i32 %37, %spec.select.i.i
  %and.3.i.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  %or.3.i.i = or i32 %38, 160
  %spk_mask.1.3.i.i = select i1 %tobool.not.3.i.i, i32 %38, i32 %or.3.i.i
  %and.4.i.i = shl nuw nsw i32 %conv.i, 2
  %39 = and i32 %and.4.i.i, 64
  %40 = or i32 %spk_mask.1.3.i.i, %39
  %and.5.i.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i)
  %tobool.not.5.i.i = icmp eq i32 %and.5.i.i, 0
  %or.5.i.i = or i32 %40, 24
  %spk_mask.1.5.i.i = select i1 %tobool.not.5.i.i, i32 %40, i32 %or.5.i.i
  %and.6.i.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i.i)
  %tobool.not.6.i.i = icmp eq i32 %and.6.i.i, 0
  %or.6.i.i = or i32 %spk_mask.1.5.i.i, 768
  %spk_mask.1.6.i.i = select i1 %tobool.not.6.i.i, i32 %spk_mask.1.5.i.i, i32 %or.6.i.i
  %and.i = and i32 %spk_mask.1.6.i.i, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end35.if.else.i_crit_edge, label %land.lhs.true.i

if.end35.if.else.i_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end35
  %chmap_info.i = getelementptr inbounds %struct.hdmi_codec_priv, ptr %3, i32 0, i32 2
  %41 = ptrtoint ptr %chmap_info.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chmap_info.i, align 4
  %max_channels.i = getelementptr inbounds %struct.snd_pcm_chmap, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %max_channels.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp.i = icmp ugt i32 %44, 2
  br i1 %cmp.i, label %land.lhs.true.i.hdmi_codec_eld_chmap.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i.hdmi_codec_eld_chmap.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdmi_codec_eld_chmap.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end35.if.else.i_crit_edge
  %chmap_info4.i = getelementptr inbounds %struct.hdmi_codec_priv, ptr %3, i32 0, i32 2
  %45 = ptrtoint ptr %chmap_info4.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chmap_info4.i, align 4
  br label %hdmi_codec_eld_chmap.exit

hdmi_codec_eld_chmap.exit:                        ; preds = %if.else.i, %land.lhs.true.i.hdmi_codec_eld_chmap.exit_crit_edge
  %.sink.i = phi ptr [ %46, %if.else.i ], [ %42, %land.lhs.true.i.hdmi_codec_eld_chmap.exit_crit_edge ]
  %hdmi_codec_stereo_chmaps.sink.i = phi ptr [ @hdmi_codec_stereo_chmaps, %if.else.i ], [ @hdmi_codec_8ch_chmaps, %land.lhs.true.i.hdmi_codec_eld_chmap.exit_crit_edge ]
  %chmap5.i = getelementptr inbounds %struct.snd_pcm_chmap, ptr %.sink.i, i32 0, i32 3
  %47 = ptrtoint ptr %chmap5.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %hdmi_codec_stereo_chmaps.sink.i, ptr %chmap5.i, align 4
  br label %if.end36

if.end36:                                         ; preds = %hdmi_codec_eld_chmap.exit, %land.lhs.true.if.end36_crit_edge, %if.end13.if.end36_crit_edge
  %48 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %busy, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end29.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call9, %if.then3.cleanup_crit_edge ], [ %call26, %if.then18.cleanup_crit_edge ], [ %call32, %if.end29.cleanup_crit_edge ], [ 0, %if.end36 ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_codec_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %chmap_idx = getelementptr inbounds %struct.hdmi_codec_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %chmap_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %chmap_idx, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %audio_shutdown = getelementptr inbounds %struct.hdmi_codec_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %audio_shutdown to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %audio_shutdown, align 4
  %9 = load ptr, ptr %dev.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %data = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  tail call void %8(ptr noundef %11, ptr noundef %13) #11
  %lock = getelementptr inbounds %struct.hdmi_codec_priv, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %busy = getelementptr inbounds %struct.hdmi_codec_priv, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %busy, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_codec_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %hp = alloca %struct.hdmi_codec_params, align 4
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
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %playback_dma_data, align 4
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %hp) #11
  %6 = call ptr @memset(ptr %hp, i32 0, i32 216)
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %hw_params = getelementptr inbounds %struct.hdmi_codec_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %hw_params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_params, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_codec_hw_params.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdmi_codec_hw_params, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !119

if.then5:                                         ; preds = %do.body
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.then5.if.then.i.i.i_crit_edge

if.then5.if.then.i.i.i_crit_edge:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.then5.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.then5.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %14, %if.then5.if.then.i.i.i_crit_edge ], [ %17, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %15 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #11, !range !120
  %add.i.i.i = or i32 %15, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.then5
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.1.i.i.i = icmp eq i32 %17, 0
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i58 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %arrayidx.i.i58 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i58, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdmi_codec_hw_params.__UNIQUE_ID_ddebug312, ptr noundef %12, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %call1.i, i32 noundef %19, i32 noundef %21) #11
  br label %do.end

do.end:                                           ; preds = %params_width.exit, %do.body
  %arrayidx.i.i.i59 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i.i59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i.i60 = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i.i60, label %for.inc.i.i.i67, label %do.end.if.then.i.i.i64_crit_edge

do.end.if.then.i.i.i64_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i64

if.then.i.i.i64:                                  ; preds = %for.inc.i.i.i67.if.then.i.i.i64_crit_edge, %do.end.if.then.i.i.i64_crit_edge
  %i.09.lcssa.i.i.i61 = phi i32 [ 0, %do.end.if.then.i.i.i64_crit_edge ], [ 32, %for.inc.i.i.i67.if.then.i.i.i64_crit_edge ]
  %.lcssa.i.i.i62 = phi i32 [ %23, %do.end.if.then.i.i.i64_crit_edge ], [ %26, %for.inc.i.i.i67.if.then.i.i.i64_crit_edge ]
  %24 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i62, i1 true) #11, !range !120
  %add.i.i.i63 = or i32 %24, %i.09.lcssa.i.i.i61
  br label %params_width.exit70

for.inc.i.i.i67:                                  ; preds = %do.end
  %arrayidx.1.i.i.i65 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx.1.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.1.i.i.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.1.i.i.i66 = icmp eq i32 %26, 0
  br i1 %tobool.not.1.i.i.i66, label %for.inc.i.i.i67.params_width.exit70_crit_edge, label %for.inc.i.i.i67.if.then.i.i.i64_crit_edge

for.inc.i.i.i67.if.then.i.i.i64_crit_edge:        ; preds = %for.inc.i.i.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i64

for.inc.i.i.i67.params_width.exit70_crit_edge:    ; preds = %for.inc.i.i.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_width.exit70

params_width.exit70:                              ; preds = %for.inc.i.i.i67.params_width.exit70_crit_edge, %if.then.i.i.i64
  %retval.0.i.i.i68 = phi i32 [ %add.i.i.i63, %if.then.i.i.i64 ], [ 0, %for.inc.i.i.i67.params_width.exit70_crit_edge ]
  %call1.i69 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i68) #11
  %arrayidx.i.i71 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %arrayidx.i.i71 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i71, align 4
  %arrayidx.i.i72 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %arrayidx.i.i72 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i72, align 4
  %call13 = call fastcc i32 @hdmi_codec_fill_codec_params(ptr noundef %dai, i32 noundef %call1.i69, i32 noundef %28, i32 noundef %30, ptr noundef nonnull %hp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %params_width.exit70.cleanup_crit_edge, label %if.end15

params_width.exit70.cleanup_crit_edge:            ; preds = %params_width.exit70
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %params_width.exit70
  %iec = getelementptr inbounds %struct.hdmi_codec_params, ptr %hp, i32 0, i32 1
  %iec_status = getelementptr inbounds %struct.hdmi_codec_priv, ptr %3, i32 0, i32 8
  %31 = call ptr @memcpy(ptr %iec, ptr %iec_status, i32 24)
  %call20 = call i32 @snd_pcm_fill_iec958_consumer_hw_params(ptr noundef %params, ptr noundef %iec, i32 noundef 24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.30, i32 noundef %call20) #14
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  %34 = ptrtoint ptr %arrayidx.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i.i59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end27.if.then.i.i_crit_edge

if.end27.if.then.i.i_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %if.end27.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end27.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %35, %if.end27.if.then.i.i_crit_edge ], [ %38, %for.inc.i.i.if.then.i.i_crit_edge ]
  %36 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #11, !range !120
  %add.i.i = or i32 %36, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end27
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.1.i.i = icmp eq i32 %38, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %bit_fmt = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %5, i32 0, i32 2
  %39 = ptrtoint ptr %bit_fmt to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i.i, ptr %bit_fmt, align 4
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %hw_params31 = getelementptr inbounds %struct.hdmi_codec_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %hw_params31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_params31, align 4
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parent, align 8
  %data = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %3, i32 0, i32 3
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %call34 = call i32 %43(ptr noundef %47, ptr noundef %49, ptr noundef %5, ptr noundef nonnull %hp) #11
  br label %cleanup

cleanup:                                          ; preds = %params_format.exit, %do.end25, %params_width.exit70.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %do.end25 ], [ %call34, %params_format.exit ], [ 0, %entry.cleanup_crit_edge ], [ %call13, %params_width.exit70.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %hp) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_codec_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %hp = alloca %struct.hdmi_codec_params, align 4
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
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %playback_dma_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %6 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime1, align 4
  %channels2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %channels2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channels2, align 8
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 12
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %format, align 4
  %call3 = tail call i32 @snd_pcm_format_width(i32 noundef %11) #11
  %rate4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 14
  %12 = ptrtoint ptr %rate4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate4, align 4
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %hp) #11
  %14 = call ptr @memset(ptr %hp, i32 255, i32 216)
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %prepare = getelementptr inbounds %struct.hdmi_codec_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prepare, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_codec_prepare.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdmi_codec_prepare, %if.then9)) #11
          to label %do.end [label %if.then9], !srcloc !119

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdmi_codec_prepare.__UNIQUE_ID_ddebug313, ptr noundef %20, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.33, i32 noundef %call3, i32 noundef %13, i32 noundef %9) #11
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %call11 = call fastcc i32 @hdmi_codec_fill_codec_params(ptr noundef %dai, i32 noundef %call3, i32 noundef %13, i32 noundef %9, ptr noundef nonnull %hp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end13

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %iec = getelementptr inbounds %struct.hdmi_codec_params, ptr %hp, i32 0, i32 1
  %iec_status = getelementptr inbounds %struct.hdmi_codec_priv, ptr %3, i32 0, i32 8
  %21 = call ptr @memcpy(ptr %iec, ptr %iec_status, i32 24)
  %call18 = call i32 @snd_pcm_fill_iec958_consumer(ptr noundef %7, ptr noundef %iec, i32 noundef 24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.30, i32 noundef %call18) #14
  br label %cleanup

if.end25:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %format, align 4
  %bit_fmt = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %5, i32 0, i32 2
  %26 = ptrtoint ptr %bit_fmt to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %bit_fmt, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %prepare29 = getelementptr inbounds %struct.hdmi_codec_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %prepare29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prepare29, align 4
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent, align 8
  %data = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %3, i32 0, i32 3
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %call32 = call i32 %30(ptr noundef %34, ptr noundef %36, ptr noundef %5, ptr noundef nonnull %hp) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end23, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %do.end23 ], [ %call32, %if.end25 ], [ 0, %entry.cleanup_crit_edge ], [ %call11, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %hp) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_eld(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hdmi_codec_fill_codec_params(ptr nocapture noundef readonly %dai, i32 noundef %sample_width, i32 noundef %sample_rate, i32 noundef %channels, ptr noundef %hp) unnamed_addr #2 align 64 {
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
  %conv = trunc i32 %channels to i8
  %arrayidx.i.i = getelementptr %struct.hdmi_codec_priv, ptr %3, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %6 = and i8 %5, 127
  %conv.i = zext i8 %6 to i32
  %and.i.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 0, i32 5
  %and.1.i.i = shl nuw nsw i32 %conv.i, 9
  %7 = and i32 %and.1.i.i, 1024
  %and.2.i.i = lshr i32 %conv.i, 1
  %8 = and i32 %and.2.i.i, 2
  %9 = or i32 %8, %7
  %10 = or i32 %9, %spec.select.i.i
  %and.3.i.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  %or.3.i.i = or i32 %10, 160
  %spk_mask.1.3.i.i = select i1 %tobool.not.3.i.i, i32 %10, i32 %or.3.i.i
  %and.4.i.i = shl nuw nsw i32 %conv.i, 2
  %11 = and i32 %and.4.i.i, 64
  %12 = or i32 %spk_mask.1.3.i.i, %11
  %and.5.i.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i)
  %tobool.not.5.i.i = icmp eq i32 %and.5.i.i, 0
  %or.5.i.i = or i32 %12, 24
  %spk_mask.1.5.i.i = select i1 %tobool.not.5.i.i, i32 %12, i32 %or.5.i.i
  %and.6.i.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i.i)
  %tobool.not.6.i.i = icmp eq i32 %and.6.i.i, 0
  %or.6.i.i = or i32 %spk_mask.1.5.i.i, 768
  %spk_mask.1.6.i.i = select i1 %tobool.not.6.i.i, i32 %spk_mask.1.5.i.i, i32 %or.6.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %conv5.i = and i32 %channels, 255
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %cap.028.i = phi ptr [ @hdmi_codec_channel_alloc, %entry ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %i.026.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %13 = ptrtoint ptr %cap.028.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cap.028.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp3.i = icmp eq i32 %14, 0
  br i1 %cmp3.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %n_ch.i = getelementptr inbounds %struct.hdmi_codec_cea_spk_alloc, ptr %cap.028.i, i32 0, i32 1
  %15 = ptrtoint ptr %n_ch.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_ch.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv5.i)
  %cmp6.not.i = icmp eq i32 %16, %conv5.i
  br i1 %cmp6.not.i, label %if.end9.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end9.i:                                        ; preds = %if.end.i
  %mask.i = getelementptr inbounds %struct.hdmi_codec_cea_spk_alloc, ptr %cap.028.i, i32 0, i32 2
  %17 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %18, %spk_mask.1.6.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %and.i)
  %cmp11.i = icmp eq i32 %18, %and.i
  br i1 %cmp11.i, label %if.end9.i.if.end_crit_edge, label %if.end9.i.for.inc.i_crit_edge

if.end9.i.for.inc.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end9.i.if.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.i:                                        ; preds = %if.end9.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %incdec.ptr.i = getelementptr %struct.hdmi_codec_cea_spk_alloc, ptr %cap.028.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %do.end, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end:                                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef -22) #14
  br label %cleanup

if.end:                                           ; preds = %if.end9.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %19 = call ptr @memset(ptr %hp, i32 0, i32 216)
  %call3 = tail call i32 @hdmi_audio_infoframe_init(ptr noundef %hp) #11
  %channels6 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %hp, i32 0, i32 3
  %20 = ptrtoint ptr %channels6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %channels6, align 2
  %coding_type = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %hp, i32 0, i32 4
  %21 = ptrtoint ptr %coding_type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %coding_type, align 4
  %sample_size = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %hp, i32 0, i32 5
  %22 = ptrtoint ptr %sample_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %sample_size, align 4
  %sample_frequency = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %hp, i32 0, i32 6
  %23 = ptrtoint ptr %sample_frequency to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %sample_frequency, align 4
  %arrayidx = getelementptr [32 x %struct.hdmi_codec_cea_spk_alloc], ptr @hdmi_codec_channel_alloc, i32 0, i32 %i.026.i
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %conv10 = trunc i32 %25 to i8
  %channel_allocation = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %hp, i32 0, i32 8
  %26 = ptrtoint ptr %channel_allocation to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv10, ptr %channel_allocation, align 4
  %sample_width12 = getelementptr inbounds %struct.hdmi_codec_params, ptr %hp, i32 0, i32 3
  %27 = ptrtoint ptr %sample_width12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sample_width, ptr %sample_width12, align 4
  %sample_rate13 = getelementptr inbounds %struct.hdmi_codec_params, ptr %hp, i32 0, i32 2
  %28 = ptrtoint ptr %sample_rate13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sample_rate, ptr %sample_rate13, align 4
  %channels14 = getelementptr inbounds %struct.hdmi_codec_params, ptr %hp, i32 0, i32 4
  %29 = ptrtoint ptr %channels14 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %channels, ptr %channels14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %.sink = phi i32 [ %25, %if.end ], [ -1, %do.end ]
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end ]
  %chmap_idx17 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %chmap_idx17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %chmap_idx17, align 4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_fill_iec958_consumer_hw_params(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_fill_iec958_consumer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_dai_spdif_probe(ptr nocapture noundef %dai) #2 align 64 {
entry:
  %route.i = alloca [2 x %struct.snd_soc_dapm_route], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %route.i) #11
  %0 = getelementptr inbounds i8, ptr %route.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 100)
  %2 = ptrtoint ptr %route.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.16, ptr %route.i, align 4
  %source.i = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %route.i, i32 0, i32 2
  %driver.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %3 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver.i, align 4
  %playback.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %playback.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %playback.i, align 8
  %7 = ptrtoint ptr %source.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %source.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %route.i, i32 1
  %capture.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %4, i32 0, i32 10
  %8 = ptrtoint ptr %capture.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %capture.i, align 8
  %10 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %arrayinit.element.i, align 4
  %source4.i = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %route.i, i32 1, i32 2
  %11 = ptrtoint ptr %source4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.17, ptr %source4.i, align 4
  %component.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %12 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %component.i, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %13, i32 0, i32 17
  %call5.i = call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull %route.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.hdmi_dai_probe.exit.thread_crit_edge

entry.hdmi_dai_probe.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdmi_dai_probe.exit.thread

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 12) #15
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %if.end.i.hdmi_dai_probe.exit.thread_crit_edge, label %if.end

if.end.i.hdmi_dai_probe.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdmi_dai_probe.exit.thread

hdmi_dai_probe.exit.thread:                       ; preds = %if.end.i.hdmi_dai_probe.exit.thread_crit_edge, %entry.hdmi_dai_probe.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end.i.hdmi_dai_probe.exit.thread_crit_edge ], [ %call5.i, %entry.hdmi_dai_probe.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %route.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %15 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i.i, ptr %playback_dma_data.i, align 4
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %route.i) #11
  %16 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 6, ptr %call7.i.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %hdmi_dai_probe.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %retval.0.i.ph, %hdmi_dai_probe.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_remove(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %hook_plugged_cb = getelementptr inbounds %struct.hdmi_codec_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %hook_plugged_cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hook_plugged_cb, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %data = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %call5 = tail call i32 %7(ptr noundef %9, ptr noundef %11, ptr noundef null, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_codec_set_jack(ptr nocapture noundef readonly %component, ptr noundef %jack, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %hook_plugged_cb = getelementptr inbounds %struct.hdmi_codec_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %hook_plugged_cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hook_plugged_cb, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then:                                          ; preds = %entry
  %jack1 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %jack1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %jack, ptr %jack1, align 4
  %9 = ptrtoint ptr %hook_plugged_cb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hook_plugged_cb, align 4
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  %data6 = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %data6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data6, align 4
  %call8 = tail call i32 %10(ptr noundef %14, ptr noundef %16, ptr noundef nonnull @plugged_cb, ptr noundef %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then.if.end12_crit_edge, label %if.then10

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %jack1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %jack1, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %ret.0 = phi i32 [ %call8, %if.then10 ], [ 0, %if.then.if.end12_crit_edge ], [ -524, %entry.if.end12_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_of_xlate_dai_id(ptr noundef %component, ptr noundef %endpoint) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %get_dai_id = getelementptr inbounds %struct.hdmi_codec_ops, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %get_dai_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_dai_id, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 %7(ptr noundef %component, ptr noundef %endpoint) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then ], [ -524, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @plugged_cb(ptr nocapture noundef readonly %dev, i1 noundef zeroext %plugged) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  br i1 %plugged, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %get_eld = getelementptr inbounds %struct.hdmi_codec_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %get_eld to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_eld, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %data = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %eld = getelementptr inbounds %struct.hdmi_codec_priv, ptr %1, i32 0, i32 1
  %call7 = tail call i32 %5(ptr noundef %7, ptr noundef %9, ptr noundef %eld, i32 noundef 128) #11
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %jack.i = getelementptr inbounds %struct.hdmi_codec_priv, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %jack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %jack.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.if.end10_crit_edge, label %land.lhs.true.i

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true.i:                                  ; preds = %if.end
  %jack_status1.i = getelementptr inbounds %struct.hdmi_codec_priv, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %jack_status1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %jack_status1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 4
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end10_crit_edge, label %if.then.i

land.lhs.true.i.if.end10_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @snd_soc_jack_report(ptr noundef nonnull %11, i32 noundef 4, i32 noundef 4) #11
  %14 = ptrtoint ptr %jack_status1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %jack_status1.i, align 4
  br label %if.end10

if.else:                                          ; preds = %entry
  %jack.i18 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %jack.i18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %jack.i18, align 4
  %tobool.not.i19 = icmp eq ptr %16, null
  br i1 %tobool.not.i19, label %if.else.hdmi_codec_jack_report.exit24_crit_edge, label %land.lhs.true.i22

if.else.hdmi_codec_jack_report.exit24_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdmi_codec_jack_report.exit24

land.lhs.true.i22:                                ; preds = %if.else
  %jack_status1.i20 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %jack_status1.i20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %jack_status1.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i21 = icmp eq i32 %18, 0
  br i1 %cmp.not.i21, label %land.lhs.true.i22.hdmi_codec_jack_report.exit24_crit_edge, label %if.then.i23

land.lhs.true.i22.hdmi_codec_jack_report.exit24_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdmi_codec_jack_report.exit24

if.then.i23:                                      ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @snd_soc_jack_report(ptr noundef nonnull %16, i32 noundef 0, i32 noundef 4) #11
  %19 = ptrtoint ptr %jack_status1.i20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %jack_status1.i20, align 4
  br label %hdmi_codec_jack_report.exit24

hdmi_codec_jack_report.exit24:                    ; preds = %if.then.i23, %land.lhs.true.i22.hdmi_codec_jack_report.exit24_crit_edge, %if.else.hdmi_codec_jack_report.exit24_crit_edge
  %eld8 = getelementptr inbounds %struct.hdmi_codec_priv, ptr %1, i32 0, i32 1
  %20 = call ptr @memset(ptr %eld8, i32 0, i32 128)
  br label %if.end10

if.end10:                                         ; preds = %hdmi_codec_jack_report.exit24, %if.then.i, %land.lhs.true.i.if.end10_crit_edge, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !91, !92, !94, !95, !97, !99, !101, !103, !105, !107}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__initcall__kmod_snd_soc_hdmi_codec__314_1055_hdmi_codec_driver_init6, !1, !"__initcall__kmod_snd_soc_hdmi_codec__314_1055_hdmi_codec_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 1055, i32 1}
!2 = !{ptr @__exitcall_hdmi_codec_driver_exit, !1, !"__exitcall_hdmi_codec_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author315, !4, !"__UNIQUE_ID_author315", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 1057, i32 1}
!5 = !{ptr @__UNIQUE_ID_description316, !6, !"__UNIQUE_ID_description316", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 1058, i32 1}
!7 = !{ptr @__UNIQUE_ID_file317, !8, !"__UNIQUE_ID_file317", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 1059, i32 1}
!9 = !{ptr @__UNIQUE_ID_license318, !8, !"__UNIQUE_ID_license318", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias319, !11, !"__UNIQUE_ID_alias319", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 1060, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 1050, i32 11}
!14 = !{ptr @hdmi_codec_driver, !15, !"hdmi_codec_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 1048, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 999, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hdmi_codec_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @hdmi_codec_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 1007, i32 3}
!26 = !{ptr @hdmi_codec_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hdmi_codec_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @hdmi_codec_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 1016, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 1041, i32 3}
!33 = !{ptr @hdmi_codec_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @hdmi_codec_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 909, i32 10}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 922, i32 18}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 914, i32 18}
!41 = !{ptr @hdmi_i2s_dai, !42, !"hdmi_i2s_dai", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 908, i32 40}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 820, i32 12}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 825, i32 14}
!47 = !{ptr @hdmi_codec_stereo_chmaps, !48, !"hdmi_codec_stereo_chmaps", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 62, i32 40}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 754, i32 11}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 760, i32 11}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 769, i32 11}
!55 = !{ptr @hdmi_codec_controls, !56, !"hdmi_codec_controls", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 750, i32 32}
!57 = !{ptr @hdmi_codec_i2s_dai_ops, !58, !"hdmi_codec_i2s_dai_ops", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 707, i32 37}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 661, i32 3}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @hdmi_codec_i2s_set_fmt._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @hdmi_codec_i2s_set_fmt._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 439, i32 3}
!66 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @hdmi_codec_startup._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @hdmi_codec_startup._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !70, !"hdmi_codec_eld_spk_alloc_bits", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 316, i32 29}
!71 = !{ptr @hdmi_codec_8ch_chmaps, !72, !"hdmi_codec_8ch_chmaps", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 69, i32 40}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 539, i32 2}
!75 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @hdmi_codec_hw_params.__UNIQUE_ID_ddebug312, !74, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 555, i32 3}
!80 = !{ptr @hdmi_codec_hw_params._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @hdmi_codec_hw_params._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 496, i32 3}
!84 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @hdmi_codec_fill_codec_params._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @hdmi_codec_fill_codec_params._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @hdmi_codec_channel_alloc, !88, !"hdmi_codec_channel_alloc", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 195, i32 46}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 580, i32 2}
!91 = !{ptr @hdmi_codec_prepare.__UNIQUE_ID_ddebug313, !90, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!92 = !{ptr @hdmi_codec_prepare._entry, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 591, i32 3}
!94 = !{ptr @hdmi_codec_prepare._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @hdmi_codec_formats, !96, !"hdmi_codec_formats", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 695, i32 12}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 934, i32 10}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 939, i32 18}
!101 = !{ptr @hdmi_spdif_dai, !102, !"hdmi_spdif_dai", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 933, i32 40}
!103 = !{ptr @hdmi_codec_spdif_dai_ops, !104, !"hdmi_codec_spdif_dai_ops", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 718, i32 37}
!105 = !{ptr @hdmi_driver, !106, !"hdmi_driver", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 977, i32 46}
!107 = !{ptr @hdmi_widgets, !108, !"hdmi_widgets", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/hdmi-codec.c", i32 283, i32 41}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i8 0, i8 2}
!119 = !{i64 2148981965, i64 2148981970, i64 2148981983, i64 2148982027, i64 2148982061, i64 2148982082}
!120 = !{i32 0, i32 33}
