; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt715.c_pt.bc'
source_filename = "../sound/soc/codecs/rt715.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.rt715_priv = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.sdw_bus_params, i8, i8, [2 x i32], [8 x i32], [8 x i32] }
%struct.sdw_bus_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sdw_slave = type { %struct.sdw_slave_id, %struct.device, i32, ptr, ptr, %struct.sdw_slave_prop, ptr, %struct.list_head, [15 x %struct.completion], [15 x i32], i16, i16, i8, %struct.completion, %struct.completion, %struct.completion, i32, i8, i8 }
%struct.sdw_slave_id = type { i16, i16, i8, i8, i8 }
%struct.sdw_slave_prop = type { i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, i8, i32, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.92, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.92 = type { %struct.anon.95, [40 x i8] }
%struct.anon.95 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.90, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.90 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.85, [128 x i8] }
%union.anon.85 = type { %union.anon.87 }
%union.anon.87 = type { [64 x i64] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.sdw_stream_config = type { i32, i32, i32, i32, i32 }
%struct.sdw_port_config = type { i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@soc_codec_dev_rt715 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @rt715_snd_controls, i32 10, ptr @rt715_dapm_widgets, i32 18, ptr @rt715_audio_map, i32 34, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt715_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rt715_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.49, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt715_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.42, i64 68719476805, i32 192, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.50, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt715_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.40, i64 68719476805, i32 192, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description295 = internal constant [44 x i8] c"snd_soc_rt715.description=ASoC rt715 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [48 x i8] c"snd_soc_rt715.description=ASoC rt715 driver SDW\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [51 x i8] c"snd_soc_rt715.author=Jack Yu <jack.yu@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [50 x i8] c"snd_soc_rt715.file=sound/soc/codecs/snd-soc-rt715\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [29 x i8] c"snd_soc_rt715.license=GPL v2\00", section ".modinfo", align 1
@rt715_snd_controls = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str, i32 0, i32 0, i32 0, ptr @rt715_switch_info, ptr @rt715_set_main_switch_get, ptr @rt715_set_main_switch_put, %union.anon.96 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.1, i32 0, i32 19, i32 0, ptr @rt715_vol_info, ptr @rt715_set_main_vol_get, ptr @rt715_set_main_vol_put, %union.anon.96 { ptr @in_vol_tlv }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.2, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt715_set_amp_gain_get, ptr @rt715_set_amp_gain_put, %union.anon.96 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt715_set_amp_gain_get, ptr @rt715_set_amp_gain_put, %union.anon.96 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.4 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt715_set_amp_gain_get, ptr @rt715_set_amp_gain_put, %union.anon.96 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.6 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt715_set_amp_gain_get, ptr @rt715_set_amp_gain_put, %union.anon.96 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt715_set_amp_gain_get, ptr @rt715_set_amp_gain_put, %union.anon.96 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.10 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt715_set_amp_gain_get, ptr @rt715_set_amp_gain_put, %union.anon.96 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt715_set_amp_gain_get, ptr @rt715_set_amp_gain_put, %union.anon.96 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt715_set_amp_gain_get, ptr @rt715_set_amp_gain_put, %union.anon.96 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }], [96 x i8] zeroinitializer }, align 32
@rt715_audio_map = internal constant { [34 x %struct.snd_soc_dapm_route], [440 x i8] } { [34 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr null, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.32, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.31, ptr null, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.34, ptr null, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr @.str.27, ptr @.str.27, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr @.str.28, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr @.str.29, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr @.str.30, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr @.str.23, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr @.str.24, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr @.str.25, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr @.str.26, ptr @.str.26, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr @.str.27, ptr @.str.27, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr @.str.28, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr @.str.29, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr @.str.30, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr @.str.23, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr @.str.24, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr @.str.25, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr @.str.26, ptr @.str.26, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr @.str.28, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr @.str.23, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr @.str.24, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr @.str.25, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr @.str.26, ptr @.str.26, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr @.str.27, ptr @.str.27, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr @.str.23, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr @.str.24, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr @.str.25, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr @.str.26, ptr @.str.26, ptr null, %struct.snd_soc_dobj zeroinitializer }], [440 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Switch\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@in_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1725, i32 75], [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC1 Boost\00", [20 x i8] zeroinitializer }, align 32
@mic_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 1000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 29458, i32 33682, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC2 Boost\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 29459, i32 33683, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC3 Boost\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 29469, i32 33693, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC4 Boost\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 29481, i32 33705, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MIC1 Boost\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 29464, i32 33688, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MIC2 Boost\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 29465, i32 33689, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LINE1 Boost\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 29466, i32 33690, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LINE2 Boost\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 29467, i32 33691, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@rt715_get_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Failed to get R channel gain.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rt715_get_gain\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/codecs/rt715.c\00", [39 x i8] zeroinitializer }, align 32
@rt715_get_gain._entry_ptr = internal global ptr @rt715_get_gain._entry, section ".printk_index", align 4
@rt715_get_gain._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.19, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Failed to get L channel gain.\0A\00", [63 x i8] zeroinitializer }, align 32
@rt715_get_gain._entry_ptr.22 = internal global ptr @rt715_get_gain._entry.20, section ".printk_index", align 4
@__const.rt715_set_main_vol_put.capture_reg_H = private unnamed_addr constant [4 x i32] [i32 29447, i32 29448, i32 29449, i32 29479], align 4
@__const.rt715_set_main_vol_put.capture_reg_L = private unnamed_addr constant [4 x i32] [i32 33671, i32 33672, i32 33673, i32 33703], align 4
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC1\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC2\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC3\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC4\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC1\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC2\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LINE1\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LINE2\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADC 07\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADC 08\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADC 09\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADC 27\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC 22 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt715_adc22_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rt715_mux_get, ptr @rt715_mux_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt715_adc22_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC 23 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt715_adc23_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rt715_mux_get, ptr @rt715_mux_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt715_adc23_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC 24 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt715_adc24_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rt715_mux_get, ptr @rt715_mux_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt715_adc24_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC 25 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt715_adc25_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rt715_mux_get, ptr @rt715_mux_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rt715_adc25_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DP4TX\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DP4 Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DP6TX\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DP6 Capture\00", [20 x i8] zeroinitializer }, align 32
@rt715_dapm_widgets = internal constant { [18 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [824 x i8] } { [18 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.23, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.24, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.25, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.26, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.27, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.29, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.31, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13831, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.32, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13832, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.33, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13833, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.34, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13863, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.35, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt715_adc22_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.36, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt715_adc23_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.37, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt715_adc24_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt715_adc25_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.39, ptr @.str.40, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.41, ptr @.str.42, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [824 x i8] zeroinitializer }, align 32
@rt715_adc22_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 34, i8 0, i8 0, i32 8, i32 7, ptr @adc_22_23_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt715_mux_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.19, i32 519, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: sdw read failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt715_mux_get\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt715_mux_get._entry_ptr = internal global ptr @rt715_mux_get._entry, section ".printk_index", align 4
@rt715_mux_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.48, ptr @.str.19, i32 558, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt715_mux_put\00", [18 x i8] zeroinitializer }, align 32
@rt715_mux_put._entry_ptr = internal global ptr @rt715_mux_put._entry, section ".printk_index", align 4
@adc_22_23_mux_text = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], [32 x i8] zeroinitializer }, align 32
@rt715_adc23_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 35, i8 0, i8 0, i32 8, i32 7, ptr @adc_22_23_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt715_adc24_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 36, i8 0, i8 0, i32 5, i32 15, ptr @adc_24_mux_text, ptr @rt715_adc_24_25_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc_24_mux_text = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.28, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], [44 x i8] zeroinitializer }, align 32
@rt715_adc_24_25_values = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 2, i32 3, i32 4, i32 5], [44 x i8] zeroinitializer }, align 32
@rt715_adc25_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 37, i8 0, i8 0, i32 5, i32 15, ptr @adc_25_mux_text, ptr @rt715_adc_24_25_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc_25_mux_text = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.27, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt715-aif1\00", [21 x i8] zeroinitializer }, align 32
@rt715_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt715_set_sdw_stream, ptr null, ptr null, ptr null, ptr @rt715_shutdown, ptr @rt715_pcm_hw_params, ptr @rt715_pcm_hw_free, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt715-aif2\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rt715_pcm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.19, i32 818, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid DAI id %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rt715_pcm_hw_params\00", [44 x i8] zeroinitializer }, align 32
@rt715_pcm_hw_params._entry_ptr = internal global ptr @rt715_pcm_hw_params._entry, section ".printk_index", align 4
@rt715_pcm_hw_params._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.19, i32 834, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to configure port\0A\00", [38 x i8] zeroinitializer }, align 32
@rt715_pcm_hw_params._entry_ptr.55 = internal global ptr @rt715_pcm_hw_params._entry.53, section ".printk_index", align 4
@rt715_pcm_hw_params._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.19, i32 849, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported sample rate %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rt715_pcm_hw_params._entry_ptr.58 = internal global ptr @rt715_pcm_hw_params._entry.56, section ".printk_index", align 4
@rt715_pcm_hw_params._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.52, ptr @.str.19, i32 858, ptr @.str.46, ptr @.str.47 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported channels %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rt715_pcm_hw_params._entry_ptr.61 = internal global ptr @rt715_pcm_hw_params._entry.59, section ".printk_index", align 4
@rt715_index_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.19, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Failed to set private value: %08x <= %04x %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rt715_index_write\00", [46 x i8] zeroinitializer }, align 32
@rt715_index_write._entry_ptr = internal global ptr @rt715_index_write._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 2400000, i64 4800000, i64 6000000, i64 9600000, i64 12000000, i64 12288000]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.67 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 6]
@___asan_gen_.68 = private unnamed_addr constant [20 x i8] c"soc_codec_dev_rt715\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 740, i32 46 }
@___asan_gen_.71 = private unnamed_addr constant [10 x i8] c"rt715_dai\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 916, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c"rt715_snd_controls\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 462, i32 38 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"rt715_audio_map\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 673, i32 40 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 464, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 467, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [11 x i8] c"in_vol_tlv\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 416, i32 14 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 470, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"mic_vol_tlv\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 417, i32 14 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 474, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 478, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 482, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 486, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 490, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 494, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 498, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 63, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 70, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 649, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 650, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 651, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 652, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 653, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 654, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 655, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 656, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 657, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 658, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 659, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 660, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 661, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [16 x i8] c"rt715_adc22_mux\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 632, i32 38 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 663, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [16 x i8] c"rt715_adc23_mux\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 636, i32 38 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 665, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [16 x i8] c"rt715_adc24_mux\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 640, i32 38 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 667, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [16 x i8] c"rt715_adc25_mux\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 644, i32 38 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 669, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 670, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [19 x i8] c"rt715_dapm_widgets\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 648, i32 41 }
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"rt715_adc22_enum\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 618, i32 8 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 518, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 557, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant [19 x i8] c"adc_22_23_mux_text\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 578, i32 27 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"rt715_adc23_enum\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 621, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"rt715_adc24_enum\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 624, i32 8 }
@___asan_gen_.250 = private unnamed_addr constant [16 x i8] c"adc_24_mux_text\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 602, i32 27 }
@___asan_gen_.253 = private unnamed_addr constant [23 x i8] c"rt715_adc_24_25_values\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 594, i32 27 }
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"rt715_adc25_enum\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 628, i32 8 }
@___asan_gen_.259 = private unnamed_addr constant [16 x i8] c"adc_25_mux_text\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 610, i32 27 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 918, i32 11 }
@___asan_gen_.265 = private unnamed_addr constant [10 x i8] c"rt715_ops\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 909, i32 37 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 930, i32 11 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 818, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 834, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 848, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 857, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.305 = private constant [28 x i8] c"../sound/soc/codecs/rt715.c\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 47, i32 3 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @rt715_get_gain._entry, ptr @rt715_get_gain._entry.20, ptr @rt715_get_gain._entry_ptr, ptr @rt715_get_gain._entry_ptr.22, ptr @rt715_index_write._entry, ptr @rt715_index_write._entry_ptr, ptr @rt715_mux_get._entry, ptr @rt715_mux_get._entry_ptr, ptr @rt715_mux_put._entry, ptr @rt715_mux_put._entry_ptr, ptr @rt715_pcm_hw_params._entry, ptr @rt715_pcm_hw_params._entry.53, ptr @rt715_pcm_hw_params._entry.56, ptr @rt715_pcm_hw_params._entry.59, ptr @rt715_pcm_hw_params._entry_ptr, ptr @rt715_pcm_hw_params._entry_ptr.55, ptr @rt715_pcm_hw_params._entry_ptr.58, ptr @rt715_pcm_hw_params._entry_ptr.61, ptr @soc_codec_dev_rt715, ptr @rt715_dai, ptr @rt715_snd_controls, ptr @rt715_audio_map, ptr @.str, ptr @.str.1, ptr @in_vol_tlv, ptr @.str.2, ptr @mic_vol_tlv, ptr @.compoundliteral, ptr @.str.3, ptr @.compoundliteral.4, ptr @.str.5, ptr @.compoundliteral.6, ptr @.str.7, ptr @.compoundliteral.8, ptr @.str.9, ptr @.compoundliteral.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @rt715_adc22_mux, ptr @.str.36, ptr @rt715_adc23_mux, ptr @.str.37, ptr @rt715_adc24_mux, ptr @.str.38, ptr @rt715_adc25_mux, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @rt715_dapm_widgets, ptr @rt715_adc22_enum, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @adc_22_23_mux_text, ptr @rt715_adc23_enum, ptr @rt715_adc24_enum, ptr @adc_24_mux_text, ptr @rt715_adc_24_25_values, ptr @rt715_adc25_enum, ptr @adc_25_mux_text, ptr @.str.49, ptr @rt715_ops, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_codec_dev_rt715 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_snd_controls to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_audio_map to i32), i32 1768, i32 2208, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_get_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_get_gain._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_adc22_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_adc23_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_adc24_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_adc25_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_dapm_widgets to i32), i32 3240, i32 4064, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_adc22_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_mux_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_mux_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_22_23_mux_text to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_adc23_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_adc24_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_24_mux_text to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_adc_24_25_values to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_adc25_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_25_mux_text to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_pcm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_pcm_hw_params._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_pcm_hw_params._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_pcm_hw_params._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_index_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt715_clock_config(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %curr_dr_freq = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %curr_dr_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_dr_freq, align 4
  %shr = lshr i32 %3, 1
  %4 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %entry.cleanup_crit_edge [
    i32 12000000, label %entry.sw.epilog_crit_edge
    i32 6000000, label %sw.bb1
    i32 9600000, label %sw.bb2
    i32 4800000, label %sw.bb3
    i32 2400000, label %sw.bb4
    i32 12288000, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %value.0 = phi i32 [ 5, %sw.bb5 ], [ 4, %sw.bb4 ], [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 224, i32 noundef %value.0) #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 240, i32 noundef %value.0) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt715_init(ptr noundef %dev, ptr noundef %sdw_regmap, ptr noundef %regmap, ptr noundef %slave) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 144, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %slave1 = getelementptr inbounds %struct.rt715_priv, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %slave, ptr %slave1, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %regmap, ptr %call.i, align 4
  %sdw_regmap3 = getelementptr inbounds %struct.rt715_priv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %sdw_regmap3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sdw_regmap, ptr %sdw_regmap3, align 4
  %hw_init = getelementptr inbounds %struct.rt715_priv, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %hw_init to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %hw_init, align 4
  %first_hw_init = getelementptr inbounds %struct.rt715_priv, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %first_hw_init, align 1
  %call4 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_codec_dev_rt715, ptr noundef nonnull @rt715_dai, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt715_io_init(ptr nocapture noundef readonly %dev, ptr noundef %slave) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hw_init = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_init, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %first_hw_init = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %first_hw_init, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev3 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev3, i32 noundef 3000) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev3, i1 noundef zeroext true) #8
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev3, i32 noundef 0) #8
  %call.i119 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 22
  %6 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store volatile i64 %call.i119, ptr %last_busy.i, align 8
  tail call void @pm_runtime_enable(ptr noundef %dev3) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then2, %if.end.if.end9_crit_edge
  %dev10 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %usage_count.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !164
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 29448, i32 noundef 45184) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call13 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 29449, i32 noundef 45184) #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call15 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 29447, i32 noundef 45184) #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call17 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 29479, i32 noundef 45184) #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call19 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 14098, i32 noundef 32) #8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call21 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 14099, i32 noundef 32) #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call23 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 14109, i32 noundef 32) #8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call25 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 14121, i32 noundef 32) #8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %call27 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 13832, i32 noundef 16) #8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call29 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 13833, i32 noundef 16) #8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call31 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 13831, i32 noundef 16) #8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call33 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 13863, i32 noundef 16) #8
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call35 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 19474, i32 noundef 208) #8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call37 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 19730, i32 noundef 17) #8
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call39 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 19986, i32 noundef 161) #8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call41 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 20242, i32 noundef 129) #8
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call43 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 19475, i32 noundef 209) #8
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call45 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 19731, i32 noundef 17) #8
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call47 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 19987, i32 noundef 161) #8
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %call49 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 20243, i32 noundef 129) #8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call51 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 19485, i32 noundef 208) #8
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call53 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 19741, i32 noundef 17) #8
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %call55 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 19997, i32 noundef 161) #8
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %call57 = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 20253, i32 noundef 129) #8
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %call59 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 19497, i32 noundef 209) #8
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %call61 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 19753, i32 noundef 17) #8
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %call63 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 20009, i32 noundef 161) #8
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %call65 = tail call i32 @regmap_write(ptr noundef %63, i32 noundef 20265, i32 noundef 129) #8
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %call67 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 13569, i32 noundef 3) #8
  %66 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %first_hw_init, align 1, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool69.not = icmp eq i8 %67, 0
  br i1 %tobool69.not, label %if.else, label %if.then70

