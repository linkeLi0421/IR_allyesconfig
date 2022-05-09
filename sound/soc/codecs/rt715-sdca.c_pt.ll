; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt715-sdca.c_pt.bc'
source_filename = "../sound/soc/codecs/rt715-sdca.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.rt715_sdca_kcontrol_private = type { i32, i32, i32, i32, i32 }
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
%struct.rt715_sdca_priv = type { ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i32, i32, i32, %struct.sdw_bus_params, i8, i8, i32, i32, i32, [4 x i32], [2 x i32], [4 x i32], [8 x i32] }
%struct.sdw_bus_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sdw_slave_id = type { i16, i16, i8, i8, i8 }
%struct.sdw_slave = type { %struct.sdw_slave_id, %struct.device, i32, ptr, ptr, %struct.sdw_slave_prop, ptr, %struct.list_head, [15 x %struct.completion], [15 x i32], i16, i16, i8, %struct.completion, %struct.completion, %struct.completion, i32, i8, i8 }
%struct.sdw_slave_prop = type { i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, i8, i32, i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.77, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.77 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.79, [64 x i8] }
%union.anon.79 = type { %struct.anon.82, [40 x i8] }
%struct.anon.82 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.72, [128 x i8] }
%union.anon.72 = type { %union.anon.74 }
%union.anon.74 = type { [64 x i64] }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
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
%struct.sdw_stream_config = type { i32, i32, i32, i32, i32 }
%struct.sdw_port_config = type { i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@soc_codec_dev_rt715_sdca = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @rt715_sdca_snd_controls, i32 8, ptr @rt715_sdca_dapm_widgets, i32 19, ptr @rt715_sdca_audio_map, i32 44, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rt715_sdca_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.50, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt715_sdca_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.48, i64 68719476805, i32 192, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.51, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt715_sdca_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.46, i64 68719476805, i32 192, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description240 = internal constant [58 x i8] c"snd_soc_rt715_sdca.description=ASoC rt715 driver SDW SDCA\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [56 x i8] c"snd_soc_rt715_sdca.author=Jack Yu <jack.yu@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [60 x i8] c"snd_soc_rt715_sdca.file=sound/soc/codecs/snd-soc-rt715-sdca\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [34 x i8] c"snd_soc_rt715_sdca.license=GPL v2\00", section ".modinfo", align 1
@rt715_sdca_snd_controls = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.1, i32 0, i32 0, i32 0, ptr @rt715_sdca_fu_info, ptr @rt715_sdca_get_volsw, ptr @rt715_sdca_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.2 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 0, i32 0, ptr @rt715_sdca_fu_info, ptr @rt715_sdca_get_volsw, ptr @rt715_sdca_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.4 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt715_sdca_set_amp_gain_get, ptr @rt715_sdca_set_amp_gain_put, %union.anon.83 { ptr @in_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.6 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 19, i32 0, ptr @rt715_sdca_fu_info, ptr @rt715_sdca_set_amp_gain_4ch_get, ptr @rt715_sdca_set_amp_gain_4ch_put, %union.anon.83 { ptr @in_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @rt715_sdca_fu_info, ptr @rt715_sdca_set_amp_gain_4ch_get, ptr @rt715_sdca_set_amp_gain_4ch_put, %union.anon.83 { ptr @in_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.10 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 19, i32 0, ptr @rt715_sdca_fu_info, ptr @rt715_sdca_set_amp_gain_8ch_get, ptr @rt715_sdca_set_amp_gain_8ch_put, %union.anon.83 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 19, i32 0, ptr @rt715_sdca_fu_info, ptr @rt715_sdca_set_amp_gain_8ch_get, ptr @rt715_sdca_set_amp_gain_8ch_put, %union.anon.83 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }], [96 x i8] zeroinitializer }, align 32
@rt715_sdca_audio_map = internal constant { [44 x %struct.snd_soc_dapm_route], [560 x i8] } { [44 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.34, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.32, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.28, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.29, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.30, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.31, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.32, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.33, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.34, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.35, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.28, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.29, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.30, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.31, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.32, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.33, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.34, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.35, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.28, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.29, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.30, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.31, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.33, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.28, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.29, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.30, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.31, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.32, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.28, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.29, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.30, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.31, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }], [560 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FU0A Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1082131721, i32 1082131722, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FU02 Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal global { %struct.rt715_sdca_kcontrol_private, [44 x i8] } { %struct.rt715_sdca_kcontrol_private { i32 1082130697, i32 4, i32 1, i32 0, i32 1 }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FU06 Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { %struct.rt715_sdca_kcontrol_private, [44 x i8] } { %struct.rt715_sdca_kcontrol_private { i32 1082131209, i32 4, i32 1, i32 0, i32 1 }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FU0A Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@in_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -17625, i32 375], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 1082131729, i32 1082131730, i32 47, i32 47, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FU02 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { %struct.rt715_sdca_kcontrol_private, [44 x i8] } { %struct.rt715_sdca_kcontrol_private { i32 1082130705, i32 4, i32 127, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FU06 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.rt715_sdca_kcontrol_private, [44 x i8] } { %struct.rt715_sdca_kcontrol_private { i32 1082131217, i32 4, i32 127, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FU0E Boost\00", [21 x i8] zeroinitializer }, align 32
@mic_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 1000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.rt715_sdca_kcontrol_private, [44 x i8] } { %struct.rt715_sdca_kcontrol_private { i32 1082132313, i32 8, i32 3, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FU0C Boost\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.rt715_sdca_kcontrol_private, [44 x i8] } { %struct.rt715_sdca_kcontrol_private { i32 1082132057, i32 8, i32 3, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@rt715_sdca_set_amp_gain_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.17, i32 249, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to read 0x%x, ret=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rt715_sdca_set_amp_gain_get\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/codecs/rt715-sdca.c\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt715_sdca_set_amp_gain_get._entry_ptr = internal global ptr @rt715_sdca_set_amp_gain_get._entry, section ".printk_index", align 4
@rt715_sdca_set_amp_gain_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.17, i32 155, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to write 0x%x=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rt715_sdca_set_amp_gain_put\00", [36 x i8] zeroinitializer }, align 32
@rt715_sdca_set_amp_gain_put._entry_ptr = internal global ptr @rt715_sdca_set_amp_gain_put._entry, section ".printk_index", align 4
@rt715_sdca_set_amp_gain_4ch_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.22, ptr @.str.17, i32 274, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rt715_sdca_set_amp_gain_4ch_get\00", [32 x i8] zeroinitializer }, align 32
@rt715_sdca_set_amp_gain_4ch_get._entry_ptr = internal global ptr @rt715_sdca_set_amp_gain_4ch_get._entry, section ".printk_index", align 4
@rt715_sdca_set_amp_gain_4ch_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.23, ptr @.str.17, i32 191, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rt715_sdca_set_amp_gain_4ch_put\00", [32 x i8] zeroinitializer }, align 32
@rt715_sdca_set_amp_gain_4ch_put._entry_ptr = internal global ptr @rt715_sdca_set_amp_gain_4ch_put._entry, section ".printk_index", align 4
@rt715_sdca_set_amp_gain_8ch_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.24, ptr @.str.17, i32 300, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rt715_sdca_set_amp_gain_8ch_get\00", [32 x i8] zeroinitializer }, align 32
@rt715_sdca_set_amp_gain_8ch_get._entry_ptr = internal global ptr @rt715_sdca_set_amp_gain_8ch_get._entry, section ".printk_index", align 4
@rt715_sdca_set_amp_gain_8ch_get._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.24, ptr @.str.17, i32 309, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@rt715_sdca_set_amp_gain_8ch_get._entry_ptr.26 = internal global ptr @rt715_sdca_set_amp_gain_8ch_get._entry.25, section ".printk_index", align 4
@rt715_sdca_set_amp_gain_8ch_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.27, ptr @.str.17, i32 227, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rt715_sdca_set_amp_gain_8ch_put\00", [32 x i8] zeroinitializer }, align 32
@rt715_sdca_set_amp_gain_8ch_put._entry_ptr = internal global ptr @rt715_sdca_set_amp_gain_8ch_put._entry, section ".printk_index", align 4
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC1\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC2\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC3\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC4\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC1\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC2\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LINE1\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LINE2\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PDE23_24\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADC 07\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADC 08\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADC 09\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADC 27\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC 22 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt715_adc22_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rt715_sdca_mux_get, ptr @rt715_sdca_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt715_adc22_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC 23 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt715_adc23_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rt715_sdca_mux_get, ptr @rt715_sdca_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt715_adc23_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC 24 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt715_adc24_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rt715_sdca_mux_get, ptr @rt715_sdca_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt715_adc24_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC 25 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt715_adc25_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rt715_sdca_mux_get, ptr @rt715_sdca_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt715_adc25_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DP4TX\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DP4 Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DP6TX\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DP6 Capture\00", [20 x i8] zeroinitializer }, align 32
@rt715_sdca_dapm_widgets = internal constant { [19 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [836 x i8] } { [19 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.29, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.31, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.32, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.33, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.34, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.35, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.36, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt715_sdca_pde23_24_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.37, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt715_adc22_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt715_adc23_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt715_adc24_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt715_adc25_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.45, ptr @.str.46, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.47, ptr @.str.48, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [836 x i8] zeroinitializer }, align 32
@rt715_adc22_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 8, i32 7, ptr @adc_22_23_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc_22_23_mux_text = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [32 x i8] zeroinitializer }, align 32
@rt715_adc23_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 8, i32 7, ptr @adc_22_23_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt715_adc24_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 5, i32 15, ptr @adc_24_mux_text, ptr @rt715_adc_24_25_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc_24_mux_text = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.33, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [44 x i8] zeroinitializer }, align 32
@rt715_adc_24_25_values = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 2, i32 3, i32 4, i32 5], [44 x i8] zeroinitializer }, align 32
@rt715_adc25_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 5, i32 15, ptr @adc_25_mux_text, ptr @rt715_adc_24_25_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc_25_mux_text = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.32, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt715-aif1\00", [21 x i8] zeroinitializer }, align 32
@rt715_sdca_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt715_sdca_set_sdw_stream, ptr null, ptr null, ptr null, ptr @rt715_sdca_shutdown, ptr @rt715_sdca_pcm_hw_params, ptr @rt715_sdca_pcm_hw_free, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt715-aif2\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rt715_sdca_pcm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.17, i32 839, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid DAI id %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rt715_sdca_pcm_hw_params\00", [39 x i8] zeroinitializer }, align 32
@rt715_sdca_pcm_hw_params._entry_ptr = internal global ptr @rt715_sdca_pcm_hw_params._entry, section ".printk_index", align 4
@rt715_sdca_pcm_hw_params._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.17, i32 856, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to configure port, retval:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@rt715_sdca_pcm_hw_params._entry_ptr.56 = internal global ptr @rt715_sdca_pcm_hw_params._entry.54, section ".printk_index", align 4
@rt715_sdca_pcm_hw_params._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.17, i32 908, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported sample rate %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rt715_sdca_pcm_hw_params._entry_ptr.59 = internal global ptr @rt715_sdca_pcm_hw_params._entry.57, section ".printk_index", align 4
@rt715_sdca_index_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.17, i32 44, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to set private value: %08x <= %04x %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rt715_sdca_index_write\00", [41 x i8] zeroinitializer }, align 32
@rt715_sdca_index_write._entry_ptr = internal global ptr @rt715_sdca_index_write._entry, section ".printk_index", align 4
@rt715_sdca_index_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.17, i32 62, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to get private value: %06x => %04x ret=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt715_sdca_index_read\00", [42 x i8] zeroinitializer }, align 32
@rt715_sdca_index_read._entry_ptr = internal global ptr @rt715_sdca_index_read._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [17 x i64] [i64 15, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000, i64 384000, i64 768000]
@___asan_gen_.67 = private unnamed_addr constant [25 x i8] c"soc_codec_dev_rt715_sdca\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 761, i32 46 }
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"rt715_sdca_dai\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 945, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant [24 x i8] c"rt715_sdca_snd_controls\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 457, i32 38 }
@___asan_gen_.76 = private unnamed_addr constant [21 x i8] c"rt715_sdca_audio_map\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 712, i32 40 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 459, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 465, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 469, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 474, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [11 x i8] c"in_vol_tlv\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 318, i32 14 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 482, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 488, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 495, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [12 x i8] c"mic_vol_tlv\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 319, i32 14 }
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 501, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 248, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 154, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 273, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 190, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 299, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 308, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 226, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 683, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 684, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 685, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 686, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 687, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 688, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 689, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 690, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 692, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 696, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 697, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 698, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 699, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 700, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [16 x i8] c"rt715_adc22_mux\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 642, i32 38 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 702, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [16 x i8] c"rt715_adc23_mux\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 646, i32 38 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 704, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [16 x i8] c"rt715_adc24_mux\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 650, i32 38 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 706, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [16 x i8] c"rt715_adc25_mux\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 654, i32 38 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 708, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 709, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [24 x i8] c"rt715_sdca_dapm_widgets\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 682, i32 41 }
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"rt715_adc22_enum\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 629, i32 8 }
@___asan_gen_.252 = private unnamed_addr constant [19 x i8] c"adc_22_23_mux_text\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 589, i32 27 }
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c"rt715_adc23_enum\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 632, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c"rt715_adc24_enum\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 635, i32 8 }
@___asan_gen_.261 = private unnamed_addr constant [16 x i8] c"adc_24_mux_text\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 613, i32 27 }
@___asan_gen_.264 = private unnamed_addr constant [23 x i8] c"rt715_adc_24_25_values\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 605, i32 12 }
@___asan_gen_.267 = private unnamed_addr constant [17 x i8] c"rt715_adc25_enum\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 638, i32 8 }
@___asan_gen_.270 = private unnamed_addr constant [16 x i8] c"adc_25_mux_text\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 621, i32 27 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 947, i32 11 }
@___asan_gen_.276 = private unnamed_addr constant [15 x i8] c"rt715_sdca_ops\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 938, i32 37 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 959, i32 11 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 839, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 855, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 907, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 42, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.319 = private constant [33 x i8] c"../sound/soc/codecs/rt715-sdca.c\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 60, i32 3 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @rt715_sdca_index_read._entry, ptr @rt715_sdca_index_read._entry_ptr, ptr @rt715_sdca_index_write._entry, ptr @rt715_sdca_index_write._entry_ptr, ptr @rt715_sdca_pcm_hw_params._entry, ptr @rt715_sdca_pcm_hw_params._entry.54, ptr @rt715_sdca_pcm_hw_params._entry.57, ptr @rt715_sdca_pcm_hw_params._entry_ptr, ptr @rt715_sdca_pcm_hw_params._entry_ptr.56, ptr @rt715_sdca_pcm_hw_params._entry_ptr.59, ptr @rt715_sdca_set_amp_gain_4ch_get._entry, ptr @rt715_sdca_set_amp_gain_4ch_get._entry_ptr, ptr @rt715_sdca_set_amp_gain_4ch_put._entry, ptr @rt715_sdca_set_amp_gain_4ch_put._entry_ptr, ptr @rt715_sdca_set_amp_gain_8ch_get._entry, ptr @rt715_sdca_set_amp_gain_8ch_get._entry.25, ptr @rt715_sdca_set_amp_gain_8ch_get._entry_ptr, ptr @rt715_sdca_set_amp_gain_8ch_get._entry_ptr.26, ptr @rt715_sdca_set_amp_gain_8ch_put._entry, ptr @rt715_sdca_set_amp_gain_8ch_put._entry_ptr, ptr @rt715_sdca_set_amp_gain_get._entry, ptr @rt715_sdca_set_amp_gain_get._entry_ptr, ptr @rt715_sdca_set_amp_gain_put._entry, ptr @rt715_sdca_set_amp_gain_put._entry_ptr, ptr @soc_codec_dev_rt715_sdca, ptr @rt715_sdca_dai, ptr @rt715_sdca_snd_controls, ptr @rt715_sdca_audio_map, ptr @.str, ptr @.compoundliteral, ptr @.str.1, ptr @.compoundliteral.2, ptr @.str.3, ptr @.compoundliteral.4, ptr @.str.5, ptr @in_vol_tlv, ptr @.compoundliteral.6, ptr @.str.7, ptr @.compoundliteral.8, ptr @.str.9, ptr @.compoundliteral.10, ptr @.str.11, ptr @mic_vol_tlv, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @rt715_adc22_mux, ptr @.str.42, ptr @rt715_adc23_mux, ptr @.str.43, ptr @rt715_adc24_mux, ptr @.str.44, ptr @rt715_adc25_mux, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @rt715_sdca_dapm_widgets, ptr @rt715_adc22_enum, ptr @adc_22_23_mux_text, ptr @rt715_adc23_enum, ptr @rt715_adc24_enum, ptr @adc_24_mux_text, ptr @rt715_adc_24_25_values, ptr @rt715_adc25_enum, ptr @adc_25_mux_text, ptr @.str.50, ptr @rt715_sdca_ops, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_codec_dev_rt715_sdca to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdca_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdca_snd_controls to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdca_audio_map to i32), i32 2288, i32 2848, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdca_set_amp_gain_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdca_set_amp_gain_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdca_set_amp_gain_4ch_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdca_set_amp_gain_4ch_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdca_set_amp_gain_8ch_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdca_set_amp_gain_8ch_get._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdca_set_amp_gain_8ch_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_adc22_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_adc23_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_adc24_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_adc25_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdca_dapm_widgets to i32), i32 3420, i32 4256, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_adc22_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_22_23_mux_text to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_adc23_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_adc24_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_24_mux_text to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_adc_24_25_values to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_adc25_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_25_mux_text to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdca_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdca_pcm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdca_pcm_hw_params._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdca_pcm_hw_params._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdca_index_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdca_index_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt715_sdca_init(ptr noundef %dev, ptr noundef %mbq_regmap, ptr noundef %regmap, ptr noundef %slave) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 256, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %slave1 = getelementptr inbounds %struct.rt715_sdca_priv, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %slave, ptr %slave1, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %regmap, ptr %call.i, align 4
  %mbq_regmap3 = getelementptr inbounds %struct.rt715_sdca_priv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %mbq_regmap3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mbq_regmap, ptr %mbq_regmap3, align 4
  %sdw_version = getelementptr inbounds %struct.sdw_slave_id, ptr %slave, i32 0, i32 4
  %4 = ptrtoint ptr %sdw_version to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %sdw_version, align 2
  %bf.lshr = lshr i8 %bf.load, 4
  %conv = zext i8 %bf.lshr to i32
  %hw_sdw_ver = getelementptr inbounds %struct.rt715_sdca_priv, ptr %call.i, i32 0, i32 14
  %5 = ptrtoint ptr %hw_sdw_ver to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %hw_sdw_ver, align 4
  %hw_init = getelementptr inbounds %struct.rt715_sdca_priv, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %hw_init to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %hw_init, align 4
  %first_hw_init = getelementptr inbounds %struct.rt715_sdca_priv, ptr %call.i, i32 0, i32 11
  %7 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %first_hw_init, align 1
  %call4 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_codec_dev_rt715_sdca, ptr noundef nonnull @rt715_sdca_dai, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt715_sdca_io_init(ptr nocapture noundef readonly %dev, ptr noundef %slave) local_unnamed_addr #0 align 64 {
entry:
  %hw_ver = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_ver) #9
  %2 = ptrtoint ptr %hw_ver to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %hw_ver, align 4, !annotation !171
  %hw_init = getelementptr inbounds %struct.rt715_sdca_priv, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hw_init, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %first_hw_init = getelementptr inbounds %struct.rt715_sdca_priv, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %first_hw_init, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev3, i32 noundef 3000) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev3, i1 noundef zeroext true) #9
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev3, i32 noundef 0) #9
  %call.i50 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 22
  %7 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i50, ptr %last_busy.i, align 8
  tail call void @pm_runtime_enable(ptr noundef %dev3) #9
  %8 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %first_hw_init, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then2, %if.end.if.end10_crit_edge
  %dev11 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %usage_count.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !173
  %mbq_regmap.i = getelementptr inbounds %struct.rt715_sdca_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i51 = call i32 @regmap_read(ptr noundef %11, i32 noundef 33554432, ptr noundef nonnull %hw_ver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp.i = icmp slt i32 %call.i51, 0
  br i1 %cmp.i, label %do.end.i, label %if.end10.rt715_sdca_index_read.exit_crit_edge

if.end10.rt715_sdca_index_read.exit_crit_edge:    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt715_sdca_index_read.exit

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %slave.i = getelementptr inbounds %struct.rt715_sdca_priv, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slave.i, align 4
  %dev.i = getelementptr inbounds %struct.sdw_slave, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %hw_ver to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_ver, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.62, i32 noundef 33554432, i32 noundef %15, i32 noundef %call.i51) #12
  br label %rt715_sdca_index_read.exit

