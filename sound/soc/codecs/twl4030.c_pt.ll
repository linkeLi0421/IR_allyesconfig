; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/twl4030.c_pt.bc'
source_filename = "../sound/soc/codecs/twl4030.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.twl4030_priv = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, [8 x i8], ptr }
%struct.twl4030_codec_data = type { i32, i32, i32, i8, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.90, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.90 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.85, [128 x i8] }
%union.anon.85 = type { %union.anon.87 }
%union.anon.87 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
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

@__UNIQUE_ID_alias294 = internal constant [45 x i8] c"snd_soc_twl4030.alias=platform:twl4030-codec\00", section ".modinfo", align 1
@__initcall__kmod_snd_soc_twl4030__295_2212_twl4030_codec_driver_init6 = internal global ptr @twl4030_codec_driver_init, section ".initcall6.init", align 4
@twl4030_codec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @twl4030_codec_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_twl4030_codec_driver_exit = internal global ptr @twl4030_codec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [54 x i8] c"snd_soc_twl4030.description=ASoC TWL4030 codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [37 x i8] c"snd_soc_twl4030.author=Steve Sakoman\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [54 x i8] c"snd_soc_twl4030.file=sound/soc/codecs/snd-soc-twl4030\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [28 x i8] c"snd_soc_twl4030.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twl4030-codec\00", [18 x i8] zeroinitializer }, align 32
@soc_component_dev_twl4030 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @twl4030_snd_controls, i32 24, ptr @twl4030_dapm_widgets, i32 89, ptr @intercon, i32 146, ptr @twl4030_soc_probe, ptr @twl4030_soc_remove, ptr null, ptr null, ptr @twl4030_read, ptr @twl4030_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl4030_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@twl4030_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.230, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @twl4030_dai_hifi_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.216, i64 1028, i32 254, i32 0, i32 0, i32 2, i32 4, i32 24 }, %struct.snd_soc_pcm_stream { ptr @.str.215, i64 1028, i32 1278, i32 0, i32 0, i32 2, i32 4, i32 24 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.231, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @twl4030_dai_voice_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.140, i64 4, i32 10, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.91, i64 4, i32 10, i32 0, i32 0, i32 1, i32 1, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@twl4030_snd_controls = internal constant { [24 x %struct.snd_kcontrol_new], [288 x i8] } { [24 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.1, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_twl4030_opmode_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @twl4030_op_modes_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.2, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @digital_fine_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @digital_fine_tlv }, i32 ptrtoint (ptr @.compoundliteral.4 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @digital_coarse_tlv }, i32 ptrtoint (ptr @.compoundliteral.6 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @digital_coarse_tlv }, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @analog_tlv }, i32 ptrtoint (ptr @.compoundliteral.10 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @analog_tlv }, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @digital_voice_downlink_tlv }, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @analog_tlv }, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw_r2_twl4030, ptr @snd_soc_put_volsw_r2_twl4030, %union.anon.96 { ptr @output_tvl }, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw_twl4030, ptr @snd_soc_put_volsw_twl4030, %union.anon.96 { ptr @output_tvl }, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw_r2_twl4030, ptr @snd_soc_put_volsw_r2_twl4030, %union.anon.96 { ptr @output_tvl }, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw_twl4030, ptr @snd_soc_put_volsw_twl4030, %union.anon.96 { ptr @output_ear_tvl }, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @digital_capture_tlv }, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @digital_capture_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @input_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @twl4030_avadc_clk_priority_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @twl4030_rampdelay_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @twl4030_vibradirmode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @twl4030_vibradir_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @twl4030_digimicswap_enum to i32) }], [288 x i8] zeroinitializer }, align 32
@intercon = internal constant { [146 x %struct.snd_soc_dapm_route], [1912 x i8] } { [146 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.85, ptr null, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr null, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr null, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr null, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr null, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr null, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr @.str.166, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr @.str.168, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr @.str.170, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr @.str.172, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr @.str.166, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr @.str.168, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr @.str.170, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr @.str.177, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr null, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr @.str.166, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr @.str.172, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr @.str.177, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr @.str.170, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.166, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.168, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.170, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr null, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.166, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.172, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.177, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.166, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.168, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.170, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.166, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.172, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.177, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.166, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.168, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.170, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.177, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.156, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr null, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.166, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.172, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.177, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.170, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.156, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.168, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.172, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.170, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.177, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr null, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr null, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.199, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr null, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.203, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.205, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.207, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.209, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.211, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.213, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.200, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.201, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.200, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.201, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.200, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.202, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.200, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.202, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.156, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr @.str.156, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.156, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.156, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.156, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr null, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.162, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.162, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.162, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr null, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }], [1912 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Codec Operation Mode\00", [43 x i8] zeroinitializer }, align 32
@twl4030_op_modes_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1, i8 0, i8 0, i32 2, i32 1, ptr @twl4030_op_modes_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DAC1 Digital Fine Playback Volume\00", [62 x i8] zeroinitializer }, align 32
@digital_fine_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6300, i32 65636], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 17, i32 16, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DAC2 Digital Fine Playback Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 19, i32 18, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DAC1 Digital Coarse Playback Volume\00", [60 x i8] zeroinitializer }, align 32
@digital_coarse_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 2, i32 2, i32 17, i32 16, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DAC2 Digital Coarse Playback Volume\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 2, i32 2, i32 19, i32 18, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DAC1 Analog Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@analog_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2400, i32 200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 18, i32 18, i32 25, i32 26, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DAC2 Analog Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 18, i32 18, i32 27, i32 28, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DAC1 Analog Playback Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 25, i32 26, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DAC2 Analog Playback Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 28, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DAC Voice Digital Downlink Volume\00", [62 x i8] zeroinitializer }, align 32
@digital_voice_downlink_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3700, i32 65636], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 49, i32 49, i32 20, i32 20, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DAC Voice Analog Downlink Volume\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 18, i32 18, i32 68, i32 68, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DAC Voice Analog Downlink Switch\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 68, i32 68, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PreDriv Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@output_tvl = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 66136], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 37, i32 38, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Headset Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 35, i32 35, i32 0, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Carkit Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 39, i32 40, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Earpiece Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@output_ear_tvl = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 66136], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 33, i32 33, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TX1 Digital Capture Volume\00", [37 x i8] zeroinitializer }, align 32
@digital_capture_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 10, i32 11, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TX2 Digital Capture Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 12, i32 13, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Analog Capture Volume\00", [42 x i8] zeroinitializer }, align 32
@input_gain_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 5, i32 5, i32 72, i32 72, i32 0, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AVADC Clock Priority\00", [43 x i8] zeroinitializer }, align 32
@twl4030_avadc_clk_priority_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7, i8 2, i8 2, i32 2, i32 1, ptr @twl4030_avadc_clk_priority_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HS ramp delay\00", [18 x i8] zeroinitializer }, align 32
@twl4030_rampdelay_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 36, i8 2, i8 2, i32 8, i32 7, ptr @twl4030_rampdelay_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Vibra H-bridge mode\00", [44 x i8] zeroinitializer }, align 32
@twl4030_vibradirmode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 69, i8 5, i8 5, i32 2, i32 1, ptr @twl4030_vibradirmode_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Vibra H-bridge direction\00", [39 x i8] zeroinitializer }, align 32
@twl4030_vibradir_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 69, i8 1, i8 1, i32 2, i32 1, ptr @twl4030_vibradir_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Digimic LR Swap\00", [16 x i8] zeroinitializer }, align 32
@twl4030_digimicswap_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 62, i8 0, i8 0, i32 2, i32 1, ptr @twl4030_digimicswap_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@snd_soc_put_twl4030_opmode_enum_double._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.44, i32 962, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"operation mode cannot be changed on-the-fly\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"snd_soc_put_twl4030_opmode_enum_double\00", [57 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/twl4030.c\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_soc_put_twl4030_opmode_enum_double._entry_ptr = internal global ptr @snd_soc_put_twl4030_opmode_enum_double._entry, section ".printk_index", align 4
@twl4030_op_modes_texts = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.47, ptr @.str.48], [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Option 2 (voice/audio)\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Option 1 (audio)\00", [47 x i8] zeroinitializer }, align 32
@twl4030_avadc_clk_priority_texts = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.49, ptr @.str.50], [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Voice high priority\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HiFi high priority\00", [45 x i8] zeroinitializer }, align 32
@twl4030_rampdelay_texts = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"27/20/14 ms\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"55/40/27 ms\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"109/81/55 ms\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"218/161/109 ms\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"437/323/218 ms\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"874/645/437 ms\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"1748/1291/874 ms\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"3495/2581/1748 ms\00", [46 x i8] zeroinitializer }, align 32
@twl4030_vibradirmode_texts = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.40, ptr @.str.59], [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Audio data MSB\00", [17 x i8] zeroinitializer }, align 32
@twl4030_vibradir_texts = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.60, ptr @.str.61], [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Positive polarity\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Negative polarity\00", [46 x i8] zeroinitializer }, align 32
@twl4030_digimicswap_texts = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.62, ptr @.str.63], [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Not swapped\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Swapped\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MAINMIC\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HSMIC\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUXL\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CARKITMIC\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SUBMIC\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUXR\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DIGIMIC0\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DIGIMIC1\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EARPIECE\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PREDRIVEL\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PREDRIVER\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HSOL\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HSOR\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CARKITL\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CARKITR\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HFL\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HFR\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VIBRA\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Virtual HiFi OUT\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Virtual HiFi IN\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Virtual Voice OUT\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Right1\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC Left1\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Right2\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC Left2\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC Voice\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VAIFIN\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Voice Playback\00", [17 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Right1 Analog Loopback\00", [41 x i8] zeroinitializer }, align 32
@twl4030_dapm_abypassr1_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.157 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Left1 Analog Loopback\00", [42 x i8] zeroinitializer }, align 32
@twl4030_dapm_abypassl1_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.158 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Right2 Analog Loopback\00", [41 x i8] zeroinitializer }, align 32
@twl4030_dapm_abypassr2_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.159 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Left2 Analog Loopback\00", [42 x i8] zeroinitializer }, align 32
@twl4030_dapm_abypassl2_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.160 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Voice Analog Loopback\00", [42 x i8] zeroinitializer }, align 32
@twl4030_dapm_abypassv_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.161 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FM Loop Enable\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Left Digital Loopback\00", [42 x i8] zeroinitializer }, align 32
@twl4030_dapm_dbypassl_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 { ptr @twl4030_dapm_dbypass_tlv }, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Right Digital Loopback\00", [41 x i8] zeroinitializer }, align 32
@twl4030_dapm_dbypassr_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 { ptr @twl4030_dapm_dbypass_tlv }, i32 ptrtoint (ptr @.compoundliteral.164 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Voice Digital Loopback\00", [41 x i8] zeroinitializer }, align 32
@twl4030_dapm_dbypassv_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 { ptr @twl4030_dapm_dbypassv_tlv }, i32 ptrtoint (ptr @.compoundliteral.165 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Digital R1 Playback Mixer\00", [38 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Digital L1 Playback Mixer\00", [38 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Digital R2 Playback Mixer\00", [38 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Digital L2 Playback Mixer\00", [38 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Digital Voice Playback Mixer\00", [35 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Analog R1 Playback Mixer\00", [39 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Analog L1 Playback Mixer\00", [39 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Analog R2 Playback Mixer\00", [39 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Analog L2 Playback Mixer\00", [39 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Analog Voice Playback Mixer\00", [36 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"APLL Enable\00", [20 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AIF Enable\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Earpiece Mixer\00", [17 x i8] zeroinitializer }, align 32
@twl4030_dapm_earpiece_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.167 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.168, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.169 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.170, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.171 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.173 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Earpiece PGA\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PredriveL Mixer\00", [16 x i8] zeroinitializer }, align 32
@twl4030_dapm_predrivel_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.174 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.168, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.175 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.170, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.176 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.178 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PredriveL PGA\00", [18 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PredriveR Mixer\00", [16 x i8] zeroinitializer }, align 32
@twl4030_dapm_predriver_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.179 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.180 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.181 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.170, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.182 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PredriveR PGA\00", [18 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HeadsetL Mixer\00", [17 x i8] zeroinitializer }, align 32
@twl4030_dapm_hsol_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.183 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.168, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.184 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.170, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.185 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HeadsetL PGA\00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HeadsetR Mixer\00", [17 x i8] zeroinitializer }, align 32
@twl4030_dapm_hsor_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.186 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.188 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HeadsetR PGA\00", [19 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CarkitL Mixer\00", [18 x i8] zeroinitializer }, align 32
@twl4030_dapm_carkitl_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.189 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.168, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.190 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.170, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.191 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CarkitL PGA\00", [20 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CarkitR Mixer\00", [18 x i8] zeroinitializer }, align 32
@twl4030_dapm_carkitr_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.192 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.193 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.194 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CarkitR PGA\00", [20 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HandsfreeL Mux\00", [17 x i8] zeroinitializer }, align 32
@twl4030_dapm_handsfreel_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.195, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @twl4030_handsfreel_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HandsfreeL\00", [21 x i8] zeroinitializer }, align 32
@twl4030_dapm_handsfreelmute_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.196 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HandsfreeL PGA\00", [17 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HandsfreeR Mux\00", [17 x i8] zeroinitializer }, align 32
@twl4030_dapm_handsfreer_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.195, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @twl4030_handsfreer_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HandsfreeR\00", [21 x i8] zeroinitializer }, align 32
@twl4030_dapm_handsfreermute_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.197 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HandsfreeR PGA\00", [17 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Vibra Mux\00", [22 x i8] zeroinitializer }, align 32
@twl4030_dapm_vibra_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.195, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @twl4030_vibra_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Vibra Route\00", [20 x i8] zeroinitializer }, align 32
@twl4030_dapm_vibrapath_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.195, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @twl4030_vibrapath_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADC Virtual Left1\00", [46 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Virtual Right1\00", [45 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADC Virtual Left2\00", [46 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Virtual Right2\00", [45 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VAIFOUT\00", [24 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Voice Capture\00", [18 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX1 Capture Route\00", [46 x i8] zeroinitializer }, align 32
@twl4030_dapm_micpathtx1_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.195, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @twl4030_micpathtx1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX2 Capture Route\00", [46 x i8] zeroinitializer }, align 32
@twl4030_dapm_micpathtx2_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.195, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @twl4030_micpathtx2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Analog Left\00", [20 x i8] zeroinitializer }, align 32
@twl4030_dapm_analoglmic_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.203, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.204 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.205, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.206 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.207, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.208 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.209, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.210 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Analog Right\00", [19 x i8] zeroinitializer }, align 32
@twl4030_dapm_analogrmic_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.211, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.212 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.213, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.214 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADC Physical Left\00", [46 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Physical Right\00", [45 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Digimic0 Enable\00", [16 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Digimic1 Enable\00", [16 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"micbias1 select\00", [16 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"micbias2 select\00", [16 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Bias 1\00", [21 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Bias 2\00", [21 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headset Mic Bias\00", [47 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VIF Enable\00", [21 x i8] zeroinitializer }, align 32
@twl4030_dapm_widgets = internal constant { [89 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [4012 x i8] } { [89 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.90, ptr @.str.91, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 15, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @twl4030_dapm_abypassr1_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @twl4030_dapm_abypassl1_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @twl4030_dapm_abypassr2_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @twl4030_dapm_abypassl2_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @twl4030_dapm_abypassv_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 62, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @twl4030_dapm_dbypassl_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @twl4030_dapm_dbypassr_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @twl4030_dapm_dbypassv_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 23, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 23, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 23, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 23, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 23, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 28, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 27, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 68, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @apll_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @aif_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @twl4030_dapm_earpiece_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @earpiecepga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @twl4030_dapm_predrivel_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @predrivelpga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @twl4030_dapm_predriver_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @predriverpga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @twl4030_dapm_hsol_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @headsetlpga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @twl4030_dapm_hsor_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @headsetrpga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @twl4030_dapm_carkitl_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @carkitlpga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @twl4030_dapm_carkitr_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @carkitrpga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @twl4030_dapm_handsfreel_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @twl4030_dapm_handsfreelmute_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @handsfreelpga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @twl4030_dapm_handsfreer_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @twl4030_dapm_handsfreermute_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @handsfreerpga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 69, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @vibramux_event, i32 1, ptr @twl4030_dapm_vibra_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @twl4030_dapm_vibrapath_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.139, ptr @.str.140, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 15, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @twl4030_dapm_micpathtx1_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @twl4030_dapm_micpathtx2_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @twl4030_dapm_analoglmic_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @twl4030_dapm_analogrmic_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @digimic_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @digimic_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 15, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [4012 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 25, i32 25, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.159 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 68, i32 68, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Volume\00", [25 x i8] zeroinitializer }, align 32
@twl4030_dapm_dbypass_tlv = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 3, i32 72, i32 0, i32 1, i32 1, i32 8, i32 -3000, i32 66136, i32 2, i32 3, i32 1, i32 8, i32 -2400, i32 0, i32 4, i32 7, i32 1, i32 8, i32 -1800, i32 600], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 29, i32 29, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 29, i32 29, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@twl4030_dapm_dbypassv_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5100, i32 65636], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 41, i32 41, i32 21, i32 21, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Voice\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 33, i32 33, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AudioL1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 33, i32 33, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AudioL2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 33, i32 33, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AudioR1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.173 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 33, i32 33, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.175 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.176 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AudioR2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.178 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.179 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.180 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.181 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.183 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.184 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__const.headset_ramp.ramp_base = private unnamed_addr constant [8 x i32] [i32 524288, i32 1048576, i32 2097152, i32 4194304, i32 8388608, i32 16777216, i32 33554432, i32 67108864], align 4
@.compoundliteral.186 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.188 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.189 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.190 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.191 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.192 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.193 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.194 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Route\00", [26 x i8] zeroinitializer }, align 32
@twl4030_handsfreel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 41, i8 0, i8 0, i32 4, i32 3, ptr @twl4030_handsfreel_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@twl4030_handsfreel_texts = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.166, ptr @.str.168, ptr @.str.170, ptr @.str.177], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.196 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@twl4030_handsfreer_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 42, i8 0, i8 0, i32 4, i32 3, ptr @twl4030_handsfreer_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@twl4030_handsfreer_texts = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.166, ptr @.str.172, ptr @.str.177, ptr @.str.170], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.197 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@twl4030_vibra_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 69, i8 2, i8 2, i32 4, i32 3, ptr @twl4030_vibra_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@twl4030_vibra_texts = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.168, ptr @.str.172, ptr @.str.170, ptr @.str.177], [16 x i8] zeroinitializer }, align 32
@twl4030_vibrapath_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 69, i8 4, i8 4, i32 2, i32 1, ptr @twl4030_vibrapath_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@twl4030_vibrapath_texts = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.198, ptr @.str.199], [24 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Local vibrator\00", [17 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Audio\00", [26 x i8] zeroinitializer }, align 32
@twl4030_micpathtx1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 0, i8 0, i32 2, i32 1, ptr @twl4030_micpathtx1_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@twl4030_micpathtx1_texts = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.200, ptr @.str.201], [24 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Analog\00", [25 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Digimic0\00", [23 x i8] zeroinitializer }, align 32
@twl4030_micpathtx2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 2, i8 2, i32 2, i32 1, ptr @twl4030_micpathtx2_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@twl4030_micpathtx2_texts = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.200, ptr @.str.202], [24 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Digimic1\00", [23 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Main Mic Capture Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.204 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Headset Mic Capture Switch\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.206 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AUXL Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.208 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Carkit Mic Capture Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.210 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Sub Mic Capture Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.212 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AUXR Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.214 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HiFi Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HiFi Capture\00", [19 x i8] zeroinitializer }, align 32
@twl4030_init_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.44, i32 254, ptr @.str.219, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Extmute GPIO is 0 is this correct?\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"twl4030_init_chip\00", [46 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@twl4030_init_chip._entry_ptr = internal global ptr @twl4030_init_chip._entry, section ".printk_index", align 4
@.str.220 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hs_extmute\00", [21 x i8] zeroinitializer }, align 32
@twl4030_init_chip._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.218, ptr @.str.44, i32 261, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get hs_extmute GPIO\0A\00", [33 x i8] zeroinitializer }, align 32
@twl4030_init_chip._entry_ptr.223 = internal global ptr @twl4030_init_chip._entry.221, section ".printk_index", align 4
@.str.224 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"codec\00", [26 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,digimic_delay\00", [47 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,ramp_delay_value\00", [44 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,offset_cncl_path\00", [44 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,hs_extmute\00", [18 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,hs_extmute_gpio\00", [45 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"twl4030-hifi\00", [19 x i8] zeroinitializer }, align 32
@twl4030_dai_hifi_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @twl4030_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @twl4030_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr @twl4030_set_tristate, ptr null, ptr null, ptr null, ptr @twl4030_startup, ptr @twl4030_shutdown, ptr @twl4030_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twl4030-voice\00", [18 x i8] zeroinitializer }, align 32
@twl4030_dai_voice_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @twl4030_voice_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @twl4030_voice_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr @twl4030_voice_set_tristate, ptr null, ptr null, ptr null, ptr @twl4030_voice_startup, ptr @twl4030_voice_shutdown, ptr @twl4030_voice_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@twl4030_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.233, ptr @.str.44, i32 1819, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported HFCLKIN: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"twl4030_set_dai_sysclk\00", [41 x i8] zeroinitializer }, align 32
@twl4030_set_dai_sysclk._entry_ptr = internal global ptr @twl4030_set_dai_sysclk._entry, section ".printk_index", align 4
@twl4030_set_dai_sysclk._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.233, ptr @.str.44, i32 1826, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Mismatch in HFCLKIN: %u (configured: %u)\0A\00", [54 x i8] zeroinitializer }, align 32
@twl4030_set_dai_sysclk._entry_ptr.236 = internal global ptr @twl4030_set_dai_sysclk._entry.234, section ".printk_index", align 4
@twl4030_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.238, ptr @.str.44, i32 1753, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: unknown rate %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"twl4030_hw_params\00", [46 x i8] zeroinitializer }, align 32
@twl4030_hw_params._entry_ptr = internal global ptr @twl4030_hw_params._entry, section ".printk_index", align 4
@twl4030_hw_params._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.238, ptr @.str.44, i32 1770, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: unsupported bits/sample %d\0A\00", [32 x i8] zeroinitializer }, align 32
@twl4030_hw_params._entry_ptr.241 = internal global ptr @twl4030_hw_params._entry.239, section ".printk_index", align 4
@twl4030_voice_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.243, ptr @.str.44, i32 2018, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: HFCLKIN is %u KHz, voice interface needs 26MHz\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"twl4030_voice_set_dai_sysclk\00", [35 x i8] zeroinitializer }, align 32
@twl4030_voice_set_dai_sysclk._entry_ptr = internal global ptr @twl4030_voice_set_dai_sysclk._entry, section ".printk_index", align 4
@twl4030_voice_set_dai_sysclk._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.243, ptr @.str.44, i32 2024, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@twl4030_voice_set_dai_sysclk._entry_ptr.245 = internal global ptr @twl4030_voice_set_dai_sysclk._entry.244, section ".printk_index", align 4
@twl4030_voice_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.246, ptr @.str.44, i32 1935, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"twl4030_voice_startup\00", [42 x i8] zeroinitializer }, align 32
@twl4030_voice_startup._entry_ptr = internal global ptr @twl4030_voice_startup._entry, section ".printk_index", align 4
@twl4030_voice_startup._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.246, ptr @.str.44, i32 1947, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: the codec mode is not option2\0A\00", [61 x i8] zeroinitializer }, align 32
@twl4030_voice_startup._entry_ptr.249 = internal global ptr @twl4030_voice_startup._entry.247, section ".printk_index", align 4
@twl4030_voice_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.250, ptr @.str.44, i32 1988, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"twl4030_voice_hw_params\00", [40 x i8] zeroinitializer }, align 32
@twl4030_voice_hw_params._entry_ptr = internal global ptr @twl4030_voice_hw_params._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 33, i64 35, i64 37, i64 38, i64 39, i64 40]
@__sancov_gen_cov_switch_values.251 = internal global [8 x i64] [i64 6, i64 32, i64 33, i64 35, i64 37, i64 38, i64 39, i64 40]
@__sancov_gen_cov_switch_values.252 = internal global [8 x i64] [i64 6, i64 32, i64 33, i64 35, i64 37, i64 38, i64 39, i64 40]
@__sancov_gen_cov_switch_values.253 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.254 = internal global [8 x i64] [i64 6, i64 32, i64 33, i64 35, i64 37, i64 38, i64 39, i64 40]
@__sancov_gen_cov_switch_values.255 = internal global [8 x i64] [i64 6, i64 32, i64 33, i64 35, i64 37, i64 38, i64 39, i64 40]
@__sancov_gen_cov_switch_values.256 = internal global [8 x i64] [i64 6, i64 32, i64 33, i64 35, i64 37, i64 38, i64 39, i64 40]
@__sancov_gen_cov_switch_values.257 = internal global [8 x i64] [i64 6, i64 32, i64 33, i64 35, i64 37, i64 38, i64 39, i64 40]
@__sancov_gen_cov_switch_values.258 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.259 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.260 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.261 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.262 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.263 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.264 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.265 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.266 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.267 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.268 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.269 = internal global [5 x i64] [i64 3, i64 32, i64 19200000, i64 26000000, i64 38400000]
@__sancov_gen_cov_switch_values.270 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.271 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.272 = internal global [12 x i64] [i64 10, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 96000]
@__sancov_gen_cov_switch_values.273 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.274 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.275 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 768]
@__sancov_gen_cov_switch_values.276 = internal global [4 x i64] [i64 2, i64 32, i64 8000, i64 16000]
@___asan_gen_.277 = private unnamed_addr constant [21 x i8] c"twl4030_codec_driver\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2205, i32 31 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2208, i32 11 }
@___asan_gen_.283 = private unnamed_addr constant [26 x i8] c"soc_component_dev_twl4030\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2179, i32 46 }
@___asan_gen_.286 = private unnamed_addr constant [12 x i8] c"twl4030_dai\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2116, i32 34 }
@___asan_gen_.289 = private unnamed_addr constant [21 x i8] c"twl4030_snd_controls\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1064, i32 38 }
@___asan_gen_.292 = private unnamed_addr constant [9 x i8] c"intercon\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1369, i32 40 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1066, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant [22 x i8] c"twl4030_op_modes_enum\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 950, i32 8 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1071, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [17 x i8] c"digital_fine_tlv\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 973, i32 8 }
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1074, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1078, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant [19 x i8] c"digital_coarse_tlv\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 980, i32 8 }
@___asan_gen_.318 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1081, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1085, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [11 x i8] c"analog_tlv\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 992, i32 8 }
@___asan_gen_.329 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1088, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1091, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1094, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1099, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant [27 x i8] c"digital_voice_downlink_tlv\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 986, i32 8 }
@___asan_gen_.348 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1102, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1105, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1109, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [11 x i8] c"output_tvl\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 998, i32 8 }
@___asan_gen_.363 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1114, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1118, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1123, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant [15 x i8] c"output_ear_tvl\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1004, i32 8 }
@___asan_gen_.378 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1128, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant [20 x i8] c"digital_capture_tlv\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1010, i32 8 }
@___asan_gen_.385 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1131, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1135, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [15 x i8] c"input_gain_tlv\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1016, i32 8 }
@___asan_gen_.396 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1138, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant [32 x i8] c"twl4030_avadc_clk_priority_enum\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1023, i32 8 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1140, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant [23 x i8] c"twl4030_rampdelay_enum\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1033, i32 8 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1142, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [26 x i8] c"twl4030_vibradirmode_enum\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1042, i32 8 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1143, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant [22 x i8] c"twl4030_vibradir_enum\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1051, i32 8 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1145, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant [25 x i8] c"twl4030_digimicswap_enum\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1060, i32 8 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 961, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant [23 x i8] c"twl4030_op_modes_texts\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 946, i32 20 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 947, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 947, i32 28 }
@___asan_gen_.454 = private unnamed_addr constant [33 x i8] c"twl4030_avadc_clk_priority_texts\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1019, i32 20 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1020, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1020, i32 25 }
@___asan_gen_.463 = private unnamed_addr constant [24 x i8] c"twl4030_rampdelay_texts\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1027, i32 20 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1028, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1028, i32 17 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1028, i32 32 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1028, i32 48 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1029, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1029, i32 20 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1029, i32 38 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1030, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [27 x i8] c"twl4030_vibradirmode_texts\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1038, i32 20 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1039, i32 30 }
@___asan_gen_.496 = private unnamed_addr constant [23 x i8] c"twl4030_vibradir_texts\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1047, i32 20 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1048, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1048, i32 23 }
@___asan_gen_.505 = private unnamed_addr constant [26 x i8] c"twl4030_digimicswap_texts\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1056, i32 20 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1057, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1057, i32 17 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1150, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1151, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1152, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1153, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1155, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1156, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1158, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1159, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1162, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1163, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1164, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1165, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1166, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1167, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1168, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1169, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1170, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1171, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1174, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1175, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1176, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1179, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1180, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1181, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1182, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1183, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1185, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1189, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant [31 x i8] c"twl4030_dapm_abypassr1_control\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 494, i32 38 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1191, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant [31 x i8] c"twl4030_dapm_abypassl1_control\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 498, i32 38 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1193, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant [31 x i8] c"twl4030_dapm_abypassr2_control\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 502, i32 38 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1195, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant [31 x i8] c"twl4030_dapm_abypassl2_control\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 506, i32 38 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1197, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant [30 x i8] c"twl4030_dapm_abypassv_control\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 510, i32 38 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1201, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1205, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant [30 x i8] c"twl4030_dapm_dbypassl_control\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 521, i32 38 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1207, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant [30 x i8] c"twl4030_dapm_dbypassr_control\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 527, i32 38 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1209, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant [30 x i8] c"twl4030_dapm_dbypassv_control\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 539, i32 38 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1213, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1215, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1217, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1219, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1221, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1225, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1227, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1229, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1231, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1233, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1236, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1239, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1244, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant [31 x i8] c"twl4030_dapm_earpiece_controls\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 349, i32 38 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1247, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1251, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant [32 x i8] c"twl4030_dapm_predrivel_controls\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 357, i32 38 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1254, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1257, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant [32 x i8] c"twl4030_dapm_predriver_controls\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 365, i32 38 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1260, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1264, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant [27 x i8] c"twl4030_dapm_hsol_controls\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 373, i32 38 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1267, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1270, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant [27 x i8] c"twl4030_dapm_hsor_controls\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 380, i32 38 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1273, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1277, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant [30 x i8] c"twl4030_dapm_carkitl_controls\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 387, i32 38 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1280, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1283, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant [30 x i8] c"twl4030_dapm_carkitr_controls\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 394, i32 38 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1286, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1292, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant [32 x i8] c"twl4030_dapm_handsfreel_control\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 408, i32 38 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1294, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant [36 x i8] c"twl4030_dapm_handsfreelmute_control\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 412, i32 38 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1296, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1299, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant [32 x i8] c"twl4030_dapm_handsfreer_control\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 423, i32 38 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1301, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant [36 x i8] c"twl4030_dapm_handsfreermute_control\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 427, i32 38 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1303, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1307, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant [27 x i8] c"twl4030_dapm_vibra_control\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 439, i32 38 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1310, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant [31 x i8] c"twl4030_dapm_vibrapath_control\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 450, i32 38 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1315, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1316, i32 2 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1317, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1318, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1320, i32 2 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1326, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant [32 x i8] c"twl4030_dapm_micpathtx1_control\00", align 1
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 479, i32 38 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1328, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant [32 x i8] c"twl4030_dapm_micpathtx2_control\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 490, i32 38 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1332, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant [33 x i8] c"twl4030_dapm_analoglmic_controls\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 454, i32 38 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1336, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant [33 x i8] c"twl4030_dapm_analogrmic_controls\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 466, i32 38 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1341, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1343, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1346, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1349, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1353, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1355, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1359, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1361, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1363, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1366, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant [21 x i8] c"twl4030_dapm_widgets\00", align 1
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1148, i32 41 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 495, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.869 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.870 = private unnamed_addr constant [21 x i8] c".compoundliteral.159\00", align 1
@___asan_gen_.871 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.872 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 522, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant [25 x i8] c"twl4030_dapm_dbypass_tlv\00", align 1
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 514, i32 14 }
@___asan_gen_.879 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.880 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.881 = private unnamed_addr constant [26 x i8] c"twl4030_dapm_dbypassv_tlv\00", align 1
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 536, i32 8 }
@___asan_gen_.884 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 350, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 351, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 352, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 353, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant [21 x i8] c".compoundliteral.173\00", align 1
@___asan_gen_.901 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.902 = private unnamed_addr constant [21 x i8] c".compoundliteral.175\00", align 1
@___asan_gen_.903 = private unnamed_addr constant [21 x i8] c".compoundliteral.176\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 361, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant [21 x i8] c".compoundliteral.178\00", align 1
@___asan_gen_.908 = private unnamed_addr constant [21 x i8] c".compoundliteral.179\00", align 1
@___asan_gen_.909 = private unnamed_addr constant [21 x i8] c".compoundliteral.180\00", align 1
@___asan_gen_.910 = private unnamed_addr constant [21 x i8] c".compoundliteral.181\00", align 1
@___asan_gen_.911 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.912 = private unnamed_addr constant [21 x i8] c".compoundliteral.183\00", align 1
@___asan_gen_.913 = private unnamed_addr constant [21 x i8] c".compoundliteral.184\00", align 1
@___asan_gen_.914 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.915 = private unnamed_addr constant [21 x i8] c".compoundliteral.186\00", align 1
@___asan_gen_.916 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.917 = private unnamed_addr constant [21 x i8] c".compoundliteral.188\00", align 1
@___asan_gen_.918 = private unnamed_addr constant [21 x i8] c".compoundliteral.189\00", align 1
@___asan_gen_.919 = private unnamed_addr constant [21 x i8] c".compoundliteral.190\00", align 1
@___asan_gen_.920 = private unnamed_addr constant [21 x i8] c".compoundliteral.191\00", align 1
@___asan_gen_.921 = private unnamed_addr constant [21 x i8] c".compoundliteral.192\00", align 1
@___asan_gen_.922 = private unnamed_addr constant [21 x i8] c".compoundliteral.193\00", align 1
@___asan_gen_.923 = private unnamed_addr constant [21 x i8] c".compoundliteral.194\00", align 1
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 409, i32 1 }
@___asan_gen_.927 = private unnamed_addr constant [24 x i8] c"twl4030_handsfreel_enum\00", align 1
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 404, i32 8 }
@___asan_gen_.930 = private unnamed_addr constant [25 x i8] c"twl4030_handsfreel_texts\00", align 1
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 401, i32 20 }
@___asan_gen_.933 = private unnamed_addr constant [21 x i8] c".compoundliteral.196\00", align 1
@___asan_gen_.934 = private unnamed_addr constant [24 x i8] c"twl4030_handsfreer_enum\00", align 1
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 419, i32 8 }
@___asan_gen_.937 = private unnamed_addr constant [25 x i8] c"twl4030_handsfreer_texts\00", align 1
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 416, i32 20 }
@___asan_gen_.940 = private unnamed_addr constant [21 x i8] c".compoundliteral.197\00", align 1
@___asan_gen_.941 = private unnamed_addr constant [19 x i8] c"twl4030_vibra_enum\00", align 1
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 435, i32 8 }
@___asan_gen_.944 = private unnamed_addr constant [20 x i8] c"twl4030_vibra_texts\00", align 1
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 432, i32 20 }
@___asan_gen_.947 = private unnamed_addr constant [23 x i8] c"twl4030_vibrapath_enum\00", align 1
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 446, i32 8 }
@___asan_gen_.950 = private unnamed_addr constant [24 x i8] c"twl4030_vibrapath_texts\00", align 1
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 443, i32 20 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 444, i32 4 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 444, i32 22 }
@___asan_gen_.959 = private unnamed_addr constant [24 x i8] c"twl4030_micpathtx1_enum\00", align 1
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 475, i32 8 }
@___asan_gen_.962 = private unnamed_addr constant [25 x i8] c"twl4030_micpathtx1_texts\00", align 1
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 472, i32 20 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 473, i32 4 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 473, i32 14 }
@___asan_gen_.971 = private unnamed_addr constant [24 x i8] c"twl4030_micpathtx2_enum\00", align 1
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 486, i32 8 }
@___asan_gen_.974 = private unnamed_addr constant [25 x i8] c"twl4030_micpathtx2_texts\00", align 1
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 483, i32 20 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 484, i32 14 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 455, i32 2 }
@___asan_gen_.983 = private unnamed_addr constant [21 x i8] c".compoundliteral.204\00", align 1
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 457, i32 2 }
@___asan_gen_.987 = private unnamed_addr constant [21 x i8] c".compoundliteral.206\00", align 1
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 459, i32 2 }
@___asan_gen_.991 = private unnamed_addr constant [21 x i8] c".compoundliteral.208\00", align 1
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 461, i32 2 }
@___asan_gen_.995 = private unnamed_addr constant [21 x i8] c".compoundliteral.210\00", align 1
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 467, i32 2 }
@___asan_gen_.999 = private unnamed_addr constant [21 x i8] c".compoundliteral.212\00", align 1
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 468, i32 2 }
@___asan_gen_.1003 = private unnamed_addr constant [21 x i8] c".compoundliteral.214\00", align 1
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1371, i32 23 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1378, i32 3 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 253, i32 5 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 258, i32 13 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 260, i32 5 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 222, i32 9 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 201, i32 29 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 203, i32 29 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 205, i32 29 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 207, i32 34 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 211, i32 10 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2118, i32 10 }
@___asan_gen_.1052 = private unnamed_addr constant [21 x i8] c"twl4030_dai_hifi_ops\00", align 1
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2098, i32 37 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2136, i32 10 }
@___asan_gen_.1058 = private unnamed_addr constant [22 x i8] c"twl4030_dai_voice_ops\00", align 1
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2107, i32 37 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1819, i32 3 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1824, i32 3 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1752, i32 3 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1769, i32 3 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2016, i32 3 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2022, i32 3 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1933, i32 3 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1946, i32 3 }
@___asan_gen_.1115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1119 = private constant [30 x i8] c"../sound/soc/codecs/twl4030.c\00", align 1
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1987, i32 3 }
@llvm.compiler.used = appending global [340 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_twl4030_codec_driver_exit, ptr @__initcall__kmod_snd_soc_twl4030__295_2212_twl4030_codec_driver_init6, ptr @snd_soc_put_twl4030_opmode_enum_double._entry, ptr @snd_soc_put_twl4030_opmode_enum_double._entry_ptr, ptr @twl4030_codec_driver_exit, ptr @twl4030_hw_params._entry, ptr @twl4030_hw_params._entry.239, ptr @twl4030_hw_params._entry_ptr, ptr @twl4030_hw_params._entry_ptr.241, ptr @twl4030_init_chip._entry, ptr @twl4030_init_chip._entry.221, ptr @twl4030_init_chip._entry_ptr, ptr @twl4030_init_chip._entry_ptr.223, ptr @twl4030_set_dai_sysclk._entry, ptr @twl4030_set_dai_sysclk._entry.234, ptr @twl4030_set_dai_sysclk._entry_ptr, ptr @twl4030_set_dai_sysclk._entry_ptr.236, ptr @twl4030_voice_hw_params._entry, ptr @twl4030_voice_hw_params._entry_ptr, ptr @twl4030_voice_set_dai_sysclk._entry, ptr @twl4030_voice_set_dai_sysclk._entry.244, ptr @twl4030_voice_set_dai_sysclk._entry_ptr, ptr @twl4030_voice_set_dai_sysclk._entry_ptr.245, ptr @twl4030_voice_startup._entry, ptr @twl4030_voice_startup._entry.247, ptr @twl4030_voice_startup._entry_ptr, ptr @twl4030_voice_startup._entry_ptr.249, ptr @twl4030_codec_driver, ptr @.str, ptr @soc_component_dev_twl4030, ptr @twl4030_dai, ptr @twl4030_snd_controls, ptr @intercon, ptr @.str.1, ptr @twl4030_op_modes_enum, ptr @.str.2, ptr @digital_fine_tlv, ptr @.compoundliteral, ptr @.str.3, ptr @.compoundliteral.4, ptr @.str.5, ptr @digital_coarse_tlv, ptr @.compoundliteral.6, ptr @.str.7, ptr @.compoundliteral.8, ptr @.str.9, ptr @analog_tlv, ptr @.compoundliteral.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @digital_voice_downlink_tlv, ptr @.compoundliteral.18, ptr @.str.19, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @output_tvl, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @output_ear_tvl, ptr @.compoundliteral.30, ptr @.str.31, ptr @digital_capture_tlv, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @input_gain_tlv, ptr @.compoundliteral.36, ptr @.str.37, ptr @twl4030_avadc_clk_priority_enum, ptr @.str.38, ptr @twl4030_rampdelay_enum, ptr @.str.39, ptr @twl4030_vibradirmode_enum, ptr @.str.40, ptr @twl4030_vibradir_enum, ptr @.str.41, ptr @twl4030_digimicswap_enum, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @twl4030_op_modes_texts, ptr @.str.47, ptr @.str.48, ptr @twl4030_avadc_clk_priority_texts, ptr @.str.49, ptr @.str.50, ptr @twl4030_rampdelay_texts, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @twl4030_vibradirmode_texts, ptr @.str.59, ptr @twl4030_vibradir_texts, ptr @.str.60, ptr @.str.61, ptr @twl4030_digimicswap_texts, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @twl4030_dapm_abypassr1_control, ptr @.str.93, ptr @twl4030_dapm_abypassl1_control, ptr @.str.94, ptr @twl4030_dapm_abypassr2_control, ptr @.str.95, ptr @twl4030_dapm_abypassl2_control, ptr @.str.96, ptr @twl4030_dapm_abypassv_control, ptr @.str.97, ptr @.str.98, ptr @twl4030_dapm_dbypassl_control, ptr @.str.99, ptr @twl4030_dapm_dbypassr_control, ptr @.str.100, ptr @twl4030_dapm_dbypassv_control, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @twl4030_dapm_earpiece_controls, ptr @.str.114, ptr @.str.115, ptr @twl4030_dapm_predrivel_controls, ptr @.str.116, ptr @.str.117, ptr @twl4030_dapm_predriver_controls, ptr @.str.118, ptr @.str.119, ptr @twl4030_dapm_hsol_controls, ptr @.str.120, ptr @.str.121, ptr @twl4030_dapm_hsor_controls, ptr @.str.122, ptr @.str.123, ptr @twl4030_dapm_carkitl_controls, ptr @.str.124, ptr @.str.125, ptr @twl4030_dapm_carkitr_controls, ptr @.str.126, ptr @.str.127, ptr @twl4030_dapm_handsfreel_control, ptr @.str.128, ptr @twl4030_dapm_handsfreelmute_control, ptr @.str.129, ptr @.str.130, ptr @twl4030_dapm_handsfreer_control, ptr @.str.131, ptr @twl4030_dapm_handsfreermute_control, ptr @.str.132, ptr @.str.133, ptr @twl4030_dapm_vibra_control, ptr @.str.134, ptr @twl4030_dapm_vibrapath_control, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @twl4030_dapm_micpathtx1_control, ptr @.str.142, ptr @twl4030_dapm_micpathtx2_control, ptr @.str.143, ptr @twl4030_dapm_analoglmic_controls, ptr @.str.144, ptr @twl4030_dapm_analogrmic_controls, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @twl4030_dapm_widgets, ptr @.str.156, ptr @.compoundliteral.157, ptr @.compoundliteral.158, ptr @.compoundliteral.159, ptr @.compoundliteral.160, ptr @.compoundliteral.161, ptr @.str.162, ptr @twl4030_dapm_dbypass_tlv, ptr @.compoundliteral.163, ptr @.compoundliteral.164, ptr @twl4030_dapm_dbypassv_tlv, ptr @.compoundliteral.165, ptr @.str.166, ptr @.compoundliteral.167, ptr @.str.168, ptr @.compoundliteral.169, ptr @.str.170, ptr @.compoundliteral.171, ptr @.str.172, ptr @.compoundliteral.173, ptr @.compoundliteral.174, ptr @.compoundliteral.175, ptr @.compoundliteral.176, ptr @.str.177, ptr @.compoundliteral.178, ptr @.compoundliteral.179, ptr @.compoundliteral.180, ptr @.compoundliteral.181, ptr @.compoundliteral.182, ptr @.compoundliteral.183, ptr @.compoundliteral.184, ptr @.compoundliteral.185, ptr @.compoundliteral.186, ptr @.compoundliteral.187, ptr @.compoundliteral.188, ptr @.compoundliteral.189, ptr @.compoundliteral.190, ptr @.compoundliteral.191, ptr @.compoundliteral.192, ptr @.compoundliteral.193, ptr @.compoundliteral.194, ptr @.str.195, ptr @twl4030_handsfreel_enum, ptr @twl4030_handsfreel_texts, ptr @.compoundliteral.196, ptr @twl4030_handsfreer_enum, ptr @twl4030_handsfreer_texts, ptr @.compoundliteral.197, ptr @twl4030_vibra_enum, ptr @twl4030_vibra_texts, ptr @twl4030_vibrapath_enum, ptr @twl4030_vibrapath_texts, ptr @.str.198, ptr @.str.199, ptr @twl4030_micpathtx1_enum, ptr @twl4030_micpathtx1_texts, ptr @.str.200, ptr @.str.201, ptr @twl4030_micpathtx2_enum, ptr @twl4030_micpathtx2_texts, ptr @.str.202, ptr @.str.203, ptr @.compoundliteral.204, ptr @.str.205, ptr @.compoundliteral.206, ptr @.str.207, ptr @.compoundliteral.208, ptr @.str.209, ptr @.compoundliteral.210, ptr @.str.211, ptr @.compoundliteral.212, ptr @.str.213, ptr @.compoundliteral.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.222, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @twl4030_dai_hifi_ops, ptr @.str.231, ptr @twl4030_dai_voice_ops, ptr @.str.232, ptr @.str.233, ptr @.str.235, ptr @.str.237, ptr @.str.238, ptr @.str.240, ptr @.str.242, ptr @.str.243, ptr @.str.246, ptr @.str.248, ptr @.str.250], section "llvm.metadata"
@0 = internal global [320 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_codec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_twl4030 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_snd_controls to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intercon to i32), i32 7592, i32 9504, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_op_modes_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_fine_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_coarse_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_voice_downlink_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_tvl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_ear_tvl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_capture_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_avadc_clk_priority_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_rampdelay_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_vibradirmode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_vibradir_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_digimicswap_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_put_twl4030_opmode_enum_double._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_op_modes_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_avadc_clk_priority_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_rampdelay_texts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_vibradirmode_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_vibradir_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_digimicswap_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_abypassr1_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_abypassl1_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_abypassr2_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_abypassl2_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_abypassv_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_dbypassl_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_dbypassr_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_dbypassv_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_earpiece_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_predrivel_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_predriver_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_hsol_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_hsor_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_carkitl_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_carkitr_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_handsfreel_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_handsfreelmute_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_handsfreer_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_handsfreermute_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_vibra_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_vibrapath_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_micpathtx1_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_micpathtx2_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_analoglmic_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_analogrmic_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_widgets to i32), i32 16020, i32 20032, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.159 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_dbypass_tlv to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dapm_dbypassv_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.173 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.175 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.176 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.178 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.179 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.180 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.181 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.183 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.184 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.186 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.188 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.189 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.190 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.191 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.192 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.193 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.194 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_handsfreel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_handsfreel_texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.196 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_handsfreer_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_handsfreer_texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.197 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_vibra_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_vibra_texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_vibrapath_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_vibrapath_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_micpathtx1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_micpathtx1_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_micpathtx2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_micpathtx2_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.204 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.206 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.208 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.210 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.212 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.214 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_init_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_init_chip._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dai_hifi_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_dai_voice_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_set_dai_sysclk._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_hw_params._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_voice_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_voice_set_dai_sysclk._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_voice_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_voice_startup._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_voice_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_codec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl4030_codec_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_codec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl4030_codec_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_codec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_twl4030, ptr noundef nonnull @twl4030_dai, i32 noundef 2) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_soc_probe(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  %val.addr.i.i279.i = alloca i8, align 1
  %value.i272.i = alloca i8, align 1
  %val.addr.i.i261.i = alloca i8, align 1
  %value.i254.i = alloca i8, align 1
  %val.addr.i.i248.i = alloca i8, align 1
  %val.addr.i.i242.i = alloca i8, align 1
  %val.addr.i.i235.i = alloca i8, align 1
  %value.i228.i = alloca i8, align 1
  %val.addr.i.i222.i = alloca i8, align 1
  %val.addr.i.i216.i = alloca i8, align 1
  %val.addr.i.i209.i = alloca i8, align 1
  %value.i202.i = alloca i8, align 1
  %val.addr.i.i196.i = alloca i8, align 1
  %val.addr.i.i190.i = alloca i8, align 1
  %val.addr.i.i183.i = alloca i8, align 1
  %value.i176.i = alloca i8, align 1
  %val.addr.i.i170.i = alloca i8, align 1
  %val.addr.i.i164.i = alloca i8, align 1
  %val.addr.i.i157.i = alloca i8, align 1
  %value.i150.i = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %val.addr.i.i143.i = alloca i8, align 1
  %val.addr.i.i137.i = alloca i8, align 1
  %val.addr.i.i.i = alloca i8, align 1
  %value.i.i = alloca i8, align 1
  %value.i.i.i = alloca i32, align 4
  %byte.i = alloca i8, align 1
  %pin_mux.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 56, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @twl4030_audio_get_mclk() #6
  %div = udiv i32 %call1, 1000
  %sysclk = getelementptr inbounds %struct.twl4030_priv, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div, ptr %sysclk, align 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i) #6
  %10 = ptrtoint ptr %byte.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %byte.i, align 1, !annotation !535
  %platform_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 7
  %11 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platform_data.i.i.i, align 8
  %parent.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i.i, align 8
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node.i.i, align 8
  %call2.i.i = tail call ptr @of_get_child_by_name(ptr noundef %16, ptr noundef nonnull @.str.224) #6
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end.land.lhs.true.i_crit_edge

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

