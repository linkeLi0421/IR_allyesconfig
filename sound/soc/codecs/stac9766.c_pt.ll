; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/stac9766.c_pt.bc'
source_filename = "../sound/soc/codecs/stac9766.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_default = type { i32, i32 }
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
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
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

@__initcall__kmod_snd_soc_stac9766__238_334_stac9766_codec_driver_init6 = internal global ptr @stac9766_codec_driver_init, section ".initcall6.init", align 4
@stac9766_codec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stac9766_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stac9766_codec_driver_exit = internal global ptr @stac9766_codec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [50 x i8] c"snd_soc_stac9766.description=ASoC stac9766 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [55 x i8] c"snd_soc_stac9766.author=Jon Smirl <jonsmirl@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [56 x i8] c"snd_soc_stac9766.file=sound/soc/codecs/snd-soc-stac9766\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [29 x i8] c"snd_soc_stac9766.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stac9766-codec\00", [17 x i8] zeroinitializer }, align 32
@soc_component_dev_stac9766 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @stac9766_snd_ac97_controls, i32 37, ptr null, i32 0, ptr null, i32 0, ptr @stac9766_component_probe, ptr @stac9766_component_remove, ptr null, ptr @stac9766_component_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stac9766_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@stac9766_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.88, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @stac9766_dai_ops_analog, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.89, i64 219143998477, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.89, i64 219143998477, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.90, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @stac9766_dai_ops_digital, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.91, i64 524288, i32 224, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@stac9766_snd_ac97_controls = internal constant { [37 x %struct.snd_kcontrol_new], [432 x i8] } { [37 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.1, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @master_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.2, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.3 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.4, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @master_tlv }, i32 ptrtoint (ptr @.compoundliteral.5 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.6, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.7 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @master_tlv }, i32 ptrtoint (ptr @.compoundliteral.9 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.11 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @record_tlv }, i32 ptrtoint (ptr @.compoundliteral.13 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.15 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @beep_tlv }, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @stac9766_boost1_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @stac9766_boost2_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @stac9766_stereo_mic_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @stac9766_SPDIF_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @stac9766_mic_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @stac9766_record_all_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @stac9766_record_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @stac9766_mono_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @stac9766_popbypass_enum to i32) }], [432 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Volume\00", [17 x i8] zeroinitializer }, align 32
@master_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4650, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 2, i32 2, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 4, i32 4, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mono Out Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 6, i32 6, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mono Out Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Record Volume\00", [18 x i8] zeroinitializer }, align 32
@record_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 28, i32 28, i32 8, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Record Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Beep Volume\00", [20 x i8] zeroinitializer }, align 32
@beep_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4500, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 10, i32 10, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Beep Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Beep Frequency\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 10, i32 10, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Phone Volume\00", [19 x i8] zeroinitializer }, align 32
@mix_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3450, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 12, i32 12, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Phone Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12, i32 12, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Boost1\00", [21 x i8] zeroinitializer }, align 32
@stac9766_boost1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 14, i8 6, i8 6, i32 2, i32 1, ptr @stac9766_boost1, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Boost2\00", [21 x i8] zeroinitializer }, align 32
@stac9766_boost2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 110, i8 2, i8 2, i32 2, i32 1, ptr @stac9766_boost2, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 14, i32 14, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Stereo Mic\00", [21 x i8] zeroinitializer }, align 32
@stac9766_stereo_mic_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 120, i8 2, i8 2, i32 2, i32 1, ptr @stac9766_stereo_mic, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 16, i32 16, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CD Volume\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 18, i32 18, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CD Switch\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18, i32 18, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AUX Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 22, i32 22, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AUX Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Video Volume\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 20, i32 20, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Video Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 24, i32 24, i32 8, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Loopback Test Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"3D Volume\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 2, i32 2, i32 34, i32 34, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"3D Switch\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 13, i32 13, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SPDIF Mux\00", [22 x i8] zeroinitializer }, align 32
@stac9766_SPDIF_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 106, i8 1, i8 1, i32 2, i32 1, ptr @stac9766_SPDIF_mux, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic1/2 Mux\00", [21 x i8] zeroinitializer }, align 32
@stac9766_mic_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 32, i8 8, i8 8, i32 2, i32 1, ptr @stac9766_mic_mux, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Record All Mux\00", [17 x i8] zeroinitializer }, align 32
@stac9766_record_all_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 110, i8 12, i8 12, i32 2, i32 1, ptr @stac9766_record_all_mux, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Record Mux\00", [21 x i8] zeroinitializer }, align 32
@stac9766_record_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 26, i8 8, i8 0, i32 8, i32 7, ptr @stac9766_record_mux, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mono Mux\00", [23 x i8] zeroinitializer }, align 32
@stac9766_mono_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 32, i8 9, i8 9, i32 2, i32 1, ptr @stac9766_mono_mux, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Pop Bypass Mux\00", [17 x i8] zeroinitializer }, align 32
@stac9766_popbypass_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 32, i8 15, i8 15, i32 2, i32 1, ptr @stac9766_popbypass_mux, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@stac9766_boost1 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.65, ptr @.str.66], [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0dB\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"10dB\00", [27 x i8] zeroinitializer }, align 32
@stac9766_boost2 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.65, ptr @.str.67], [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"20dB\00", [27 x i8] zeroinitializer }, align 32
@stac9766_stereo_mic = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.68, ptr @.str.69], [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"On\00", [29 x i8] zeroinitializer }, align 32
@stac9766_SPDIF_mux = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.70, ptr @.str.71], [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCM\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC Record\00", [21 x i8] zeroinitializer }, align 32
@stac9766_mic_mux = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.72, ptr @.str.73], [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Mic1\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Mic2\00", [27 x i8] zeroinitializer }, align 32
@stac9766_record_all_mux = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.74, ptr @.str.75], [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"All analog\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Analog plus DAC\00", [16 x i8] zeroinitializer }, align 32
@stac9766_record_mux = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CD\00", [29 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Video\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AUX\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Line\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Stereo Mix\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mono Mix\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Phone\00", [26 x i8] zeroinitializer }, align 32
@stac9766_mono_mux = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.84, ptr @.str.76], [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mix\00", [28 x i8] zeroinitializer }, align 32
@stac9766_popbypass_mux = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.85, ptr @.str.86], [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Bypass Mixer\00", [19 x i8] zeroinitializer }, align 32
@stac9766_component_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@stac9766_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 2, i32 0, i32 16, ptr null, ptr null, ptr @regmap_ac97_default_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 120, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stac9766_reg_defaults, i32 29, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"stac9766:282:(&stac9766_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@stac9766_reg_defaults = internal constant { [29 x %struct.reg_default], [56 x i8] } { [29 x %struct.reg_default] [%struct.reg_default { i32 2, i32 32768 }, %struct.reg_default { i32 4, i32 32768 }, %struct.reg_default { i32 6, i32 32768 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 12, i32 32776 }, %struct.reg_default { i32 14, i32 32776 }, %struct.reg_default { i32 16, i32 34824 }, %struct.reg_default { i32 18, i32 34824 }, %struct.reg_default { i32 20, i32 34824 }, %struct.reg_default { i32 22, i32 34824 }, %struct.reg_default { i32 24, i32 34824 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 28, i32 32768 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 40, i32 2565 }, %struct.reg_default { i32 44, i32 48000 }, %struct.reg_default { i32 50, i32 48000 }, %struct.reg_default { i32 58, i32 8192 }, %struct.reg_default { i32 62, i32 256 }, %struct.reg_default { i32 76, i32 768 }, %struct.reg_default { i32 78, i32 65535 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 82, i32 0 }, %struct.reg_default { i32 84, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 110, i32 4096 }, %struct.reg_default { i32 114, i32 0 }, %struct.reg_default { i32 120, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stac9766-hifi-analog\00", [43 x i8] zeroinitializer }, align 32
@stac9766_dai_ops_analog = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ac97_analog_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stac9766 analog\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stac9766-hifi-IEC958\00", [43 x i8] zeroinitializer }, align 32
@stac9766_dai_ops_digital = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ac97_digital_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stac9766 IEC958\00", [16 x i8] zeroinitializer }, align 32
@switch.table.stac9766_set_bias_level = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 65535, i32 0, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.92 = private unnamed_addr constant [22 x i8] c"stac9766_codec_driver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 326, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 328, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant [27 x i8] c"soc_component_dev_stac9766\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 305, i32 46 }
@___asan_gen_.101 = private unnamed_addr constant [13 x i8] c"stac9766_dai\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 232, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant [27 x i8] c"stac9766_snd_ac97_controls\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 115, i32 38 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 116, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [11 x i8] c"master_tlv\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 110, i32 14 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 117, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 118, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 120, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 121, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 123, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 125, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [11 x i8] c"record_tlv\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 111, i32 14 }
@___asan_gen_.140 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 126, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 129, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [9 x i8] c"beep_tlv\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 112, i32 14 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 130, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 131, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 132, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [8 x i8] c"mix_tlv\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 113, i32 14 }
@___asan_gen_.166 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 133, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 135, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [21 x i8] c"stac9766_boost1_enum\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 103, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 136, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [21 x i8] c"stac9766_boost2_enum\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 105, i32 8 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 137, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 138, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 139, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [25 x i8] c"stac9766_stereo_mic_enum\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 107, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 141, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 142, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 143, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 144, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 145, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 146, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 147, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 148, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 150, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 151, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 152, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 153, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 154, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 156, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [20 x i8] c"stac9766_SPDIF_enum\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 96, i32 8 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 157, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [18 x i8] c"stac9766_mic_enum\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 94, i32 8 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 158, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [25 x i8] c"stac9766_record_all_enum\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 100, i32 8 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 159, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [21 x i8] c"stac9766_record_enum\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 90, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 160, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [19 x i8] c"stac9766_mono_enum\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 92, i32 8 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 161, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [24 x i8] c"stac9766_popbypass_enum\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 98, i32 8 }
@___asan_gen_.285 = private unnamed_addr constant [16 x i8] c"stac9766_boost1\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 86, i32 20 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 86, i32 41 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 86, i32 48 }
@___asan_gen_.294 = private unnamed_addr constant [16 x i8] c"stac9766_boost2\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 87, i32 20 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 87, i32 48 }
@___asan_gen_.300 = private unnamed_addr constant [20 x i8] c"stac9766_stereo_mic\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 88, i32 20 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 88, i32 45 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 88, i32 52 }
@___asan_gen_.309 = private unnamed_addr constant [19 x i8] c"stac9766_SPDIF_mux\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 82, i32 20 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 82, i32 44 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 82, i32 51 }
@___asan_gen_.318 = private unnamed_addr constant [17 x i8] c"stac9766_mic_mux\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 81, i32 20 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 81, i32 42 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 81, i32 50 }
@___asan_gen_.327 = private unnamed_addr constant [24 x i8] c"stac9766_record_all_mux\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 84, i32 20 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 84, i32 49 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 85, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [20 x i8] c"stac9766_record_mux\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 78, i32 20 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 78, i32 45 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 78, i32 52 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 78, i32 58 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 78, i32 67 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 79, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 79, i32 12 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 79, i32 26 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 79, i32 38 }
@___asan_gen_.363 = private unnamed_addr constant [18 x i8] c"stac9766_mono_mux\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 80, i32 20 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 80, i32 43 }
@___asan_gen_.369 = private unnamed_addr constant [23 x i8] c"stac9766_popbypass_mux\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 83, i32 20 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 83, i32 48 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 83, i32 58 }
@___asan_gen_.378 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [23 x i8] c"stac9766_regmap_config\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 65, i32 35 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 282, i32 11 }
@___asan_gen_.387 = private unnamed_addr constant [22 x i8] c"stac9766_reg_defaults\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 33, i32 33 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 234, i32 10 }
@___asan_gen_.393 = private unnamed_addr constant [24 x i8] c"stac9766_dai_ops_analog\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 224, i32 37 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 245, i32 18 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 255, i32 10 }
@___asan_gen_.402 = private unnamed_addr constant [25 x i8] c"stac9766_dai_ops_digital\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 228, i32 37 }
@___asan_gen_.405 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.406 = private constant [31 x i8] c"../sound/soc/codecs/stac9766.c\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 259, i32 18 }
@___asan_gen_.408 = private unnamed_addr constant [37 x i8] c"switch.table.stac9766_set_bias_level\00", align 1
@llvm.compiler.used = appending global [132 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_stac9766_codec_driver_exit, ptr @__initcall__kmod_snd_soc_stac9766__238_334_stac9766_codec_driver_init6, ptr @stac9766_codec_driver_exit, ptr @stac9766_codec_driver, ptr @.str, ptr @soc_component_dev_stac9766, ptr @stac9766_dai, ptr @stac9766_snd_ac97_controls, ptr @.str.1, ptr @master_tlv, ptr @.compoundliteral, ptr @.str.2, ptr @.compoundliteral.3, ptr @.str.4, ptr @.compoundliteral.5, ptr @.str.6, ptr @.compoundliteral.7, ptr @.str.8, ptr @.compoundliteral.9, ptr @.str.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @record_tlv, ptr @.compoundliteral.13, ptr @.str.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @beep_tlv, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @mix_tlv, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @stac9766_boost1_enum, ptr @.str.27, ptr @stac9766_boost2_enum, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @stac9766_stereo_mic_enum, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @stac9766_SPDIF_enum, ptr @.str.60, ptr @stac9766_mic_enum, ptr @.str.61, ptr @stac9766_record_all_enum, ptr @.str.62, ptr @stac9766_record_enum, ptr @.str.63, ptr @stac9766_mono_enum, ptr @.str.64, ptr @stac9766_popbypass_enum, ptr @stac9766_boost1, ptr @.str.65, ptr @.str.66, ptr @stac9766_boost2, ptr @.str.67, ptr @stac9766_stereo_mic, ptr @.str.68, ptr @.str.69, ptr @stac9766_SPDIF_mux, ptr @.str.70, ptr @.str.71, ptr @stac9766_mic_mux, ptr @.str.72, ptr @.str.73, ptr @stac9766_record_all_mux, ptr @.str.74, ptr @.str.75, ptr @stac9766_record_mux, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @stac9766_mono_mux, ptr @.str.84, ptr @stac9766_popbypass_mux, ptr @.str.85, ptr @.str.86, ptr @stac9766_component_probe._key, ptr @stac9766_regmap_config, ptr @.str.87, ptr @stac9766_reg_defaults, ptr @.str.88, ptr @stac9766_dai_ops_analog, ptr @.str.89, ptr @.str.90, ptr @stac9766_dai_ops_digital, ptr @.str.91, ptr @switch.table.stac9766_set_bias_level], section "llvm.metadata"
@0 = internal global [125 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_codec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_stac9766 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_snd_ac97_controls to i32), i32 1776, i32 2208, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @record_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beep_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mix_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_boost1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_boost2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_stereo_mic_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_SPDIF_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_mic_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_record_all_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_record_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_mono_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_popbypass_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_boost1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_boost2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_stereo_mic to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_SPDIF_mux to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_mic_mux to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_record_all_mux to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_record_mux to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_mono_mux to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_popbypass_mux to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_component_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_reg_defaults to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_dai_ops_analog to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stac9766_dai_ops_digital to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stac9766_set_bias_level to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9766_codec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stac9766_codec_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stac9766_codec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @stac9766_codec_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9766_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_stac9766, ptr noundef nonnull @stac9766_dai, i32 noundef 2) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9766_component_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_new_ac97_component(ptr noundef %component, i32 noundef -2088470938, i32 noundef -1) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @__regmap_init_ac97(ptr noundef %call, ptr noundef nonnull @stac9766_regmap_config, ptr noundef nonnull @stac9766_component_probe._key, ptr noundef nonnull @.str.87) #3
  %cmp.i18 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i18, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %call3 to i32
  tail call void @snd_soc_free_ac97_component(ptr noundef %call) #3
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @snd_soc_component_init_regmap(ptr noundef %component, ptr noundef %call3) #3
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %1, %if.then5 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stac9766_component_remove(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @snd_soc_component_exit_regmap(ptr noundef %component) #3
  tail call void @snd_soc_free_ac97_component(ptr noundef %3) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9766_component_resume(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @snd_ac97_reset(ptr noundef %3, i1 noundef zeroext true, i32 noundef -2088470938, i32 noundef -1) #3
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stac9766_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %level)
  %0 = icmp ult i32 %level, 4
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.stac9766_set_bias_level, i32 0, i32 %level
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call2 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 38, i32 noundef %switch.load) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_new_ac97_component(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_ac97(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_init_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_free_ac97_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_ac97_default_volatile(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_exit_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_reset(ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac97_analog_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 42, i32 noundef 5, i32 noundef 1) #3
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %. = select i1 %cmp, i32 44, i32 50
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate, align 4
  %call3 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %., i32 noundef %7) #3
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac97_digital_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  %call = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 58, i32 noundef 8194) #3
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 42, i32 noundef 5, i32 noundef 5) #3
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate, align 4
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 44, i32 noundef %5) #3
  ret i32 %call4
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !183, !185, !187, !189, !191, !193, !195, !197, !199}
!llvm.module.flags = !{!201, !202, !203, !204, !205, !206, !207, !208}
!llvm.ident = !{!209}