rt715_sdca_index_read.exit:                       ; preds = %do.end.i, %if.end10.rt715_sdca_index_read.exit_crit_edge
  %16 = ptrtoint ptr %hw_ver to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_ver, align 4
  %and = and i32 %17, 15
  store i32 %and, ptr %hw_ver, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call13 = call i32 @regmap_write(ptr noundef %19, i32 noundef 1082132488, i32 noundef 1) #9
  %20 = ptrtoint ptr %hw_ver to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_ver, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %rt715_sdca_index_read.exit.if.end21_crit_edge [
    i32 0, label %if.then14
    i32 1, label %if.then17
  ]

rt715_sdca_index_read.exit.if.end21_crit_edge:    ; preds = %rt715_sdca_index_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then14:                                        ; preds = %rt715_sdca_index_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rt715_sdca_index_update_bits(ptr noundef %1, i32 noundef 32, i32 noundef 54, i32 noundef 84, i32 noundef 84)
  br label %if.end21

if.then17:                                        ; preds = %rt715_sdca_index_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rt715_sdca_index_update_bits(ptr noundef %1, i32 noundef 32, i32 noundef 54, i32 noundef 85, i32 noundef 85)
  call fastcc void @rt715_sdca_index_update_bits(ptr noundef %1, i32 noundef 32, i32 noundef 55, i32 noundef 64, i32 noundef 64)
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.then14, %rt715_sdca_index_read.exit.if.end21_crit_edge
  call fastcc void @rt715_sdca_index_update_bits(ptr noundef %1, i32 noundef 32, i32 noundef 68, i32 noundef 1, i32 noundef 1)
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call24 = call i32 @regmap_write(ptr noundef %24, i32 noundef 1082655360, i32 noundef 2) #9
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call.i52 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 94, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %27 = ptrtoint ptr %hw_init to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %hw_init, align 4
  %call.i53 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i54 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 22
  %28 = ptrtoint ptr %last_busy.i54 to i32
  call void @__asan_store8_noabort(i32 %28)
  store volatile i64 %call.i53, ptr %last_busy.i54, align 8
  %call.i55 = call i32 @__pm_runtime_suspend(ptr noundef %dev11, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_ver) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt715_sdca_index_update_bits(ptr nocapture noundef readonly %rt715, i32 noundef %nid, i32 noundef %reg, i32 noundef %mask, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #9
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !171
  %mbq_regmap.i = getelementptr inbounds %struct.rt715_sdca_priv, ptr %rt715, i32 0, i32 1
  %1 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mbq_regmap.i, align 4
  %shl.i = shl i32 %nid, 20
  %or.i = or i32 %shl.i, %reg
  %call.i1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %or.i, ptr noundef nonnull %tmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp.i = icmp slt i32 %call.i1, 0
  br i1 %cmp.i, label %rt715_sdca_index_read.exit.thread, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  %neg = xor i32 %mask, -1
  br label %do.body

rt715_sdca_index_read.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %slave.i = getelementptr inbounds %struct.rt715_sdca_priv, ptr %rt715, i32 0, i32 3
  %3 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slave.i, align 4
  %dev.i = getelementptr inbounds %struct.sdw_slave, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.62, i32 noundef %or.i, i32 noundef %6, i32 noundef %call.i1) #12
  br label %cleanup