land.lhs.true.i.i:                                ; preds = %if.end
  %tobool3.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.if.then33.critedge.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.then33.critedge.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33.critedge.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %18, i32 noundef 20, i32 noundef 3520) #6
  %tobool6.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end.i.i

if.then7.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @of_node_put(ptr noundef nonnull %call2.i.i) #6
  br label %if.then33.critedge.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i) #6
  %19 = ptrtoint ptr %value.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %value.i.i.i, align 4, !annotation !535
  %call.i.i.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call2.i.i, ptr noundef nonnull @.str.225, ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 0) #6
  %ramp_delay_value.i.i.i = getelementptr inbounds %struct.twl4030_codec_data, ptr %call.i.i.i, i32 0, i32 1
  %call.i.i23.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call2.i.i, ptr noundef nonnull @.str.226, ptr noundef %ramp_delay_value.i.i.i, i32 noundef 1, i32 noundef 0) #6
  %offset_cncl_path.i.i.i = getelementptr inbounds %struct.twl4030_codec_data, ptr %call.i.i.i, i32 0, i32 2
  %call.i.i24.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call2.i.i, ptr noundef nonnull @.str.227, ptr noundef %offset_cncl_path.i.i.i, i32 noundef 1, i32 noundef 0) #6
  %call.i.i25.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call2.i.i, ptr noundef nonnull @.str.228, ptr noundef nonnull %value.i.i.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i25.i.i.i)
  %tobool.not.i.i.i = icmp sgt i32 %call.i.i25.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.i.if.end.i.i.i_crit_edge