!0 = !{ptr @__initcall__kmod_snd_soc_stac9766__238_334_stac9766_codec_driver_init6, !1, !"__initcall__kmod_snd_soc_stac9766__238_334_stac9766_codec_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/stac9766.c", i32 334, i32 1}
!2 = !{ptr @__exitcall_stac9766_codec_driver_exit, !1, !"__exitcall_stac9766_codec_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/stac9766.c", i32 336, i32 1}
!5 = !{ptr @__UNIQUE_ID_author240, !6, !"__UNIQUE_ID_author240", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/stac9766.c", i32 337, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/stac9766.c", i32 338, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/stac9766.c", i32 328, i32 12}
!12 = !{ptr @stac9766_codec_driver, !13, !"stac9766_codec_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/stac9766.c", i32 326, i32 31}
!14 = !{ptr @soc_component_dev_stac9766, !15, !"soc_component_dev_stac9766", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/stac9766.c", i32 305, i32 46}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/stac9766.c", i32 116, i32 2}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/stac9766.c", i32 117, i32 2}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/stac9766.c", i32 118, i32 2}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/stac9766.c", i32 120, i32 2}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/stac9766.c", i32 121, i32 2}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/stac9766.c", i32 123, i32 2}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/stac9766.c", i32 125, i32 2}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/stac9766.c", i32 126, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/stac9766.c", i32 129, i32 2}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/stac9766.c", i32 130, i32 2}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/stac9766.c", i32 131, i32 2}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/stac9766.c", i32 132, i32 2}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/stac9766.c", i32 133, i32 2}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/stac9766.c", i32 135, i32 2}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/stac9766.c", i32 136, i32 2}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/stac9766.c", i32 137, i32 2}
!48 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/stac9766.c", i32 138, i32 2}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/stac9766.c", i32 139, i32 2}
!52 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/stac9766.c", i32 141, i32 2}
!54 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/stac9766.c", i32 142, i32 2}
!56 = !{ptr @.str.37, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/stac9766.c", i32 143, i32 2}
!58 = !{ptr @.str.39, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/stac9766.c", i32 144, i32 2}
!60 = !{ptr @.str.41, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/stac9766.c", i32 145, i32 2}
!62 = !{ptr @.str.43, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/stac9766.c", i32 146, i32 2}
!64 = !{ptr @.str.45, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/stac9766.c", i32 147, i32 2}
!66 = !{ptr @.str.47, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/stac9766.c", i32 148, i32 2}
!68 = !{ptr @.str.49, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/stac9766.c", i32 150, i32 2}
!70 = !{ptr @.str.51, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/stac9766.c", i32 151, i32 2}
!72 = !{ptr @.str.53, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/stac9766.c", i32 152, i32 2}
!74 = !{ptr @.str.55, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/stac9766.c", i32 153, i32 2}
!76 = !{ptr @.str.57, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/stac9766.c", i32 154, i32 2}
!78 = !{ptr @.str.59, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/stac9766.c", i32 156, i32 2}
!80 = !{ptr @.str.60, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/stac9766.c", i32 157, i32 2}
!82 = !{ptr @.str.61, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/stac9766.c", i32 158, i32 2}
!84 = !{ptr @.str.62, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/stac9766.c", i32 159, i32 2}
!86 = !{ptr @.str.63, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/stac9766.c", i32 160, i32 2}
!88 = !{ptr @.str.64, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/stac9766.c", i32 161, i32 2}
!90 = !{ptr @stac9766_snd_ac97_controls, !91, !"stac9766_snd_ac97_controls", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/stac9766.c", i32 115, i32 38}
!92 = !{ptr @master_tlv, !93, !"master_tlv", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/stac9766.c", i32 110, i32 14}
!94 = !{ptr @record_tlv, !95, !"record_tlv", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/stac9766.c", i32 111, i32 14}
!96 = !{ptr @beep_tlv, !97, !"beep_tlv", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/stac9766.c", i32 112, i32 14}
!98 = !{ptr @mix_tlv, !99, !"mix_tlv", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/stac9766.c", i32 113, i32 14}
!100 = !{ptr @stac9766_boost1_enum, !101, !"stac9766_boost1_enum", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/stac9766.c", i32 103, i32 8}
!102 = !{ptr @.str.65, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/stac9766.c", i32 86, i32 41}
!104 = !{ptr @.str.66, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/stac9766.c", i32 86, i32 48}
!106 = !{ptr @stac9766_boost1, !107, !"stac9766_boost1", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/stac9766.c", i32 86, i32 20}
!108 = !{ptr @stac9766_boost2_enum, !109, !"stac9766_boost2_enum", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/stac9766.c", i32 105, i32 8}
!110 = !{ptr @.str.67, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/stac9766.c", i32 87, i32 48}
!112 = !{ptr @stac9766_boost2, !113, !"stac9766_boost2", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/stac9766.c", i32 87, i32 20}
!114 = !{ptr @stac9766_stereo_mic_enum, !115, !"stac9766_stereo_mic_enum", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/stac9766.c", i32 107, i32 8}
!116 = !{ptr @.str.68, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/stac9766.c", i32 88, i32 45}
!118 = !{ptr @.str.69, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/stac9766.c", i32 88, i32 52}
!120 = !{ptr @stac9766_stereo_mic, !121, !"stac9766_stereo_mic", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/stac9766.c", i32 88, i32 20}
!122 = !{ptr @stac9766_SPDIF_enum, !123, !"stac9766_SPDIF_enum", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/stac9766.c", i32 96, i32 8}
!124 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/stac9766.c", i32 82, i32 44}
!126 = !{ptr @.str.71, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/stac9766.c", i32 82, i32 51}
!128 = !{ptr @stac9766_SPDIF_mux, !129, !"stac9766_SPDIF_mux", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/stac9766.c", i32 82, i32 20}
!130 = !{ptr @stac9766_mic_enum, !131, !"stac9766_mic_enum", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/stac9766.c", i32 94, i32 8}
!132 = !{ptr @.str.72, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/stac9766.c", i32 81, i32 42}
!134 = !{ptr @.str.73, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/stac9766.c", i32 81, i32 50}
!136 = !{ptr @stac9766_mic_mux, !137, !"stac9766_mic_mux", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/stac9766.c", i32 81, i32 20}
!138 = !{ptr @stac9766_record_all_enum, !139, !"stac9766_record_all_enum", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/stac9766.c", i32 100, i32 8}
!140 = !{ptr @.str.74, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/stac9766.c", i32 84, i32 49}
!142 = !{ptr @.str.75, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/stac9766.c", i32 85, i32 2}
!144 = !{ptr @stac9766_record_all_mux, !145, !"stac9766_record_all_mux", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/stac9766.c", i32 84, i32 20}
!146 = !{ptr @stac9766_record_enum, !147, !"stac9766_record_enum", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/stac9766.c", i32 90, i32 8}
!148 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/stac9766.c", i32 78, i32 45}
!150 = !{ptr @.str.77, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/stac9766.c", i32 78, i32 52}
!152 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/stac9766.c", i32 78, i32 58}
!154 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/stac9766.c", i32 78, i32 67}
!156 = !{ptr @.str.80, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/stac9766.c", i32 79, i32 4}
!158 = !{ptr @.str.81, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/stac9766.c", i32 79, i32 12}
!160 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/stac9766.c", i32 79, i32 26}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/stac9766.c", i32 79, i32 38}
!164 = !{ptr @stac9766_record_mux, !165, !"stac9766_record_mux", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/stac9766.c", i32 78, i32 20}
!166 = !{ptr @stac9766_mono_enum, !167, !"stac9766_mono_enum", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/stac9766.c", i32 92, i32 8}
!168 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/stac9766.c", i32 80, i32 43}
!170 = !{ptr @stac9766_mono_mux, !171, !"stac9766_mono_mux", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/stac9766.c", i32 80, i32 20}
!172 = !{ptr @stac9766_popbypass_enum, !173, !"stac9766_popbypass_enum", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/stac9766.c", i32 98, i32 8}
!174 = !{ptr @.str.85, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/stac9766.c", i32 83, i32 48}
!176 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/stac9766.c", i32 83, i32 58}
!178 = !{ptr @stac9766_popbypass_mux, !179, !"stac9766_popbypass_mux", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/stac9766.c", i32 83, i32 20}
!180 = !{ptr @stac9766_component_probe._key, !181, !"_key", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/stac9766.c", i32 282, i32 11}
!182 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @stac9766_regmap_config, !184, !"stac9766_regmap_config", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/stac9766.c", i32 65, i32 35}
!185 = !{ptr @stac9766_reg_defaults, !186, !"stac9766_reg_defaults", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/stac9766.c", i32 33, i32 33}
!187 = !{ptr @.str.88, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/stac9766.c", i32 234, i32 10}
!189 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/stac9766.c", i32 245, i32 18}
!191 = !{ptr @.str.90, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/stac9766.c", i32 255, i32 10}
!193 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/stac9766.c", i32 259, i32 18}
!195 = !{ptr @stac9766_dai, !196, !"stac9766_dai", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/stac9766.c", i32 232, i32 34}
!197 = !{ptr @stac9766_dai_ops_analog, !198, !"stac9766_dai_ops_analog", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/stac9766.c", i32 224, i32 37}
!199 = !{ptr @stac9766_dai_ops_digital, !200, !"stac9766_dai_ops_digital", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/stac9766.c", i32 228, i32 37}
!201 = !{i32 1, !"wchar_size", i32 2}
!202 = !{i32 1, !"min_enum_size", i32 4}
!203 = !{i32 8, !"branch-target-enforcement", i32 0}
!204 = !{i32 8, !"sign-return-address", i32 0}
!205 = !{i32 8, !"sign-return-address-all", i32 0}
!206 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!207 = !{i32 7, !"uwtable", i32 1}
!208 = !{i32 7, !"frame-pointer", i32 2}
!209 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