do.body:                                          ; preds = %__cmpxchg.exit.do.body_crit_edge, %do.body.preheader
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %tmp, align 4
  %and = and i32 %8, %neg
  %or = or i32 %and, %val
  %call.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !174
  call void @llvm.prefetch.p0(ptr nonnull %tmp, i32 1, i32 3, i32 1) #9
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body
  %9 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr nonnull %tmp, i32 %8, i32 %or) #9, !srcloc !175
  %asmresult.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %9, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !176
  %cmp23.not = icmp eq i32 %asmresult1.i, %8
  br i1 %cmp23.not, label %do.end24, label %__cmpxchg.exit.do.body_crit_edge

__cmpxchg.exit.do.body_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end24:                                         ; preds = %__cmpxchg.exit
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp, align 4
  %12 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i5 = call i32 @regmap_write(ptr noundef %13, i32 noundef %or.i, i32 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %cmp.i6 = icmp slt i32 %call.i5, 0
  br i1 %cmp.i6, label %do.end.i9, label %do.end24.cleanup_crit_edge

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i9:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  %slave.i7 = getelementptr inbounds %struct.rt715_sdca_priv, ptr %rt715, i32 0, i32 3
  %14 = ptrtoint ptr %slave.i7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slave.i7, align 4
  %dev.i8 = getelementptr inbounds %struct.sdw_slave, ptr %15, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i8, ptr noundef nonnull @.str.60, i32 noundef %call.i5, i32 noundef %or.i, i32 noundef %11) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i9, %do.end24.cleanup_crit_edge, %rt715_sdca_index_read.exit.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt715_sdca_fu_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %max = getelementptr inbounds %struct.rt715_sdca_kcontrol_private, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  %spec.select = select i1 %cmp, i32 1, i32 2
  %5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %5, align 8
  %count = getelementptr inbounds %struct.rt715_sdca_kcontrol_private, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  %count2 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %9 = ptrtoint ptr %count2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %count2, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %value, align 8
  %11 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max, align 4
  %max5 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %max5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %max5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_sdca_get_volsw(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %count = getelementptr inbounds %struct.rt715_sdca_kcontrol_private, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp45.not = icmp eq i32 %8, 0
  br i1 %cmp45.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %invert2 = getelementptr inbounds %struct.rt715_sdca_kcontrol_private, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %invert2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %invert2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %max = getelementptr inbounds %struct.rt715_sdca_kcontrol_private, ptr %4, i32 0, i32 2
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cond.end15.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %add20, %cond.end15.for.body_crit_edge ]
  %add = add i32 %i.046, %6
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max, align 4
  %sub = sub i32 %12, %call
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %sub, %cond.true ], [ %call, %if.end.cond.end_crit_edge ]
  %arrayidx = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.046
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond, ptr %arrayidx, align 4
  %add5 = add i32 %add, 1
  %call6 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef %add5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %cond.end.cleanup_crit_edge, label %if.end9

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %cond.end
  br i1 %tobool.not, label %if.end9.cond.end15_crit_edge, label %cond.true11

if.end9.cond.end15_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end15

cond.true11:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max, align 4
  %sub13 = sub i32 %15, %call6
  br label %cond.end15

cond.end15:                                       ; preds = %cond.true11, %if.end9.cond.end15_crit_edge
  %cond16 = phi i32 [ %sub13, %cond.true11 ], [ %call6, %if.end9.cond.end15_crit_edge ]
  %add18 = or i32 %i.046, 1
  %arrayidx19 = getelementptr [128 x i32], ptr %value, i32 0, i32 %add18
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond16, ptr %arrayidx19, align 4
  %add20 = add i32 %i.046, 2
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %add20, %18
  br i1 %cmp, label %cond.end15.for.body_crit_edge, label %cond.end15.cleanup_crit_edge

cond.end15.cleanup_crit_edge:                     ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end15.for.body_crit_edge:                    ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %cond.end15.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %cond.end15.cleanup_crit_edge ], [ -22, %cond.end.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_sdca_put_volsw(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %shift1 = getelementptr inbounds %struct.rt715_sdca_kcontrol_private, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %shift1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %shift1, align 4
  %max2 = getelementptr inbounds %struct.rt715_sdca_kcontrol_private, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %max2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  %15 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 true) #9, !range !177
  %sub.i = sub nuw nsw i32 32, %15
  %sub.i.op = shl nsw i32 -1, %sub.i
  %sub.i.op.op = xor i32 %sub.i.op, -1
  %sub = select i1 %tobool.not.i, i32 0, i32 %sub.i.op.op
  %invert4 = getelementptr inbounds %struct.rt715_sdca_kcontrol_private, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %invert4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %invert4, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value, align 4
  %arrayidx5 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 15, i32 0
  %20 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp6.not = icmp eq i32 %19, %21
  br i1 %cmp6.not, label %for.cond, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1, align 4
  %arrayidx5.1 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 15, i32 1
  %24 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx5.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp6.not.1 = icmp eq i32 %23, %25
  br i1 %cmp6.not.1, label %for.cond.1, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.2, align 4
  %arrayidx5.2 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 15, i32 2
  %28 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx5.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp6.not.2 = icmp eq i32 %27, %29
  br i1 %cmp6.not.2, label %for.cond.2, label %for.cond.1.for.end_crit_edge

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.3 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.3, align 4
  %arrayidx5.3 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 15, i32 3
  %32 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx5.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp6.not.3 = icmp ne i32 %31, %33
  %spec.select143 = zext i1 %cmp6.not.3 to i32
  br label %for.end

for.end:                                          ; preds = %for.cond.2, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %k_changed.0 = phi i32 [ 1, %entry.for.end_crit_edge ], [ 1, %for.cond.for.end_crit_edge ], [ 1, %for.cond.1.for.end_crit_edge ], [ %spec.select143, %for.cond.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  %shl27 = shl i32 %sub, %12
  %34 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %value, align 4
  %36 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx5, align 4
  %37 = load i32, ptr %value, align 4
  %and = and i32 %37, %sub
  %sub23 = sub i32 %14, %and
  %spec.select = select i1 %tobool.not, i32 %and, i32 %sub23
  %shl30 = shl i32 %spec.select, %12
  %arrayidx33 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx33, align 4
  %arrayidx37 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 15, i32 1
  %40 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx37, align 4
  %41 = load i32, ptr %arrayidx33, align 4
  %call64 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %10, i32 noundef %shl27, i32 noundef %shl30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %for.end.cleanup_crit_edge, label %if.end67

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond7:                                        ; preds = %if.end67
  %arrayidx11.1 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx11.1, align 4
  %arrayidx14.1 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 15, i32 2
  %44 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx14.1, align 4
  %45 = load i32, ptr %arrayidx11.1, align 4
  %and.1 = and i32 %45, %sub
  %sub23.1 = sub i32 %14, %and.1
  %spec.select.1 = select i1 %tobool.not, i32 %and.1, i32 %sub23.1
  %shl30.1 = shl i32 %spec.select.1, %12
  %arrayidx33.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %46 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx33.1, align 4
  %arrayidx37.1 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 15, i32 3
  %48 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx37.1, align 4
  %49 = load i32, ptr %arrayidx33.1, align 4
  %add61.1 = add i32 %10, 2
  %call64.1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %add61.1, i32 noundef %shl27, i32 noundef %shl30.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.1)
  %cmp65.1 = icmp slt i32 %call64.1, 0
  br i1 %cmp65.1, label %for.cond7.cleanup_crit_edge, label %if.end67.1

for.cond7.cleanup_crit_edge:                      ; preds = %for.cond7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end67.1:                                       ; preds = %for.cond7
  call void @__sanitizer_cov_trace_pc() #11
  %and42.1 = and i32 %49, %sub
  %sub51.1 = sub i32 %14, %and42.1
  %storemerge.1 = select i1 %tobool.not, i32 %and42.1, i32 %sub51.1
  %shl59.1 = shl i32 %storemerge.1, %12
  %add70.1 = add i32 %10, 3
  %call74.1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %add70.1, i32 noundef %shl27, i32 noundef %shl59.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.1)
  %cmp75.1 = icmp slt i32 %call74.1, 0
  %spec.select144 = select i1 %cmp75.1, i32 %call74.1, i32 %k_changed.0
  br label %cleanup