if.end.i.i.if.end.i.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %value.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value.i.i.i, align 4
  %hs_extmute.i.i.i = getelementptr inbounds %struct.twl4030_codec_data, ptr %call.i.i.i, i32 0, i32 3
  %22 = trunc i32 %21 to i8
  %23 = ptrtoint ptr %hs_extmute.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i.i.i = load i8, ptr %hs_extmute.i.i.i, align 4
  %bf.shl.i.i.i = shl i8 %22, 7
  %bf.clear.i.i.i = and i8 %bf.load.i.i.i, 127
  %bf.set.i.i.i = or i8 %bf.clear.i.i.i, %bf.shl.i.i.i
  store i8 %bf.set.i.i.i, ptr %hs_extmute.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end.i.i.if.end.i.i.i_crit_edge
  %call.i.i.i.i = call i32 @of_get_named_gpio_flags(ptr noundef nonnull %call2.i.i, ptr noundef nonnull @.str.229, i32 noundef 0, ptr noundef null) #6
  %hs_extmute_gpio.i.i.i = getelementptr inbounds %struct.twl4030_codec_data, ptr %call.i.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %hs_extmute_gpio.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call.i.i.i.i, ptr %hs_extmute_gpio.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i.i.i.i)
  %25 = icmp ult i32 %call.i.i.i.i, 2048
  br i1 %25, label %if.then7.i.i.i, label %if.end.i.i.i.twl4030_setup_pdata_of.exit.i.i_crit_edge

if.end.i.i.i.twl4030_setup_pdata_of.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_setup_pdata_of.exit.i.i

if.then7.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %hs_extmute8.i.i.i = getelementptr inbounds %struct.twl4030_codec_data, ptr %call.i.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %hs_extmute8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load9.i.i.i = load i8, ptr %hs_extmute8.i.i.i, align 4
  %bf.set11.i.i.i = or i8 %bf.load9.i.i.i, -128
  store i8 %bf.set11.i.i.i, ptr %hs_extmute8.i.i.i, align 4
  br label %twl4030_setup_pdata_of.exit.i.i

twl4030_setup_pdata_of.exit.i.i:                  ; preds = %if.then7.i.i.i, %if.end.i.i.i.twl4030_setup_pdata_of.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i) #6
  call void @of_node_put(ptr noundef nonnull %call2.i.i) #6
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %twl4030_setup_pdata_of.exit.i.i, %if.end.land.lhs.true.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.land.lhs.true.i_crit_edge ], [ %call.i.i.i, %twl4030_setup_pdata_of.exit.i.i ]
  %hs_extmute.i = getelementptr inbounds %struct.twl4030_codec_data, ptr %retval.0.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %hs_extmute.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %hs_extmute.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool2.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool2.not.i, label %if.end34.critedge115.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %hs_extmute_gpio.i = getelementptr inbounds %struct.twl4030_codec_data, ptr %retval.0.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %hs_extmute_gpio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hs_extmute_gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %29)
  %30 = icmp ult i32 %29, 2048
  br i1 %30, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool6.not.i = icmp eq i32 %29, 0
  br i1 %tobool6.not.i, label %do.end.i, label %if.then4.i.if.end.i_crit_edge

if.then4.i.if.end.i_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.217) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then4.i.if.end.i_crit_edge
  %33 = ptrtoint ptr %hs_extmute_gpio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hs_extmute_gpio.i, align 4
  %call9.i = call i32 @gpio_request_one(i32 noundef %34, i32 noundef 0, ptr noundef nonnull @.str.220) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end34.critedge.i, label %do.end14.i

do.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.222) #9
  %37 = ptrtoint ptr %hs_extmute_gpio.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %hs_extmute_gpio.i, align 4
  call fastcc void @tw4030_init_ctl_cache(ptr noundef %9) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #6
  %38 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %value.i.i, align 1
  %call.i.i130.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i.i, i8 noundef zeroext 62, i32 noundef 1) #6
  %39 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %value.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  %41 = or i8 %40, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  %42 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %val.addr.i.i.i, align 1
  %call.i.i134.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext 62, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i137.i) #6
  %43 = ptrtoint ptr %val.addr.i.i137.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -61, ptr %val.addr.i.i137.i, align 1
  %call.i.i140.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i137.i, i8 noundef zeroext 2, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i137.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i143.i) #6
  %44 = ptrtoint ptr %val.addr.i.i143.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 50, ptr %val.addr.i.i143.i, align 1
  %call.i.i146.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i143.i, i8 noundef zeroext 28, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i143.i) #6
  br label %if.end34.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pin_mux.i) #6
  %45 = ptrtoint ptr %pin_mux.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %pin_mux.i, align 1, !annotation !535
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 11, ptr noundef nonnull %pin_mux.i, i8 noundef zeroext 13, i32 noundef 1) #6
  %46 = ptrtoint ptr %pin_mux.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pin_mux.i, align 1
  %48 = and i8 %47, -13
  %49 = or i8 %48, 8
  store i8 %49, ptr %pin_mux.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %50 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %val.addr.i.i, align 1
  %call.i149.i = call i32 @twl_i2c_write(i8 noundef zeroext 11, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 13, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pin_mux.i) #6
  call fastcc void @tw4030_init_ctl_cache(ptr noundef %9) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i150.i) #6
  %51 = ptrtoint ptr %value.i150.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %value.i150.i, align 1
  %call.i.i154.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i150.i, i8 noundef zeroext 62, i32 noundef 1) #6
  %52 = ptrtoint ptr %value.i150.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %value.i150.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i150.i) #6
  %54 = or i8 %53, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i157.i) #6
  %55 = ptrtoint ptr %val.addr.i.i157.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %val.addr.i.i157.i, align 1
  %call.i.i161.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i157.i, i8 noundef zeroext 62, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i157.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i164.i) #6
  %56 = ptrtoint ptr %val.addr.i.i164.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -61, ptr %val.addr.i.i164.i, align 1
  %call.i.i167.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i164.i, i8 noundef zeroext 2, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i164.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i170.i) #6
  %57 = ptrtoint ptr %val.addr.i.i170.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 50, ptr %val.addr.i.i170.i, align 1
  %call.i.i173.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i170.i, i8 noundef zeroext 28, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i170.i) #6
  br label %if.end34.i

if.then33.critedge.i:                             ; preds = %if.then7.i.i, %land.lhs.true.i.i.if.then33.critedge.i_crit_edge
  tail call fastcc void @tw4030_init_ctl_cache(ptr noundef %9) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i176.i) #6
  %58 = ptrtoint ptr %value.i176.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %value.i176.i, align 1
  %call.i.i180.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i176.i, i8 noundef zeroext 62, i32 noundef 1) #6
  %59 = ptrtoint ptr %value.i176.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %value.i176.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i176.i) #6
  %61 = or i8 %60, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i183.i) #6
  %62 = ptrtoint ptr %val.addr.i.i183.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %val.addr.i.i183.i, align 1
  %call.i.i187.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i183.i, i8 noundef zeroext 62, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i183.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i190.i) #6
  %63 = ptrtoint ptr %val.addr.i.i190.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -61, ptr %val.addr.i.i190.i, align 1
  %call.i.i193.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i190.i, i8 noundef zeroext 2, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i190.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i196.i) #6
  %64 = ptrtoint ptr %val.addr.i.i196.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 50, ptr %val.addr.i.i196.i, align 1
  %call.i.i199.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i196.i, i8 noundef zeroext 28, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i196.i) #6
  br label %twl4030_init_chip.exit

if.end34.critedge.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @tw4030_init_ctl_cache(ptr noundef %9) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i202.i) #6
  %65 = ptrtoint ptr %value.i202.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %value.i202.i, align 1
  %call.i.i206.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i202.i, i8 noundef zeroext 62, i32 noundef 1) #6
  %66 = ptrtoint ptr %value.i202.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %value.i202.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i202.i) #6
  %68 = or i8 %67, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i209.i) #6
  %69 = ptrtoint ptr %val.addr.i.i209.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %val.addr.i.i209.i, align 1
  %call.i.i213.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i209.i, i8 noundef zeroext 62, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i209.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i216.i) #6
  %70 = ptrtoint ptr %val.addr.i.i216.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -61, ptr %val.addr.i.i216.i, align 1
  %call.i.i219.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i216.i, i8 noundef zeroext 2, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i216.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i222.i) #6
  %71 = ptrtoint ptr %val.addr.i.i222.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 50, ptr %val.addr.i.i222.i, align 1
  %call.i.i225.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i222.i, i8 noundef zeroext 28, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i222.i) #6
  br label %if.end34.i

if.end34.critedge115.i:                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @tw4030_init_ctl_cache(ptr noundef %9) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i228.i) #6
  %72 = ptrtoint ptr %value.i228.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %value.i228.i, align 1
  %call.i.i232.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i228.i, i8 noundef zeroext 62, i32 noundef 1) #6
  %73 = ptrtoint ptr %value.i228.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %value.i228.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i228.i) #6
  %75 = or i8 %74, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i235.i) #6
  %76 = ptrtoint ptr %val.addr.i.i235.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %val.addr.i.i235.i, align 1
  %call.i.i239.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i235.i, i8 noundef zeroext 62, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i235.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i242.i) #6
  %77 = ptrtoint ptr %val.addr.i.i242.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -61, ptr %val.addr.i.i242.i, align 1
  %call.i.i245.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i242.i, i8 noundef zeroext 2, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i242.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i248.i) #6
  %78 = ptrtoint ptr %val.addr.i.i248.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 50, ptr %val.addr.i.i248.i, align 1
  %call.i.i251.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i248.i, i8 noundef zeroext 28, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i248.i) #6
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end34.critedge115.i, %if.end34.critedge.i, %if.else.i, %do.end14.i
  %pdata35.i = getelementptr inbounds %struct.twl4030_priv, ptr %9, i32 0, i32 17
  %79 = ptrtoint ptr %pdata35.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %retval.0.i.i, ptr %pdata35.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i254.i) #6
  %80 = ptrtoint ptr %value.i254.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %value.i254.i, align 1
  %call.i.i258.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i254.i, i8 noundef zeroext 36, i32 noundef 1) #6
  %81 = ptrtoint ptr %value.i254.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %value.i254.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i254.i) #6
  %83 = and i8 %82, -29
  %ramp_delay_value.i = getelementptr inbounds %struct.twl4030_codec_data, ptr %retval.0.i.i, i32 0, i32 1
  %84 = ptrtoint ptr %ramp_delay_value.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ramp_delay_value.i, align 4
  %.tr.i = trunc i32 %85 to i8
  %86 = shl i8 %.tr.i, 2
  %.pre.i264.i = or i8 %86, %83
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i261.i) #6
  %87 = ptrtoint ptr %val.addr.i.i261.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %.pre.i264.i, ptr %val.addr.i.i261.i, align 1
  %call.i.i265.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i261.i, i8 noundef zeroext 36, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i261.i) #6
  %88 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i269.i = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 8
  %90 = ptrtoint ptr %driver_data.i.i.i269.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %driver_data.i.i.i269.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %93)
  %cmp.i.i = icmp eq i32 %93, 1
  br i1 %cmp.i.i, label %if.end34.i.twl4030_codec_enable.exit.i_crit_edge, label %if.end.i270.i

if.end34.i.twl4030_codec_enable.exit.i_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_codec_enable.exit.i

if.end.i270.i:                                    ; preds = %if.end34.i
  %call2.i271.i = call i32 @twl4030_audio_enable_resource(i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i271.i)
  %cmp5.i.i = icmp sgt i32 %call2.i271.i, -1
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end.i270.i.if.end8.i.i_crit_edge

if.end.i270.i.if.end8.i.i_crit_edge:              ; preds = %if.end.i270.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i

if.then6.i.i:                                     ; preds = %if.end.i270.i
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %91, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then6.i.i, %if.end.i270.i.if.end8.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %95(i32 noundef 2147480) #6
  br label %twl4030_codec_enable.exit.i

twl4030_codec_enable.exit.i:                      ; preds = %if.end8.i.i, %if.end34.i.twl4030_codec_enable.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i272.i) #6
  %96 = ptrtoint ptr %value.i272.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %value.i272.i, align 1
  %call.i.i276.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i272.i, i8 noundef zeroext 5, i32 noundef 1) #6
  %97 = ptrtoint ptr %value.i272.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %value.i272.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i272.i) #6
  %99 = and i8 %98, 31
  %offset_cncl_path.i = getelementptr inbounds %struct.twl4030_codec_data, ptr %retval.0.i.i, i32 0, i32 2
  %100 = ptrtoint ptr %offset_cncl_path.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %offset_cncl_path.i, align 4
  %102 = trunc i32 %101 to i8
  %103 = or i8 %99, %102
  %.pre.i282.i = or i8 %103, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i279.i) #6
  %104 = ptrtoint ptr %val.addr.i.i279.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %.pre.i282.i, ptr %val.addr.i.i279.i, align 1
  %call.i.i283.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i279.i, i8 noundef zeroext 5, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i279.i) #6
  call void @msleep(i32 noundef 20) #6
  br label %do.body57.i

do.body57.i:                                      ; preds = %land.rhs.i.do.body57.i_crit_edge, %twl4030_codec_enable.exit.i
  %i.0.i = phi i32 [ 0, %twl4030_codec_enable.exit.i ], [ %inc.i, %land.rhs.i.do.body57.i_crit_edge ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %call58.i = call i32 @twl_set_regcache_bypass(i8 noundef zeroext 9, i1 noundef zeroext true) #6
  %call.i286.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %byte.i, i8 noundef zeroext 5, i32 noundef 1) #6
  %call60.i = call i32 @twl_set_regcache_bypass(i8 noundef zeroext 9, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0.i)
  %exitcond.not.i = icmp eq i32 %i.0.i, 100
  br i1 %exitcond.not.i, label %do.body57.i.do.end67.i_crit_edge, label %land.rhs.i

do.body57.i.do.end67.i_crit_edge:                 ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67.i

land.rhs.i:                                       ; preds = %do.body57.i
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %105 = ptrtoint ptr %byte.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %byte.i, align 1
  %cmp65.i = icmp slt i8 %106, 0
  br i1 %cmp65.i, label %land.rhs.i.do.body57.i_crit_edge, label %land.rhs.i.do.end67.i_crit_edge

land.rhs.i.do.end67.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67.i

land.rhs.i.do.body57.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57.i