if.then70:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  tail call void @regcache_mark_dirty(ptr noundef %69) #8
  br label %if.end73

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %first_hw_init, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.else, %if.then70
  %71 = ptrtoint ptr %hw_init to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %hw_init, align 4
  %call.i120 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i121 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 22
  %72 = ptrtoint ptr %last_busy.i121 to i32
  call void @__asan_store8_noabort(i32 %72)
  store volatile i64 %call.i120, ptr %last_busy.i121, align 8
  %call.i122 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev10, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_set_bias_level(ptr nocapture noundef %component, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 13569, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 400) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 13569, i32 noundef 3) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %11 = ptrtoint ptr %dapm.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %level, ptr %dapm.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rt715_switch_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_set_main_switch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %read_ll = alloca i32, align 4
  %read_rl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_ll) #8
  %6 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %read_ll, align 4, !annotation !165
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_rl) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %rt715_get_gain.exit.for.body_crit_edge, %entry
  %i.016 = phi i32 [ 0, %entry ], [ %inc, %rt715_get_gain.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__const.rt715_set_main_vol_put.capture_reg_H, i32 0, i32 %i.016
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [4 x i32], ptr @__const.rt715_set_main_vol_put.capture_reg_L, i32 0, i32 %i.016
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1, align 4
  %11 = ptrtoint ptr %read_rl to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %read_rl, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %call.i = call i32 @regmap_read(ptr noundef %13, i32 noundef %10, ptr noundef nonnull %read_rl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.if.end.i_crit_edge
  %14 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8192, ptr %read_ll, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %16, i32 noundef %8, ptr noundef nonnull %read_ll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end9.i, label %if.end.i.rt715_get_gain.exit_crit_edge

if.end.i.rt715_get_gain.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt715_get_gain.exit

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %rt715_get_gain.exit

rt715_get_gain.exit:                              ; preds = %do.end9.i, %if.end.i.rt715_get_gain.exit_crit_edge
  %17 = ptrtoint ptr %read_ll to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %read_ll, align 4
  %and = lshr i32 %18, 7
  %and.lobit = and i32 %and, 1
  %19 = xor i32 %and.lobit, 1
  %mul = shl nuw nsw i32 %i.016, 1
  %arrayidx2 = getelementptr [128 x i32], ptr %value, i32 0, i32 %mul
  %20 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx2, align 4
  %21 = ptrtoint ptr %read_rl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %read_rl, align 4
  %and3 = lshr i32 %22, 7
  %and3.lobit = and i32 %and3, 1
  %23 = xor i32 %and3.lobit, 1
  %add = or i32 %mul, 1
  %arrayidx9 = getelementptr [128 x i32], ptr %value, i32 0, i32 %add
  %24 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx9, align 4
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %rt715_get_gain.exit.for.body_crit_edge

rt715_get_gain.exit.for.body_crit_edge:           ; preds = %rt715_get_gain.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %rt715_get_gain.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_rl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_ll) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_set_main_switch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %read_ll = alloca i32, align 4
  %read_rl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_ll) #8
  %6 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %read_ll, align 4, !annotation !165
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_rl) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %arrayidx2 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 12, i32 0
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2, align 4
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2.1, align 4
  %arrayidx.2 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.2, align 4
  %arrayidx2.2 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 12, i32 2
  %17 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2.2, align 4
  %arrayidx.3 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.3, align 4
  %arrayidx2.3 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 12, i32 3
  %21 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx2.3, align 4
  %arrayidx.4 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.4, align 4
  %arrayidx2.4 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 12, i32 4
  %25 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx2.4, align 4
  %arrayidx.5 = getelementptr [128 x i32], ptr %value, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.5, align 4
  %arrayidx2.5 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 12, i32 5
  %29 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx2.5, align 4
  %arrayidx.6 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 3
  %31 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.6, align 4
  %arrayidx2.6 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 12, i32 6
  %33 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx2.6, align 4
  %arrayidx.7 = getelementptr [128 x i32], ptr %value, i32 0, i32 7
  %35 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.7, align 4
  %arrayidx2.7 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 12, i32 7
  %37 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx2.7, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  br label %for.body6