if.end67:                                         ; preds = %for.end
  %and42 = and i32 %41, %sub
  %sub51 = sub i32 %14, %and42
  %storemerge = select i1 %tobool.not, i32 %and42, i32 %sub51
  %shl59 = shl i32 %storemerge, %12
  %add70 = add i32 %10, 1
  %call74 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %add70, i32 noundef %shl27, i32 noundef %shl59) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.end67.cleanup_crit_edge, label %for.cond7

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end67.cleanup_crit_edge, %if.end67.1, %for.cond7.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call64, %for.end.cleanup_crit_edge ], [ %call74, %if.end67.cleanup_crit_edge ], [ %call64.1, %for.cond7.cleanup_crit_edge ], [ %spec.select144, %if.end67.1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_sdca_set_amp_gain_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val, align 4, !annotation !171
  %mbq_regmap = getelementptr inbounds %struct.rt715_sdca_priv, ptr %8, i32 0, i32 1
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 3
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 5
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mbq_regmap, align 4
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %i.022.lcssa = phi i32 [ 0, %entry.do.end_crit_edge ], [ 1, %if.end.do.end_crit_edge ]
  %call1.lcssa = phi i32 [ %call1, %entry.do.end_crit_edge ], [ %call1.1, %if.end.do.end_crit_edge ]
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg, align 4
  %add4 = add i32 %17, %i.022.lcssa
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.15, i32 noundef %add4, i32 noundef %call1.lcssa) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %20 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %shift, align 4
  %and.i = and i32 %19, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %neg.i = sub i32 0, %19
  %and1.i = and i32 %neg.i, 65535
  %reg_val.addr.0.i = select i1 %tobool.not.i, i32 %19, i32 %and1.i
  %mul.i = mul i32 %reg_val.addr.0.i, 1000
  %div.i = udiv i32 %mul.i, 96000
  %22 = sub nsw i32 0, %div.i
  %reg_val.addr.1.p.i = select i1 %tobool.not.i, i32 %div.i, i32 %22
  %reg_val.addr.1.i = add i32 %reg_val.addr.1.p.i, %21
  %23 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %reg_val.addr.1.i, ptr %value, align 4
  %24 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mbq_regmap, align 4
  %26 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg, align 4
  %add.1 = add i32 %27, 1
  %call1.1 = call i32 @regmap_read(ptr noundef %25, i32 noundef %add.1, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp slt i32 %call1.1, 0
  br i1 %cmp2.1, label %if.end.do.end_crit_edge, label %if.end.1

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %30 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %shift, align 4
  %and.i.1 = and i32 %29, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  %neg.i.1 = sub i32 0, %29
  %and1.i.1 = and i32 %neg.i.1, 65535
  %reg_val.addr.0.i.1 = select i1 %tobool.not.i.1, i32 %29, i32 %and1.i.1
  %mul.i.1 = mul i32 %reg_val.addr.0.i.1, 1000
  %div.i.1 = udiv i32 %mul.i.1, 96000
  %32 = sub nsw i32 0, %div.i.1
  %reg_val.addr.1.p.i.1 = select i1 %tobool.not.i.1, i32 %div.i.1, i32 %32
  %reg_val.addr.1.i.1 = add i32 %reg_val.addr.1.p.i.1, %31
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %reg_val.addr.1.i.1, ptr %arrayidx.1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.1, %do.end
  %retval.0 = phi i32 [ %call1.lcssa, %do.end ], [ 0, %if.end.1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_sdca_set_amp_gain_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %arrayidx1 = getelementptr %struct.rt715_sdca_priv, ptr %8, i32 0, i32 16, i32 0
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp2.not = icmp eq i32 %10, %12
  br i1 %cmp2.not, label %for.cond, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1, align 4
  %arrayidx1.1 = getelementptr %struct.rt715_sdca_priv, ptr %8, i32 0, i32 16, i32 1
  %15 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx1.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp2.not.1 = icmp ne i32 %14, %16
  %spec.select = zext i1 %cmp2.not.1 to i32
  br label %for.end

for.end:                                          ; preds = %for.cond, %entry.for.end_crit_edge
  %k_changed.0 = phi i32 [ 1, %entry.for.end_crit_edge ], [ %spec.select, %for.cond ]
  %max = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 1
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 5
  %mbq_regmap = getelementptr inbounds %struct.rt715_sdca_priv, ptr %8, i32 0, i32 1
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 3
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value, align 4
  %19 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx1, align 4
  %20 = load i32, ptr %value, align 4
  %21 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max, align 4
  %23 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %shift, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %20, i32 %22) #9
  %sub.i = sub i32 %25, %24
  %26 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #9
  %shl.i = mul i32 %26, 96000
  %div.i = sdiv i32 %shl.i, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %24)
  %cmp3.not.i = icmp ugt i32 %25, %24
  %add.i = sub nsw i32 0, %div.i
  %u_ctrl_val.addr.1.i = select i1 %cmp3.not.i, i32 %div.i, i32 %add.i
  %and.i = and i32 %u_ctrl_val.addr.1.i, 65535
  %27 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mbq_regmap, align 4
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg, align 4
  %call13 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef %30, i32 noundef %and.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %for.inc19, label %for.end.do.end_crit_edge

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %for.inc19.do.end_crit_edge, %for.end.do.end_crit_edge
  %i.151.lcssa = phi i32 [ 0, %for.end.do.end_crit_edge ], [ 1, %for.inc19.do.end_crit_edge ]
  %and.i.lcssa = phi i32 [ %and.i, %for.end.do.end_crit_edge ], [ %and.i.1, %for.inc19.do.end_crit_edge ]
  %call13.lcssa = phi i32 [ %call13, %for.end.do.end_crit_edge ], [ %call13.1, %for.inc19.do.end_crit_edge ]
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %33 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg, align 4
  %add17 = add i32 %34, %i.151.lcssa
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.20, i32 noundef %add17, i32 noundef %and.i.lcssa) #12
  br label %cleanup

for.inc19:                                        ; preds = %for.end
  %arrayidx7.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx7.1, align 4
  %arrayidx9.1 = getelementptr %struct.rt715_sdca_priv, ptr %8, i32 0, i32 16, i32 1
  %37 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx9.1, align 4
  %38 = load i32, ptr %arrayidx7.1, align 4
  %39 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max, align 4
  %41 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %shift, align 4
  %43 = tail call i32 @llvm.umin.i32(i32 %38, i32 %40) #9
  %sub.i.1 = sub i32 %43, %42
  %44 = tail call i32 @llvm.abs.i32(i32 %sub.i.1, i1 false) #9
  %shl.i.1 = mul i32 %44, 96000
  %div.i.1 = sdiv i32 %shl.i.1, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %42)
  %cmp3.not.i.1 = icmp ugt i32 %43, %42
  %add.i.1 = sub nsw i32 0, %div.i.1
  %u_ctrl_val.addr.1.i.1 = select i1 %cmp3.not.i.1, i32 %div.i.1, i32 %add.i.1
  %and.i.1 = and i32 %u_ctrl_val.addr.1.i.1, 65535
  %45 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mbq_regmap, align 4
  %47 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %reg, align 4
  %add.1 = add i32 %48, 1
  %call13.1 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef %add.1, i32 noundef %and.i.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1)
  %cmp14.not.1 = icmp eq i32 %call13.1, 0
  br i1 %cmp14.not.1, label %for.inc19.cleanup_crit_edge, label %for.inc19.do.end_crit_edge