do.end67.i:                                       ; preds = %land.rhs.i.do.end67.i_crit_edge, %do.body57.i.do.end67.i_crit_edge
  %107 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i288.i = getelementptr inbounds %struct.device, ptr %108, i32 0, i32 8
  %109 = ptrtoint ptr %driver_data.i.i.i288.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %driver_data.i.i.i288.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp.i289.i = icmp eq i32 %112, 0
  br i1 %cmp.i289.i, label %do.end67.i.twl4030_init_chip.exit_crit_edge, label %if.end.i290.i

do.end67.i.twl4030_init_chip.exit_crit_edge:      ; preds = %do.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_init_chip.exit

if.end.i290.i:                                    ; preds = %do.end67.i
  %call3.i.i = call i32 @twl4030_audio_disable_resource(i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i.i)
  %cmp5.i291.i = icmp sgt i32 %call3.i.i, -1
  br i1 %cmp5.i291.i, label %if.then6.i292.i, label %if.end.i290.i.if.end8.i293.i_crit_edge

if.end.i290.i.if.end8.i293.i_crit_edge:           ; preds = %if.end.i290.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i293.i

if.then6.i292.i:                                  ; preds = %if.end.i290.i
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %110, align 4
  br label %if.end8.i293.i

if.end8.i293.i:                                   ; preds = %if.then6.i292.i, %if.end.i290.i.if.end8.i293.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %114(i32 noundef 2147480) #6
  br label %twl4030_init_chip.exit

twl4030_init_chip.exit:                           ; preds = %if.end8.i293.i, %do.end67.i.twl4030_init_chip.exit_crit_edge, %if.then33.critedge.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i) #6
  br label %cleanup

cleanup:                                          ; preds = %twl4030_init_chip.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %twl4030_init_chip.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_soc_remove(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pdata1 = getelementptr inbounds %struct.twl4030_priv, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %hs_extmute = getelementptr inbounds %struct.twl4030_codec_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %hs_extmute to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %hs_extmute, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %hs_extmute_gpio = getelementptr inbounds %struct.twl4030_codec_data, ptr %5, i32 0, i32 4
  %7 = ptrtoint ptr %hs_extmute_gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hs_extmute_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %8)
  %9 = icmp ult i32 %8, 2048
  br i1 %9, label %if.then, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpio_free(i32 noundef %8) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_read(ptr nocapture noundef readonly %component, i32 noundef %reg) #2 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #6
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %value, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %reg)
  %cmp = icmp ugt i32 %reg, 73
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 33, label %if.end.sw.bb_crit_edge
    i32 37, label %if.end.sw.bb_crit_edge7
    i32 38, label %if.end.sw.bb_crit_edge8
    i32 39, label %if.end.sw.bb_crit_edge9
    i32 40, label %if.end.sw.bb_crit_edge10
    i32 35, label %if.end.sw.bb_crit_edge11
  ]

if.end.sw.bb_crit_edge11:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge10:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge9:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge8:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge7:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge7, %if.end.sw.bb_crit_edge8, %if.end.sw.bb_crit_edge9, %if.end.sw.bb_crit_edge10, %if.end.sw.bb_crit_edge11
  %sub = add nsw i32 %reg, -33
  %arrayidx = getelementptr %struct.twl4030_priv, ptr %3, i32 0, i32 16, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %value, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %reg to i8
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value, i8 noundef zeroext %conv, i32 noundef 1) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %value, align 1
  %conv2 = zext i8 %10 to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv2, %sw.epilog ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_write(ptr nocapture noundef readonly %component, i32 noundef %reg, i32 noundef %value) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %reg, label %entry.if.then_crit_edge [
    i32 33, label %entry.sw.bb_crit_edge
    i32 37, label %entry.sw.bb_crit_edge13
    i32 38, label %entry.sw.bb_crit_edge14
    i32 39, label %entry.sw.bb_crit_edge15
    i32 40, label %entry.sw.bb_crit_edge16
    i32 35, label %entry.sw.bb_crit_edge17
  ]

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = trunc i32 %value to i8
  br label %if.then

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge13, %entry.sw.bb_crit_edge14, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16, %entry.sw.bb_crit_edge17
  %conv = trunc i32 %value to i8
  %sub = add nsw i32 %reg, -33
  %arrayidx = getelementptr %struct.twl4030_priv, ptr %3, i32 0, i32 16, i32 %sub
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx, align 1
  %6 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %reg, label %sw.bb.if.then_crit_edge [
    i32 33, label %sw.bb.i
    i32 37, label %sw.bb1.i
    i32 38, label %sw.bb5.i
    i32 39, label %sw.bb9.i
    i32 40, label %twl4030_can_write_to_chip.exit
    i32 35, label %sw.bb17.i
  ]

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.bb.i:                                          ; preds = %sw.bb
  %earpiece_enabled.i = getelementptr inbounds %struct.twl4030_priv, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %earpiece_enabled.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %earpiece_enabled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.not = icmp eq i8 %8, 0
  br i1 %tobool.not.i.not, label %sw.bb.i.cleanup_crit_edge, label %sw.bb.i.if.then_crit_edge

sw.bb.i.if.then_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb
  %predrivel_enabled.i = getelementptr inbounds %struct.twl4030_priv, ptr %3, i32 0, i32 12
  %9 = ptrtoint ptr %predrivel_enabled.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %predrivel_enabled.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not.i.not = icmp eq i8 %10, 0
  br i1 %tobool2.not.i.not, label %sw.bb1.i.cleanup_crit_edge, label %sw.bb1.i.if.then_crit_edge

sw.bb1.i.if.then_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb5.i:                                         ; preds = %sw.bb
  %predriver_enabled.i = getelementptr inbounds %struct.twl4030_priv, ptr %3, i32 0, i32 13
  %11 = ptrtoint ptr %predriver_enabled.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %predriver_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not.i.not = icmp eq i8 %12, 0
  br i1 %tobool6.not.i.not, label %sw.bb5.i.cleanup_crit_edge, label %sw.bb5.i.if.then_crit_edge

sw.bb5.i.if.then_crit_edge:                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.bb5.i.cleanup_crit_edge:                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb9.i:                                         ; preds = %sw.bb
  %carkitl_enabled.i = getelementptr inbounds %struct.twl4030_priv, ptr %3, i32 0, i32 14
  %13 = ptrtoint ptr %carkitl_enabled.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %carkitl_enabled.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not.i.not = icmp eq i8 %14, 0
  br i1 %tobool10.not.i.not, label %sw.bb9.i.cleanup_crit_edge, label %sw.bb9.i.if.then_crit_edge

sw.bb9.i.if.then_crit_edge:                       ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.bb9.i.cleanup_crit_edge:                       ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb17.i:                                        ; preds = %sw.bb
  %hsl_enabled.i = getelementptr inbounds %struct.twl4030_priv, ptr %3, i32 0, i32 9
  %15 = ptrtoint ptr %hsl_enabled.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hsl_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool18.not.i = icmp eq i8 %16, 0
  br i1 %tobool18.not.i, label %lor.lhs.false.i, label %sw.bb17.i.if.then_crit_edge

sw.bb17.i.if.then_crit_edge:                      ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.i:                                  ; preds = %sw.bb17.i
  %hsr_enabled.i = getelementptr inbounds %struct.twl4030_priv, ptr %3, i32 0, i32 10
  %17 = ptrtoint ptr %hsr_enabled.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hsr_enabled.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool20.not.i = icmp eq i8 %18, 0
  br i1 %tobool20.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false.i.if.then_crit_edge

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

twl4030_can_write_to_chip.exit:                   ; preds = %sw.bb
  %carkitr_enabled.i = getelementptr inbounds %struct.twl4030_priv, ptr %3, i32 0, i32 15
  %19 = ptrtoint ptr %carkitr_enabled.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %carkitr_enabled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool14.not.i.not = icmp eq i8 %20, 0
  br i1 %tobool14.not.i.not, label %twl4030_can_write_to_chip.exit.cleanup_crit_edge, label %twl4030_can_write_to_chip.exit.if.then_crit_edge

twl4030_can_write_to_chip.exit.if.then_crit_edge: ; preds = %twl4030_can_write_to_chip.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

twl4030_can_write_to_chip.exit.cleanup_crit_edge: ; preds = %twl4030_can_write_to_chip.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %twl4030_can_write_to_chip.exit.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %sw.bb17.i.if.then_crit_edge, %sw.bb9.i.if.then_crit_edge, %sw.bb5.i.if.then_crit_edge, %sw.bb1.i.if.then_crit_edge, %sw.bb.i.if.then_crit_edge, %sw.bb.if.then_crit_edge, %entry.if.then_crit_edge
  %conv2.pre-phi = phi i8 [ %.pre, %entry.if.then_crit_edge ], [ %conv, %sw.bb17.i.if.then_crit_edge ], [ %conv, %lor.lhs.false.i.if.then_crit_edge ], [ %conv, %sw.bb.if.then_crit_edge ], [ %conv, %sw.bb9.i.if.then_crit_edge ], [ %conv, %sw.bb5.i.if.then_crit_edge ], [ %conv, %sw.bb1.i.if.then_crit_edge ], [ %conv, %sw.bb.i.if.then_crit_edge ], [ %conv, %twl4030_can_write_to_chip.exit.if.then_crit_edge ]
  %conv3 = trunc i32 %reg to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %21 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv2.pre-phi, ptr %val.addr.i, align 1
  %call.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i, i8 noundef zeroext %conv3, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %twl4030_can_write_to_chip.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %sw.bb9.i.cleanup_crit_edge, %sw.bb5.i.cleanup_crit_edge, %sw.bb1.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %twl4030_can_write_to_chip.exit.cleanup_crit_edge ], [ 0, %sw.bb.i.cleanup_crit_edge ], [ 0, %sw.bb1.i.cleanup_crit_edge ], [ 0, %sw.bb5.i.cleanup_crit_edge ], [ 0, %sw.bb9.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.253)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb1
    i32 1, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %1 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp eq i32 %8, 1
  br i1 %cmp.i, label %if.then.sw.epilog_crit_edge, label %if.end.i

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then
  %call2.i = tail call i32 @twl4030_audio_enable_resource(i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp5.i = icmp sgt i32 %call2.i, -1
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i.sw.epilog.sink.split_crit_edge

if.end.i.sw.epilog.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %6, align 4
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  %dev.i.i4 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %10 = ptrtoint ptr %dev.i.i4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i4, align 4
  %driver_data.i.i.i5 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i5, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i6 = icmp eq i32 %15, 0
  br i1 %cmp.i6, label %sw.bb1.sw.epilog_crit_edge, label %if.end.i7

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i7:                                        ; preds = %sw.bb1
  %call3.i = tail call i32 @twl4030_audio_disable_resource(i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp5.i8 = icmp sgt i32 %call3.i, -1
  br i1 %cmp5.i8, label %if.then6.i9, label %if.end.i7.sw.epilog.sink.split_crit_edge

if.end.i7.sw.epilog.sink.split_crit_edge:         ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.then6.i9:                                      ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %13, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then6.i9, %if.end.i7.sw.epilog.sink.split_crit_edge, %if.then6.i, %if.end.i.sw.epilog.sink.split_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb1.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_soc_put_twl4030_opmode_enum_double(ptr noundef %kcontrol, ptr noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %configured = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %configured to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %configured, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.42) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @snd_soc_put_enum_double(ptr noundef %kcontrol, ptr noundef %ucontrol) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_soc_get_volsw_r2_twl4030(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #2 align 64 {
entry:
  %value.i47 = alloca i8, align 1
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %reg1 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg1, align 4
  %rreg = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rreg, align 4
  %shift2 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 5
  %9 = ptrtoint ptr %shift2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift2, align 4
  %max3 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %max3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 true) #6, !range !536
  %sub.i = sub nuw nsw i32 32, %13
  %sub.i.op = shl nsw i32 -1, %sub.i
  %sub.i.op.op = xor i32 %sub.i.op, -1
  %sub = select i1 %tobool.not.i, i32 0, i32 %sub.i.op.op
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %18 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %6)
  %cmp.i = icmp ugt i32 %6, 73
  br i1 %cmp.i, label %entry.twl4030_read.exit_crit_edge, label %if.end.i

entry.twl4030_read.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_read.exit

if.end.i:                                         ; preds = %entry
  %19 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.254)
  switch i32 %6, label %sw.default.i [
    i32 33, label %if.end.i.sw.bb.i_crit_edge
    i32 37, label %if.end.i.sw.bb.i_crit_edge63
    i32 38, label %if.end.i.sw.bb.i_crit_edge64
    i32 39, label %if.end.i.sw.bb.i_crit_edge65
    i32 40, label %if.end.i.sw.bb.i_crit_edge66
    i32 35, label %if.end.i.sw.bb.i_crit_edge67
  ]

if.end.i.sw.bb.i_crit_edge67:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge66:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge65:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge64:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge63:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge63, %if.end.i.sw.bb.i_crit_edge64, %if.end.i.sw.bb.i_crit_edge65, %if.end.i.sw.bb.i_crit_edge66, %if.end.i.sw.bb.i_crit_edge67
  %sub.i46 = add nsw i32 %6, -33
  %arrayidx.i = getelementptr %struct.twl4030_priv, ptr %17, i32 0, i32 16, i32 %sub.i46
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %22 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %value.i, align 1
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %6 to i8
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i, i8 noundef zeroext %conv.i, i32 noundef 1) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb.i
  %23 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %value.i, align 1
  %conv2.i = zext i8 %24 to i32
  br label %twl4030_read.exit

twl4030_read.exit:                                ; preds = %sw.epilog.i, %entry.twl4030_read.exit_crit_edge
  %retval.0.i = phi i32 [ %conv2.i, %sw.epilog.i ], [ -5, %entry.twl4030_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  %shr = lshr i32 %retval.0.i, %10
  %and = and i32 %shr, %sub
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %25 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and, ptr %value, align 8
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i49 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i49, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i47) #6
  %30 = ptrtoint ptr %value.i47 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %value.i47, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %8)
  %cmp.i50 = icmp ugt i32 %8, 73
  br i1 %cmp.i50, label %twl4030_read.exit.twl4030_read.exit61_crit_edge, label %if.end.i51

twl4030_read.exit.twl4030_read.exit61_crit_edge:  ; preds = %twl4030_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_read.exit61

if.end.i51:                                       ; preds = %twl4030_read.exit
  %31 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.255)
  switch i32 %8, label %sw.default.i57 [
    i32 33, label %if.end.i51.sw.bb.i54_crit_edge
    i32 37, label %if.end.i51.sw.bb.i54_crit_edge68
    i32 38, label %if.end.i51.sw.bb.i54_crit_edge69
    i32 39, label %if.end.i51.sw.bb.i54_crit_edge70
    i32 40, label %if.end.i51.sw.bb.i54_crit_edge71
    i32 35, label %if.end.i51.sw.bb.i54_crit_edge72
  ]

if.end.i51.sw.bb.i54_crit_edge72:                 ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i54

if.end.i51.sw.bb.i54_crit_edge71:                 ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i54

if.end.i51.sw.bb.i54_crit_edge70:                 ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i54

if.end.i51.sw.bb.i54_crit_edge69:                 ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i54

if.end.i51.sw.bb.i54_crit_edge68:                 ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i54

if.end.i51.sw.bb.i54_crit_edge:                   ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i54

sw.bb.i54:                                        ; preds = %if.end.i51.sw.bb.i54_crit_edge, %if.end.i51.sw.bb.i54_crit_edge68, %if.end.i51.sw.bb.i54_crit_edge69, %if.end.i51.sw.bb.i54_crit_edge70, %if.end.i51.sw.bb.i54_crit_edge71, %if.end.i51.sw.bb.i54_crit_edge72
  %sub.i52 = add nsw i32 %8, -33
  %arrayidx.i53 = getelementptr %struct.twl4030_priv, ptr %29, i32 0, i32 16, i32 %sub.i52
  %32 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i53, align 1
  %34 = ptrtoint ptr %value.i47 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %value.i47, align 1
  br label %sw.epilog.i59

sw.default.i57:                                   ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i55 = trunc i32 %8 to i8
  %call.i.i56 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i47, i8 noundef zeroext %conv.i55, i32 noundef 1) #6
  br label %sw.epilog.i59

sw.epilog.i59:                                    ; preds = %sw.default.i57, %sw.bb.i54
  %35 = ptrtoint ptr %value.i47 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %value.i47, align 1
  %conv2.i58 = zext i8 %36 to i32
  br label %twl4030_read.exit61

twl4030_read.exit61:                              ; preds = %sw.epilog.i59, %twl4030_read.exit.twl4030_read.exit61_crit_edge
  %retval.0.i60 = phi i32 [ %conv2.i58, %sw.epilog.i59 ], [ -5, %twl4030_read.exit.twl4030_read.exit61_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i47) #6
  %shr7 = lshr i32 %retval.0.i60, %10
  %and8 = and i32 %shr7, %sub
  %arrayidx10 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and8, ptr %arrayidx10, align 4
  %38 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not = icmp eq i32 %39, 0
  br i1 %tobool.not, label %twl4030_read.exit61.if.end_crit_edge, label %if.then

twl4030_read.exit61.if.end_crit_edge:             ; preds = %twl4030_read.exit61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %twl4030_read.exit61
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %12, 1
  %sub15 = sub i32 %add, %39
  %40 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub15, ptr %value, align 8
  %41 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr = load i32, ptr %arrayidx10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %twl4030_read.exit61.if.end_crit_edge
  %42 = phi i32 [ %.pr, %if.then ], [ %and8, %twl4030_read.exit61.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool20.not = icmp eq i32 %42, 0
  br i1 %tobool20.not, label %if.end.if.end28_crit_edge, label %if.then21

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add22 = add i32 %12, 1
  %sub25 = sub i32 %add22, %42
  %43 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub25, ptr %arrayidx10, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %if.end.if.end28_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_soc_put_volsw_r2_twl4030(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %reg1 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg1, align 4
  %rreg = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rreg, align 4
  %shift2 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 5
  %9 = ptrtoint ptr %shift2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift2, align 4
  %max3 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %max3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 true) #6, !range !536
  %sub.i = sub nuw nsw i32 32, %13
  %sub.i.op = shl nsw i32 -1, %sub.i
  %sub.i.op.op = xor i32 %sub.i.op, -1
  %sub = select i1 %tobool.not.i, i32 0, i32 %sub.i.op.op
  %shl5 = shl i32 %sub, %10
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 8
  %and = and i32 %sub, %15
  %conv6 = trunc i32 %and to i16
  %arrayidx8 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv6)
  %tobool.not = icmp eq i16 %conv6, 0
  %add = add i32 %12, 1
  %sub12 = sub i32 %add, %and
  %val.0 = select i1 %tobool.not, i32 0, i32 %sub12
  %shl22 = shl i32 %val.0, %10
  %conv27 = and i32 %shl5, 65535
  %conv28 = and i32 %shl22, 65535
  %call29 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef %6, i32 noundef %conv27, i32 noundef %conv28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp slt i32 %call29, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end32

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and9 = and i32 %sub, %17
  %conv10 = trunc i32 %and9 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv10)
  %tobool14.not = icmp eq i16 %conv10, 0
  %sub18 = sub i32 %add, %and9
  %val2.0 = select i1 %tobool14.not, i32 0, i32 %sub18
  %shl25 = shl i32 %val2.0, %10
  %conv34 = and i32 %shl25, 65535
  %call35 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef %8, i32 noundef %conv27, i32 noundef %conv34) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.end32 ], [ %call29, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_soc_get_volsw_twl4030(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %value.i51 = alloca i8, align 1
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %reg1 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg1, align 4
  %shift2 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 5
  %7 = ptrtoint ptr %shift2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shift2, align 4
  %rshift3 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 6
  %9 = ptrtoint ptr %rshift3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rshift3, align 4
  %max4 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %max4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 true) #6, !range !536
  %sub.i = sub nuw nsw i32 32, %13
  %sub.i.op = shl nsw i32 -1, %sub.i
  %sub.i.op.op = xor i32 %sub.i.op, -1
  %sub = select i1 %tobool.not.i, i32 0, i32 %sub.i.op.op
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %18 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %value.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %6)
  %cmp.i = icmp ugt i32 %6, 73
  br i1 %cmp.i, label %entry.twl4030_read.exit_crit_edge, label %if.end.i

entry.twl4030_read.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_read.exit

if.end.i:                                         ; preds = %entry
  %19 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.256)
  switch i32 %6, label %sw.default.i [
    i32 33, label %if.end.i.sw.bb.i_crit_edge
    i32 37, label %if.end.i.sw.bb.i_crit_edge66
    i32 38, label %if.end.i.sw.bb.i_crit_edge67
    i32 39, label %if.end.i.sw.bb.i_crit_edge68
    i32 40, label %if.end.i.sw.bb.i_crit_edge69
    i32 35, label %if.end.i.sw.bb.i_crit_edge70
  ]

if.end.i.sw.bb.i_crit_edge70:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge69:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge68:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge67:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge66:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge66, %if.end.i.sw.bb.i_crit_edge67, %if.end.i.sw.bb.i_crit_edge68, %if.end.i.sw.bb.i_crit_edge69, %if.end.i.sw.bb.i_crit_edge70
  %sub.i50 = add nsw i32 %6, -33
  %arrayidx.i = getelementptr %struct.twl4030_priv, ptr %17, i32 0, i32 16, i32 %sub.i50
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %22 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %value.i, align 1
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %6 to i8
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i, i8 noundef zeroext %conv.i, i32 noundef 1) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb.i
  %23 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %value.i, align 1
  %conv2.i = zext i8 %24 to i32
  br label %twl4030_read.exit

twl4030_read.exit:                                ; preds = %sw.epilog.i, %entry.twl4030_read.exit_crit_edge
  %retval.0.i = phi i32 [ %conv2.i, %sw.epilog.i ], [ -5, %entry.twl4030_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  %shr = lshr i32 %retval.0.i, %8
  %and = and i32 %shr, %sub
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add = add i32 %12, 1
  %sub11 = sub i32 %add, %and
  %storemerge = select i1 %tobool.not, i32 0, i32 %sub11
  %25 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %storemerge, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp eq i32 %8, %10
  br i1 %cmp.not, label %twl4030_read.exit.if.end31_crit_edge, label %if.then14

twl4030_read.exit.if.end31_crit_edge:             ; preds = %twl4030_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then14:                                        ; preds = %twl4030_read.exit
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i53 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i53, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i51) #6
  %30 = ptrtoint ptr %value.i51 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %value.i51, align 1
  br i1 %cmp.i, label %if.then14.twl4030_read.exit65_crit_edge, label %if.end.i55