for.body6:                                        ; preds = %for.inc73.for.body6_crit_edge, %entry
  %j.0146 = phi i32 [ 0, %entry ], [ %inc74, %for.inc73.for.body6_crit_edge ]
  %arrayidx7 = getelementptr [4 x i32], ptr @__const.rt715_set_main_vol_put.capture_reg_H, i32 0, i32 %j.0146
  %39 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr [4 x i32], ptr @__const.rt715_set_main_vol_put.capture_reg_L, i32 0, i32 %j.0146
  %41 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx8, align 4
  %43 = ptrtoint ptr %read_rl to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %read_rl, align 4
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %5, align 4
  %call.i = call i32 @regmap_read(ptr noundef %45, i32 noundef %42, ptr noundef nonnull %read_rl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %for.body6.if.end.i_crit_edge

for.body6.if.end.i_crit_edge:                     ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body6.if.end.i_crit_edge
  %46 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 8192, ptr %read_ll, align 4
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %5, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %48, i32 noundef %40, ptr noundef nonnull %read_ll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end9.i, label %if.end.i.rt715_get_gain.exit_crit_edge

if.end.i.rt715_get_gain.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt715_get_gain.exit

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %rt715_get_gain.exit

rt715_get_gain.exit:                              ; preds = %do.end9.i, %if.end.i.rt715_get_gain.exit_crit_edge
  %49 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dapm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp9 = icmp ult i32 %50, 2
  br i1 %cmp9, label %if.then10, label %rt715_get_gain.exit.if.end12_crit_edge

rt715_get_gain.exit.if.end12_crit_edge:           ; preds = %rt715_get_gain.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %rt715_get_gain.exit
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %5, align 4
  %call11 = call i32 @regmap_write(ptr noundef %52, i32 noundef 13569, i32 noundef 0) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %rt715_get_gain.exit.if.end12_crit_edge
  %mul = shl nuw nsw i32 %j.0146, 1
  %arrayidx14 = getelementptr [128 x i32], ptr %value, i32 0, i32 %mul
  %53 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx14, align 4
  %arrayidx17 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 12, i32 %mul
  %55 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx17, align 4
  %56 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not = icmp eq i32 %56, 0
  %shl = select i1 %tobool.not, i32 128, i32 0
  %57 = ptrtoint ptr %read_ll to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %read_ll, align 4
  %and = and i32 %58, 127
  %or = or i32 %shl, %and
  %add = or i32 %mul, 1
  %arrayidx23 = getelementptr [128 x i32], ptr %value, i32 0, i32 %add
  %59 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx23, align 4
  %arrayidx27 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 12, i32 %add
  %61 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx27, align 4
  %62 = load i32, ptr %arrayidx23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool32.not = icmp eq i32 %62, 0
  %shl35 = select i1 %tobool32.not, i32 128, i32 0
  %63 = ptrtoint ptr %read_rl to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %read_rl, align 4
  %and36 = and i32 %64, 127
  %or37 = or i32 %shl35, %and36
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %or37)
  %cmp41 = icmp eq i32 %or, %or37
  %or57 = or i32 %or, 24576
  %or63 = or i32 %or37, 20480
  %or47 = or i32 %or, 28672
  %or47.or57 = select i1 %cmp41, i32 %or47, i32 %or57
  %or47.or63 = select i1 %cmp41, i32 %or47, i32 %or63
  br label %for.body40

for.body40:                                       ; preds = %for.body40.backedge, %if.end12
  %i.1145 = phi i32 [ 0, %if.end12 ], [ %i.1145.be, %for.body40.backedge ]
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %5, align 4
  %call58 = call i32 @regmap_write(ptr noundef %66, i32 noundef %40, i32 noundef %or47.or57) #8
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %5, align 4
  %call64 = call i32 @regmap_write(ptr noundef %68, i32 noundef %42, i32 noundef %or47.or63) #8
  %69 = ptrtoint ptr %read_rl to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %read_rl, align 4
  %70 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %5, align 4
  %call.i133 = call i32 @regmap_read(ptr noundef %71, i32 noundef %42, ptr noundef nonnull %read_rl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %cmp.i134 = icmp slt i32 %call.i133, 0
  br i1 %cmp.i134, label %do.end.i136, label %for.body40.if.end.i139_crit_edge

for.body40.if.end.i139_crit_edge:                 ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i139

do.end.i136:                                      ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %if.end.i139

if.end.i139:                                      ; preds = %do.end.i136, %for.body40.if.end.i139_crit_edge
  %72 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 8192, ptr %read_ll, align 4
  %73 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %5, align 4
  %call4.i137 = call i32 @regmap_read(ptr noundef %74, i32 noundef %40, ptr noundef nonnull %read_ll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i137)
  %cmp5.i138 = icmp slt i32 %call4.i137, 0
  br i1 %cmp5.i138, label %do.end9.i141, label %if.end.i139.rt715_get_gain.exit142_crit_edge

if.end.i139.rt715_get_gain.exit142_crit_edge:     ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt715_get_gain.exit142

do.end9.i141:                                     ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %rt715_get_gain.exit142

rt715_get_gain.exit142:                           ; preds = %do.end9.i141, %if.end.i139.rt715_get_gain.exit142_crit_edge
  %75 = ptrtoint ptr %read_rl to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %read_rl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %or37)
  %cmp66 = icmp eq i32 %76, %or37
  br i1 %cmp66, label %land.lhs.true, label %for.inc70

land.lhs.true:                                    ; preds = %rt715_get_gain.exit142
  %77 = ptrtoint ptr %read_ll to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %read_ll, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %or)
  %cmp67 = icmp ne i32 %78, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1145)
  %cmp39 = icmp ult i32 %i.1145, 2
  %or.cond = select i1 %cmp67, i1 %cmp39, i1 false
  br i1 %or.cond, label %land.lhs.true.for.body40.backedge_crit_edge, label %land.lhs.true.for.inc73_crit_edge