for.inc19.do.end_crit_edge:                       ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc19.cleanup_crit_edge:                      ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc19.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call13.lcssa, %do.end ], [ %k_changed.0, %for.inc19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_sdca_set_amp_gain_4ch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val, align 4, !annotation !171
  %mbq_regmap = getelementptr inbounds %struct.rt715_sdca_priv, ptr %5, i32 0, i32 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mbq_regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %13, i32 noundef %10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.end.2.do.end_crit_edge, %if.end.1.do.end_crit_edge, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %add.lcssa = phi i32 [ %10, %entry.do.end_crit_edge ], [ %add.1, %if.end.do.end_crit_edge ], [ %add.2, %if.end.1.do.end_crit_edge ], [ %add.3, %if.end.2.do.end_crit_edge ]
  %call2.lcssa = phi i32 [ %call2, %entry.do.end_crit_edge ], [ %call2.1, %if.end.do.end_crit_edge ], [ %call2.2, %if.end.1.do.end_crit_edge ], [ %call2.3, %if.end.2.do.end_crit_edge ]
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.15, i32 noundef %add.lcssa, i32 noundef %call2.lcssa) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %and.i = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %neg.i = sub i32 0, %17
  %and1.i = and i32 %neg.i, 65535
  %reg_val.addr.0.i = select i1 %tobool.not.i, i32 %17, i32 %and1.i
  %mul.i = mul i32 %reg_val.addr.0.i, 1000
  %div.i = udiv i32 %mul.i, 96000
  %18 = sub nsw i32 0, %div.i
  %reg_val.addr.1.p.i = select i1 %tobool.not.i, i32 %div.i, i32 %18
  %reg_val.addr.1.i = add nsw i32 %reg_val.addr.1.p.i, 47
  %19 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %reg_val.addr.1.i, ptr %value, align 4
  %20 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mbq_regmap, align 4
  %add.1 = add i32 %10, 1
  %call2.1 = call i32 @regmap_read(ptr noundef %21, i32 noundef %add.1, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %cmp3.1 = icmp slt i32 %call2.1, 0
  br i1 %cmp3.1, label %if.end.do.end_crit_edge, label %if.end.1

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.1:                                         ; preds = %if.end
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %and.i.1 = and i32 %23, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  %neg.i.1 = sub i32 0, %23
  %and1.i.1 = and i32 %neg.i.1, 65535
  %reg_val.addr.0.i.1 = select i1 %tobool.not.i.1, i32 %23, i32 %and1.i.1
  %mul.i.1 = mul i32 %reg_val.addr.0.i.1, 1000
  %div.i.1 = udiv i32 %mul.i.1, 96000
  %24 = sub nsw i32 0, %div.i.1
  %reg_val.addr.1.p.i.1 = select i1 %tobool.not.i.1, i32 %div.i.1, i32 %24
  %reg_val.addr.1.i.1 = add nsw i32 %reg_val.addr.1.p.i.1, 47
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %reg_val.addr.1.i.1, ptr %arrayidx.1, align 4
  %26 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mbq_regmap, align 4
  %add.2 = add i32 %10, 2
  %call2.2 = call i32 @regmap_read(ptr noundef %27, i32 noundef %add.2, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %cmp3.2 = icmp slt i32 %call2.2, 0
  br i1 %cmp3.2, label %if.end.1.do.end_crit_edge, label %if.end.2

if.end.1.do.end_crit_edge:                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.2:                                         ; preds = %if.end.1
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %and.i.2 = and i32 %29, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool.not.i.2 = icmp eq i32 %and.i.2, 0
  %neg.i.2 = sub i32 0, %29
  %and1.i.2 = and i32 %neg.i.2, 65535
  %reg_val.addr.0.i.2 = select i1 %tobool.not.i.2, i32 %29, i32 %and1.i.2
  %mul.i.2 = mul i32 %reg_val.addr.0.i.2, 1000
  %div.i.2 = udiv i32 %mul.i.2, 96000
  %30 = sub nsw i32 0, %div.i.2
  %reg_val.addr.1.p.i.2 = select i1 %tobool.not.i.2, i32 %div.i.2, i32 %30
  %reg_val.addr.1.i.2 = add nsw i32 %reg_val.addr.1.p.i.2, 47
  %arrayidx.2 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %reg_val.addr.1.i.2, ptr %arrayidx.2, align 4
  %32 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mbq_regmap, align 4
  %add.3 = add i32 %10, 3
  %call2.3 = call i32 @regmap_read(ptr noundef %33, i32 noundef %add.3, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.3)
  %cmp3.3 = icmp slt i32 %call2.3, 0
  br i1 %cmp3.3, label %if.end.2.do.end_crit_edge, label %if.end.3

if.end.2.do.end_crit_edge:                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.3:                                         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val, align 4
  %and.i.3 = and i32 %35, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %tobool.not.i.3 = icmp eq i32 %and.i.3, 0
  %neg.i.3 = sub i32 0, %35
  %and1.i.3 = and i32 %neg.i.3, 65535
  %reg_val.addr.0.i.3 = select i1 %tobool.not.i.3, i32 %35, i32 %and1.i.3
  %mul.i.3 = mul i32 %reg_val.addr.0.i.3, 1000
  %div.i.3 = udiv i32 %mul.i.3, 96000
  %36 = sub nsw i32 0, %div.i.3
  %reg_val.addr.1.p.i.3 = select i1 %tobool.not.i.3, i32 %div.i.3, i32 %36
  %reg_val.addr.1.i.3 = add nsw i32 %reg_val.addr.1.p.i.3, 47
  %arrayidx.3 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %37 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %reg_val.addr.1.i.3, ptr %arrayidx.3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %do.end
  %retval.0 = phi i32 [ %call2.lcssa, %do.end ], [ 0, %if.end.3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_sdca_set_amp_gain_4ch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 4
  %arrayidx2 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 17, i32 0
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp3.not = icmp eq i32 %12, %14
  br i1 %cmp3.not, label %for.cond, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 17, i32 1
  %17 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp3.not.1 = icmp eq i32 %16, %18
  br i1 %cmp3.not.1, label %for.cond.1, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.2, align 4
  %arrayidx2.2 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 17, i32 2
  %21 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx2.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp3.not.2 = icmp eq i32 %20, %22
  br i1 %cmp3.not.2, label %for.cond.2, label %for.cond.1.for.end_crit_edge

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.3 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.3, align 4
  %arrayidx2.3 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 17, i32 3
  %25 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx2.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp3.not.3 = icmp ne i32 %24, %26
  %spec.select = zext i1 %cmp3.not.3 to i32
  br label %for.end

for.end:                                          ; preds = %for.cond.2, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %k_changed.0 = phi i32 [ 1, %entry.for.end_crit_edge ], [ 1, %for.cond.for.end_crit_edge ], [ 1, %for.cond.1.for.end_crit_edge ], [ %spec.select, %for.cond.2 ]
  %max = getelementptr inbounds %struct.rt715_sdca_kcontrol_private, ptr %8, i32 0, i32 2
  %mbq_regmap = getelementptr inbounds %struct.rt715_sdca_priv, ptr %5, i32 0, i32 1
  %27 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %value, align 4
  %29 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2, align 4
  %30 = load i32, ptr %value, align 4
  %31 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max, align 4
  %33 = tail call i32 @llvm.umin.i32(i32 %30, i32 %32) #9
  %sub.i = add i32 %33, -47
  %34 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #9
  %shl.i = mul i32 %34, 96000
  %div.i = sdiv i32 %shl.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %33)
  %cmp3.not.i = icmp ugt i32 %33, 47
  %add.i = sub nsw i32 0, %div.i
  %u_ctrl_val.addr.1.i = select i1 %cmp3.not.i, i32 %div.i, i32 %add.i
  %and.i = and i32 %u_ctrl_val.addr.1.i, 65535
  %35 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mbq_regmap, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef %10, i32 noundef %and.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %for.cond4, label %for.end.do.end_crit_edge

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond4:                                        ; preds = %for.end
  %arrayidx8.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx8.1, align 4
  %arrayidx10.1 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 17, i32 1
  %39 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx10.1, align 4
  %40 = load i32, ptr %arrayidx8.1, align 4
  %41 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max, align 4
  %43 = tail call i32 @llvm.umin.i32(i32 %40, i32 %42) #9
  %sub.i.1 = add i32 %43, -47
  %44 = tail call i32 @llvm.abs.i32(i32 %sub.i.1, i1 false) #9
  %shl.i.1 = mul i32 %44, 96000
  %div.i.1 = sdiv i32 %shl.i.1, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %43)
  %cmp3.not.i.1 = icmp ugt i32 %43, 47
  %add.i.1 = sub nsw i32 0, %div.i.1
  %u_ctrl_val.addr.1.i.1 = select i1 %cmp3.not.i.1, i32 %div.i.1, i32 %add.i.1
  %and.i.1 = and i32 %u_ctrl_val.addr.1.i.1, 65535
  %45 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mbq_regmap, align 4
  %add.1 = add i32 %10, 1
  %call14.1 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef %add.1, i32 noundef %and.i.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.1)
  %cmp15.not.1 = icmp eq i32 %call14.1, 0
  br i1 %cmp15.not.1, label %for.cond4.1, label %for.cond4.do.end_crit_edge

for.cond4.do.end_crit_edge:                       ; preds = %for.cond4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond4.1:                                      ; preds = %for.cond4
  %arrayidx8.2 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx8.2, align 4
  %arrayidx10.2 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 17, i32 2
  %49 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx10.2, align 4
  %50 = load i32, ptr %arrayidx8.2, align 4
  %51 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max, align 4
  %53 = tail call i32 @llvm.umin.i32(i32 %50, i32 %52) #9
  %sub.i.2 = add i32 %53, -47
  %54 = tail call i32 @llvm.abs.i32(i32 %sub.i.2, i1 false) #9
  %shl.i.2 = mul i32 %54, 96000
  %div.i.2 = sdiv i32 %shl.i.2, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %53)
  %cmp3.not.i.2 = icmp ugt i32 %53, 47
  %add.i.2 = sub nsw i32 0, %div.i.2
  %u_ctrl_val.addr.1.i.2 = select i1 %cmp3.not.i.2, i32 %div.i.2, i32 %add.i.2
  %and.i.2 = and i32 %u_ctrl_val.addr.1.i.2, 65535
  %55 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mbq_regmap, align 4
  %add.2 = add i32 %10, 2
  %call14.2 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef %add.2, i32 noundef %and.i.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.2)
  %cmp15.not.2 = icmp eq i32 %call14.2, 0
  br i1 %cmp15.not.2, label %for.cond4.2, label %for.cond4.1.do.end_crit_edge

for.cond4.1.do.end_crit_edge:                     ; preds = %for.cond4.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond4.2:                                      ; preds = %for.cond4.1
  %arrayidx8.3 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %57 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx8.3, align 4
  %arrayidx10.3 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 17, i32 3
  %59 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx10.3, align 4
  %60 = load i32, ptr %arrayidx8.3, align 4
  %61 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max, align 4
  %63 = tail call i32 @llvm.umin.i32(i32 %60, i32 %62) #9
  %sub.i.3 = add i32 %63, -47
  %64 = tail call i32 @llvm.abs.i32(i32 %sub.i.3, i1 false) #9
  %shl.i.3 = mul i32 %64, 96000
  %div.i.3 = sdiv i32 %shl.i.3, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %63)
  %cmp3.not.i.3 = icmp ugt i32 %63, 47
  %add.i.3 = sub nsw i32 0, %div.i.3
  %u_ctrl_val.addr.1.i.3 = select i1 %cmp3.not.i.3, i32 %div.i.3, i32 %add.i.3
  %and.i.3 = and i32 %u_ctrl_val.addr.1.i.3, 65535
  %65 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mbq_regmap, align 4
  %add.3 = add i32 %10, 3
  %call14.3 = tail call i32 @regmap_write(ptr noundef %66, i32 noundef %add.3, i32 noundef %and.i.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.3)
  %cmp15.not.3 = icmp eq i32 %call14.3, 0
  br i1 %cmp15.not.3, label %for.cond4.2.cleanup_crit_edge, label %for.cond4.2.do.end_crit_edge