if.then14.twl4030_read.exit65_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_read.exit65

if.end.i55:                                       ; preds = %if.then14
  %31 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.257)
  switch i32 %6, label %sw.default.i61 [
    i32 33, label %if.end.i55.sw.bb.i58_crit_edge
    i32 37, label %if.end.i55.sw.bb.i58_crit_edge71
    i32 38, label %if.end.i55.sw.bb.i58_crit_edge72
    i32 39, label %if.end.i55.sw.bb.i58_crit_edge73
    i32 40, label %if.end.i55.sw.bb.i58_crit_edge74
    i32 35, label %if.end.i55.sw.bb.i58_crit_edge75
  ]

if.end.i55.sw.bb.i58_crit_edge75:                 ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i58

if.end.i55.sw.bb.i58_crit_edge74:                 ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i58

if.end.i55.sw.bb.i58_crit_edge73:                 ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i58

if.end.i55.sw.bb.i58_crit_edge72:                 ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i58

if.end.i55.sw.bb.i58_crit_edge71:                 ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i58

if.end.i55.sw.bb.i58_crit_edge:                   ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i58

sw.bb.i58:                                        ; preds = %if.end.i55.sw.bb.i58_crit_edge, %if.end.i55.sw.bb.i58_crit_edge71, %if.end.i55.sw.bb.i58_crit_edge72, %if.end.i55.sw.bb.i58_crit_edge73, %if.end.i55.sw.bb.i58_crit_edge74, %if.end.i55.sw.bb.i58_crit_edge75
  %sub.i56 = add nsw i32 %6, -33
  %arrayidx.i57 = getelementptr %struct.twl4030_priv, ptr %29, i32 0, i32 16, i32 %sub.i56
  %32 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i57, align 1
  %34 = ptrtoint ptr %value.i51 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %value.i51, align 1
  br label %sw.epilog.i63

sw.default.i61:                                   ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i59 = trunc i32 %6 to i8
  %call.i.i60 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i51, i8 noundef zeroext %conv.i59, i32 noundef 1) #6
  br label %sw.epilog.i63

sw.epilog.i63:                                    ; preds = %sw.default.i61, %sw.bb.i58
  %35 = ptrtoint ptr %value.i51 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %value.i51, align 1
  %conv2.i62 = zext i8 %36 to i32
  br label %twl4030_read.exit65

twl4030_read.exit65:                              ; preds = %sw.epilog.i63, %if.then14.twl4030_read.exit65_crit_edge
  %retval.0.i64 = phi i32 [ %conv2.i62, %sw.epilog.i63 ], [ -5, %if.then14.twl4030_read.exit65_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i51) #6
  %shr16 = lshr i32 %retval.0.i64, %10
  %and17 = and i32 %shr16, %sub
  %arrayidx19 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and17, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool22.not = icmp eq i32 %and17, 0
  br i1 %tobool22.not, label %twl4030_read.exit65.if.end31_crit_edge, label %if.then23

twl4030_read.exit65.if.end31_crit_edge:           ; preds = %twl4030_read.exit65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then23:                                        ; preds = %twl4030_read.exit65
  call void @__sanitizer_cov_trace_pc() #8
  %sub27 = sub i32 %add, %and17
  %38 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub27, ptr %arrayidx19, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %twl4030_read.exit65.if.end31_crit_edge, %twl4030_read.exit.if.end31_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_soc_put_volsw_twl4030(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %reg1 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg1, align 4
  %shift2 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 5
  %7 = ptrtoint ptr %shift2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shift2, align 4
  %rshift3 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 6
  %9 = ptrtoint ptr %rshift3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rshift3, align 4
  %max4 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %max4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 true) #6, !range !536
  %sub.i = sub nuw nsw i32 32, %13
  %sub.i.op = shl nsw i32 -1, %sub.i
  %sub.i.op.op = xor i32 %sub.i.op, -1
  %sub = select i1 %tobool.not.i, i32 0, i32 %sub.i.op.op
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 8
  %and = and i32 %sub, %15
  %conv = trunc i32 %and to i16
  %shl6 = shl i32 %sub, %8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool.not = icmp eq i16 %conv, 0
  %add = add i32 %12, 1
  %sub9 = sub i32 %add, %and
  %phi.cast = and i32 %sub9, 65535
  %val.0 = select i1 %tobool.not, i32 0, i32 %phi.cast
  %shl12 = shl i32 %val.0, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp eq i32 %8, %10
  br i1 %cmp.not, label %entry.if.end35_crit_edge, label %if.then15

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx17 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx17, align 4
  %and18 = and i32 %17, %sub
  %conv19 = trunc i32 %and18 to i16
  %shl20 = shl i32 %sub, %10
  %conv21 = and i32 %shl6, 65535
  %or = or i32 %conv21, %shl20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv19)
  %tobool23.not = icmp eq i16 %conv19, 0
  %sub27 = sub i32 %add, %and18
  %phi.cast60 = and i32 %sub27, 65535
  %val2.0 = select i1 %tobool23.not, i32 0, i32 %phi.cast60
  %shl31 = shl i32 %val2.0, %10
  %conv32 = and i32 %shl12, 65535
  %or33 = or i32 %shl31, %conv32
  br label %if.end35

if.end35:                                         ; preds = %if.then15, %entry.if.end35_crit_edge
  %val.1 = phi i32 [ %or33, %if.then15 ], [ %shl12, %entry.if.end35_crit_edge ]
  %val_mask.0 = phi i32 [ %or, %if.then15 ], [ %shl6, %entry.if.end35_crit_edge ]
  %conv36 = and i32 %val_mask.0, 65535
  %conv37 = and i32 %val.1, 65535
  %call38 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef %6, i32 noundef %conv36, i32 noundef %conv37) #6
  ret i32 %call38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apll_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.258)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dev.i.i = getelementptr i8, ptr %1, i32 -164
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %apll_enabled4.i = getelementptr inbounds %struct.twl4030_priv, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %apll_enabled4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %apll_enabled4.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %apll_enabled4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then2.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then2.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @twl4030_audio_enable_resource(i32 noundef 1) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %dev.i.i3 = getelementptr i8, ptr %1, i32 -164
  %9 = ptrtoint ptr %dev.i.i3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i3, align 4
  %driver_data.i.i.i4 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i4, align 4
  %apll_enabled4.i5 = getelementptr inbounds %struct.twl4030_priv, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %apll_enabled4.i5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %apll_enabled4.i5, align 4
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %apll_enabled4.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool6.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then7.i:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = tail call i32 @twl4030_audio_disable_resource(i32 noundef 1) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then7.i, %sw.bb1.sw.epilog_crit_edge, %if.then2.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aif_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  %val.addr.i.i17 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i.i = getelementptr i8, ptr %1, i32 -164
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %value.i, align 1
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i, i8 noundef zeroext 14, i32 noundef 1) #6
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  %5 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.259)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i13 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i13, align 4
  %apll_enabled4.i = getelementptr inbounds %struct.twl4030_priv, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %apll_enabled4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %apll_enabled4.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %apll_enabled4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %if.then2.i, label %sw.bb.twl4030_apll_enable.exit_crit_edge

sw.bb.twl4030_apll_enable.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_apll_enable.exit

if.then2.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = call i32 @twl4030_audio_enable_resource(i32 noundef 1) #6
  br label %twl4030_apll_enable.exit

twl4030_apll_enable.exit:                         ; preds = %if.then2.i, %sw.bb.twl4030_apll_enable.exit_crit_edge
  %12 = or i8 %4, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %13 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %val.addr.i.i, align 1
  %call.i.i16 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 14, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %and = and i8 %4, -2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i17) #6
  %14 = ptrtoint ptr %val.addr.i.i17 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %and, ptr %val.addr.i.i17, align 1
  %call.i.i21 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i17, i8 noundef zeroext 14, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i17) #6
  %15 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i23 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i23, align 4
  %apll_enabled4.i24 = getelementptr inbounds %struct.twl4030_priv, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %apll_enabled4.i24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %apll_enabled4.i24, align 4
  %dec.i = add i32 %20, -1
  store i32 %dec.i, ptr %apll_enabled4.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool6.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then7.i:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = call i32 @twl4030_audio_disable_resource(i32 noundef 1) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then7.i, %sw.bb4.sw.epilog_crit_edge, %twl4030_apll_enable.exit, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @earpiecepga_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.260)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %earpiece_enabled = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 11
  %7 = ptrtoint ptr %earpiece_enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %earpiece_enabled, align 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %earpiece_enabled.i.i = getelementptr inbounds %struct.twl4030_priv, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %earpiece_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %earpiece_enabled.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.twl4030_priv, ptr %11, i32 0, i32 16, i32 0
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %16 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 33, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %earpiece_enabled5 = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 11
  %17 = ptrtoint ptr %earpiece_enabled5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %earpiece_enabled5, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %18 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %val.addr.i, align 1
  %call.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 33, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @predrivelpga_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.261)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %predrivel_enabled = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 12
  %7 = ptrtoint ptr %predrivel_enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %predrivel_enabled, align 1
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %predrivel_enabled.i.i = getelementptr inbounds %struct.twl4030_priv, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %predrivel_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %predrivel_enabled.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not.i.not.i = icmp eq i8 %13, 0
  br i1 %tobool2.not.i.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.twl4030_priv, ptr %11, i32 0, i32 16, i32 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %16 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 37, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %predrivel_enabled5 = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 12
  %17 = ptrtoint ptr %predrivel_enabled5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %predrivel_enabled5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %18 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %val.addr.i, align 1
  %call.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 37, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @predriverpga_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.262)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %predriver_enabled = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 13
  %7 = ptrtoint ptr %predriver_enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %predriver_enabled, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %predriver_enabled.i.i = getelementptr inbounds %struct.twl4030_priv, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %predriver_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %predriver_enabled.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not.i.not.i = icmp eq i8 %13, 0
  br i1 %tobool6.not.i.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.twl4030_priv, ptr %11, i32 0, i32 16, i32 5
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %16 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 38, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %predriver_enabled5 = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 13
  %17 = ptrtoint ptr %predriver_enabled5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %predriver_enabled5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %18 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %val.addr.i, align 1
  %call.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 38, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @headsetlpga_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.263)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %hsr_enabled = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 10
  %7 = ptrtoint ptr %hsr_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hsr_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog.sink.split.sink.split_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb.sw.epilog.sink.split.sink.split_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.sink.split

sw.bb2:                                           ; preds = %entry
  %hsr_enabled3 = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 10
  %9 = ptrtoint ptr %hsr_enabled3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hsr_enabled3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %sw.bb2.sw.epilog.sink.split.sink.split_crit_edge, label %sw.bb2.sw.epilog.sink.split_crit_edge

sw.bb2.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb2.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %sw.bb2.sw.epilog.sink.split.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split.sink.split_crit_edge
  %.sink13 = phi i32 [ 1, %sw.bb.sw.epilog.sink.split.sink.split_crit_edge ], [ 0, %sw.bb2.sw.epilog.sink.split.sink.split_crit_edge ]
  %.sink.ph = phi i8 [ 1, %sw.bb.sw.epilog.sink.split.sink.split_crit_edge ], [ 0, %sw.bb2.sw.epilog.sink.split.sink.split_crit_edge ]
  tail call fastcc void @headset_ramp(ptr noundef %add.ptr.i, i32 noundef %.sink13)
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %sw.bb2.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 1, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 0, %sw.bb2.sw.epilog.sink.split_crit_edge ], [ %.sink.ph, %sw.epilog.sink.split.sink.split ]
  %hsl_enabled7 = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 9
  %11 = ptrtoint ptr %hsl_enabled7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink, ptr %hsl_enabled7, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @headsetrpga_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.264)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %hsl_enabled = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 9
  %7 = ptrtoint ptr %hsl_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hsl_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog.sink.split.sink.split_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb.sw.epilog.sink.split.sink.split_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.sink.split

sw.bb2:                                           ; preds = %entry
  %hsl_enabled3 = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 9
  %9 = ptrtoint ptr %hsl_enabled3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hsl_enabled3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %sw.bb2.sw.epilog.sink.split.sink.split_crit_edge, label %sw.bb2.sw.epilog.sink.split_crit_edge

sw.bb2.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb2.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %sw.bb2.sw.epilog.sink.split.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split.sink.split_crit_edge
  %.sink13 = phi i32 [ 1, %sw.bb.sw.epilog.sink.split.sink.split_crit_edge ], [ 0, %sw.bb2.sw.epilog.sink.split.sink.split_crit_edge ]
  %.sink.ph = phi i8 [ 1, %sw.bb.sw.epilog.sink.split.sink.split_crit_edge ], [ 0, %sw.bb2.sw.epilog.sink.split.sink.split_crit_edge ]
  tail call fastcc void @headset_ramp(ptr noundef %add.ptr.i, i32 noundef %.sink13)
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %sw.bb2.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 1, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 0, %sw.bb2.sw.epilog.sink.split_crit_edge ], [ %.sink.ph, %sw.epilog.sink.split.sink.split ]
  %hsr_enabled7 = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 10
  %11 = ptrtoint ptr %hsr_enabled7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink, ptr %hsr_enabled7, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carkitlpga_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.265)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %carkitl_enabled = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 14
  %7 = ptrtoint ptr %carkitl_enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %carkitl_enabled, align 1
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %carkitl_enabled.i.i = getelementptr inbounds %struct.twl4030_priv, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %carkitl_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %carkitl_enabled.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not.i.not.i = icmp eq i8 %13, 0
  br i1 %tobool10.not.i.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.twl4030_priv, ptr %11, i32 0, i32 16, i32 6
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %16 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 39, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %carkitl_enabled5 = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 14
  %17 = ptrtoint ptr %carkitl_enabled5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %carkitl_enabled5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %18 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %val.addr.i, align 1
  %call.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 39, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @carkitrpga_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  %val.addr.i = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.266)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %carkitr_enabled = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 15
  %7 = ptrtoint ptr %carkitr_enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %carkitr_enabled, align 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %carkitr_enabled.i.i = getelementptr inbounds %struct.twl4030_priv, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %carkitr_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %carkitr_enabled.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool14.not.i.not.i = icmp eq i8 %13, 0
  br i1 %tobool14.not.i.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.twl4030_priv, ptr %11, i32 0, i32 16, i32 7
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %16 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 40, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %carkitr_enabled5 = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 15
  %17 = ptrtoint ptr %carkitr_enabled5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %carkitr_enabled5, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %18 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %val.addr.i, align 1
  %call.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 40, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @handsfreelpga_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  %val.addr.i.i29 = alloca i8, align 1
  %val.addr.i.i24 = alloca i8, align 1
  %val.addr.i.i19 = alloca i8, align 1
  %val.addr.i.i14 = alloca i8, align 1
  %val.addr.i.i9 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %value.i.i3 = alloca i8, align 1
  %value.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.267)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #6
  %1 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %value.i.i, align 1
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i.i, i8 noundef zeroext 41, i32 noundef 1) #6
  %2 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  %conv3.i = or i8 %3, 32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i14) #6
  %4 = ptrtoint ptr %val.addr.i.i14 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3.i, ptr %val.addr.i.i14, align 1
  %call.i.i18 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i14, i8 noundef zeroext 41, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i14) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 2147480) #6
  %conv8.i = or i8 %3, 48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i9) #6
  %6 = ptrtoint ptr %val.addr.i.i9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv8.i, ptr %val.addr.i.i9, align 1
  %call.i.i13 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i9, i8 noundef zeroext 41, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i9) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 8589920) #6
  %8 = or i8 %3, 60
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %9 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 41, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i3) #6
  %10 = ptrtoint ptr %value.i.i3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %value.i.i3, align 1
  %call.i.i.i6 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i.i3, i8 noundef zeroext 41, i32 noundef 1) #6
  %11 = ptrtoint ptr %value.i.i3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %value.i.i3, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i3) #6
  %conv22.i = and i8 %12, -13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i29) #6
  %13 = ptrtoint ptr %val.addr.i.i29 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv22.i, ptr %val.addr.i.i29, align 1
  %call.i.i33 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i29, i8 noundef zeroext 41, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i29) #6
  %conv27.i = and i8 %12, -29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i24) #6
  %14 = ptrtoint ptr %val.addr.i.i24 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv27.i, ptr %val.addr.i.i24, align 1
  %call.i.i28 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i24, i8 noundef zeroext 41, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i24) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 8589920) #6
  %16 = and i8 %12, -61
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i19) #6
  %17 = ptrtoint ptr %val.addr.i.i19 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %val.addr.i.i19, align 1
  %call.i.i23 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i19, i8 noundef zeroext 41, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i19) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @handsfreerpga_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  %val.addr.i.i29 = alloca i8, align 1
  %val.addr.i.i24 = alloca i8, align 1
  %val.addr.i.i19 = alloca i8, align 1
  %val.addr.i.i14 = alloca i8, align 1
  %val.addr.i.i9 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %value.i.i3 = alloca i8, align 1
  %value.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.268)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #6
  %1 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %value.i.i, align 1
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i.i, i8 noundef zeroext 42, i32 noundef 1) #6
  %2 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  %conv3.i = or i8 %3, 32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i14) #6
  %4 = ptrtoint ptr %val.addr.i.i14 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3.i, ptr %val.addr.i.i14, align 1
  %call.i.i18 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i14, i8 noundef zeroext 42, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i14) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 2147480) #6
  %conv8.i = or i8 %3, 48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i9) #6
  %6 = ptrtoint ptr %val.addr.i.i9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv8.i, ptr %val.addr.i.i9, align 1
  %call.i.i13 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i9, i8 noundef zeroext 42, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i9) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 8589920) #6
  %8 = or i8 %3, 60
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %9 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 42, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i3) #6
  %10 = ptrtoint ptr %value.i.i3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %value.i.i3, align 1
  %call.i.i.i6 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i.i3, i8 noundef zeroext 42, i32 noundef 1) #6
  %11 = ptrtoint ptr %value.i.i3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %value.i.i3, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i3) #6
  %conv22.i = and i8 %12, -13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i29) #6
  %13 = ptrtoint ptr %val.addr.i.i29 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv22.i, ptr %val.addr.i.i29, align 1
  %call.i.i33 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i29, i8 noundef zeroext 42, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i29) #6
  %conv27.i = and i8 %12, -29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i24) #6
  %14 = ptrtoint ptr %val.addr.i.i24 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv27.i, ptr %val.addr.i.i24, align 1
  %call.i.i28 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i24, i8 noundef zeroext 42, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i24) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 8589920) #6
  %16 = and i8 %12, -61
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i19) #6
  %17 = ptrtoint ptr %val.addr.i.i19 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %val.addr.i.i19, align 1
  %call.i.i23 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i19, i8 noundef zeroext 42, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i19) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vibramux_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %0 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 70, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digimic_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %pdata2 = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %pdata2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %9)
  %cmp.i = icmp slt i32 %9, 60
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = mul i32 %9, 1000
  %add.i = add i32 %mul.i, 500
  tail call void @usleep_range_state(i32 noundef %mul.i, i32 noundef %add.i, i32 noundef 2) #6
  br label %if.end

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef %9) #6
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl4030_audio_enable_resource(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl4030_audio_disable_resource(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @headset_ramp(ptr nocapture noundef readonly %component, i32 noundef %ramp) unnamed_addr #2 align 64 {
entry:
  %val.addr.i.i129 = alloca i8, align 1
  %val.addr.i.i123 = alloca i8, align 1
  %val.addr.i121 = alloca i8, align 1
  %val.addr.i.i110 = alloca i8, align 1
  %val.addr.i.i106 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %val.addr.i.i101 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %value.i94 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pdata1 = getelementptr inbounds %struct.twl4030_priv, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata1, align 4
  %arrayidx.i = getelementptr %struct.twl4030_priv, ptr %3, i32 0, i32 16, i32 2
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i94) #6
  %8 = ptrtoint ptr %value.i94 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %value.i94, align 1
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i94, i8 noundef zeroext 36, i32 noundef 1) #6
  %9 = ptrtoint ptr %value.i94 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %value.i94, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i94) #6
  %11 = lshr i8 %10, 2
  %12 = and i8 %11, 7
  %13 = zext i8 %12 to i32
  %arrayidx = getelementptr [8 x i32], ptr @__const.headset_ramp.ramp_base, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %sysclk = getelementptr inbounds %struct.twl4030_priv, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sysclk, align 4
  %div = udiv i32 %15, %17
  %add = add i32 %div, 1
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %land.lhs.true

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %hs_extmute = getelementptr inbounds %struct.twl4030_codec_data, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %hs_extmute to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %hs_extmute, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %land.lhs.true.if.end14_crit_edge, label %if.then

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then:                                          ; preds = %land.lhs.true
  %hs_extmute_gpio = getelementptr inbounds %struct.twl4030_codec_data, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %hs_extmute_gpio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hs_extmute_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %20)
  %21 = icmp ult i32 %20, 2048
  br i1 %21, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call ptr @gpio_to_desc(i32 noundef %20) #6
  call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 1) #6
  br label %if.end14

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv11 = or i8 %10, 32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %22 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv11, ptr %val.addr.i.i, align 1
  %call.i.i100 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 36, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then8, %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  %hs_pop.0 = phi i8 [ %10, %if.then8 ], [ %conv11, %if.else ], [ %10, %land.lhs.true.if.end14_crit_edge ], [ %10, %entry.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ramp)
  %tobool15.not = icmp eq i32 %ramp, 0
  br i1 %tobool15.not, label %if.else28, label %if.then16