land.lhs.true.for.inc73_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc73

land.lhs.true.for.body40.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body40.backedge

for.inc70:                                        ; preds = %rt715_get_gain.exit142
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1145)
  %cmp39.old = icmp ult i32 %i.1145, 2
  br i1 %cmp39.old, label %for.inc70.for.body40.backedge_crit_edge, label %for.inc70.for.inc73_crit_edge

for.inc70.for.inc73_crit_edge:                    ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc73

for.inc70.for.body40.backedge_crit_edge:          ; preds = %for.inc70
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body40.backedge

for.body40.backedge:                              ; preds = %for.inc70.for.body40.backedge_crit_edge, %land.lhs.true.for.body40.backedge_crit_edge
  %i.1145.be = add nuw nsw i32 %i.1145, 1
  br label %for.body40

for.inc73:                                        ; preds = %for.inc70.for.inc73_crit_edge, %land.lhs.true.for.inc73_crit_edge
  %inc74 = add nuw nsw i32 %j.0146, 1
  %exitcond.not = icmp eq i32 %inc74, 4
  br i1 %exitcond.not, label %for.end75, label %for.inc73.for.body6_crit_edge

for.inc73.for.body6_crit_edge:                    ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.end75:                                        ; preds = %for.inc73
  %79 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dapm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp77 = icmp ult i32 %80, 2
  br i1 %cmp77, label %if.then78, label %for.end75.if.end81_crit_edge

for.end75.if.end81_crit_edge:                     ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then78:                                        ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %5, align 4
  %call80 = call i32 @regmap_write(ptr noundef %82, i32 noundef 13569, i32 noundef 3) #8
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %for.end75.if.end81_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp3.not.7 = icmp ne i32 %36, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp3.not = icmp ne i32 %8, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp3.not.1 = icmp ne i32 %12, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp3.not.2 = icmp ne i32 %16, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp3.not.3 = icmp ne i32 %20, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp3.not.4 = icmp ne i32 %24, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp3.not.5 = icmp ne i32 %28, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp3.not.6 = icmp ne i32 %32, %34
  %83 = select i1 %cmp3.not.7, i1 true, i1 %cmp3.not.6
  %84 = select i1 %83, i1 true, i1 %cmp3.not.5
  %85 = select i1 %84, i1 true, i1 %cmp3.not.4
  %86 = select i1 %85, i1 true, i1 %cmp3.not.3
  %87 = select i1 %86, i1 true, i1 %cmp3.not.2
  %88 = select i1 %87, i1 true, i1 %cmp3.not.1
  %narrow = select i1 %88, i1 true, i1 %cmp3.not
  %spec.select.7 = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_rl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_ll) #8
  ret i32 %spec.select.7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rt715_vol_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 63, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_set_main_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %read_ll = alloca i32, align 4
  %read_rl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_ll) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_rl) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %read_rl to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %read_rl, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 33671, ptr noundef nonnull %read_rl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %9 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8192, ptr %read_ll, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %11, i32 noundef 29447, ptr noundef nonnull %read_ll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end9.i, label %if.end.i.rt715_get_gain.exit_crit_edge

if.end.i.rt715_get_gain.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt715_get_gain.exit

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %rt715_get_gain.exit

rt715_get_gain.exit:                              ; preds = %do.end9.i, %if.end.i.rt715_get_gain.exit_crit_edge
  %12 = ptrtoint ptr %read_ll to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %read_ll, align 4
  %and = and i32 %13, 127
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %value, align 4
  %15 = ptrtoint ptr %read_rl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %read_rl, align 4
  %and3 = and i32 %16, 127
  %arrayidx6 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and3, ptr %arrayidx6, align 4
  store i32 0, ptr %read_rl, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %call.i.1 = call i32 @regmap_read(ptr noundef %19, i32 noundef 33672, ptr noundef nonnull %read_rl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp.i.1, label %do.end.i.1, label %rt715_get_gain.exit.if.end.i.1_crit_edge

rt715_get_gain.exit.if.end.i.1_crit_edge:         ; preds = %rt715_get_gain.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.1

do.end.i.1:                                       ; preds = %rt715_get_gain.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %do.end.i.1, %rt715_get_gain.exit.if.end.i.1_crit_edge
  %20 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8192, ptr %read_ll, align 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  %call4.i.1 = call i32 @regmap_read(ptr noundef %22, i32 noundef 29448, ptr noundef nonnull %read_ll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.1)
  %cmp5.i.1 = icmp slt i32 %call4.i.1, 0
  br i1 %cmp5.i.1, label %do.end9.i.1, label %if.end.i.1.rt715_get_gain.exit.1_crit_edge

if.end.i.1.rt715_get_gain.exit.1_crit_edge:       ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt715_get_gain.exit.1

do.end9.i.1:                                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %rt715_get_gain.exit.1

rt715_get_gain.exit.1:                            ; preds = %do.end9.i.1, %if.end.i.1.rt715_get_gain.exit.1_crit_edge
  %23 = ptrtoint ptr %read_ll to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %read_ll, align 4
  %and.1 = and i32 %24, 127
  %arrayidx2.1 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and.1, ptr %arrayidx2.1, align 4
  %26 = ptrtoint ptr %read_rl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %read_rl, align 4
  %and3.1 = and i32 %27, 127
  %arrayidx6.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and3.1, ptr %arrayidx6.1, align 4
  store i32 0, ptr %read_rl, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %5, align 4
  %call.i.2 = call i32 @regmap_read(ptr noundef %30, i32 noundef 33673, ptr noundef nonnull %read_rl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp.i.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp.i.2, label %do.end.i.2, label %rt715_get_gain.exit.1.if.end.i.2_crit_edge

rt715_get_gain.exit.1.if.end.i.2_crit_edge:       ; preds = %rt715_get_gain.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.2

do.end.i.2:                                       ; preds = %rt715_get_gain.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %do.end.i.2, %rt715_get_gain.exit.1.if.end.i.2_crit_edge
  %31 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8192, ptr %read_ll, align 4
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %call4.i.2 = call i32 @regmap_read(ptr noundef %33, i32 noundef 29449, ptr noundef nonnull %read_ll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.2)
  %cmp5.i.2 = icmp slt i32 %call4.i.2, 0
  br i1 %cmp5.i.2, label %do.end9.i.2, label %if.end.i.2.rt715_get_gain.exit.2_crit_edge

if.end.i.2.rt715_get_gain.exit.2_crit_edge:       ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt715_get_gain.exit.2

do.end9.i.2:                                      ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %rt715_get_gain.exit.2

rt715_get_gain.exit.2:                            ; preds = %do.end9.i.2, %if.end.i.2.rt715_get_gain.exit.2_crit_edge
  %34 = ptrtoint ptr %read_ll to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %read_ll, align 4
  %and.2 = and i32 %35, 127
  %arrayidx2.2 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and.2, ptr %arrayidx2.2, align 4
  %37 = ptrtoint ptr %read_rl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %read_rl, align 4
  %and3.2 = and i32 %38, 127
  %arrayidx6.2 = getelementptr [128 x i32], ptr %value, i32 0, i32 5
  %39 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and3.2, ptr %arrayidx6.2, align 4
  store i32 0, ptr %read_rl, align 4
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %5, align 4
  %call.i.3 = call i32 @regmap_read(ptr noundef %41, i32 noundef 33703, ptr noundef nonnull %read_rl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp.i.3 = icmp slt i32 %call.i.3, 0
  br i1 %cmp.i.3, label %do.end.i.3, label %rt715_get_gain.exit.2.if.end.i.3_crit_edge

rt715_get_gain.exit.2.if.end.i.3_crit_edge:       ; preds = %rt715_get_gain.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.3

do.end.i.3:                                       ; preds = %rt715_get_gain.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %if.end.i.3

if.end.i.3:                                       ; preds = %do.end.i.3, %rt715_get_gain.exit.2.if.end.i.3_crit_edge
  %42 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8192, ptr %read_ll, align 4
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %5, align 4
  %call4.i.3 = call i32 @regmap_read(ptr noundef %44, i32 noundef 29479, ptr noundef nonnull %read_ll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.3)
  %cmp5.i.3 = icmp slt i32 %call4.i.3, 0
  br i1 %cmp5.i.3, label %do.end9.i.3, label %if.end.i.3.rt715_get_gain.exit.3_crit_edge

if.end.i.3.rt715_get_gain.exit.3_crit_edge:       ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt715_get_gain.exit.3

do.end9.i.3:                                      ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %rt715_get_gain.exit.3

rt715_get_gain.exit.3:                            ; preds = %do.end9.i.3, %if.end.i.3.rt715_get_gain.exit.3_crit_edge
  %45 = ptrtoint ptr %read_ll to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %read_ll, align 4
  %and.3 = and i32 %46, 127
  %arrayidx2.3 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 3
  %47 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and.3, ptr %arrayidx2.3, align 4
  %48 = ptrtoint ptr %read_rl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %read_rl, align 4
  %and3.3 = and i32 %49, 127
  %arrayidx6.3 = getelementptr [128 x i32], ptr %value, i32 0, i32 7
  %50 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and3.3, ptr %arrayidx6.3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_rl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_ll) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_set_main_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %read_ll = alloca i32, align 4
  %read_rl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_ll) #8
  %6 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %read_ll, align 4, !annotation !165
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_rl) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %arrayidx2 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 13, i32 0
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2, align 4
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 13, i32 1
  %13 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2.1, align 4
  %arrayidx.2 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.2, align 4
  %arrayidx2.2 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 13, i32 2
  %17 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2.2, align 4
  %arrayidx.3 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.3, align 4
  %arrayidx2.3 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 13, i32 3
  %21 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx2.3, align 4
  %arrayidx.4 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.4, align 4
  %arrayidx2.4 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 13, i32 4
  %25 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx2.4, align 4
  %arrayidx.5 = getelementptr [128 x i32], ptr %value, i32 0, i32 5
  %27 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.5, align 4
  %arrayidx2.5 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 13, i32 5
  %29 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx2.5, align 4
  %arrayidx.6 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 3
  %31 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.6, align 4
  %arrayidx2.6 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 13, i32 6
  %33 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx2.6, align 4
  %arrayidx.7 = getelementptr [128 x i32], ptr %value, i32 0, i32 7
  %35 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.7, align 4
  %arrayidx2.7 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 13, i32 7
  %37 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx2.7, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  br label %for.body6