for.cond4.2.do.end_crit_edge:                     ; preds = %for.cond4.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond4.2.cleanup_crit_edge:                    ; preds = %for.cond4.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %for.cond4.2.do.end_crit_edge, %for.cond4.1.do.end_crit_edge, %for.cond4.do.end_crit_edge, %for.end.do.end_crit_edge
  %and.i.lcssa = phi i32 [ %and.i, %for.end.do.end_crit_edge ], [ %and.i.1, %for.cond4.do.end_crit_edge ], [ %and.i.2, %for.cond4.1.do.end_crit_edge ], [ %and.i.3, %for.cond4.2.do.end_crit_edge ]
  %add.lcssa = phi i32 [ %10, %for.end.do.end_crit_edge ], [ %add.1, %for.cond4.do.end_crit_edge ], [ %add.2, %for.cond4.1.do.end_crit_edge ], [ %add.3, %for.cond4.2.do.end_crit_edge ]
  %call14.lcssa = phi i32 [ %call14, %for.end.do.end_crit_edge ], [ %call14.1, %for.cond4.do.end_crit_edge ], [ %call14.2, %for.cond4.1.do.end_crit_edge ], [ %call14.3, %for.cond4.2.do.end_crit_edge ]
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.20, i32 noundef %add.lcssa, i32 noundef %and.i.lcssa) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond4.2.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14.lcssa, %do.end ], [ %k_changed.0, %for.cond4.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_sdca_set_amp_gain_8ch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %val_l = alloca i32, align 4
  %val_r = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_l) #9
  %11 = ptrtoint ptr %val_l to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val_l, align 4, !annotation !171
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val_r) #9
  %12 = ptrtoint ptr %val_r to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val_r, align 4, !annotation !171
  %mbq_regmap = getelementptr inbounds %struct.rt715_sdca_priv, ptr %5, i32 0, i32 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %sub = add i32 %10, -1
  %or = or i32 %sub, 32768
  %13 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mbq_regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %14, i32 noundef %10, ptr noundef nonnull %val_l) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.end16.2.do.end_crit_edge, %if.end16.1.do.end_crit_edge, %if.end16.do.end_crit_edge, %entry.do.end_crit_edge
  %add.lcssa = phi i32 [ %10, %entry.do.end_crit_edge ], [ %add.1, %if.end16.do.end_crit_edge ], [ %add.2, %if.end16.1.do.end_crit_edge ], [ %add.3, %if.end16.2.do.end_crit_edge ]
  %call2.lcssa = phi i32 [ %call2, %entry.do.end_crit_edge ], [ %call2.1, %if.end16.do.end_crit_edge ], [ %call2.2, %if.end16.1.do.end_crit_edge ], [ %call2.3, %if.end16.2.do.end_crit_edge ]
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.15, i32 noundef %add.lcssa, i32 noundef %call2.lcssa) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %val_l to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val_l, align 4
  %div = udiv i32 %18, 2560
  %19 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div, ptr %value, align 4
  %add7 = add i32 %10, 1
  %20 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mbq_regmap, align 4
  %call9 = call i32 @regmap_read(ptr noundef %21, i32 noundef %add7, ptr noundef nonnull %val_r) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end.do.end14_crit_edge, label %if.end16

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

do.end14:                                         ; preds = %if.end.3.do.end14_crit_edge, %if.end.2.do.end14_crit_edge, %if.end.1.do.end14_crit_edge, %if.end.do.end14_crit_edge
  %cond.lcssa = phi i32 [ %add7, %if.end.do.end14_crit_edge ], [ %add7.1, %if.end.1.do.end14_crit_edge ], [ %add7.2, %if.end.2.do.end14_crit_edge ], [ %or, %if.end.3.do.end14_crit_edge ]
  %call9.lcssa = phi i32 [ %call9, %if.end.do.end14_crit_edge ], [ %call9.1, %if.end.1.do.end14_crit_edge ], [ %call9.2, %if.end.2.do.end14_crit_edge ], [ %call9.3, %if.end.3.do.end14_crit_edge ]
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.15, i32 noundef %cond.lcssa, i32 noundef %call9.lcssa) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %24 = ptrtoint ptr %val_r to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val_r, align 4
  %div18 = udiv i32 %25, 2560
  %arrayidx21 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div18, ptr %arrayidx21, align 4
  %27 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mbq_regmap, align 4
  %add.1 = add i32 %10, 2
  %call2.1 = call i32 @regmap_read(ptr noundef %28, i32 noundef %add.1, ptr noundef nonnull %val_l) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %cmp3.1 = icmp slt i32 %call2.1, 0
  br i1 %cmp3.1, label %if.end16.do.end_crit_edge, label %if.end.1

if.end16.do.end_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.1:                                         ; preds = %if.end16
  %29 = ptrtoint ptr %val_l to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val_l, align 4
  %div.1 = udiv i32 %30, 2560
  %arrayidx.1 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div.1, ptr %arrayidx.1, align 4
  %add7.1 = add i32 %10, 3
  %32 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mbq_regmap, align 4
  %call9.1 = call i32 @regmap_read(ptr noundef %33, i32 noundef %add7.1, ptr noundef nonnull %val_r) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1)
  %cmp10.1 = icmp slt i32 %call9.1, 0
  br i1 %cmp10.1, label %if.end.1.do.end14_crit_edge, label %if.end16.1

if.end.1.do.end14_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

if.end16.1:                                       ; preds = %if.end.1
  %34 = ptrtoint ptr %val_r to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val_r, align 4
  %div18.1 = udiv i32 %35, 2560
  %arrayidx21.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div18.1, ptr %arrayidx21.1, align 4
  %37 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mbq_regmap, align 4
  %add.2 = add i32 %10, 4
  %call2.2 = call i32 @regmap_read(ptr noundef %38, i32 noundef %add.2, ptr noundef nonnull %val_l) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %cmp3.2 = icmp slt i32 %call2.2, 0
  br i1 %cmp3.2, label %if.end16.1.do.end_crit_edge, label %if.end.2

if.end16.1.do.end_crit_edge:                      ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.2:                                         ; preds = %if.end16.1
  %39 = ptrtoint ptr %val_l to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val_l, align 4
  %div.2 = udiv i32 %40, 2560
  %arrayidx.2 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 2
  %41 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div.2, ptr %arrayidx.2, align 4
  %add7.2 = add i32 %10, 5
  %42 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mbq_regmap, align 4
  %call9.2 = call i32 @regmap_read(ptr noundef %43, i32 noundef %add7.2, ptr noundef nonnull %val_r) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.2)
  %cmp10.2 = icmp slt i32 %call9.2, 0
  br i1 %cmp10.2, label %if.end.2.do.end14_crit_edge, label %if.end16.2

if.end.2.do.end14_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

if.end16.2:                                       ; preds = %if.end.2
  %44 = ptrtoint ptr %val_r to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val_r, align 4
  %div18.2 = udiv i32 %45, 2560
  %arrayidx21.2 = getelementptr [128 x i32], ptr %value, i32 0, i32 5
  %46 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div18.2, ptr %arrayidx21.2, align 4
  %47 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mbq_regmap, align 4
  %add.3 = add i32 %10, 6
  %call2.3 = call i32 @regmap_read(ptr noundef %48, i32 noundef %add.3, ptr noundef nonnull %val_l) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.3)
  %cmp3.3 = icmp slt i32 %call2.3, 0
  br i1 %cmp3.3, label %if.end16.2.do.end_crit_edge, label %if.end.3

if.end16.2.do.end_crit_edge:                      ; preds = %if.end16.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.3:                                         ; preds = %if.end16.2
  %49 = ptrtoint ptr %val_l to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val_l, align 4
  %div.3 = udiv i32 %50, 2560
  %arrayidx.3 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 3
  %51 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div.3, ptr %arrayidx.3, align 4
  %52 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mbq_regmap, align 4
  %call9.3 = call i32 @regmap_read(ptr noundef %53, i32 noundef %or, ptr noundef nonnull %val_r) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.3)
  %cmp10.3 = icmp slt i32 %call9.3, 0
  br i1 %cmp10.3, label %if.end.3.do.end14_crit_edge, label %if.end16.3

if.end.3.do.end14_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

if.end16.3:                                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %val_r to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val_r, align 4
  %div18.3 = udiv i32 %55, 2560
  %arrayidx21.3 = getelementptr [128 x i32], ptr %value, i32 0, i32 7
  %56 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div18.3, ptr %arrayidx21.3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16.3, %do.end14, %do.end
  %retval.0 = phi i32 [ %call2.lcssa, %do.end ], [ %call9.lcssa, %do.end14 ], [ 0, %if.end16.3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_r) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val_l) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_sdca_set_amp_gain_8ch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 4
  %arrayidx2 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 18, i32 0
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp3.not = icmp eq i32 %12, %14
  br i1 %cmp3.not, label %for.cond, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp3.not.1 = icmp eq i32 %16, %18
  br i1 %cmp3.not.1, label %for.cond.1, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.2, align 4
  %arrayidx2.2 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 18, i32 2
  %21 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx2.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp3.not.2 = icmp eq i32 %20, %22
  br i1 %cmp3.not.2, label %for.cond.2, label %for.cond.1.for.end_crit_edge

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.3, align 4
  %arrayidx2.3 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 18, i32 3
  %25 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx2.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp3.not.3 = icmp eq i32 %24, %26
  br i1 %cmp3.not.3, label %for.cond.3, label %for.cond.2.for.end_crit_edge

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.4, align 4
  %arrayidx2.4 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 18, i32 4
  %29 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx2.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp3.not.4 = icmp eq i32 %28, %30
  br i1 %cmp3.not.4, label %for.cond.4, label %for.cond.3.for.end_crit_edge

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr [128 x i32], ptr %value, i32 0, i32 5
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.5, align 4
  %arrayidx2.5 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 18, i32 5
  %33 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx2.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp3.not.5 = icmp eq i32 %32, %34
  br i1 %cmp3.not.5, label %for.cond.5, label %for.cond.4.for.end_crit_edge

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 3
  %35 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.6, align 4
  %arrayidx2.6 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 18, i32 6
  %37 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx2.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp3.not.6 = icmp eq i32 %36, %38
  br i1 %cmp3.not.6, label %for.cond.6, label %for.cond.5.for.end_crit_edge

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.7 = getelementptr [128 x i32], ptr %value, i32 0, i32 7
  %39 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.7, align 4
  %arrayidx2.7 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 18, i32 7
  %41 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx2.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp3.not.7 = icmp ne i32 %40, %42
  %spec.select = zext i1 %cmp3.not.7 to i32
  br label %for.end

for.end:                                          ; preds = %for.cond.6, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %k_changed.0 = phi i32 [ 1, %entry.for.end_crit_edge ], [ 1, %for.cond.for.end_crit_edge ], [ 1, %for.cond.1.for.end_crit_edge ], [ 1, %for.cond.2.for.end_crit_edge ], [ 1, %for.cond.3.for.end_crit_edge ], [ 1, %for.cond.4.for.end_crit_edge ], [ 1, %for.cond.5.for.end_crit_edge ], [ %spec.select, %for.cond.6 ]
  %max = getelementptr inbounds %struct.rt715_sdca_kcontrol_private, ptr %8, i32 0, i32 2
  %sub = add i32 %10, -1
  %or = or i32 %sub, 32768
  %mbq_regmap = getelementptr inbounds %struct.rt715_sdca_priv, ptr %5, i32 0, i32 1
  br label %for.body6

for.cond4:                                        ; preds = %for.body6
  %inc20 = add nuw nsw i32 %i.153, 1
  %exitcond.not = icmp eq i32 %inc20, 8
  br i1 %exitcond.not, label %for.cond4.cleanup_crit_edge, label %for.cond4.for.body6_crit_edge