if.then16:                                        ; preds = %if.end14
  %23 = or i8 %hs_pop.0, 64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i101) #6
  %24 = ptrtoint ptr %val.addr.i.i101 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %val.addr.i.i101, align 1
  %call.i.i104 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i101, i8 noundef zeroext 36, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i101) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %25 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %7, ptr %val.addr.i, align 1
  %call.i105 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 35, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  %or24 = or i8 %hs_pop.0, 66
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i106) #6
  %26 = ptrtoint ptr %val.addr.i.i106 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %or24, ptr %val.addr.i.i106, align 1
  %call.i.i109 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i106, i8 noundef zeroext 36, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i106) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %add)
  %cmp.i = icmp slt i32 %add, 60
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = mul i32 %add, 1000
  %add.i = add i32 %mul.i, 500
  call void @usleep_range_state(i32 noundef %mul.i, i32 noundef %add.i, i32 noundef 2) #6
  br label %if.end43

if.else.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef %add) #6
  br label %if.end43

if.else28:                                        ; preds = %if.end14
  %27 = and i8 %hs_pop.0, -3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i110) #6
  %28 = ptrtoint ptr %val.addr.i.i110 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %val.addr.i.i110, align 1
  %call.i.i113 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i110, i8 noundef zeroext 36, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i110) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %add)
  %cmp.i115 = icmp slt i32 %add, 60
  br i1 %cmp.i115, label %if.then.i118, label %if.else.i119

if.then.i118:                                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i116 = mul i32 %add, 1000
  %add.i117 = add i32 %mul.i116, 500
  call void @usleep_range_state(i32 noundef %mul.i116, i32 noundef %add.i117, i32 noundef 2) #6
  br label %twl4030_wait_ms.exit120

if.else.i119:                                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef %add) #6
  br label %twl4030_wait_ms.exit120

twl4030_wait_ms.exit120:                          ; preds = %if.else.i119, %if.then.i118
  %conv36 = and i8 %7, -16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i121)
  %29 = ptrtoint ptr %val.addr.i121 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv36, ptr %val.addr.i121, align 1
  %call.i122 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i121, i8 noundef zeroext 35, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i121)
  %and39 = and i8 %hs_pop.0, -67
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i123) #6
  %30 = ptrtoint ptr %val.addr.i.i123 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %and39, ptr %val.addr.i.i123, align 1
  %call.i.i126 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i123, i8 noundef zeroext 36, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i123) #6
  br label %if.end43

if.end43:                                         ; preds = %twl4030_wait_ms.exit120, %if.else.i, %if.then.i
  %hs_pop.1 = phi i8 [ %and39, %twl4030_wait_ms.exit120 ], [ %or24, %if.then.i ], [ %or24, %if.else.i ]
  br i1 %tobool.not, label %if.end43.if.end63_crit_edge, label %land.lhs.true45

if.end43.if.end63_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

land.lhs.true45:                                  ; preds = %if.end43
  %hs_extmute46 = getelementptr inbounds %struct.twl4030_codec_data, ptr %5, i32 0, i32 3
  %31 = ptrtoint ptr %hs_extmute46 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load47 = load i8, ptr %hs_extmute46, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load47)
  %tobool50.not = icmp sgt i8 %bf.load47, -1
  br i1 %tobool50.not, label %land.lhs.true45.if.end63_crit_edge, label %if.then51

land.lhs.true45.if.end63_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then51:                                        ; preds = %land.lhs.true45
  %hs_extmute_gpio52 = getelementptr inbounds %struct.twl4030_codec_data, ptr %5, i32 0, i32 4
  %32 = ptrtoint ptr %hs_extmute_gpio52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hs_extmute_gpio52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %33)
  %34 = icmp ult i32 %33, 2048
  br i1 %34, label %if.then54, label %if.else56

if.then54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %call.i128 = call ptr @gpio_to_desc(i32 noundef %33) #6
  call void @gpiod_set_raw_value(ptr noundef %call.i128, i32 noundef 0) #6
  br label %if.end63

if.else56:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %35 = and i8 %hs_pop.1, -33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i129) #6
  %36 = ptrtoint ptr %val.addr.i.i129 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %val.addr.i.i129, align 1
  %call.i.i132 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i129, i8 noundef zeroext 36, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i129) #6
  br label %if.end63

if.end63:                                         ; preds = %if.else56, %if.then54, %land.lhs.true45.if.end63_crit_edge, %if.end43.if.end63_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl4030_audio_get_mclk() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request_one(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tw4030_init_ctl_cache(ptr nocapture noundef writeonly %twl4030) unnamed_addr #2 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #6
  %0 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %byte, align 1, !annotation !535
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %byte, i8 noundef zeroext 33, i32 noundef 1) #6
  %1 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %byte, align 1
  %arrayidx = getelementptr %struct.twl4030_priv, ptr %twl4030, i32 0, i32 16, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %arrayidx, align 1
  %call.i.1 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %byte, i8 noundef zeroext 34, i32 noundef 1) #6
  %4 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %byte, align 1
  %arrayidx.1 = getelementptr %struct.twl4030_priv, ptr %twl4030, i32 0, i32 16, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx.1, align 1
  %call.i.2 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %byte, i8 noundef zeroext 35, i32 noundef 1) #6
  %7 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %byte, align 1
  %arrayidx.2 = getelementptr %struct.twl4030_priv, ptr %twl4030, i32 0, i32 16, i32 2
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx.2, align 1
  %call.i.3 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %byte, i8 noundef zeroext 36, i32 noundef 1) #6
  %10 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %byte, align 1
  %arrayidx.3 = getelementptr %struct.twl4030_priv, ptr %twl4030, i32 0, i32 16, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx.3, align 1
  %call.i.4 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %byte, i8 noundef zeroext 37, i32 noundef 1) #6
  %13 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %byte, align 1
  %arrayidx.4 = getelementptr %struct.twl4030_priv, ptr %twl4030, i32 0, i32 16, i32 4
  %15 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx.4, align 1
  %call.i.5 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %byte, i8 noundef zeroext 38, i32 noundef 1) #6
  %16 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %byte, align 1
  %arrayidx.5 = getelementptr %struct.twl4030_priv, ptr %twl4030, i32 0, i32 16, i32 5
  %18 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx.5, align 1
  %call.i.6 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %byte, i8 noundef zeroext 39, i32 noundef 1) #6
  %19 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %byte, align 1
  %arrayidx.6 = getelementptr %struct.twl4030_priv, ptr %twl4030, i32 0, i32 16, i32 6
  %21 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx.6, align 1
  %call.i.7 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %byte, i8 noundef zeroext 40, i32 noundef 1) #6
  %22 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %byte, align 1
  %arrayidx.7 = getelementptr %struct.twl4030_priv, ptr %twl4030, i32 0, i32 16, i32 7
  %24 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx.7, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_set_regcache_bypass(i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.269)
  switch i32 %freq, label %do.end [
    i32 19200000, label %entry.sw.epilog_crit_edge
    i32 26000000, label %entry.sw.epilog_crit_edge14
    i32 38400000, label %entry.sw.epilog_crit_edge15
  ]

entry.sw.epilog_crit_edge15:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge14:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.232, i32 noundef %freq) #9
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge14, %entry.sw.epilog_crit_edge15
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %div = udiv i32 %freq, 1000
  %sysclk = getelementptr inbounds %struct.twl4030_priv, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %8)
  %cmp.not = icmp eq i32 %div, %8
  br i1 %cmp.not, label %sw.epilog.cleanup_crit_edge, label %do.end4

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end4:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul i32 %8, 1000
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.235, i32 noundef %freq, i32 noundef %mul) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end4, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end4 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  %val.addr.i.i70 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %value.i, align 1
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i, i8 noundef zeroext 14, i32 noundef 1) #6
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %value.i, align 1
  %conv2.i = zext i8 %8 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  %9 = trunc i32 %fmt to i16
  %trunc = and i16 %9, -4096
  %10 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.270)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %sw.bb
    i16 16384, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and7 = and i32 %conv2.i, 125
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv14 = or i32 %conv2.i, 130
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb
  %format.0 = phi i32 [ %conv14, %sw.bb9 ], [ %and7, %sw.bb ]
  %and18 = and i32 %fmt, 15
  %11 = zext i32 %and18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.271)
  switch i32 %and18, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb19
    i32 4, label %sw.bb23
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb19:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %conv17 = and i32 %format.0, 231
  br label %sw.epilog28

sw.bb23:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %conv26 = or i32 %format.0, 24
  br label %sw.epilog28

sw.epilog28:                                      ; preds = %sw.bb23, %sw.bb19
  %format.1 = phi i32 [ %conv26, %sw.bb23 ], [ %conv17, %sw.bb19 ]
  %conv29 = and i32 %format.1, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv29, i32 %conv2.i)
  %cmp.not = icmp eq i32 %conv29, %conv2.i
  br i1 %cmp.not, label %sw.epilog28.cleanup_crit_edge, label %if.then

sw.epilog28.cleanup_crit_edge:                    ; preds = %sw.epilog28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %sw.epilog28
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.then
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i58 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i58, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  br i1 %cmp.i, label %if.then32.twl4030_codec_enable.exit_crit_edge, label %if.end.i

if.then32.twl4030_codec_enable.exit_crit_edge:    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_codec_enable.exit

if.end.i:                                         ; preds = %if.then32
  %call3.i = call i32 @twl4030_audio_disable_resource(i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp5.i = icmp sgt i32 %call3.i, -1
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %17, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i.if.end8.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 2147480) #6
  br label %twl4030_codec_enable.exit

twl4030_codec_enable.exit:                        ; preds = %if.end8.i, %if.then32.twl4030_codec_enable.exit_crit_edge
  %.pre.i = trunc i32 %format.1 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %22 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.pre.i, ptr %val.addr.i.i, align 1
  %call.i.i61 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 14, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i63 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i.i63, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i64 = icmp eq i32 %28, 1
  br i1 %cmp.i64, label %twl4030_codec_enable.exit.cleanup_crit_edge, label %if.end.i65

twl4030_codec_enable.exit.cleanup_crit_edge:      ; preds = %twl4030_codec_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i65:                                       ; preds = %twl4030_codec_enable.exit
  %call2.i = call i32 @twl4030_audio_enable_resource(i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp5.i66 = icmp sgt i32 %call2.i, -1
  br i1 %cmp5.i66, label %if.then6.i67, label %if.end.i65.if.end8.i68_crit_edge

if.end.i65.if.end8.i68_crit_edge:                 ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i68

if.then6.i67:                                     ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %26, align 4
  br label %if.end8.i68

if.end8.i68:                                      ; preds = %if.then6.i67, %if.end.i65.if.end8.i68_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 2147480) #6
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %.pre.i73 = trunc i32 %format.1 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i70) #6
  %31 = ptrtoint ptr %val.addr.i.i70 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.pre.i73, ptr %val.addr.i.i70, align 1
  %call.i.i74 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i70, i8 noundef zeroext 14, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i70) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end8.i68, %twl4030_codec_enable.exit.cleanup_crit_edge, %sw.epilog28.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %sw.epilog28.cleanup_crit_edge ], [ 0, %twl4030_codec_enable.exit.cleanup_crit_edge ], [ 0, %if.end8.i68 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_set_tristate(ptr nocapture noundef readonly %dai, i32 noundef %tristate) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %value.i, align 1
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i, i8 noundef zeroext 14, i32 noundef 1) #6
  %1 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %value.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tristate)
  %tobool.not = icmp eq i32 %tristate, 0
  %3 = and i8 %2, -5
  %masksel = select i1 %tobool.not, i8 0, i8 4
  %reg.0 = or i8 %3, %masksel
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %4 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %reg.0, ptr %val.addr.i.i, align 1
  %call.i.i13 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 14, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  ret i32 %call.i.i13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_startup(ptr noundef %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %master_substream = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %master_substream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master_substream, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %slave_substream = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %slave_substream to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substream, ptr %slave_substream, align 4
  %configured = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %configured to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %configured, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %if.then.if.end11_crit_edge, label %twl4030_constraints.exit

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

twl4030_constraints.exit:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %11 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime.i, align 4
  %rate.i = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 5
  %13 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rate.i, align 4
  %call.i.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %12, i32 noundef 11, i32 noundef %14, i32 noundef %14) #6
  %15 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime.i, align 4
  %sample_bits.i = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 6
  %17 = ptrtoint ptr %sample_bits.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sample_bits.i, align 4
  %call.i20.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %16, i32 noundef 8, i32 noundef %18, i32 noundef %18) #6
  %19 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %runtime.i, align 4
  %channels.i = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 7
  %21 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channels.i, align 4
  %call.i21.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %20, i32 noundef 10, i32 noundef %22, i32 noundef %22) #6
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %23 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %value.i, align 1
  %call.i.i20 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i, i8 noundef zeroext 1, i32 noundef 1) #6
  %24 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %value.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool6.not = icmp eq i8 %26, 0
  br i1 %tobool6.not, label %if.then7, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %27 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %runtime, align 4
  %call.i = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %28, i32 noundef 10, i32 noundef 2, i32 noundef 2) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.else.if.end9_crit_edge
  %29 = ptrtoint ptr %master_substream to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %substream, ptr %master_substream, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %twl4030_constraints.exit, %if.then.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_shutdown(ptr noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %val.addr.i.i.i = alloca i8, align 1
  %value.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %master_substream = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %master_substream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master_substream, align 4
  %cmp = icmp eq ptr %7, %substream
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %slave_substream = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %slave_substream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slave_substream, align 4
  %10 = ptrtoint ptr %master_substream to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %master_substream, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = phi ptr [ %9, %if.then ], [ %7, %entry.if.end_crit_edge ]
  %slave_substream3 = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %slave_substream3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %slave_substream3, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.if.end11.sink.split_crit_edge, label %if.else

if.end.if.end11.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.sink.split

if.else:                                          ; preds = %if.end
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %11, i32 0, i32 11
  %13 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %runtime, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not = icmp eq i32 %16, 0
  br i1 %tobool7.not, label %if.else.if.end11.sink.split_crit_edge, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.else.if.end11.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %if.else.if.end11.sink.split_crit_edge, %if.end.if.end11.sink.split_crit_edge
  %configured9 = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %configured9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %configured9, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %if.else.if.end11_crit_edge
  %runtime12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %18 = ptrtoint ptr %runtime12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %runtime12, align 4
  %channels13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %channels13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channels13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp14 = icmp eq i32 %21, 4
  br i1 %cmp14, label %if.then15, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %22 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stream, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #6
  %24 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %value.i.i, align 1
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i.i, i8 noundef zeroext 2, i32 noundef 1) #6
  %25 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %value.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp eq i32 %23, 0
  %neg.i = select i1 %cmp.i, i8 -49, i8 -13
  %and.i = and i8 %26, %neg.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  %27 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %and.i, ptr %val.addr.i.i.i, align 1
  %call.i.i19.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_hw_params(ptr noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %val.addr.i.i218 = alloca i8, align 1
  %val.addr.i.i214 = alloca i8, align 1
  %val.addr.i.i202 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %value.i179 = alloca i8, align 1
  %value.i172 = alloca i8, align 1
  %val.addr.i.i.i = alloca i8, align 1
  %value.i.i = alloca i8, align 1
  %value.i167 = alloca i8, align 1
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp = icmp eq i32 %7, 4
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %value.i, align 1
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i, i8 noundef zeroext 14, i32 noundef 1) #6
  %9 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %value.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i167) #6
  %11 = ptrtoint ptr %value.i167 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %value.i167, align 1
  %call.i.i170 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i167, i8 noundef zeroext 1, i32 noundef 1) #6
  %12 = ptrtoint ptr %value.i167 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %value.i167, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i167) #6
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp ne i8 %14, 0
  %15 = and i8 %10, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %15)
  %cmp9 = icmp eq i8 %15, 24
  %or.cond = select i1 %tobool.not, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.then11, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %16 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #6
  %18 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %value.i.i, align 1
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i.i, i8 noundef zeroext 2, i32 noundef 1) #6
  %19 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %value.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  %..i = select i1 %cmp.i, i8 48, i8 12
  %or.i = or i8 %20, %..i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  %21 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or.i, ptr %val.addr.i.i.i, align 1
  %call.i.i19.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %entry.if.end12_crit_edge
  %configured = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 4
  %22 = ptrtoint ptr %configured to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %configured, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool13.not = icmp eq i32 %23, 0
  br i1 %tobool13.not, label %if.end15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i172) #6
  %24 = ptrtoint ptr %value.i172 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %value.i172, align 1
  %call.i.i175 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i172, i8 noundef zeroext 1, i32 noundef 1) #6
  %25 = ptrtoint ptr %value.i172 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %value.i172, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i172) #6
  %27 = and i8 %26, -3
  %conv21 = and i8 %26, 13
  %arrayidx.i.i177 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %arrayidx.i.i177 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i177, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.272)
  switch i32 %29, label %do.end [
    i32 8000, label %if.end15.sw.epilog_crit_edge
    i32 11025, label %sw.bb25
    i32 12000, label %sw.bb29
    i32 16000, label %sw.bb33
    i32 22050, label %sw.bb37
    i32 24000, label %sw.bb41
    i32 32000, label %sw.bb45
    i32 44100, label %sw.bb49
    i32 48000, label %sw.bb53
    i32 96000, label %sw.bb57
  ]

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %31 = or i8 %conv21, 16
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %32 = or i8 %conv21, 32
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %33 = or i8 %conv21, 64
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %34 = or i8 %conv21, 80
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %35 = or i8 %conv21, 96
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %36 = or i8 %conv21, -128
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %37 = or i8 %conv21, -112
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %38 = or i8 %conv21, -96
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %39 = or i8 %conv21, -32
  br label %sw.epilog

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.238, i32 noundef %29) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb57, %sw.bb53, %sw.bb49, %sw.bb45, %sw.bb41, %sw.bb37, %sw.bb33, %sw.bb29, %sw.bb25, %if.end15.sw.epilog_crit_edge
  %mode.0 = phi i8 [ %39, %sw.bb57 ], [ %38, %sw.bb53 ], [ %37, %sw.bb49 ], [ %36, %sw.bb45 ], [ %35, %sw.bb41 ], [ %34, %sw.bb37 ], [ %33, %sw.bb33 ], [ %32, %sw.bb29 ], [ %31, %sw.bb25 ], [ %conv21, %if.end15.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i179) #6
  %42 = ptrtoint ptr %value.i179 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %value.i179, align 1
  %call.i.i182 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i179, i8 noundef zeroext 14, i32 noundef 1) #6
  %43 = ptrtoint ptr %value.i179 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %value.i179, align 1
  %conv2.i183 = zext i8 %44 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i179) #6
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %sw.epilog.if.then.i.i.i_crit_edge

sw.epilog.if.then.i.i.i_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %sw.epilog.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %sw.epilog.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %46, %sw.epilog.if.then.i.i.i_crit_edge ], [ %49, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %47 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #6, !range !536
  %add.i.i.i = or i32 %47, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %sw.epilog
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.1.i.i.i = icmp eq i32 %49, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #6
  %50 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.273)
  switch i32 %call1.i, label %do.end79 [
    i32 16, label %sw.bb68
    i32 32, label %sw.bb72
  ]

sw.bb68:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv66 = and i32 %conv2.i183, 159
  br label %sw.epilog82

sw.bb72:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv75 = or i32 %conv2.i183, 96
  br label %sw.epilog82

do.end79:                                         ; preds = %params_width.exit
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  %53 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i.i185 = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i.i185, label %for.inc.i.i.i192, label %do.end79.if.then.i.i.i189_crit_edge

do.end79.if.then.i.i.i189_crit_edge:              ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i189

if.then.i.i.i189:                                 ; preds = %for.inc.i.i.i192.if.then.i.i.i189_crit_edge, %do.end79.if.then.i.i.i189_crit_edge
  %i.09.lcssa.i.i.i186 = phi i32 [ 0, %do.end79.if.then.i.i.i189_crit_edge ], [ 32, %for.inc.i.i.i192.if.then.i.i.i189_crit_edge ]
  %.lcssa.i.i.i187 = phi i32 [ %54, %do.end79.if.then.i.i.i189_crit_edge ], [ %57, %for.inc.i.i.i192.if.then.i.i.i189_crit_edge ]
  %55 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i187, i1 true) #6, !range !536
  %add.i.i.i188 = or i32 %55, %i.09.lcssa.i.i.i186
  br label %params_width.exit195

for.inc.i.i.i192:                                 ; preds = %do.end79
  %arrayidx.1.i.i.i190 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx.1.i.i.i190 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.1.i.i.i190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.1.i.i.i191 = icmp eq i32 %57, 0
  br i1 %tobool.not.1.i.i.i191, label %for.inc.i.i.i192.params_width.exit195_crit_edge, label %for.inc.i.i.i192.if.then.i.i.i189_crit_edge

for.inc.i.i.i192.if.then.i.i.i189_crit_edge:      ; preds = %for.inc.i.i.i192
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i189

for.inc.i.i.i192.params_width.exit195_crit_edge:  ; preds = %for.inc.i.i.i192
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_width.exit195

params_width.exit195:                             ; preds = %for.inc.i.i.i192.params_width.exit195_crit_edge, %if.then.i.i.i189
  %retval.0.i.i.i193 = phi i32 [ %add.i.i.i188, %if.then.i.i.i189 ], [ 0, %for.inc.i.i.i192.params_width.exit195_crit_edge ]
  %call1.i194 = call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i193) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.238, i32 noundef %call1.i194) #9
  br label %cleanup

sw.epilog82:                                      ; preds = %sw.bb72, %sw.bb68
  %format.0 = phi i32 [ %conv75, %sw.bb72 ], [ %conv66, %sw.bb68 ]
  %conv83 = and i32 %format.0, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv83, i32 %conv2.i183)
  %cmp85.not = icmp eq i32 %conv83, %conv2.i183
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %mode.0)
  %cmp89.not = icmp eq i8 %27, %mode.0
  %or.cond166 = select i1 %cmp85.not, i1 %cmp89.not, i1 false
  br i1 %or.cond166, label %sw.epilog82.if.end104_crit_edge, label %if.then91

sw.epilog82.if.end104_crit_edge:                  ; preds = %sw.epilog82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then91:                                        ; preds = %sw.epilog82
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool92.not = icmp eq i32 %59, 0
  br i1 %tobool92.not, label %if.else98, label %if.then93