for.body6:                                        ; preds = %for.inc76.for.body6_crit_edge, %entry
  %j.0155 = phi i32 [ 0, %entry ], [ %inc77, %for.inc76.for.body6_crit_edge ]
  %arrayidx7 = getelementptr [4 x i32], ptr @__const.rt715_set_main_vol_put.capture_reg_H, i32 0, i32 %j.0155
  %39 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr [4 x i32], ptr @__const.rt715_set_main_vol_put.capture_reg_L, i32 0, i32 %j.0155
  %41 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx8, align 4
  %43 = ptrtoint ptr %read_rl to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %read_rl, align 4
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %5, align 4
  %call.i = call i32 @regmap_read(ptr noundef %45, i32 noundef %42, ptr noundef nonnull %read_rl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %for.body6.if.end.i_crit_edge

for.body6.if.end.i_crit_edge:                     ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body6.if.end.i_crit_edge
  %46 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 8192, ptr %read_ll, align 4
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %5, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %48, i32 noundef %40, ptr noundef nonnull %read_ll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end9.i, label %if.end.i.rt715_get_gain.exit_crit_edge

if.end.i.rt715_get_gain.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt715_get_gain.exit

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %rt715_get_gain.exit

rt715_get_gain.exit:                              ; preds = %do.end9.i, %if.end.i.rt715_get_gain.exit_crit_edge
  %49 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dapm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp9 = icmp ult i32 %50, 2
  br i1 %cmp9, label %if.then10, label %rt715_get_gain.exit.if.end12_crit_edge

rt715_get_gain.exit.if.end12_crit_edge:           ; preds = %rt715_get_gain.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %rt715_get_gain.exit
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %5, align 4
  %call11 = call i32 @regmap_write(ptr noundef %52, i32 noundef 13569, i32 noundef 0) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %rt715_get_gain.exit.if.end12_crit_edge
  %mul = shl nuw nsw i32 %j.0155, 1
  %arrayidx14 = getelementptr [128 x i32], ptr %value, i32 0, i32 %mul
  %53 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx14, align 4
  %arrayidx17 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 13, i32 %mul
  %55 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx17, align 4
  %56 = load i32, ptr %arrayidx14, align 4
  %and = and i32 %56, 127
  %57 = call i32 @llvm.umin.i32(i32 %and, i32 63)
  %58 = ptrtoint ptr %read_ll to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %read_ll, align 4
  %and24 = and i32 %59, 128
  %or = or i32 %57, %and24
  %add = or i32 %mul, 1
  %arrayidx27 = getelementptr [128 x i32], ptr %value, i32 0, i32 %add
  %60 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx27, align 4
  %arrayidx31 = getelementptr %struct.rt715_priv, ptr %5, i32 0, i32 13, i32 %add
  %62 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx31, align 4
  %63 = load i32, ptr %arrayidx27, align 4
  %and36 = and i32 %63, 127
  %64 = call i32 @llvm.umin.i32(i32 %and36, i32 63)
  %65 = ptrtoint ptr %read_rl to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %read_rl, align 4
  %and40 = and i32 %66, 128
  %or41 = or i32 %64, %and40
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %or41)
  %cmp45 = icmp eq i32 %or, %or41
  %or60 = or i32 %or, 24576
  %or66 = or i32 %or41, 20480
  %or50 = or i32 %or, 28672
  %or50.or60 = select i1 %cmp45, i32 %or50, i32 %or60
  %or50.or66 = select i1 %cmp45, i32 %or50, i32 %or66
  br label %for.body44

for.body44:                                       ; preds = %for.body44.backedge, %if.end12
  %i.1154 = phi i32 [ 0, %if.end12 ], [ %i.1154.be, %for.body44.backedge ]
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %5, align 4
  %call61 = call i32 @regmap_write(ptr noundef %68, i32 noundef %40, i32 noundef %or50.or60) #8
  %69 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %5, align 4
  %call67 = call i32 @regmap_write(ptr noundef %70, i32 noundef %42, i32 noundef %or50.or66) #8
  %71 = ptrtoint ptr %read_rl to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %read_rl, align 4
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %5, align 4
  %call.i142 = call i32 @regmap_read(ptr noundef %73, i32 noundef %42, ptr noundef nonnull %read_rl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %cmp.i143 = icmp slt i32 %call.i142, 0
  br i1 %cmp.i143, label %do.end.i145, label %for.body44.if.end.i148_crit_edge

for.body44.if.end.i148_crit_edge:                 ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i148

do.end.i145:                                      ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %if.end.i148

if.end.i148:                                      ; preds = %do.end.i145, %for.body44.if.end.i148_crit_edge
  %74 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 8192, ptr %read_ll, align 4
  %75 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %5, align 4
  %call4.i146 = call i32 @regmap_read(ptr noundef %76, i32 noundef %40, ptr noundef nonnull %read_ll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i146)
  %cmp5.i147 = icmp slt i32 %call4.i146, 0
  br i1 %cmp5.i147, label %do.end9.i150, label %if.end.i148.rt715_get_gain.exit151_crit_edge

if.end.i148.rt715_get_gain.exit151_crit_edge:     ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt715_get_gain.exit151

do.end9.i150:                                     ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %rt715_get_gain.exit151

rt715_get_gain.exit151:                           ; preds = %do.end9.i150, %if.end.i148.rt715_get_gain.exit151_crit_edge
  %77 = ptrtoint ptr %read_rl to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %read_rl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %or41)
  %cmp69 = icmp eq i32 %78, %or41
  br i1 %cmp69, label %land.lhs.true, label %for.inc73

land.lhs.true:                                    ; preds = %rt715_get_gain.exit151
  %79 = ptrtoint ptr %read_ll to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %read_ll, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %or)
  %cmp70 = icmp ne i32 %80, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1154)
  %cmp43 = icmp ult i32 %i.1154, 2
  %or.cond = select i1 %cmp70, i1 %cmp43, i1 false
  br i1 %or.cond, label %land.lhs.true.for.body44.backedge_crit_edge, label %land.lhs.true.for.inc76_crit_edge

land.lhs.true.for.inc76_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc76

land.lhs.true.for.body44.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44.backedge

for.inc73:                                        ; preds = %rt715_get_gain.exit151
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1154)
  %cmp43.old = icmp ult i32 %i.1154, 2
  br i1 %cmp43.old, label %for.inc73.for.body44.backedge_crit_edge, label %for.inc73.for.inc76_crit_edge

for.inc73.for.inc76_crit_edge:                    ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc76

for.inc73.for.body44.backedge_crit_edge:          ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44.backedge

for.body44.backedge:                              ; preds = %for.inc73.for.body44.backedge_crit_edge, %land.lhs.true.for.body44.backedge_crit_edge
  %i.1154.be = add nuw nsw i32 %i.1154, 1
  br label %for.body44

for.inc76:                                        ; preds = %for.inc73.for.inc76_crit_edge, %land.lhs.true.for.inc76_crit_edge
  %inc77 = add nuw nsw i32 %j.0155, 1
  %exitcond.not = icmp eq i32 %inc77, 4
  br i1 %exitcond.not, label %for.end78, label %for.inc76.for.body6_crit_edge

for.inc76.for.body6_crit_edge:                    ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.end78:                                        ; preds = %for.inc76
  %81 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dapm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %cmp80 = icmp ult i32 %82, 2
  br i1 %cmp80, label %if.then81, label %for.end78.if.end84_crit_edge