for.cond4.for.body6_crit_edge:                    ; preds = %for.cond4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6

for.cond4.cleanup_crit_edge:                      ; preds = %for.cond4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body6:                                        ; preds = %for.cond4.for.body6_crit_edge, %for.end
  %i.153 = phi i32 [ 0, %for.end ], [ %inc20, %for.cond4.for.body6_crit_edge ]
  %arrayidx8 = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.153
  %43 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.rt715_sdca_priv, ptr %5, i32 0, i32 18, i32 %i.153
  %45 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx10, align 4
  %46 = load i32, ptr %arrayidx8, align 4
  %47 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max, align 4
  %49 = tail call i32 @llvm.umin.i32(i32 %46, i32 %48) #9
  %shl.i = mul i32 %49, 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.153)
  %cmp14.not = icmp eq i32 %i.153, 7
  %add = add i32 %i.153, %10
  %cond = select i1 %cmp14.not, i32 %or, i32 %add
  %50 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mbq_regmap, align 4
  %call15 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef %cond, i32 noundef %shl.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %for.cond4, label %do.end

do.end:                                           ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.20, i32 noundef %cond, i32 noundef %shl.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %do.end ], [ %k_changed.0, %for.cond4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_sdca_pde23_24_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.epilog.sink.split_crit_edge
    i32 4, label %sw.bb3
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %entry.sw.epilog.sink.split_crit_edge
  %.sink7 = phi i32 [ 3, %sw.bb3 ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 1082133512, i32 noundef %.sink7) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_sdca_mux_get(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %kcontrol) #9
  %dev.i = getelementptr i8, ptr %call.i, i32 -164
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !171
  %name = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 4
  %call2 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.41)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.else, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.else:                                          ; preds = %entry
  %call6 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.42)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.else9, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.else9:                                         ; preds = %if.else
  %call13 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.43)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.else16, label %if.else9.if.end26_crit_edge

if.else9.if.end26_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.else16:                                        ; preds = %if.else9
  %call20 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.44)
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.else16.cleanup_crit_edge, label %if.else16.if.end26_crit_edge

if.else16.if.end26_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.else16.cleanup_crit_edge:                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.else16.if.end26_crit_edge, %if.else9.if.end26_crit_edge, %if.else.if.end26_crit_edge, %entry.if.end26_crit_edge
  %mask_sft.0 = phi i32 [ 12, %entry.if.end26_crit_edge ], [ 8, %if.else.if.end26_crit_edge ], [ 4, %if.else9.if.end26_crit_edge ], [ 0, %if.else16.if.end26_crit_edge ]
  %mbq_regmap.i = getelementptr inbounds %struct.rt715_sdca_priv, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i49 = call i32 @regmap_read(ptr noundef %6, i32 noundef 101711872, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp.i = icmp slt i32 %call.i49, 0
  br i1 %cmp.i, label %do.end.i, label %if.end26.rt715_sdca_index_read.exit_crit_edge

if.end26.rt715_sdca_index_read.exit_crit_edge:    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt715_sdca_index_read.exit

do.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %slave.i = getelementptr inbounds %struct.rt715_sdca_priv, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %slave.i, align 4
  %dev.i50 = getelementptr inbounds %struct.sdw_slave, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i50, ptr noundef nonnull @.str.62, i32 noundef 101711872, i32 noundef %10, i32 noundef %call.i49) #12
  br label %rt715_sdca_index_read.exit

rt715_sdca_index_read.exit:                       ; preds = %do.end.i, %if.end26.rt715_sdca_index_read.exit_crit_edge
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %shr = lshr i32 %12, %mask_sft.0
  %and = and i32 %shr, 15
  store i32 %and, ptr %val, align 4
  %call31 = call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.43)
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %rt715_sdca_index_read.exit
  %call36 = call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.44)
  %tobool37.not = icmp eq ptr %call36, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool37.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %lor.lhs.false.if.end39_crit_edge, label %lor.lhs.false.if.then38_crit_edge

lor.lhs.false.if.then38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

land.lhs.true:                                    ; preds = %rt715_sdca_index_read.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not.old = icmp eq i32 %and, 0
  br i1 %cmp.not.old, label %land.lhs.true.if.end39_crit_edge, label %land.lhs.true.if.then38_crit_edge

land.lhs.true.if.then38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then38:                                        ; preds = %land.lhs.true.if.then38_crit_edge, %lor.lhs.false.if.then38_crit_edge
  %sub = add nsw i32 %and, -1
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %val, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %land.lhs.true.if.end39_crit_edge, %lor.lhs.false.if.end39_crit_edge
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.else16.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ -22, %if.else16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_sdca_mux_put(ptr noundef %kcontrol, ptr noundef readonly %ucontrol) #0 align 64 {
entry:
  %val2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %kcontrol) #9
  %call1 = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %kcontrol) #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val2) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 4
  %call4 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.41)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.else, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.else:                                          ; preds = %if.end
  %call9 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.42)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.else12, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.else12:                                        ; preds = %if.else
  %call16 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.43)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.else19, label %if.else12.if.end30_crit_edge

if.else12.if.end30_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.else19:                                        ; preds = %if.else12
  %call23 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.44)
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.else19.cleanup_crit_edge, label %if.else19.if.end30_crit_edge

if.else19.if.end30_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.else19.cleanup_crit_edge:                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.else19.if.end30_crit_edge, %if.else12.if.end30_crit_edge, %if.else.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %mask_sft.0 = phi i32 [ 12, %if.end.if.end30_crit_edge ], [ 8, %if.else.if.end30_crit_edge ], [ 4, %if.else12.if.end30_crit_edge ], [ 0, %if.else19.if.end30_crit_edge ]
  %values.i = getelementptr inbounds %struct.soc_enum, ptr %6, i32 0, i32 6
  %12 = ptrtoint ptr %values.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %values.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end30.snd_soc_enum_item_to_val.exit_crit_edge, label %if.end.i

if.end30.snd_soc_enum_item_to_val.exit_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_soc_enum_item_to_val.exit

if.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr i32, ptr %13, i32 %9
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  br label %snd_soc_enum_item_to_val.exit

snd_soc_enum_item_to_val.exit:                    ; preds = %if.end.i, %if.end30.snd_soc_enum_item_to_val.exit_crit_edge
  %retval.0.i = phi i32 [ %15, %if.end.i ], [ %9, %if.end30.snd_soc_enum_item_to_val.exit_crit_edge ]
  %shift_l = getelementptr inbounds %struct.soc_enum, ptr %6, i32 0, i32 1
  %16 = ptrtoint ptr %shift_l to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shift_l, align 4
  %conv = zext i8 %17 to i32
  %shl = shl i32 %retval.0.i, %conv
  %mbq_regmap.i = getelementptr inbounds %struct.rt715_sdca_priv, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i69 = call i32 @regmap_read(ptr noundef %19, i32 noundef 101711872, ptr noundef nonnull %val2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp.i = icmp slt i32 %call.i69, 0
  br i1 %cmp.i, label %do.end.i, label %snd_soc_enum_item_to_val.exit.rt715_sdca_index_read.exit_crit_edge

snd_soc_enum_item_to_val.exit.rt715_sdca_index_read.exit_crit_edge: ; preds = %snd_soc_enum_item_to_val.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt715_sdca_index_read.exit

do.end.i:                                         ; preds = %snd_soc_enum_item_to_val.exit
  call void @__sanitizer_cov_trace_pc() #11
  %slave.i = getelementptr inbounds %struct.rt715_sdca_priv, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %slave.i, align 4
  %dev.i70 = getelementptr inbounds %struct.sdw_slave, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i70, ptr noundef nonnull @.str.62, i32 noundef 101711872, i32 noundef %23, i32 noundef %call.i69) #12
  br label %rt715_sdca_index_read.exit

rt715_sdca_index_read.exit:                       ; preds = %do.end.i, %snd_soc_enum_item_to_val.exit.rt715_sdca_index_read.exit_crit_edge
  %24 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val2, align 4
  %shr = lshr i32 %25, %mask_sft.0
  %and = and i32 %shr, 15
  store i32 %and, ptr %val2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %and)
  %cmp34 = icmp ne i32 %shl, %and
  %conv35 = zext i1 %cmp34 to i32
  br i1 %cmp34, label %if.then37, label %rt715_sdca_index_read.exit.if.end41_crit_edge

rt715_sdca_index_read.exit.if.end41_crit_edge:    ; preds = %rt715_sdca_index_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then37:                                        ; preds = %rt715_sdca_index_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %shl38 = shl nuw nsw i32 15, %mask_sft.0
  %shl39 = shl i32 %shl, %mask_sft.0
  call fastcc void @rt715_sdca_index_update_bits(ptr noundef %3, i32 noundef 97, i32 noundef 0, i32 noundef %shl38, i32 noundef %shl39)
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %rt715_sdca_index_read.exit.if.end41_crit_edge
  %26 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value, align 4
  %call43 = call i32 @snd_soc_dapm_mux_update_power(ptr noundef %call1, ptr noundef %kcontrol, i32 noundef %27, ptr noundef %6, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.else19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv35, %if.end41 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_mux_update_power(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_sdca_set_sdw_stream(ptr nocapture noundef writeonly %dai, ptr noundef %sdw_stream, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt715_sdca_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %tobool.not = icmp eq ptr %cond.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %cond.in.i, align 4
  tail call void @kfree(ptr noundef nonnull %cond.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_sdca_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  %stream_config = alloca %struct.sdw_stream_config, align 4
  %port_config = alloca %struct.sdw_port_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %stream_config) #9
  %6 = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 2
  %8 = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 3
  %9 = getelementptr inbounds i8, ptr %stream_config, i32 16
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %port_config) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %slave = getelementptr inbounds %struct.rt715_sdca_priv, ptr %5, i32 0, i32 3
  %15 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slave, align 4
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
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
  %mbq_regmap.i = getelementptr inbounds %struct.rt715_sdca_priv, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 33554489, i32 noundef 42240) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i78 = icmp slt i32 %call.i, 0
  br i1 %cmp.i78, label %do.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %slave, align 4
  %dev.i79 = getelementptr inbounds %struct.sdw_slave, ptr %23, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i79, ptr noundef nonnull @.str.60, i32 noundef %call.i, i32 noundef 33554489, i32 noundef 42240) #12
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end6
  %mbq_regmap.i80 = getelementptr inbounds %struct.rt715_sdca_priv, ptr %5, i32 0, i32 1
  %24 = ptrtoint ptr %mbq_regmap.i80 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mbq_regmap.i80, align 4
  %call.i81 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 33554489, i32 noundef 44800) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %cmp.i82 = icmp slt i32 %call.i81, 0
  br i1 %cmp.i82, label %do.end.i85, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end.i85:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %slave, align 4
  %dev.i84 = getelementptr inbounds %struct.sdw_slave, ptr %27, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i84, ptr noundef nonnull @.str.60, i32 noundef %call.i81, i32 noundef 33554489, i32 noundef 44800) #12
  br label %sw.epilog

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.52, i32 noundef %18) #12
  br label %cleanup