if.then93:                                        ; preds = %if.then91
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i197 = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %driver_data.i.i.i197 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %driver_data.i.i.i197, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i198 = icmp eq i32 %65, 0
  br i1 %cmp.i198, label %if.then93.twl4030_codec_enable.exit_crit_edge, label %if.end.i

if.then93.twl4030_codec_enable.exit_crit_edge:    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_codec_enable.exit

if.end.i:                                         ; preds = %if.then93
  %call3.i = call i32 @twl4030_audio_disable_resource(i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp5.i = icmp sgt i32 %call3.i, -1
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %63, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i.if.end8.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %67(i32 noundef 2147480) #6
  br label %twl4030_codec_enable.exit

twl4030_codec_enable.exit:                        ; preds = %if.end8.i, %if.then93.twl4030_codec_enable.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %68 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %mode.0, ptr %val.addr.i.i, align 1
  %call.i.i201 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 1, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %.pre.i = trunc i32 %format.0 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i202) #6
  %69 = ptrtoint ptr %val.addr.i.i202 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %.pre.i, ptr %val.addr.i.i202, align 1
  %call.i.i205 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i202, i8 noundef zeroext 14, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i202) #6
  %70 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i207 = getelementptr inbounds %struct.device, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %driver_data.i.i.i207 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %driver_data.i.i.i207, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp.i208 = icmp eq i32 %75, 1
  br i1 %cmp.i208, label %twl4030_codec_enable.exit.if.end104_crit_edge, label %if.end.i209

twl4030_codec_enable.exit.if.end104_crit_edge:    ; preds = %twl4030_codec_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.end.i209:                                      ; preds = %twl4030_codec_enable.exit
  %call2.i = call i32 @twl4030_audio_enable_resource(i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp5.i210 = icmp sgt i32 %call2.i, -1
  br i1 %cmp5.i210, label %if.then6.i211, label %if.end.i209.if.end8.i212_crit_edge

if.end.i209.if.end8.i212_crit_edge:               ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i212

if.then6.i211:                                    ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %73, align 4
  br label %if.end8.i212

if.end8.i212:                                     ; preds = %if.then6.i211, %if.end.i209.if.end8.i212_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %77(i32 noundef 2147480) #6
  br label %if.end104

if.else98:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i214) #6
  %78 = ptrtoint ptr %val.addr.i.i214 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %mode.0, ptr %val.addr.i.i214, align 1
  %call.i.i217 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i214, i8 noundef zeroext 1, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i214) #6
  %.pre.i221 = trunc i32 %format.0 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i218) #6
  %79 = ptrtoint ptr %val.addr.i.i218 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %.pre.i221, ptr %val.addr.i.i218, align 1
  %call.i.i222 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i218, i8 noundef zeroext 14, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i218) #6
  br label %if.end104

if.end104:                                        ; preds = %if.else98, %if.end8.i212, %twl4030_codec_enable.exit.if.end104_crit_edge, %sw.epilog82.if.end104_crit_edge
  %80 = ptrtoint ptr %configured to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %configured, align 4
  %81 = ptrtoint ptr %arrayidx.i.i177 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i.i177, align 4
  %rate = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 5
  %83 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %rate, align 4
  %intervals.i = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3
  %84 = ptrtoint ptr %intervals.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %intervals.i, align 4
  %sample_bits = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 6
  %86 = ptrtoint ptr %sample_bits to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %sample_bits, align 4
  %87 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i.i, align 4
  %channels = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 7
  %89 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %channels, align 4
  %slave_substream = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 3
  %90 = ptrtoint ptr %slave_substream to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %slave_substream, align 4
  %tobool109.not = icmp eq ptr %91, null
  br i1 %tobool109.not, label %if.end104.cleanup_crit_edge, label %if.then110

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then110:                                       ; preds = %if.end104
  %master_substream.i = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 2
  %92 = ptrtoint ptr %master_substream.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %master_substream.i, align 4
  %cmp.i225 = icmp eq ptr %93, %substream
  br i1 %cmp.i225, label %if.then110.if.end6.i_crit_edge, label %if.else.i

if.then110.if.end6.i_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.else.i:                                        ; preds = %if.then110
  %cmp2.i = icmp eq ptr %91, %substream
  br i1 %cmp2.i, label %if.else.i.if.end6.i_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.i.if.end6.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i.if.end6.i_crit_edge, %if.then110.if.end6.i_crit_edge
  %slv_substream.0.i = phi ptr [ %93, %if.else.i.if.end6.i_crit_edge ], [ %91, %if.then110.if.end6.i_crit_edge ]
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %slv_substream.0.i, i32 0, i32 11
  %94 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %runtime.i, align 4
  %call.i.i226 = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %95, i32 noundef 11, i32 noundef %82, i32 noundef %82) #6
  %96 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %runtime.i, align 4
  %98 = ptrtoint ptr %sample_bits to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sample_bits, align 4
  %call.i20.i = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %97, i32 noundef 8, i32 noundef %99, i32 noundef %99) #6
  %100 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %runtime.i, align 4
  %102 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %channels, align 4
  %call.i21.i = call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %101, i32 noundef 10, i32 noundef %103, i32 noundef %103) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.else.i.cleanup_crit_edge, %if.end104.cleanup_crit_edge, %params_width.exit195, %do.end, %if.end12.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %params_width.exit195 ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.end104.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ], [ 0, %if.end6.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_voice_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26000000, i32 %freq)
  %cmp.not = icmp eq i32 %freq, 26000000
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div = udiv i32 %freq, 1000
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.243, i32 noundef %div) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %sysclk = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26000, i32 %7)
  %cmp3.not = icmp eq i32 %7, 26000
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul i32 %7, 1000
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.235, i32 noundef 26000000, i32 noundef %mul) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_voice_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  %val.addr.i.i58 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %value.i, align 1
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i, i8 noundef zeroext 15, i32 noundef 1) #6
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %value.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  %9 = trunc i32 %fmt to i16
  %trunc = and i16 %9, -4096
  %10 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.274)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %sw.bb
    i16 16384, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv5 = and i8 %8, 127
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv8 = or i8 %8, -128
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  %format.0 = phi i8 [ %conv8, %sw.bb6 ], [ %conv5, %sw.bb ]
  %and9 = and i32 %fmt, 3840
  %11 = zext i32 %and9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.275)
  switch i32 %and9, label %sw.epilog.cleanup_crit_edge [
    i32 768, label %sw.bb10
    i32 512, label %sw.bb14
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %12 = and i8 %format.0, -9
  br label %sw.epilog19

sw.bb14:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %13 = or i8 %format.0, 8
  br label %sw.epilog19

sw.epilog19:                                      ; preds = %sw.bb14, %sw.bb10
  %format.1 = phi i8 [ %13, %sw.bb14 ], [ %12, %sw.bb10 ]
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %format.1)
  %cmp.not = icmp eq i8 %8, %format.1
  br i1 %cmp.not, label %sw.epilog19.cleanup_crit_edge, label %if.then

sw.epilog19.cleanup_crit_edge:                    ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %sw.epilog19
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i46 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i.i46, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %if.then23.twl4030_codec_enable.exit_crit_edge, label %if.end.i

if.then23.twl4030_codec_enable.exit_crit_edge:    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_codec_enable.exit

if.end.i:                                         ; preds = %if.then23
  %call3.i = call i32 @twl4030_audio_disable_resource(i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp5.i = icmp sgt i32 %call3.i, -1
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %19, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i.if.end8.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 2147480) #6
  br label %twl4030_codec_enable.exit

twl4030_codec_enable.exit:                        ; preds = %if.end8.i, %if.then23.twl4030_codec_enable.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %24 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %format.1, ptr %val.addr.i.i, align 1
  %call.i.i49 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 15, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i51 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %driver_data.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i.i51, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i52 = icmp eq i32 %30, 1
  br i1 %cmp.i52, label %twl4030_codec_enable.exit.cleanup_crit_edge, label %if.end.i53

twl4030_codec_enable.exit.cleanup_crit_edge:      ; preds = %twl4030_codec_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i53:                                       ; preds = %twl4030_codec_enable.exit
  %call2.i = call i32 @twl4030_audio_enable_resource(i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp5.i54 = icmp sgt i32 %call2.i, -1
  br i1 %cmp5.i54, label %if.then6.i55, label %if.end.i53.if.end8.i56_crit_edge

if.end.i53.if.end8.i56_crit_edge:                 ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i56

if.then6.i55:                                     ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %28, align 4
  br label %if.end8.i56

if.end8.i56:                                      ; preds = %if.then6.i55, %if.end.i53.if.end8.i56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 2147480) #6
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i58) #6
  %33 = ptrtoint ptr %val.addr.i.i58 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %format.1, ptr %val.addr.i.i58, align 1
  %call.i.i61 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i58, i8 noundef zeroext 15, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i58) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end8.i56, %twl4030_codec_enable.exit.cleanup_crit_edge, %sw.epilog19.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %sw.epilog19.cleanup_crit_edge ], [ 0, %twl4030_codec_enable.exit.cleanup_crit_edge ], [ 0, %if.end8.i56 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_voice_set_tristate(ptr nocapture noundef readonly %dai, i32 noundef %tristate) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %value.i, align 1
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i, i8 noundef zeroext 15, i32 noundef 1) #6
  %1 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %value.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tristate)
  %tobool.not = icmp eq i32 %tristate, 0
  %3 = and i8 %2, -5
  %masksel = select i1 %tobool.not, i8 0, i8 4
  %reg.0 = or i8 %3, %masksel
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %4 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %reg.0, ptr %val.addr.i.i, align 1
  %call.i.i13 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 15, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  ret i32 %call.i.i13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_voice_startup(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %sysclk = getelementptr inbounds %struct.twl4030_priv, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26000, i32 %7)
  %cmp.not = icmp eq i32 %7, 26000
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.246, i32 noundef %7) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %value.i, align 1
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i, i8 noundef zeroext 1, i32 noundef 1) #6
  %9 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %value.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp5.not = icmp eq i8 %11, 0
  br i1 %cmp5.not, label %if.end.cleanup_crit_edge, label %do.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.246) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_voice_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %val.addr.i.i.i = alloca i8, align 1
  %value.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #6
  %2 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %value.i.i, align 1
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i.i, i8 noundef zeroext 2, i32 noundef 1) #6
  %3 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %value.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %neg.i = select i1 %cmp.i, i8 -17, i8 -13
  %and.i = and i8 %4, %neg.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  %5 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %and.i, ptr %val.addr.i.i.i, align 1
  %call.i.i19.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_voice_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %val.addr.i.i51 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %value.i = alloca i8, align 1
  %val.addr.i.i.i = alloca i8, align 1
  %value.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #6
  %8 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %value.i.i, align 1
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i.i, i8 noundef zeroext 2, i32 noundef 1) #6
  %9 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %value.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  %..i = select i1 %cmp.i, i8 16, i8 12
  %or.i = or i8 %10, %..i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  %11 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %or.i, ptr %val.addr.i.i.i, align 1
  %call.i.i19.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext 2, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #6
  %12 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %value.i, align 1
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %value.i, i8 noundef zeroext 1, i32 noundef 1) #6
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %value.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #6
  %conv = and i8 %14, -3
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.276)
  switch i32 %16, label %do.end [
    i32 8000, label %sw.bb
    i32 16000, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv6 = and i8 %14, -11
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %18 = or i8 %conv, 8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.250, i32 noundef %16) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb
  %mode.0 = phi i8 [ %18, %sw.bb7 ], [ %conv6, %sw.bb ]
  call void @__sanitizer_cov_trace_cmp1(i8 %mode.0, i8 %conv)
  %cmp.not = icmp eq i8 %mode.0, %conv
  br i1 %cmp.not, label %sw.epilog.cleanup_crit_edge, label %if.then

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i38 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i.i38, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i39 = icmp eq i32 %28, 0
  br i1 %cmp.i39, label %if.then14.twl4030_codec_enable.exit_crit_edge, label %if.end.i

if.then14.twl4030_codec_enable.exit_crit_edge:    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl4030_codec_enable.exit

if.end.i:                                         ; preds = %if.then14
  %call3.i = call i32 @twl4030_audio_disable_resource(i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp5.i = icmp sgt i32 %call3.i, -1
  br i1 %cmp5.i, label %if.then6.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %26, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i.if.end8.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 2147480) #6
  br label %twl4030_codec_enable.exit

twl4030_codec_enable.exit:                        ; preds = %if.end8.i, %if.then14.twl4030_codec_enable.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %31 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %mode.0, ptr %val.addr.i.i, align 1
  %call.i.i42 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 1, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i44 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %driver_data.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i.i44, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i45 = icmp eq i32 %37, 1
  br i1 %cmp.i45, label %twl4030_codec_enable.exit.cleanup_crit_edge, label %if.end.i46

twl4030_codec_enable.exit.cleanup_crit_edge:      ; preds = %twl4030_codec_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i46:                                       ; preds = %twl4030_codec_enable.exit
  %call2.i = call i32 @twl4030_audio_enable_resource(i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp5.i47 = icmp sgt i32 %call2.i, -1
  br i1 %cmp5.i47, label %if.then6.i48, label %if.end.i46.if.end8.i49_crit_edge

if.end.i46.if.end8.i49_crit_edge:                 ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i49

if.then6.i48:                                     ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %35, align 4
  br label %if.end8.i49

if.end8.i49:                                      ; preds = %if.then6.i48, %if.end.i46.if.end8.i49_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 2147480) #6
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i51) #6
  %40 = ptrtoint ptr %val.addr.i.i51 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %mode.0, ptr %val.addr.i.i51, align 1
  %call.i.i54 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i51, i8 noundef zeroext 1, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i51) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end8.i49, %twl4030_codec_enable.exit.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.else ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %twl4030_codec_enable.exit.cleanup_crit_edge ], [ 0, %if.end8.i49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 320)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 320)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !457, !458, !459, !460, !462, !464, !465, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !489, !490, !491, !493, !494, !495, !497, !498, !499, !500, !502, !503, !504, !506, !508, !509, !510, !511, !513, !514, !516, !517, !518, !520, !521, !522, !524, !525}
!llvm.module.flags = !{!526, !527, !528, !529, !530, !531, !532, !533}
!llvm.ident = !{!534}