for.end78.if.end84_crit_edge:                     ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then81:                                        ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %5, align 4
  %call83 = call i32 @regmap_write(ptr noundef %84, i32 noundef 13569, i32 noundef 3) #8
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %for.end78.if.end84_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp3.not.7 = icmp ne i32 %36, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp3.not = icmp ne i32 %8, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp3.not.1 = icmp ne i32 %12, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp3.not.2 = icmp ne i32 %16, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp3.not.3 = icmp ne i32 %20, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp3.not.4 = icmp ne i32 %24, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp3.not.5 = icmp ne i32 %28, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp3.not.6 = icmp ne i32 %32, %34
  %85 = select i1 %cmp3.not.7, i1 true, i1 %cmp3.not.6
  %86 = select i1 %85, i1 true, i1 %cmp3.not.5
  %87 = select i1 %86, i1 true, i1 %cmp3.not.4
  %88 = select i1 %87, i1 true, i1 %cmp3.not.3
  %89 = select i1 %88, i1 true, i1 %cmp3.not.2
  %90 = select i1 %89, i1 true, i1 %cmp3.not.1
  %narrow = select i1 %90, i1 true, i1 %cmp3.not
  %spec.select.7 = zext i1 %narrow to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_rl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_ll) #8
  ret i32 %spec.select.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_set_amp_gain_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %read_ll = alloca i32, align 4
  %read_rl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_ll) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_rl) #8
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %rreg = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rreg, align 4
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 5
  %13 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %cmp = icmp eq i32 %14, 7
  %. = select i1 %cmp, i32 32768, i32 0
  %15 = ptrtoint ptr %read_rl to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %., ptr %read_rl, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %call.i = call i32 @regmap_read(ptr noundef %17, i32 noundef %12, ptr noundef nonnull %read_rl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %shl2.i = or i32 %., 8192
  %18 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shl2.i, ptr %read_ll, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %20, i32 noundef %10, ptr noundef nonnull %read_ll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end9.i, label %if.end.i.rt715_get_gain.exit_crit_edge

if.end.i.rt715_get_gain.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt715_get_gain.exit

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %rt715_get_gain.exit

rt715_get_gain.exit:                              ; preds = %do.end9.i, %if.end.i.rt715_get_gain.exit_crit_edge
  %invert = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 8
  %21 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %invert, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %22 = ptrtoint ptr %read_ll to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %read_ll, align 4
  br i1 %tobool.not, label %if.else7, label %if.then1

if.then1:                                         ; preds = %rt715_get_gain.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and = lshr i32 %23, 7
  %and.lobit = and i32 %and, 1
  %24 = xor i32 %and.lobit, 1
  %25 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %read_ll, align 4
  %26 = ptrtoint ptr %read_rl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %read_rl, align 4
  %and3 = lshr i32 %27, 7
  %and3.lobit = and i32 %and3, 1
  %28 = xor i32 %and3.lobit, 1
  br label %if.end10

if.else7:                                         ; preds = %rt715_get_gain.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and8 = and i32 %23, 127
  %29 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and8, ptr %read_ll, align 4
  %30 = ptrtoint ptr %read_rl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %read_rl, align 4
  %and9 = and i32 %31, 127
  br label %if.end10

if.end10:                                         ; preds = %if.else7, %if.then1
  %storemerge = phi i32 [ %and9, %if.else7 ], [ %28, %if.then1 ]
  %32 = ptrtoint ptr %read_ll to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %read_ll, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %34 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %value, align 8
  %arrayidx12 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %storemerge, ptr %arrayidx12, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_rl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_ll) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_set_amp_gain_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %read_ll = alloca i32, align 4
  %read_rl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_ll) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_rl) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %arrayidx2 = getelementptr %struct.rt715_priv, ptr %8, i32 0, i32 11, i32 0
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp3.not = icmp eq i32 %10, %12
  br i1 %cmp3.not, label %for.cond, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr %struct.rt715_priv, ptr %8, i32 0, i32 11, i32 1
  %15 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp3.not.1 = icmp ne i32 %14, %16
  %spec.select = zext i1 %cmp3.not.1 to i32
  br label %for.end

for.end:                                          ; preds = %for.cond, %entry.for.end_crit_edge
  %k_vol_changed.0 = phi i32 [ 1, %entry.for.end_crit_edge ], [ %spec.select, %for.cond ]
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 3
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg, align 4
  %rreg = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 4
  %19 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rreg, align 4
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 5
  %21 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %22)
  %cmp4 = icmp eq i32 %22, 7
  %. = select i1 %cmp4, i32 32768, i32 0
  %23 = ptrtoint ptr %read_rl to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %., ptr %read_rl, align 4
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %8, align 4
  %call.i = call i32 @regmap_read(ptr noundef %25, i32 noundef %20, ptr noundef nonnull %read_rl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %for.end.if.end.i_crit_edge

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.end.if.end.i_crit_edge
  %shl2.i = or i32 %., 8192
  %26 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shl2.i, ptr %read_ll, align 4
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %8, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %28, i32 noundef %18, ptr noundef nonnull %read_ll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end9.i, label %if.end.i.rt715_get_gain.exit_crit_edge

if.end.i.rt715_get_gain.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt715_get_gain.exit

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %rt715_get_gain.exit

rt715_get_gain.exit:                              ; preds = %do.end9.i, %if.end.i.rt715_get_gain.exit_crit_edge
  %29 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dapm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp7 = icmp ult i32 %30, 2
  br i1 %cmp7, label %if.then8, label %rt715_get_gain.exit.if.end10_crit_edge

rt715_get_gain.exit.if.end10_crit_edge:           ; preds = %rt715_get_gain.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %rt715_get_gain.exit
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %8, align 4
  %call9 = call i32 @regmap_write(ptr noundef %32, i32 noundef 13569, i32 noundef 0) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %rt715_get_gain.exit.if.end10_crit_edge
  %33 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %value, align 8
  %35 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx2, align 4
  %36 = load i32, ptr %value, align 8
  %and = and i32 %36, 127
  %max = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 1
  %37 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max, align 4
  %39 = call i32 @llvm.umin.i32(i32 %and, i32 %38)
  %40 = ptrtoint ptr %read_ll to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %read_ll, align 4
  %and21 = and i32 %41, 128
  %or = or i32 %and21, %39
  %arrayidx23 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx23, align 4
  %arrayidx25 = getelementptr %struct.rt715_priv, ptr %8, i32 0, i32 11, i32 1
  %44 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx25, align 4
  %45 = load i32, ptr %arrayidx23, align 4
  %and28 = and i32 %45, 127
  %46 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max, align 4
  %48 = call i32 @llvm.umin.i32(i32 %and28, i32 %47)
  %49 = ptrtoint ptr %read_rl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %read_rl, align 4
  %and34 = and i32 %50, 128
  %or35 = or i32 %and34, %48
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %or35)
  %cmp39 = icmp eq i32 %or, %or35
  br label %for.body38

for.body38:                                       ; preds = %for.body38.backedge, %if.end10
  %i.1153 = phi i32 [ 0, %if.end10 ], [ %i.1153.be, %for.body38.backedge ]
  %51 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %shift, align 4
  %53 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %8, align 4
  %or42 = shl i32 256, %52
  %shl44 = or i32 %or42, %or
  br i1 %cmp39, label %if.then40, label %if.else51

if.then40:                                        ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #10
  %or45 = or i32 %shl44, 12288
  %call46 = call i32 @regmap_write(ptr noundef %54, i32 noundef %18, i32 noundef %or45) #8
  %55 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %8, align 4
  %call50 = call i32 @regmap_write(ptr noundef %56, i32 noundef %20, i32 noundef %or45) #8
  br label %if.end66

if.else51:                                        ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #10
  %or57 = or i32 %shl44, 8192
  %call58 = call i32 @regmap_write(ptr noundef %54, i32 noundef %18, i32 noundef %or57) #8
  %57 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %shift, align 4
  %59 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %8, align 4
  %or61 = shl i32 256, %58
  %shl63 = or i32 %or61, %or35
  %or64 = or i32 %shl63, 4096
  %call65 = call i32 @regmap_write(ptr noundef %60, i32 noundef %20, i32 noundef %or64) #8
  br label %if.end66

if.end66:                                         ; preds = %if.else51, %if.then40
  %61 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %62)
  %cmp68 = icmp eq i32 %62, 7
  %.139 = select i1 %cmp68, i32 32768, i32 0
  %63 = ptrtoint ptr %read_rl to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.139, ptr %read_rl, align 4
  %64 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %8, align 4
  %call.i141 = call i32 @regmap_read(ptr noundef %65, i32 noundef %20, ptr noundef nonnull %read_rl) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %cmp.i142 = icmp slt i32 %call.i141, 0
  br i1 %cmp.i142, label %do.end.i144, label %if.end66.if.end.i148_crit_edge

if.end66.if.end.i148_crit_edge:                   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i148

do.end.i144:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %if.end.i148

if.end.i148:                                      ; preds = %do.end.i144, %if.end66.if.end.i148_crit_edge
  %shl2.i145 = or i32 %.139, 8192
  %66 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %shl2.i145, ptr %read_ll, align 4
  %67 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %8, align 4
  %call4.i146 = call i32 @regmap_read(ptr noundef %68, i32 noundef %18, ptr noundef nonnull %read_ll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i146)
  %cmp5.i147 = icmp slt i32 %call4.i146, 0
  br i1 %cmp5.i147, label %do.end9.i150, label %if.end.i148.rt715_get_gain.exit151_crit_edge

if.end.i148.rt715_get_gain.exit151_crit_edge:     ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt715_get_gain.exit151

do.end9.i150:                                     ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %rt715_get_gain.exit151

rt715_get_gain.exit151:                           ; preds = %do.end9.i150, %if.end.i148.rt715_get_gain.exit151_crit_edge
  %69 = ptrtoint ptr %read_rl to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %read_rl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %or35)
  %cmp72 = icmp eq i32 %70, %or35
  br i1 %cmp72, label %land.lhs.true, label %for.inc76