sw.epilog:                                        ; preds = %do.end.i85, %sw.bb8.sw.epilog_crit_edge, %do.end.i, %sw.bb.sw.epilog_crit_edge
  %port.0 = phi i32 [ 6, %sw.bb.sw.epilog_crit_edge ], [ 6, %do.end.i ], [ 4, %sw.bb8.sw.epilog_crit_edge ], [ 4, %do.end.i85 ]
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i, align 4
  %32 = ptrtoint ptr %stream_config to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %stream_config, align 4
  %arrayidx.i.i87 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %arrayidx.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i87, align 4
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %6, align 4
  %arrayidx.i.i88 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %arrayidx.i.i88 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %sw.epilog.if.then.i.i_crit_edge

sw.epilog.if.then.i.i_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %sw.epilog.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %sw.epilog.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %37, %sw.epilog.if.then.i.i_crit_edge ], [ %40, %for.inc.i.i.if.then.i.i_crit_edge ]
  %38 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #9, !range !177
  %add.i.i = or i32 %38, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %sw.epilog
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.1.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call14 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i) #9
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call14, ptr %7, align 4
  %42 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %8, align 4
  %43 = ptrtoint ptr %arrayidx.i.i87 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i87, align 4
  %sub17 = sub i32 32, %44
  %shr = lshr i32 -1, %sub17
  %45 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shr, ptr %11, align 4
  %46 = ptrtoint ptr %port_config to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %port.0, ptr %port_config, align 4
  %47 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %slave, align 4
  %49 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cond.i, align 4
  %call19 = call i32 @sdw_stream_add_slave(ptr noundef %48, ptr noundef nonnull %stream_config, ptr noundef nonnull %port_config, i32 noundef 1, ptr noundef %50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.55, i32 noundef %call19) #12
  br label %cleanup

if.end26:                                         ; preds = %params_format.exit
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %54, label %do.end46 [
    i32 8000, label %if.end26.sw.epilog49_crit_edge
    i32 11025, label %sw.bb29
    i32 12000, label %sw.bb30
    i32 16000, label %sw.bb31
    i32 22050, label %sw.bb32
    i32 24000, label %sw.bb33
    i32 32000, label %sw.bb34
    i32 44100, label %sw.bb35
    i32 48000, label %sw.bb36
    i32 88200, label %sw.bb37
    i32 96000, label %sw.bb38
    i32 176400, label %sw.bb39
    i32 192000, label %sw.bb40
    i32 384000, label %sw.bb41
    i32 768000, label %sw.bb42
  ]

if.end26.sw.epilog49_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog49

sw.bb29:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog49

sw.bb30:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog49

sw.bb31:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog49

sw.bb32:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog49

sw.bb33:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog49

sw.bb34:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog49

sw.bb35:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog49

sw.bb36:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog49

sw.bb37:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog49

sw.bb38:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog49

sw.bb39:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog49

sw.bb40:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog49

sw.bb41:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog49

sw.bb42:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog49

do.end46:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.58, i32 noundef %54) #12
  br label %cleanup

sw.epilog49:                                      ; preds = %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %if.end26.sw.epilog49_crit_edge
  %val.0 = phi i32 [ 15, %sw.bb42 ], [ 14, %sw.bb41 ], [ 13, %sw.bb40 ], [ 12, %sw.bb39 ], [ 11, %sw.bb38 ], [ 10, %sw.bb37 ], [ 9, %sw.bb36 ], [ 8, %sw.bb35 ], [ 7, %sw.bb34 ], [ 6, %sw.bb33 ], [ 5, %sw.bb32 ], [ 4, %sw.bb31 ], [ 3, %sw.bb30 ], [ 2, %sw.bb29 ], [ 1, %if.end26.sw.epilog49_crit_edge ]
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %5, align 4
  %call50 = call i32 @regmap_write(ptr noundef %59, i32 noundef 1082654848, i32 noundef %val.0) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog49, %do.end46, %do.end24, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call19, %do.end24 ], [ -22, %do.end46 ], [ 0, %sw.epilog49 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %port_config) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stream_config) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_sdca_pcm_hw_free(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %slave = getelementptr inbounds %struct.rt715_sdca_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slave, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  %call4 = tail call i32 @sdw_stream_remove_slave(ptr noundef nonnull %7, ptr noundef %12) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_stream_add_slave(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !100, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @__UNIQUE_ID_description240, !1, !"__UNIQUE_ID_description240", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 1076, i32 1}
!2 = !{ptr @__UNIQUE_ID_author241, !3, !"__UNIQUE_ID_author241", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 1077, i32 1}
!4 = !{ptr @__UNIQUE_ID_file242, !5, !"__UNIQUE_ID_file242", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 1078, i32 1}
!6 = !{ptr @__UNIQUE_ID_license243, !5, !"__UNIQUE_ID_license243", i1 false, i1 false}
!7 = !{ptr @soc_codec_dev_rt715_sdca, !8, !"soc_codec_dev_rt715_sdca", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 761, i32 46}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 459, i32 2}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 465, i32 2}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 469, i32 2}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 474, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 482, i32 2}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 488, i32 2}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 495, i32 2}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 501, i32 2}
!25 = !{ptr @rt715_sdca_snd_controls, !26, !"rt715_sdca_snd_controls", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 457, i32 38}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 248, i32 4}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rt715_sdca_set_amp_gain_get._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @rt715_sdca_set_amp_gain_get._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 154, i32 4}
!37 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rt715_sdca_set_amp_gain_put._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @rt715_sdca_set_amp_gain_put._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @in_vol_tlv, !41, !"in_vol_tlv", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 318, i32 14}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 273, i32 4}
!44 = !{ptr @rt715_sdca_set_amp_gain_4ch_get._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @rt715_sdca_set_amp_gain_4ch_get._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 190, i32 4}
!48 = !{ptr @rt715_sdca_set_amp_gain_4ch_put._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @rt715_sdca_set_amp_gain_4ch_put._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 299, i32 4}
!52 = !{ptr @rt715_sdca_set_amp_gain_8ch_get._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @rt715_sdca_set_amp_gain_8ch_get._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @rt715_sdca_set_amp_gain_8ch_get._entry.25, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 308, i32 4}
!56 = !{ptr @rt715_sdca_set_amp_gain_8ch_get._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 226, i32 4}
!59 = !{ptr @rt715_sdca_set_amp_gain_8ch_put._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @rt715_sdca_set_amp_gain_8ch_put._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @mic_vol_tlv, !62, !"mic_vol_tlv", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 319, i32 14}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 683, i32 2}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 684, i32 2}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 685, i32 2}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 686, i32 2}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 687, i32 2}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 688, i32 2}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 689, i32 2}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 690, i32 2}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 692, i32 2}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 696, i32 2}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 697, i32 2}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 698, i32 2}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 699, i32 2}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 700, i32 2}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 702, i32 2}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 704, i32 2}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 706, i32 2}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 708, i32 2}
!99 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 709, i32 2}
!102 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @rt715_sdca_dapm_widgets, !104, !"rt715_sdca_dapm_widgets", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 682, i32 41}
!105 = !{ptr @rt715_adc22_mux, !106, !"rt715_adc22_mux", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 642, i32 38}
!107 = !{ptr @rt715_adc22_enum, !108, !"rt715_adc22_enum", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 629, i32 8}
!109 = !{ptr @adc_22_23_mux_text, !110, !"adc_22_23_mux_text", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 589, i32 27}
!111 = !{ptr @rt715_adc23_mux, !112, !"rt715_adc23_mux", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 646, i32 38}
!113 = !{ptr @rt715_adc23_enum, !114, !"rt715_adc23_enum", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 632, i32 8}
!115 = !{ptr @rt715_adc24_mux, !116, !"rt715_adc24_mux", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 650, i32 38}
!117 = !{ptr @rt715_adc24_enum, !118, !"rt715_adc24_enum", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 635, i32 8}
!119 = !{ptr @adc_24_mux_text, !120, !"adc_24_mux_text", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 613, i32 27}
!121 = !{ptr @rt715_adc_24_25_values, !122, !"rt715_adc_24_25_values", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 605, i32 12}
!123 = !{ptr @rt715_adc25_mux, !124, !"rt715_adc25_mux", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 654, i32 38}
!125 = !{ptr @rt715_adc25_enum, !126, !"rt715_adc25_enum", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 638, i32 8}
!127 = !{ptr @adc_25_mux_text, !128, !"adc_25_mux_text", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 621, i32 27}
!129 = !{ptr @rt715_sdca_audio_map, !130, !"rt715_sdca_audio_map", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 712, i32 40}
!131 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 947, i32 11}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 959, i32 11}
!135 = !{ptr @rt715_sdca_dai, !136, !"rt715_sdca_dai", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 945, i32 34}
!137 = !{ptr @rt715_sdca_ops, !138, !"rt715_sdca_ops", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 938, i32 37}
!139 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 839, i32 3}
!141 = !{ptr @.str.53, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @rt715_sdca_pcm_hw_params._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @rt715_sdca_pcm_hw_params._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.55, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 855, i32 3}
!146 = !{ptr @rt715_sdca_pcm_hw_params._entry.54, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @rt715_sdca_pcm_hw_params._entry_ptr.56, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.58, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 907, i32 3}
!150 = !{ptr @rt715_sdca_pcm_hw_params._entry.57, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @rt715_sdca_pcm_hw_params._entry_ptr.59, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.60, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 42, i32 3}
!154 = !{ptr @.str.61, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @rt715_sdca_index_write._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @rt715_sdca_index_write._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.62, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/rt715-sdca.c", i32 60, i32 3}
!159 = !{ptr @.str.63, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @rt715_sdca_index_read._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @rt715_sdca_index_read._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{!"auto-init"}
!172 = !{i8 0, i8 2}
!173 = !{i64 2148368150, i64 2148368176, i64 2148368205, i64 2148368239, i64 2148368270, i64 2148368293}
!174 = !{i64 2154908500}
!175 = !{i64 877642, i64 877663, i64 877686, i64 877705, i64 877724}
!176 = !{i64 2154908909}
!177 = !{i32 0, i32 33}