!0 = !{ptr @__UNIQUE_ID_alias294, !1, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/twl4030.c", i32 2203, i32 1}
!2 = !{ptr @__initcall__kmod_snd_soc_twl4030__295_2212_twl4030_codec_driver_init6, !3, !"__initcall__kmod_snd_soc_twl4030__295_2212_twl4030_codec_driver_init6", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/twl4030.c", i32 2212, i32 1}
!4 = !{ptr @__exitcall_twl4030_codec_driver_exit, !3, !"__exitcall_twl4030_codec_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/twl4030.c", i32 2214, i32 1}
!7 = !{ptr @__UNIQUE_ID_author297, !8, !"__UNIQUE_ID_author297", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/twl4030.c", i32 2215, i32 1}
!9 = !{ptr @__UNIQUE_ID_file298, !10, !"__UNIQUE_ID_file298", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/twl4030.c", i32 2216, i32 1}
!11 = !{ptr @__UNIQUE_ID_license299, !10, !"__UNIQUE_ID_license299", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/twl4030.c", i32 2208, i32 11}
!14 = !{ptr @twl4030_codec_driver, !15, !"twl4030_codec_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/twl4030.c", i32 2205, i32 31}
!16 = !{ptr @soc_component_dev_twl4030, !17, !"soc_component_dev_twl4030", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/twl4030.c", i32 2179, i32 46}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/twl4030.c", i32 1066, i32 2}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/twl4030.c", i32 1071, i32 2}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/twl4030.c", i32 1074, i32 2}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/twl4030.c", i32 1078, i32 2}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/twl4030.c", i32 1081, i32 2}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/twl4030.c", i32 1085, i32 2}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/twl4030.c", i32 1088, i32 2}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/twl4030.c", i32 1091, i32 2}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/twl4030.c", i32 1094, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/twl4030.c", i32 1099, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/twl4030.c", i32 1102, i32 2}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/twl4030.c", i32 1105, i32 2}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/twl4030.c", i32 1109, i32 2}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/twl4030.c", i32 1114, i32 2}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/twl4030.c", i32 1118, i32 2}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/twl4030.c", i32 1123, i32 2}
!50 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/twl4030.c", i32 1128, i32 2}
!52 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/twl4030.c", i32 1131, i32 2}
!54 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/twl4030.c", i32 1135, i32 2}
!56 = !{ptr @.str.37, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/twl4030.c", i32 1138, i32 2}
!58 = !{ptr @.str.38, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/twl4030.c", i32 1140, i32 2}
!60 = !{ptr @.str.39, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/twl4030.c", i32 1142, i32 2}
!62 = !{ptr @.str.40, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/twl4030.c", i32 1143, i32 2}
!64 = !{ptr @.str.41, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/twl4030.c", i32 1145, i32 2}
!66 = !{ptr @twl4030_snd_controls, !67, !"twl4030_snd_controls", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/twl4030.c", i32 1064, i32 38}
!68 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/twl4030.c", i32 961, i32 3}
!70 = !{ptr @.str.43, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.44, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.45, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.46, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @snd_soc_put_twl4030_opmode_enum_double._entry, !69, !"_entry", i1 false, i1 false}
!75 = !{ptr @snd_soc_put_twl4030_opmode_enum_double._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @twl4030_op_modes_enum, !77, !"twl4030_op_modes_enum", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/twl4030.c", i32 950, i32 8}
!78 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/twl4030.c", i32 947, i32 2}
!80 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/twl4030.c", i32 947, i32 28}
!82 = !{ptr @twl4030_op_modes_texts, !83, !"twl4030_op_modes_texts", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/twl4030.c", i32 946, i32 20}
!84 = !{ptr @digital_fine_tlv, !85, !"digital_fine_tlv", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/twl4030.c", i32 973, i32 8}
!86 = !{ptr @digital_coarse_tlv, !87, !"digital_coarse_tlv", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/twl4030.c", i32 980, i32 8}
!88 = !{ptr @analog_tlv, !89, !"analog_tlv", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/twl4030.c", i32 992, i32 8}
!90 = !{ptr @digital_voice_downlink_tlv, !91, !"digital_voice_downlink_tlv", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/twl4030.c", i32 986, i32 8}
!92 = !{ptr @output_tvl, !93, !"output_tvl", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/twl4030.c", i32 998, i32 8}
!94 = !{ptr @output_ear_tvl, !95, !"output_ear_tvl", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/twl4030.c", i32 1004, i32 8}
!96 = !{ptr @digital_capture_tlv, !97, !"digital_capture_tlv", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/twl4030.c", i32 1010, i32 8}
!98 = !{ptr @input_gain_tlv, !99, !"input_gain_tlv", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/twl4030.c", i32 1016, i32 8}
!100 = !{ptr @twl4030_avadc_clk_priority_enum, !101, !"twl4030_avadc_clk_priority_enum", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/twl4030.c", i32 1023, i32 8}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/twl4030.c", i32 1020, i32 2}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/twl4030.c", i32 1020, i32 25}
!106 = !{ptr @twl4030_avadc_clk_priority_texts, !107, !"twl4030_avadc_clk_priority_texts", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/twl4030.c", i32 1019, i32 20}
!108 = !{ptr @twl4030_rampdelay_enum, !109, !"twl4030_rampdelay_enum", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/twl4030.c", i32 1033, i32 8}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/twl4030.c", i32 1028, i32 2}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/twl4030.c", i32 1028, i32 17}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/twl4030.c", i32 1028, i32 32}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/twl4030.c", i32 1028, i32 48}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/twl4030.c", i32 1029, i32 2}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/twl4030.c", i32 1029, i32 20}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/twl4030.c", i32 1029, i32 38}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/twl4030.c", i32 1030, i32 2}
!126 = !{ptr @twl4030_rampdelay_texts, !127, !"twl4030_rampdelay_texts", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/twl4030.c", i32 1027, i32 20}
!128 = !{ptr @twl4030_vibradirmode_enum, !129, !"twl4030_vibradirmode_enum", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/twl4030.c", i32 1042, i32 8}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/twl4030.c", i32 1039, i32 30}
!132 = !{ptr @twl4030_vibradirmode_texts, !133, !"twl4030_vibradirmode_texts", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/twl4030.c", i32 1038, i32 20}
!134 = !{ptr @twl4030_vibradir_enum, !135, !"twl4030_vibradir_enum", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/twl4030.c", i32 1051, i32 8}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/twl4030.c", i32 1048, i32 2}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/twl4030.c", i32 1048, i32 23}
!140 = !{ptr @twl4030_vibradir_texts, !141, !"twl4030_vibradir_texts", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/twl4030.c", i32 1047, i32 20}
!142 = !{ptr @twl4030_digimicswap_enum, !143, !"twl4030_digimicswap_enum", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/twl4030.c", i32 1060, i32 8}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/twl4030.c", i32 1057, i32 2}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/twl4030.c", i32 1057, i32 17}
!148 = !{ptr @twl4030_digimicswap_texts, !149, !"twl4030_digimicswap_texts", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/twl4030.c", i32 1056, i32 20}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/twl4030.c", i32 1150, i32 2}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/twl4030.c", i32 1151, i32 2}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/twl4030.c", i32 1152, i32 2}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/twl4030.c", i32 1153, i32 2}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/twl4030.c", i32 1155, i32 2}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/twl4030.c", i32 1156, i32 2}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/twl4030.c", i32 1158, i32 2}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/twl4030.c", i32 1159, i32 2}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/twl4030.c", i32 1162, i32 2}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/twl4030.c", i32 1163, i32 2}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/twl4030.c", i32 1164, i32 2}
!172 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/twl4030.c", i32 1165, i32 2}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/twl4030.c", i32 1166, i32 2}
!176 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/twl4030.c", i32 1167, i32 2}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/twl4030.c", i32 1168, i32 2}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/twl4030.c", i32 1169, i32 2}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/twl4030.c", i32 1170, i32 2}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/twl4030.c", i32 1171, i32 2}
!186 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/twl4030.c", i32 1174, i32 2}
!188 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/twl4030.c", i32 1175, i32 2}
!190 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/twl4030.c", i32 1176, i32 2}
!192 = !{ptr @.str.85, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/twl4030.c", i32 1179, i32 2}
!194 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/twl4030.c", i32 1180, i32 2}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/twl4030.c", i32 1181, i32 2}
!198 = !{ptr @.str.88, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/twl4030.c", i32 1182, i32 2}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/twl4030.c", i32 1183, i32 2}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/twl4030.c", i32 1185, i32 2}
!204 = !{ptr @.str.91, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.92, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/twl4030.c", i32 1189, i32 2}
!207 = !{ptr @.str.93, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/twl4030.c", i32 1191, i32 2}
!209 = !{ptr @.str.94, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/twl4030.c", i32 1193, i32 2}
!211 = !{ptr @.str.95, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/twl4030.c", i32 1195, i32 2}
!213 = !{ptr @.str.96, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/twl4030.c", i32 1197, i32 2}
!215 = !{ptr @.str.97, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/twl4030.c", i32 1201, i32 2}
!217 = !{ptr @.str.98, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/twl4030.c", i32 1205, i32 2}
!219 = !{ptr @.str.99, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/twl4030.c", i32 1207, i32 2}
!221 = !{ptr @.str.100, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/twl4030.c", i32 1209, i32 2}
!223 = !{ptr @.str.101, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/twl4030.c", i32 1213, i32 2}
!225 = !{ptr @.str.102, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/twl4030.c", i32 1215, i32 2}
!227 = !{ptr @.str.103, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/twl4030.c", i32 1217, i32 2}
!229 = !{ptr @.str.104, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/twl4030.c", i32 1219, i32 2}
!231 = !{ptr @.str.105, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/twl4030.c", i32 1221, i32 2}
!233 = !{ptr @.str.106, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/twl4030.c", i32 1225, i32 2}
!235 = !{ptr @.str.107, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/twl4030.c", i32 1227, i32 2}
!237 = !{ptr @.str.108, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/twl4030.c", i32 1229, i32 2}
!239 = !{ptr @.str.109, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/twl4030.c", i32 1231, i32 2}
!241 = !{ptr @.str.110, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/twl4030.c", i32 1233, i32 2}
!243 = !{ptr @.str.111, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/twl4030.c", i32 1236, i32 2}
!245 = !{ptr @.str.112, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/twl4030.c", i32 1239, i32 2}
!247 = !{ptr @.str.113, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/twl4030.c", i32 1244, i32 2}
!249 = !{ptr @.str.114, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/twl4030.c", i32 1247, i32 2}
!251 = !{ptr @.str.115, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/twl4030.c", i32 1251, i32 2}
!253 = !{ptr @.str.116, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/twl4030.c", i32 1254, i32 2}
!255 = !{ptr @.str.117, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/twl4030.c", i32 1257, i32 2}
!257 = !{ptr @.str.118, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/twl4030.c", i32 1260, i32 2}
!259 = !{ptr @.str.119, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/twl4030.c", i32 1264, i32 2}
!261 = !{ptr @.str.120, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/twl4030.c", i32 1267, i32 2}
!263 = !{ptr @.str.121, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/twl4030.c", i32 1270, i32 2}
!265 = !{ptr @.str.122, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/twl4030.c", i32 1273, i32 2}
!267 = !{ptr @.str.123, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/twl4030.c", i32 1277, i32 2}
!269 = !{ptr @.str.124, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/twl4030.c", i32 1280, i32 2}
!271 = !{ptr @.str.125, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/twl4030.c", i32 1283, i32 2}
!273 = !{ptr @.str.126, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/twl4030.c", i32 1286, i32 2}
!275 = !{ptr @.str.127, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/twl4030.c", i32 1292, i32 2}
!277 = !{ptr @.str.128, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/twl4030.c", i32 1294, i32 2}
!279 = !{ptr @.str.129, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/twl4030.c", i32 1296, i32 2}
!281 = !{ptr @.str.130, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/twl4030.c", i32 1299, i32 2}
!283 = !{ptr @.str.131, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/twl4030.c", i32 1301, i32 2}
!285 = !{ptr @.str.132, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/twl4030.c", i32 1303, i32 2}
!287 = !{ptr @.str.133, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/twl4030.c", i32 1307, i32 2}
!289 = !{ptr @.str.134, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/twl4030.c", i32 1310, i32 2}
!291 = !{ptr @.str.135, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/twl4030.c", i32 1315, i32 2}
!293 = !{ptr @.str.136, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/twl4030.c", i32 1316, i32 2}
!295 = !{ptr @.str.137, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/twl4030.c", i32 1317, i32 2}
!297 = !{ptr @.str.138, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/twl4030.c", i32 1318, i32 2}
!299 = !{ptr @.str.139, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/twl4030.c", i32 1320, i32 2}
!301 = !{ptr @.str.140, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.141, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/twl4030.c", i32 1326, i32 2}
!304 = !{ptr @.str.142, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/twl4030.c", i32 1328, i32 2}
!306 = !{ptr @.str.143, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/twl4030.c", i32 1332, i32 2}
!308 = !{ptr @.str.144, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/twl4030.c", i32 1336, i32 2}
!310 = !{ptr @.str.145, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/twl4030.c", i32 1341, i32 2}
!312 = !{ptr @.str.146, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/twl4030.c", i32 1343, i32 2}
!314 = !{ptr @.str.147, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/twl4030.c", i32 1346, i32 2}
!316 = !{ptr @.str.148, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/twl4030.c", i32 1349, i32 2}
!318 = !{ptr @.str.149, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/twl4030.c", i32 1353, i32 2}
!320 = !{ptr @.str.150, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/twl4030.c", i32 1355, i32 2}
!322 = !{ptr @.str.151, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/twl4030.c", i32 1359, i32 2}
!324 = !{ptr @.str.152, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/twl4030.c", i32 1361, i32 2}
!326 = !{ptr @.str.153, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/twl4030.c", i32 1363, i32 2}
!328 = !{ptr @.str.154, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/twl4030.c", i32 1366, i32 2}
!330 = !{ptr @twl4030_dapm_widgets, !331, !"twl4030_dapm_widgets", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/twl4030.c", i32 1148, i32 41}
!332 = !{ptr @.str.156, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/twl4030.c", i32 495, i32 2}
!334 = !{ptr @twl4030_dapm_abypassr1_control, !335, !"twl4030_dapm_abypassr1_control", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/twl4030.c", i32 494, i32 38}
!336 = !{ptr @twl4030_dapm_abypassl1_control, !337, !"twl4030_dapm_abypassl1_control", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/twl4030.c", i32 498, i32 38}
!338 = !{ptr @twl4030_dapm_abypassr2_control, !339, !"twl4030_dapm_abypassr2_control", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/twl4030.c", i32 502, i32 38}
!340 = !{ptr @twl4030_dapm_abypassl2_control, !341, !"twl4030_dapm_abypassl2_control", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/twl4030.c", i32 506, i32 38}
!342 = !{ptr @twl4030_dapm_abypassv_control, !343, !"twl4030_dapm_abypassv_control", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/twl4030.c", i32 510, i32 38}
!344 = !{ptr @.str.162, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/twl4030.c", i32 522, i32 2}
!346 = !{ptr @twl4030_dapm_dbypassl_control, !347, !"twl4030_dapm_dbypassl_control", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/twl4030.c", i32 521, i32 38}
!348 = !{ptr @twl4030_dapm_dbypass_tlv, !349, !"twl4030_dapm_dbypass_tlv", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/twl4030.c", i32 514, i32 14}
!350 = !{ptr @twl4030_dapm_dbypassr_control, !351, !"twl4030_dapm_dbypassr_control", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/twl4030.c", i32 527, i32 38}
!352 = !{ptr @twl4030_dapm_dbypassv_control, !353, !"twl4030_dapm_dbypassv_control", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/twl4030.c", i32 539, i32 38}
!354 = !{ptr @twl4030_dapm_dbypassv_tlv, !355, !"twl4030_dapm_dbypassv_tlv", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/twl4030.c", i32 536, i32 8}
!356 = !{ptr @.str.166, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/twl4030.c", i32 350, i32 2}
!358 = !{ptr @.str.168, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/twl4030.c", i32 351, i32 2}
!360 = !{ptr @.str.170, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/twl4030.c", i32 352, i32 2}
!362 = !{ptr @.str.172, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/twl4030.c", i32 353, i32 2}
!364 = !{ptr @twl4030_dapm_earpiece_controls, !365, !"twl4030_dapm_earpiece_controls", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/twl4030.c", i32 349, i32 38}
!366 = !{ptr @.str.177, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/soc/codecs/twl4030.c", i32 361, i32 2}
!368 = !{ptr @twl4030_dapm_predrivel_controls, !369, !"twl4030_dapm_predrivel_controls", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/twl4030.c", i32 357, i32 38}
!370 = !{ptr @twl4030_dapm_predriver_controls, !371, !"twl4030_dapm_predriver_controls", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/twl4030.c", i32 365, i32 38}
!372 = !{ptr @twl4030_dapm_hsol_controls, !373, !"twl4030_dapm_hsol_controls", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/twl4030.c", i32 373, i32 38}
!374 = !{ptr @twl4030_dapm_hsor_controls, !375, !"twl4030_dapm_hsor_controls", i1 false, i1 false}
!375 = !{!"../sound/soc/codecs/twl4030.c", i32 380, i32 38}
!376 = !{ptr @twl4030_dapm_carkitl_controls, !377, !"twl4030_dapm_carkitl_controls", i1 false, i1 false}
!377 = !{!"../sound/soc/codecs/twl4030.c", i32 387, i32 38}
!378 = !{ptr @twl4030_dapm_carkitr_controls, !379, !"twl4030_dapm_carkitr_controls", i1 false, i1 false}
!379 = !{!"../sound/soc/codecs/twl4030.c", i32 394, i32 38}
!380 = !{ptr @.str.195, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../sound/soc/codecs/twl4030.c", i32 409, i32 1}
!382 = !{ptr @twl4030_dapm_handsfreel_control, !383, !"twl4030_dapm_handsfreel_control", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/twl4030.c", i32 408, i32 38}
!384 = !{ptr @twl4030_handsfreel_enum, !385, !"twl4030_handsfreel_enum", i1 false, i1 false}
!385 = !{!"../sound/soc/codecs/twl4030.c", i32 404, i32 8}
!386 = !{ptr @twl4030_handsfreel_texts, !387, !"twl4030_handsfreel_texts", i1 false, i1 false}
!387 = !{!"../sound/soc/codecs/twl4030.c", i32 401, i32 20}
!388 = !{ptr @twl4030_dapm_handsfreelmute_control, !389, !"twl4030_dapm_handsfreelmute_control", i1 false, i1 false}
!389 = !{!"../sound/soc/codecs/twl4030.c", i32 412, i32 38}
!390 = !{ptr @twl4030_dapm_handsfreer_control, !391, !"twl4030_dapm_handsfreer_control", i1 false, i1 false}
!391 = !{!"../sound/soc/codecs/twl4030.c", i32 423, i32 38}
!392 = !{ptr @twl4030_handsfreer_enum, !393, !"twl4030_handsfreer_enum", i1 false, i1 false}
!393 = !{!"../sound/soc/codecs/twl4030.c", i32 419, i32 8}
!394 = !{ptr @twl4030_handsfreer_texts, !395, !"twl4030_handsfreer_texts", i1 false, i1 false}
!395 = !{!"../sound/soc/codecs/twl4030.c", i32 416, i32 20}
!396 = !{ptr @twl4030_dapm_handsfreermute_control, !397, !"twl4030_dapm_handsfreermute_control", i1 false, i1 false}
!397 = !{!"../sound/soc/codecs/twl4030.c", i32 427, i32 38}
!398 = !{ptr @twl4030_dapm_vibra_control, !399, !"twl4030_dapm_vibra_control", i1 false, i1 false}
!399 = !{!"../sound/soc/codecs/twl4030.c", i32 439, i32 38}
!400 = !{ptr @twl4030_vibra_enum, !401, !"twl4030_vibra_enum", i1 false, i1 false}
!401 = !{!"../sound/soc/codecs/twl4030.c", i32 435, i32 8}
!402 = !{ptr @twl4030_vibra_texts, !403, !"twl4030_vibra_texts", i1 false, i1 false}
!403 = !{!"../sound/soc/codecs/twl4030.c", i32 432, i32 20}
!404 = !{ptr @twl4030_dapm_vibrapath_control, !405, !"twl4030_dapm_vibrapath_control", i1 false, i1 false}
!405 = !{!"../sound/soc/codecs/twl4030.c", i32 450, i32 38}
!406 = !{ptr @twl4030_vibrapath_enum, !407, !"twl4030_vibrapath_enum", i1 false, i1 false}
!407 = !{!"../sound/soc/codecs/twl4030.c", i32 446, i32 8}
!408 = !{ptr @.str.198, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/soc/codecs/twl4030.c", i32 444, i32 4}
!410 = !{ptr @.str.199, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../sound/soc/codecs/twl4030.c", i32 444, i32 22}
!412 = !{ptr @twl4030_vibrapath_texts, !413, !"twl4030_vibrapath_texts", i1 false, i1 false}
!413 = !{!"../sound/soc/codecs/twl4030.c", i32 443, i32 20}
!414 = !{ptr @twl4030_dapm_micpathtx1_control, !415, !"twl4030_dapm_micpathtx1_control", i1 false, i1 false}
!415 = !{!"../sound/soc/codecs/twl4030.c", i32 479, i32 38}
!416 = !{ptr @twl4030_micpathtx1_enum, !417, !"twl4030_micpathtx1_enum", i1 false, i1 false}
!417 = !{!"../sound/soc/codecs/twl4030.c", i32 475, i32 8}
!418 = !{ptr @.str.200, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../sound/soc/codecs/twl4030.c", i32 473, i32 4}
!420 = !{ptr @.str.201, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../sound/soc/codecs/twl4030.c", i32 473, i32 14}
!422 = !{ptr @twl4030_micpathtx1_texts, !423, !"twl4030_micpathtx1_texts", i1 false, i1 false}
!423 = !{!"../sound/soc/codecs/twl4030.c", i32 472, i32 20}
!424 = !{ptr @twl4030_dapm_micpathtx2_control, !425, !"twl4030_dapm_micpathtx2_control", i1 false, i1 false}
!425 = !{!"../sound/soc/codecs/twl4030.c", i32 490, i32 38}
!426 = !{ptr @twl4030_micpathtx2_enum, !427, !"twl4030_micpathtx2_enum", i1 false, i1 false}
!427 = !{!"../sound/soc/codecs/twl4030.c", i32 486, i32 8}
!428 = !{ptr @.str.202, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../sound/soc/codecs/twl4030.c", i32 484, i32 14}
!430 = !{ptr @twl4030_micpathtx2_texts, !431, !"twl4030_micpathtx2_texts", i1 false, i1 false}
!431 = !{!"../sound/soc/codecs/twl4030.c", i32 483, i32 20}
!432 = !{ptr @.str.203, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../sound/soc/codecs/twl4030.c", i32 455, i32 2}
!434 = !{ptr @.str.205, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../sound/soc/codecs/twl4030.c", i32 457, i32 2}
!436 = !{ptr @.str.207, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/soc/codecs/twl4030.c", i32 459, i32 2}
!438 = !{ptr @.str.209, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../sound/soc/codecs/twl4030.c", i32 461, i32 2}
!440 = !{ptr @twl4030_dapm_analoglmic_controls, !441, !"twl4030_dapm_analoglmic_controls", i1 false, i1 false}
!441 = !{!"../sound/soc/codecs/twl4030.c", i32 454, i32 38}
!442 = !{ptr @.str.211, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../sound/soc/codecs/twl4030.c", i32 467, i32 2}
!444 = !{ptr @.str.213, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/soc/codecs/twl4030.c", i32 468, i32 2}
!446 = !{ptr @twl4030_dapm_analogrmic_controls, !447, !"twl4030_dapm_analogrmic_controls", i1 false, i1 false}
!447 = !{!"../sound/soc/codecs/twl4030.c", i32 466, i32 38}
!448 = !{ptr @.str.215, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../sound/soc/codecs/twl4030.c", i32 1371, i32 23}
!450 = !{ptr @.str.216, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/soc/codecs/twl4030.c", i32 1378, i32 3}
!452 = !{ptr @intercon, !453, !"intercon", i1 false, i1 false}
!453 = !{!"../sound/soc/codecs/twl4030.c", i32 1369, i32 40}
!454 = !{ptr @.str.217, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/soc/codecs/twl4030.c", i32 253, i32 5}
!456 = !{ptr @.str.218, !455, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @.str.219, !455, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @twl4030_init_chip._entry, !455, !"_entry", i1 false, i1 false}
!459 = !{ptr @twl4030_init_chip._entry_ptr, !455, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @.str.220, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../sound/soc/codecs/twl4030.c", i32 258, i32 13}
!462 = !{ptr @.str.222, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../sound/soc/codecs/twl4030.c", i32 260, i32 5}
!464 = !{ptr @twl4030_init_chip._entry.221, !463, !"_entry", i1 false, i1 false}
!465 = !{ptr @twl4030_init_chip._entry_ptr.223, !463, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @.str.224, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../sound/soc/codecs/twl4030.c", i32 222, i32 9}
!468 = !{ptr @.str.225, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../sound/soc/codecs/twl4030.c", i32 201, i32 29}
!470 = !{ptr @.str.226, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../sound/soc/codecs/twl4030.c", i32 203, i32 29}
!472 = !{ptr @.str.227, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../sound/soc/codecs/twl4030.c", i32 205, i32 29}
!474 = !{ptr @.str.228, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../sound/soc/codecs/twl4030.c", i32 207, i32 34}
!476 = !{ptr @.str.229, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../sound/soc/codecs/twl4030.c", i32 211, i32 10}
!478 = !{ptr @.str.230, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../sound/soc/codecs/twl4030.c", i32 2118, i32 10}
!480 = !{ptr @.str.231, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../sound/soc/codecs/twl4030.c", i32 2136, i32 10}
!482 = !{ptr @twl4030_dai, !483, !"twl4030_dai", i1 false, i1 false}
!483 = !{!"../sound/soc/codecs/twl4030.c", i32 2116, i32 34}
!484 = !{ptr @twl4030_dai_hifi_ops, !485, !"twl4030_dai_hifi_ops", i1 false, i1 false}
!485 = !{!"../sound/soc/codecs/twl4030.c", i32 2098, i32 37}
!486 = !{ptr @.str.232, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../sound/soc/codecs/twl4030.c", i32 1819, i32 3}
!488 = !{ptr @.str.233, !487, !"<string literal>", i1 false, i1 false}
!489 = !{ptr @twl4030_set_dai_sysclk._entry, !487, !"_entry", i1 false, i1 false}
!490 = !{ptr @twl4030_set_dai_sysclk._entry_ptr, !487, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.235, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../sound/soc/codecs/twl4030.c", i32 1824, i32 3}
!493 = !{ptr @twl4030_set_dai_sysclk._entry.234, !492, !"_entry", i1 false, i1 false}
!494 = !{ptr @twl4030_set_dai_sysclk._entry_ptr.236, !492, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @.str.237, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../sound/soc/codecs/twl4030.c", i32 1752, i32 3}
!497 = !{ptr @.str.238, !496, !"<string literal>", i1 false, i1 false}
!498 = !{ptr @twl4030_hw_params._entry, !496, !"_entry", i1 false, i1 false}
!499 = !{ptr @twl4030_hw_params._entry_ptr, !496, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @.str.240, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../sound/soc/codecs/twl4030.c", i32 1769, i32 3}
!502 = !{ptr @twl4030_hw_params._entry.239, !501, !"_entry", i1 false, i1 false}
!503 = !{ptr @twl4030_hw_params._entry_ptr.241, !501, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @twl4030_dai_voice_ops, !505, !"twl4030_dai_voice_ops", i1 false, i1 false}
!505 = !{!"../sound/soc/codecs/twl4030.c", i32 2107, i32 37}
!506 = !{ptr @.str.242, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../sound/soc/codecs/twl4030.c", i32 2016, i32 3}
!508 = !{ptr @.str.243, !507, !"<string literal>", i1 false, i1 false}
!509 = !{ptr @twl4030_voice_set_dai_sysclk._entry, !507, !"_entry", i1 false, i1 false}
!510 = !{ptr @twl4030_voice_set_dai_sysclk._entry_ptr, !507, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @twl4030_voice_set_dai_sysclk._entry.244, !512, !"_entry", i1 false, i1 false}
!512 = !{!"../sound/soc/codecs/twl4030.c", i32 2022, i32 3}
!513 = !{ptr @twl4030_voice_set_dai_sysclk._entry_ptr.245, !512, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @.str.246, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../sound/soc/codecs/twl4030.c", i32 1933, i32 3}
!516 = !{ptr @twl4030_voice_startup._entry, !515, !"_entry", i1 false, i1 false}
!517 = !{ptr @twl4030_voice_startup._entry_ptr, !515, !"_entry_ptr", i1 false, i1 false}
!518 = !{ptr @.str.248, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../sound/soc/codecs/twl4030.c", i32 1946, i32 3}
!520 = !{ptr @twl4030_voice_startup._entry.247, !519, !"_entry", i1 false, i1 false}
!521 = !{ptr @twl4030_voice_startup._entry_ptr.249, !519, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @.str.250, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../sound/soc/codecs/twl4030.c", i32 1987, i32 3}
!524 = !{ptr @twl4030_voice_hw_params._entry, !523, !"_entry", i1 false, i1 false}
!525 = !{ptr @twl4030_voice_hw_params._entry_ptr, !523, !"_entry_ptr", i1 false, i1 false}
!526 = !{i32 1, !"wchar_size", i32 2}
!527 = !{i32 1, !"min_enum_size", i32 4}
!528 = !{i32 8, !"branch-target-enforcement", i32 0}
!529 = !{i32 8, !"sign-return-address", i32 0}
!530 = !{i32 8, !"sign-return-address-all", i32 0}
!531 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!532 = !{i32 7, !"uwtable", i32 1}
!533 = !{i32 7, !"frame-pointer", i32 2}
!534 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!535 = !{!"auto-init"}
!536 = !{i32 0, i32 33}