land.lhs.true:                                    ; preds = %rt715_get_gain.exit151
  %71 = ptrtoint ptr %read_ll to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %read_ll, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %or)
  %cmp73 = icmp ne i32 %72, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1153)
  %cmp37 = icmp ult i32 %i.1153, 2
  %or.cond = select i1 %cmp73, i1 %cmp37, i1 false
  br i1 %or.cond, label %land.lhs.true.for.body38.backedge_crit_edge, label %land.lhs.true.for.end78_crit_edge

land.lhs.true.for.end78_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end78

land.lhs.true.for.body38.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body38.backedge

for.inc76:                                        ; preds = %rt715_get_gain.exit151
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.1153)
  %cmp37.old = icmp ult i32 %i.1153, 2
  br i1 %cmp37.old, label %for.inc76.for.body38.backedge_crit_edge, label %for.inc76.for.end78_crit_edge

for.inc76.for.end78_crit_edge:                    ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end78

for.inc76.for.body38.backedge_crit_edge:          ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body38.backedge

for.body38.backedge:                              ; preds = %for.inc76.for.body38.backedge_crit_edge, %land.lhs.true.for.body38.backedge_crit_edge
  %i.1153.be = add nuw nsw i32 %i.1153, 1
  br label %for.body38

for.end78:                                        ; preds = %for.inc76.for.end78_crit_edge, %land.lhs.true.for.end78_crit_edge
  %73 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dapm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp80 = icmp ult i32 %74, 2
  br i1 %cmp80, label %if.then81, label %for.end78.if.end84_crit_edge

for.end78.if.end84_crit_edge:                     ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then81:                                        ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %8, align 4
  %call83 = call i32 @regmap_write(ptr noundef %76, i32 noundef 13569, i32 noundef 3) #8
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %for.end78.if.end84_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_rl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_ll) #8
  ret i32 %k_vol_changed.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_mux_get(ptr noundef %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %kcontrol) #8
  %dev.i = getelementptr i8, ptr %call.i, i32 -164
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %6 = inttoptr i32 %5 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val, align 4, !annotation !165
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %6, align 4
  %or = or i32 %9, 12544
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call3 = call i32 @regmap_read(ptr noundef %11, i32 noundef %or, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %call3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %6, align 4
  %16 = and i32 %15, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %16)
  %switch = icmp eq i32 %16, 36
  br i1 %switch, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp8.not = icmp eq i32 %18, 0
  br i1 %cmp8.not, label %land.lhs.true.if.end10_crit_edge, label %if.then9

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %18, -1
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %val, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_mux_put(ptr noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %val2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %kcontrol) #8
  %call1 = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %kcontrol) #8
  %dev.i = getelementptr i8, ptr %call.i, i32 -164
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %6 = inttoptr i32 %5 to ptr
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val2) #8
  %7 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %val2, align 4
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %items = getelementptr inbounds %struct.soc_enum, ptr %6, i32 0, i32 3
  %10 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %items, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp ult i32 %9, %11
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %values.i = getelementptr inbounds %struct.soc_enum, ptr %6, i32 0, i32 6
  %12 = ptrtoint ptr %values.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %values.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.snd_soc_enum_item_to_val.exit_crit_edge, label %if.end.i

if.end.snd_soc_enum_item_to_val.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_soc_enum_item_to_val.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i32, ptr %13, i32 %9
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  br label %snd_soc_enum_item_to_val.exit

snd_soc_enum_item_to_val.exit:                    ; preds = %if.end.i, %if.end.snd_soc_enum_item_to_val.exit_crit_edge
  %retval.0.i = phi i32 [ %15, %if.end.i ], [ %9, %if.end.snd_soc_enum_item_to_val.exit_crit_edge ]
  %shift_l = getelementptr inbounds %struct.soc_enum, ptr %6, i32 0, i32 1
  %16 = ptrtoint ptr %shift_l to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shift_l, align 4
  %conv = zext i8 %17 to i32
  %shl = shl i32 %retval.0.i, %conv
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %6, align 4
  %or = or i32 %19, 12544
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %call6 = call i32 @regmap_read(ptr noundef %21, i32 noundef %or, ptr noundef nonnull %val2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end, label %if.end10

do.end:                                           ; preds = %snd_soc_enum_item_to_val.exit
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.48, i32 noundef %call6) #11
  br label %cleanup

if.end10:                                         ; preds = %snd_soc_enum_item_to_val.exit
  %24 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %25)
  %cmp11 = icmp eq i32 %shl, %25
  %not.cmp11 = xor i1 %cmp11, true
  %. = zext i1 %not.cmp11 to i32
  br i1 %cmp11, label %if.end10.if.end20_crit_edge, label %if.then15

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %6, align 4
  %or17 = or i32 %27, 12544
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %call19 = call i32 @regmap_write(ptr noundef %29, i32 noundef %or17, i32 noundef %shl) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end10.if.end20_crit_edge
  %30 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %value, align 4
  %call22 = call i32 @snd_soc_dapm_mux_update_power(ptr noundef %call1, ptr noundef %kcontrol, i32 noundef %31, ptr noundef %6, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ %., %if.end20 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_mux_update_power(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_set_sdw_stream(ptr nocapture noundef writeonly %dai, ptr noundef %sdw_stream, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sdw_stream, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #12
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sdw_stream, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp = icmp eq i32 %direction, 0
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %playback_dma_data.sink = select i1 %cmp, ptr %playback_dma_data, ptr %capture_dma_data
  %2 = ptrtoint ptr %playback_dma_data.sink to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %playback_dma_data.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt715_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %0 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %2 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  store ptr null, ptr %cond.in.i, align 4
  tail call void @kfree(ptr noundef %cond.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  %stream_config = alloca %struct.sdw_stream_config, align 4
  %port_config = alloca %struct.sdw_port_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %stream_config) #8
  %6 = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 2
  %8 = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 3
  %9 = getelementptr inbounds i8, ptr %stream_config, i32 16
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %port_config) #8
  %11 = getelementptr inbounds %struct.sdw_port_config, ptr %port_config, i32 0, i32 1
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %12 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %14 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %tobool.not = icmp eq ptr %cond.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %slave = getelementptr inbounds %struct.rt715_priv, ptr %5, i32 0, i32 3
  %15 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slave, align 4
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %18, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end6
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 7675961, i32 noundef 42240) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i113 = icmp slt i32 %call.i, 0
  br i1 %cmp.i113, label %do.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %call.i, i32 noundef 7675961, i32 noundef 42240) #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end6
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  %call.i114 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 7675961, i32 noundef 40960) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %cmp.i115 = icmp slt i32 %call.i114, 0
  br i1 %cmp.i115, label %do.end.i117, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i117:                                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %call.i114, i32 noundef 7675961, i32 noundef 40960) #11
  br label %sw.epilog

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.51, i32 noundef %18) #11
  br label %cleanup

sw.epilog:                                        ; preds = %do.end.i117, %sw.bb8.sw.epilog_crit_edge, %do.end.i, %sw.bb.sw.epilog_crit_edge
  %port.0 = phi i32 [ 6, %sw.bb.sw.epilog_crit_edge ], [ 6, %do.end.i ], [ 4, %sw.bb8.sw.epilog_crit_edge ], [ 4, %do.end.i117 ]
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  %28 = ptrtoint ptr %stream_config to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %stream_config, align 4
  %arrayidx.i.i119 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %arrayidx.i.i119 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i119, align 4
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %6, align 4
  %arrayidx.i.i120 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %arrayidx.i.i120 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %sw.epilog.if.then.i.i_crit_edge

sw.epilog.if.then.i.i_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %sw.epilog.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %sw.epilog.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %33, %sw.epilog.if.then.i.i_crit_edge ], [ %36, %for.inc.i.i.if.then.i.i_crit_edge ]
  %34 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #8, !range !166
  %add.i.i = or i32 %34, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %sw.epilog
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.1.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call15 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i) #8
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call15, ptr %7, align 4
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %8, align 4
  %39 = ptrtoint ptr %arrayidx.i.i119 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i119, align 4
  %notmask = shl nsw i32 -1, %40
  %sub = xor i32 %notmask, -1
  %41 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub, ptr %11, align 4
  %42 = ptrtoint ptr %port_config to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %port.0, ptr %port_config, align 4
  %43 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %slave, align 4
  %45 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cond.i, align 4
  %call19 = call i32 @sdw_stream_add_slave(ptr noundef %44, ptr noundef nonnull %stream_config, ptr noundef nonnull %port_config, i32 noundef 1, ptr noundef %46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev25 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %47 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev25, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.54) #11
  br label %cleanup

if.end26:                                         ; preds = %params_format.exit
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %50, label %do.end34 [
    i32 44100, label %if.end26.sw.epilog37_crit_edge
    i32 48000, label %sw.bb29
  ]

if.end26.sw.epilog37_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog37

sw.bb29:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog37

do.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.57, i32 noundef %50) #11
  br label %cleanup

sw.epilog37:                                      ; preds = %sw.bb29, %if.end26.sw.epilog37_crit_edge
  %val.0 = phi i32 [ 0, %sw.bb29 ], [ 16384, %if.end26.sw.epilog37_crit_edge ]
  %54 = ptrtoint ptr %arrayidx.i.i119 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %55)
  %cmp = icmp ult i32 %55, 17
  br i1 %cmp, label %if.then39, label %do.end45

if.then39:                                        ; preds = %sw.epilog37
  %sub41 = add nsw i32 %55, -1
  %or42 = or i32 %sub41, %val.0
  %56 = ptrtoint ptr %arrayidx.i.i120 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.then39.if.then.i.i.i_crit_edge

if.then39.if.then.i.i.i_crit_edge:                ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.then39.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.then39.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %57, %if.then39.if.then.i.i.i_crit_edge ], [ %60, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %58 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !166
  %add.i.i.i = or i32 %58, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.then39
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %59 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.1.i.i.i = icmp eq i32 %60, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i126 = call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #8
  %61 = add i32 %call1.i126, -8
  %62 = call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 30)
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %62, label %params_width.exit.cleanup_crit_edge [
    i32 0, label %params_width.exit.sw.epilog59_crit_edge
    i32 2, label %sw.bb50
    i32 3, label %sw.bb52
    i32 4, label %sw.bb54
    i32 6, label %sw.bb56
  ]

params_width.exit.sw.epilog59_crit_edge:          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog59

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end45:                                         ; preds = %sw.epilog37
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.60, i32 noundef %55) #11
  br label %cleanup

sw.bb50:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or51 = or i32 %or42, 16
  br label %sw.epilog59

sw.bb52:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or53 = or i32 %or42, 32
  br label %sw.epilog59

sw.bb54:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or55 = or i32 %or42, 48
  br label %sw.epilog59

sw.bb56:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or57 = or i32 %or42, 64
  br label %sw.epilog59

sw.epilog59:                                      ; preds = %sw.bb56, %sw.bb54, %sw.bb52, %sw.bb50, %params_width.exit.sw.epilog59_crit_edge
  %val.1 = phi i32 [ %or57, %sw.bb56 ], [ %or55, %sw.bb54 ], [ %or53, %sw.bb52 ], [ %or51, %sw.bb50 ], [ %or42, %params_width.exit.sw.epilog59_crit_edge ]
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %5, align 4
  %call61 = call i32 @regmap_write(ptr noundef %67, i32 noundef 29191, i32 noundef %val.1) #8
  %68 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %5, align 4
  %call63 = call i32 @regmap_write(ptr noundef %69, i32 noundef 29192, i32 noundef %val.1) #8
  %70 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %5, align 4
  %call65 = call i32 @regmap_write(ptr noundef %71, i32 noundef 29193, i32 noundef %val.1) #8
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %5, align 4
  %call67 = call i32 @regmap_write(ptr noundef %73, i32 noundef 29223, i32 noundef %val.1) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog59, %do.end45, %params_width.exit.cleanup_crit_edge, %do.end34, %do.end24, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call19, %do.end24 ], [ -22, %do.end34 ], [ 0, %sw.epilog59 ], [ -22, %do.end45 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %params_width.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %port_config) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stream_config) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_pcm_hw_free(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %slave = getelementptr inbounds %struct.rt715_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slave, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %10 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %11 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cond.i, align 4
  %call4 = tail call i32 @sdw_stream_remove_slave(ptr noundef nonnull %7, ptr noundef %12) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_stream_add_slave(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_stream_remove_slave(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !84, !85, !87, !89, !91, !92, !93, !94, !95, !96, !98, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @__UNIQUE_ID_description295, !1, !"__UNIQUE_ID_description295", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt715.c", i32 1095, i32 1}
!2 = !{ptr @__UNIQUE_ID_description296, !3, !"__UNIQUE_ID_description296", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/rt715.c", i32 1096, i32 1}
!4 = !{ptr @__UNIQUE_ID_author297, !5, !"__UNIQUE_ID_author297", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/rt715.c", i32 1097, i32 1}
!6 = !{ptr @__UNIQUE_ID_file298, !7, !"__UNIQUE_ID_file298", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/rt715.c", i32 1098, i32 1}
!8 = !{ptr @__UNIQUE_ID_license299, !7, !"__UNIQUE_ID_license299", i1 false, i1 false}
!9 = !{ptr @soc_codec_dev_rt715, !10, !"soc_codec_dev_rt715", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/rt715.c", i32 740, i32 46}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/soc/codecs/rt715.c", i32 464, i32 2}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/soc/codecs/rt715.c", i32 467, i32 2}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/soc/codecs/rt715.c", i32 470, i32 2}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/rt715.c", i32 474, i32 2}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/rt715.c", i32 478, i32 2}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/rt715.c", i32 482, i32 2}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/rt715.c", i32 486, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/rt715.c", i32 490, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/rt715.c", i32 494, i32 2}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/rt715.c", i32 498, i32 2}
!31 = !{ptr @rt715_snd_controls, !32, !"rt715_snd_controls", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/rt715.c", i32 462, i32 38}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/rt715.c", i32 63, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rt715_get_gain._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @rt715_get_gain._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/rt715.c", i32 70, i32 3}
!41 = !{ptr @rt715_get_gain._entry.20, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @rt715_get_gain._entry_ptr.22, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @in_vol_tlv, !44, !"in_vol_tlv", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/rt715.c", i32 416, i32 14}
!45 = !{ptr @mic_vol_tlv, !46, !"mic_vol_tlv", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/rt715.c", i32 417, i32 14}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/rt715.c", i32 649, i32 2}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/rt715.c", i32 650, i32 2}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/rt715.c", i32 651, i32 2}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/rt715.c", i32 652, i32 2}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/rt715.c", i32 653, i32 2}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/rt715.c", i32 654, i32 2}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/rt715.c", i32 655, i32 2}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/rt715.c", i32 656, i32 2}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/rt715.c", i32 657, i32 2}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/rt715.c", i32 658, i32 2}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/rt715.c", i32 659, i32 2}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/rt715.c", i32 660, i32 2}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/rt715.c", i32 661, i32 2}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/rt715.c", i32 663, i32 2}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/rt715.c", i32 665, i32 2}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/rt715.c", i32 667, i32 2}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/rt715.c", i32 669, i32 2}
!81 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/rt715.c", i32 670, i32 2}
!84 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @rt715_dapm_widgets, !86, !"rt715_dapm_widgets", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/rt715.c", i32 648, i32 41}
!87 = !{ptr @rt715_adc22_mux, !88, !"rt715_adc22_mux", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/rt715.c", i32 632, i32 38}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/rt715.c", i32 518, i32 3}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @rt715_mux_get._entry, !90, !"_entry", i1 false, i1 false}
!95 = !{ptr @rt715_mux_get._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/rt715.c", i32 557, i32 3}
!98 = !{ptr @rt715_mux_put._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @rt715_mux_put._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @rt715_adc22_enum, !101, !"rt715_adc22_enum", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/rt715.c", i32 618, i32 8}
!102 = !{ptr @adc_22_23_mux_text, !103, !"adc_22_23_mux_text", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/rt715.c", i32 578, i32 27}
!104 = !{ptr @rt715_adc23_mux, !105, !"rt715_adc23_mux", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/rt715.c", i32 636, i32 38}
!106 = !{ptr @rt715_adc23_enum, !107, !"rt715_adc23_enum", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/rt715.c", i32 621, i32 8}
!108 = !{ptr @rt715_adc24_mux, !109, !"rt715_adc24_mux", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/rt715.c", i32 640, i32 38}
!110 = !{ptr @rt715_adc24_enum, !111, !"rt715_adc24_enum", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/rt715.c", i32 624, i32 8}
!112 = !{ptr @adc_24_mux_text, !113, !"adc_24_mux_text", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/rt715.c", i32 602, i32 27}
!114 = !{ptr @rt715_adc_24_25_values, !115, !"rt715_adc_24_25_values", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/rt715.c", i32 594, i32 27}
!116 = !{ptr @rt715_adc25_mux, !117, !"rt715_adc25_mux", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/rt715.c", i32 644, i32 38}
!118 = !{ptr @rt715_adc25_enum, !119, !"rt715_adc25_enum", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/rt715.c", i32 628, i32 8}
!120 = !{ptr @adc_25_mux_text, !121, !"adc_25_mux_text", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/rt715.c", i32 610, i32 27}
!122 = !{ptr @rt715_audio_map, !123, !"rt715_audio_map", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/rt715.c", i32 673, i32 40}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/rt715.c", i32 918, i32 11}
!126 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/rt715.c", i32 930, i32 11}
!128 = !{ptr @rt715_dai, !129, !"rt715_dai", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/rt715.c", i32 916, i32 34}
!130 = !{ptr @rt715_ops, !131, !"rt715_ops", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/rt715.c", i32 909, i32 37}
!132 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/rt715.c", i32 818, i32 3}
!134 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @rt715_pcm_hw_params._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @rt715_pcm_hw_params._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/rt715.c", i32 834, i32 3}
!139 = !{ptr @rt715_pcm_hw_params._entry.53, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @rt715_pcm_hw_params._entry_ptr.55, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/rt715.c", i32 848, i32 3}
!143 = !{ptr @rt715_pcm_hw_params._entry.56, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @rt715_pcm_hw_params._entry_ptr.58, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/rt715.c", i32 857, i32 3}
!147 = !{ptr @rt715_pcm_hw_params._entry.59, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @rt715_pcm_hw_params._entry_ptr.61, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/rt715.c", i32 47, i32 3}
!151 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @rt715_index_write._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @rt715_index_write._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{i8 0, i8 2}
!164 = !{i64 2148370035, i64 2148370061, i64 2148370090, i64 2148370124, i64 2148370155, i64 2148370178}
!165 = !{!"auto-init"}
!166 = !{i32 0, i32 33}
