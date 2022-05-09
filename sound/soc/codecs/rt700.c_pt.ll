; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt700.c_pt.bc'
source_filename = "../sound/soc/codecs/rt700.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.rt700_priv = type { ptr, ptr, ptr, ptr, i32, %struct.sdw_bus_params, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, i32, %struct.mutex, i8 }
%struct.sdw_bus_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sdw_slave = type { %struct.sdw_slave_id, %struct.device, i32, ptr, ptr, %struct.sdw_slave_prop, ptr, %struct.list_head, [15 x %struct.completion], [15 x i32], i16, i16, i8, %struct.completion, %struct.completion, %struct.completion, i32, i8, i8 }
%struct.sdw_slave_id = type { i16, i16, i8, i8, i8 }
%struct.sdw_slave_prop = type { i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, i8, i32, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }
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

@rt700_clock_config.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_soc_rt700\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt700_clock_config\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/codecs/rt700.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s complete, clk_freq=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@rt700_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&rt700->disable_irq_lock\00", [39 x i8] zeroinitializer }, align 32
@soc_codec_dev_rt700 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @rt700_snd_controls, i32 6, ptr @rt700_dapm_widgets, i32 19, ptr @rt700_audio_map, i32 19, ptr @rt700_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt700_set_jack_detect, ptr null, ptr null, ptr null, ptr null, ptr @rt700_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rt700_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.57, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt700_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.47, i64 68719476805, i32 192, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.43, i64 68719476805, i32 192, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.58, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt700_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.49, i64 68719476805, i32 192, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.45, i64 68719476805, i32 192, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@rt700_init.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 1, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt700_init\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@rt700_io_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&rt700->jack_detect_work)->work)\00", [43 x i8] zeroinitializer }, align 32
@rt700_io_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&rt700->jack_detect_work)->timer\00", [61 x i8] zeroinitializer }, align 32
@rt700_io_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&(&rt700->jack_btn_check_work)->work)\00", [40 x i8] zeroinitializer }, align 32
@rt700_io_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&(&rt700->jack_btn_check_work)->timer\00", [58 x i8] zeroinitializer }, align 32
@rt700_io_init.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 1, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt700_io_init\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s hw_init complete\0A\00", [43 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description249 = internal constant [48 x i8] c"snd_soc_rt700.description=ASoC RT700 driver SDW\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [56 x i8] c"snd_soc_rt700.author=Shuming Fan <shumingf@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [50 x i8] c"snd_soc_rt700.file=sound/soc/codecs/snd-soc-rt700\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [29 x i8] c"snd_soc_rt700.license=GPL v2\00", section ".modinfo", align 1
@rt700_snd_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt700_set_amp_gain_get, ptr @rt700_set_amp_gain_put, %union.anon.83 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @rt700_set_amp_gain_get, ptr @rt700_set_amp_gain_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @rt700_set_amp_gain_get, ptr @rt700_set_amp_gain_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt700_set_amp_gain_get, ptr @rt700_set_amp_gain_put, %union.anon.83 { ptr @in_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt700_set_amp_gain_get, ptr @rt700_set_amp_gain_put, %union.anon.83 { ptr @in_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt700_set_amp_gain_get, ptr @rt700_set_amp_gain_put, %union.anon.83 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }], [64 x i8] zeroinitializer }, align 32
@rt700_audio_map = internal constant { [19 x %struct.snd_soc_dapm_route], [228 x i8] } { [19 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.34, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr @.str.54, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr @.str.32, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr @.str.33, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr @.str.31, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.54, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.32, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.33, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.31, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr @.str.52, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr @.str.53, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.27, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr null, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.28, ptr null, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }], [228 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DAC Front Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@out_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6525, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 87, i32 87, i32 29442, i32 33666, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADC 08 Capture Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 29448, i32 33672, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADC 09 Capture Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 29449, i32 33673, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADC 08 Capture Volume\00", [42 x i8] zeroinitializer }, align 32
@in_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1725, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 29448, i32 33672, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADC 09 Capture Volume\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 29449, i32 33673, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AMIC Volume\00", [20 x i8] zeroinitializer }, align 32
@mic_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 1000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 29465, i32 33689, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SPK\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC1\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC2\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC2\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LINE1\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LINE2\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC Front\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC Surround\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPO Mux\00", [24 x i8] zeroinitializer }, align 32
@rt700_hp_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rt700_mux_get, ptr @rt700_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt700_hp_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPK PGA\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADC 09\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADC 08\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC 22 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt700_adc22_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rt700_mux_get, ptr @rt700_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt700_adc22_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC 23 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt700_adc23_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rt700_mux_get, ptr @rt700_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt700_adc23_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DP1RX\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DP1 Playback\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DP3RX\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DP3 Playback\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DP2TX\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DP2 Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DP4TX\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DP4 Capture\00", [20 x i8] zeroinitializer }, align 32
@rt700_dapm_widgets = internal constant { [19 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [836 x i8] } { [19 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.27, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.29, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.31, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.32, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.33, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.34, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt700_dac_front_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.35, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt700_dac_surround_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.36, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt700_hpo_mux_event, i32 1, ptr @rt700_hp_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.37, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt700_spk_pga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt700_adc_09_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt700_adc_08_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt700_adc22_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt700_adc23_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.42, ptr @.str.43, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.44, ptr @.str.45, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.46, ptr @.str.47, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.48, ptr @.str.49, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [836 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HP Mux\00", [25 x i8] zeroinitializer }, align 32
@rt700_hp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 2, i32 1, ptr @out_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@out_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.52, ptr @.str.53], [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Front\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Surround\00", [23 x i8] zeroinitializer }, align 32
@rt700_adc22_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 4, i32 3, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc_mux_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.54], [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@rt700_adc23_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 4, i32 3, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt700_set_jack_detect.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt700_set_jack_detect\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s hw_init not ready yet\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt700-aif1\00", [21 x i8] zeroinitializer }, align 32
@rt700_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt700_set_sdw_stream, ptr null, ptr null, ptr null, ptr @rt700_shutdown, ptr @rt700_pcm_hw_params, ptr @rt700_pcm_hw_free, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt700-aif2\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rt700_pcm_hw_params.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 -30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rt700_pcm_hw_params\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@rt700_pcm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 930, ptr @.str.62, ptr @.str.63 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid DAI id %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt700_pcm_hw_params._entry_ptr = internal global ptr @rt700_pcm_hw_params._entry, section ".printk_index", align 4
@rt700_pcm_hw_params._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.59, ptr @.str.2, i32 946, ptr @.str.62, ptr @.str.63 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to configure port\0A\00", [38 x i8] zeroinitializer }, align 32
@rt700_pcm_hw_params._entry_ptr.66 = internal global ptr @rt700_pcm_hw_params._entry.64, section ".printk_index", align 4
@rt700_pcm_hw_params._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.59, ptr @.str.2, i32 955, ptr @.str.62, ptr @.str.63 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported channels %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rt700_pcm_hw_params._entry_ptr.69 = internal global ptr @rt700_pcm_hw_params._entry.67, section ".printk_index", align 4
@rt700_index_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013Failed to set private value: %06x <= %04x ret=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rt700_index_write\00", [46 x i8] zeroinitializer }, align 32
@rt700_index_write._entry_ptr = internal global ptr @rt700_index_write._entry, section ".printk_index", align 4
@rt700_jack_detect_handler.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.73, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rt700_jack_detect_handler\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"in %s, jack_type=0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@rt700_jack_detect_handler.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.74, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"in %s, btn_type=0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@rt700_jack_detect_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.75, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@rt700_jack_detect_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.72, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013IO error in %s, ret %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rt700_jack_detect_handler._entry_ptr = internal global ptr @rt700_jack_detect_handler._entry, section ".printk_index", align 4
@rt700_headset_detect._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.75, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt700_headset_detect = private unnamed_addr constant [21 x i8] c"rt700_headset_detect\00", align 1
@rt700_headset_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @__func__.rt700_headset_detect, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013Time-out error in %s\0A\00", [40 x i8] zeroinitializer }, align 32
@rt700_headset_detect._entry_ptr = internal global ptr @rt700_headset_detect._entry, section ".printk_index", align 4
@rt700_headset_detect._rs.78 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.75, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rt700_headset_detect._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @__func__.rt700_headset_detect, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rt700_headset_detect._entry_ptr.80 = internal global ptr @rt700_headset_detect._entry.79, section ".printk_index", align 4
@rt700_headset_detect._rs.81 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.75, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rt700_headset_detect._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @__func__.rt700_headset_detect, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013Jack removal in %s\0A\00", [42 x i8] zeroinitializer }, align 32
@rt700_headset_detect._entry_ptr.84 = internal global ptr @rt700_headset_detect._entry.82, section ".printk_index", align 4
@rt700_index_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013Failed to get private value: %06x => %04x ret=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt700_index_read\00", [47 x i8] zeroinitializer }, align 32
@rt700_index_read._entry_ptr = internal global ptr @rt700_index_read._entry, section ".printk_index", align 4
@rt700_btn_check_handler.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.88, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt700_btn_check_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s, btn_type=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@rt700_btn_check_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.75, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rt700_btn_check_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.87, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rt700_btn_check_handler._entry_ptr = internal global ptr @rt700_btn_check_handler._entry, section ".printk_index", align 4
@rt700_jack_init.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt700_jack_init\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in %s enable\0A\00", [18 x i8] zeroinitializer }, align 32
@rt700_jack_init.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.91, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in %s disable\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 2400000, i64 4800000, i64 6000000, i64 9600000, i64 12000000, i64 12288000]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.101 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.102 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 128, i64 256, i64 512]
@__sancov_gen_cov_switch_values.103 = internal global [10 x i64] [i64 8, i64 16, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768]
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1094, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1115, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [20 x i8] c"soc_codec_dev_rt700\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 846, i32 46 }
@___asan_gen_.125 = private unnamed_addr constant [10 x i8] c"rt700_dai\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1012, i32 34 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1129, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1212, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1214, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1237, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [19 x i8] c"rt700_snd_controls\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 483, i32 38 }
@___asan_gen_.167 = private unnamed_addr constant [16 x i8] c"rt700_audio_map\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 786, i32 40 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 484, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [12 x i8] c"out_vol_tlv\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 479, i32 14 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 488, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 492, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 496, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [11 x i8] c"in_vol_tlv\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 480, i32 14 }
@___asan_gen_.191 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 500, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 504, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [12 x i8] c"mic_vol_tlv\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 481, i32 14 }
@___asan_gen_.202 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 751, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 752, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 753, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 754, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 755, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 756, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 757, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 758, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 761, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 764, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [13 x i8] c"rt700_hp_mux\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 617, i32 38 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 767, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 770, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 773, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 776, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [16 x i8] c"rt700_adc22_mux\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 601, i32 38 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 778, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [16 x i8] c"rt700_adc23_mux\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 605, i32 38 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 780, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 781, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 782, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 783, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [19 x i8] c"rt700_dapm_widgets\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 750, i32 41 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 618, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [14 x i8] c"rt700_hp_enum\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 614, i32 8 }
@___asan_gen_.290 = private unnamed_addr constant [13 x i8] c"out_mux_text\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 609, i32 27 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 610, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 611, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [17 x i8] c"rt700_adc22_enum\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 595, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant [13 x i8] c"adc_mux_text\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 588, i32 27 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 592, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"rt700_adc23_enum\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 598, i32 8 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 322, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1014, i32 11 }
@___asan_gen_.320 = private unnamed_addr constant [10 x i8] c"rt700_ops\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1005, i32 37 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 1033, i32 11 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 904, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 930, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 946, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 954, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 39, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 191, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 193, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 215, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 145, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 148, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 151, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 54, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 248, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.428 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 269, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 293, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.438 = private constant [28 x i8] c"../sound/soc/codecs/rt700.c\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 305, i32 3 }
@llvm.compiler.used = appending global [130 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @rt700_btn_check_handler._entry, ptr @rt700_btn_check_handler._entry_ptr, ptr @rt700_headset_detect._entry, ptr @rt700_headset_detect._entry.79, ptr @rt700_headset_detect._entry.82, ptr @rt700_headset_detect._entry_ptr, ptr @rt700_headset_detect._entry_ptr.80, ptr @rt700_headset_detect._entry_ptr.84, ptr @rt700_index_read._entry, ptr @rt700_index_read._entry_ptr, ptr @rt700_index_write._entry, ptr @rt700_index_write._entry_ptr, ptr @rt700_jack_detect_handler._entry, ptr @rt700_jack_detect_handler._entry_ptr, ptr @rt700_pcm_hw_params._entry, ptr @rt700_pcm_hw_params._entry.64, ptr @rt700_pcm_hw_params._entry.67, ptr @rt700_pcm_hw_params._entry_ptr, ptr @rt700_pcm_hw_params._entry_ptr.66, ptr @rt700_pcm_hw_params._entry_ptr.69, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rt700_init.__key, ptr @.str.4, ptr @soc_codec_dev_rt700, ptr @rt700_dai, ptr @.str.5, ptr @.str.6, ptr @rt700_io_init.__key, ptr @.str.7, ptr @rt700_io_init.__key.8, ptr @.str.9, ptr @rt700_io_init.__key.10, ptr @.str.11, ptr @rt700_io_init.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rt700_snd_controls, ptr @rt700_audio_map, ptr @.str.16, ptr @out_vol_tlv, ptr @.compoundliteral, ptr @.str.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @.compoundliteral.20, ptr @.str.21, ptr @in_vol_tlv, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @mic_vol_tlv, ptr @.compoundliteral.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @rt700_hp_mux, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @rt700_adc22_mux, ptr @.str.41, ptr @rt700_adc23_mux, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @rt700_dapm_widgets, ptr @.str.51, ptr @rt700_hp_enum, ptr @out_mux_text, ptr @.str.52, ptr @.str.53, ptr @rt700_adc22_enum, ptr @adc_mux_text, ptr @.str.54, ptr @rt700_adc23_enum, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @rt700_ops, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @rt700_jack_detect_handler._rs, ptr @.str.75, ptr @.str.76, ptr @rt700_headset_detect._rs, ptr @.str.77, ptr @rt700_headset_detect._rs.78, ptr @rt700_headset_detect._rs.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @rt700_btn_check_handler._rs, ptr @.str.89, ptr @.str.90, ptr @.str.91], section "llvm.metadata"
@0 = internal global [116 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_codec_dev_rt700 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_io_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_io_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_io_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_io_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_snd_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_audio_map to i32), i32 988, i32 1216, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_hp_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_adc22_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_adc23_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_dapm_widgets to i32), i32 3420, i32 4256, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_hp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_adc22_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_mux_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_adc23_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_pcm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_pcm_hw_params._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_pcm_hw_params._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_index_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_jack_detect_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_jack_detect_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_headset_detect._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_headset_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_headset_detect._rs.78 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_headset_detect._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_headset_detect._rs.81 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_headset_detect._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_index_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_btn_check_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_btn_check_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt700_clock_config(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %curr_dr_freq = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 5, i32 3
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %value.0 = phi i32 [ 5, %sw.bb5 ], [ 4, %sw.bb4 ], [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 224, i32 noundef %value.0) #9
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 240, i32 noundef %value.0) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt700_clock_config.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt700_clock_config, %if.then)) #9
          to label %cleanup [label %if.then], !srcloc !218

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt700_clock_config.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %shr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt700_init(ptr noundef %dev, ptr noundef %sdw_regmap, ptr noundef %regmap, ptr noundef %slave) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 364, i32 noundef 3520) #9
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
  %slave1 = getelementptr inbounds %struct.rt700_priv, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %slave, ptr %slave1, align 4
  %sdw_regmap2 = getelementptr inbounds %struct.rt700_priv, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %sdw_regmap2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sdw_regmap, ptr %sdw_regmap2, align 4
  %regmap3 = getelementptr inbounds %struct.rt700_priv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %regmap3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regmap, ptr %regmap3, align 4
  %disable_irq_lock = getelementptr inbounds %struct.rt700_priv, ptr %call.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %disable_irq_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @rt700_init.__key) #9
  %hw_init = getelementptr inbounds %struct.rt700_priv, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %hw_init to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %hw_init, align 4
  %first_hw_init = getelementptr inbounds %struct.rt700_priv, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %first_hw_init, align 1
  %call4 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_codec_dev_rt700, ptr noundef nonnull @rt700_dai, i32 noundef 2) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt700_init.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt700_init, %if.then10)) #9
          to label %cleanup [label %if.then10], !srcloc !218

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev11 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt700_init.__UNIQUE_ID_ddebug247, ptr noundef %dev11, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.then10 ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt700_io_init(ptr nocapture noundef readonly %dev, ptr noundef %slave) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %disable_irq = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %disable_irq to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %disable_irq, align 4
  %hw_init = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hw_init, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %first_hw_init = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %first_hw_init, align 1, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end.if.then7_crit_edge, label %if.end4

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.end4:                                          ; preds = %if.end
  %regmap = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %8, i1 noundef zeroext false) #9
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_bypass(ptr noundef %10, i1 noundef zeroext true) #9
  %11 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %11)
  %.pr = load i8, ptr %first_hw_init, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool6.not = icmp eq i8 %.pr, 0
  br i1 %tobool6.not, label %if.end4.if.then7_crit_edge, label %if.end4.if.end14_crit_edge

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end4.if.then7_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %if.end4.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %dev8 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev8, i32 noundef 3000) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev8, i1 noundef zeroext true) #9
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev8, i32 noundef 0) #9
  %call.i209 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 22
  %12 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i209, ptr %last_busy.i, align 8
  tail call void @pm_runtime_enable(ptr noundef %dev8) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.end4.if.end14_crit_edge
  %dev15 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %usage_count.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !220
  %regmap16 = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap16, align 4
  %call17 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 65281, i32 noundef 0) #9
  %16 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap16, align 4
  %call19 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 29984, i32 noundef 26) #9
  %18 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap16, align 4
  %call21 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 29728, i32 noundef 49155) #9
  %20 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap16, align 4
  %call23 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 13569, i32 noundef 0) #9
  %22 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap16, align 4
  %call25 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 14113, i32 noundef 64) #9
  %24 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap16, align 4
  %call27 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 14100, i32 noundef 64) #9
  %26 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap16, align 4
  %call29 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 15380, i32 noundef 2) #9
  %28 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap16, align 4
  %call31 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 14098, i32 noundef 32) #9
  %30 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap16, align 4
  %call33 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 14099, i32 noundef 32) #9
  %32 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap16, align 4
  %call35 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 14105, i32 noundef 32) #9
  %34 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap16, align 4
  %call37 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 20242, i32 noundef 145) #9
  %36 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap16, align 4
  %call39 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 19986, i32 noundef 214) #9
  %38 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap16, align 4
  %call41 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 19730, i32 noundef 17) #9
  %40 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap16, align 4
  %call43 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 19474, i32 noundef 32) #9
  %42 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap16, align 4
  %call45 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 20243, i32 noundef 145) #9
  %44 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap16, align 4
  %call47 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 19987, i32 noundef 214) #9
  %46 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap16, align 4
  %call49 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 19731, i32 noundef 17) #9
  %48 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap16, align 4
  %call51 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 19475, i32 noundef 33) #9
  %50 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap16, align 4
  %call53 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 20249, i32 noundef 2) #9
  %52 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap16, align 4
  %call55 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 19993, i32 noundef 161) #9
  %54 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap16, align 4
  %call57 = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 19737, i32 noundef 144) #9
  %56 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap16, align 4
  %call59 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 19481, i32 noundef 128) #9
  %58 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap16, align 4
  %call61 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 14107, i32 noundef 64) #9
  %60 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap16, align 4
  %call63 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 29467, i32 noundef 176) #9
  %62 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap16, align 4
  %call65 = tail call i32 @regmap_write(ptr noundef %63, i32 noundef 33691, i32 noundef 0) #9
  %64 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap16, align 4
  %call.i210 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 7675978, i32 noundef 8219) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210)
  %cmp.i = icmp slt i32 %call.i210, 0
  br i1 %cmp.i, label %do.end.i, label %if.end14.rt700_index_write.exit_crit_edge

if.end14.rt700_index_write.exit_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt700_index_write.exit

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7675978, i32 noundef 8219, i32 noundef %call.i210) #12
  br label %rt700_index_write.exit

rt700_index_write.exit:                           ; preds = %do.end.i, %if.end14.rt700_index_write.exit_crit_edge
  %66 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap16, align 4
  %call.i211 = tail call i32 @regmap_write(ptr noundef %67, i32 noundef 7675973, i32 noundef 20617) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211)
  %cmp.i212 = icmp slt i32 %call.i211, 0
  br i1 %cmp.i212, label %do.end.i214, label %rt700_index_write.exit.rt700_index_write.exit215_crit_edge

rt700_index_write.exit.rt700_index_write.exit215_crit_edge: ; preds = %rt700_index_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt700_index_write.exit215

do.end.i214:                                      ; preds = %rt700_index_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i213 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7675973, i32 noundef 20617, i32 noundef %call.i211) #12
  br label %rt700_index_write.exit215

rt700_index_write.exit215:                        ; preds = %do.end.i214, %rt700_index_write.exit.rt700_index_write.exit215_crit_edge
  %68 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap16, align 4
  %call.i216 = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 7676011, i32 noundef 20580) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216)
  %cmp.i217 = icmp slt i32 %call.i216, 0
  br i1 %cmp.i217, label %do.end.i219, label %rt700_index_write.exit215.rt700_index_write.exit220_crit_edge

rt700_index_write.exit215.rt700_index_write.exit220_crit_edge: ; preds = %rt700_index_write.exit215
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt700_index_write.exit220

do.end.i219:                                      ; preds = %rt700_index_write.exit215
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7676011, i32 noundef 20580, i32 noundef %call.i216) #12
  br label %rt700_index_write.exit220

rt700_index_write.exit220:                        ; preds = %do.end.i219, %rt700_index_write.exit215.rt700_index_write.exit220_crit_edge
  %70 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap16, align 4
  %call.i221 = tail call i32 @regmap_write(ptr noundef %71, i32 noundef 7675976, i32 noundef 53833) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %cmp.i222 = icmp slt i32 %call.i221, 0
  br i1 %cmp.i222, label %do.end.i224, label %rt700_index_write.exit220.rt700_index_write.exit225_crit_edge

rt700_index_write.exit220.rt700_index_write.exit225_crit_edge: ; preds = %rt700_index_write.exit220
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt700_index_write.exit225

do.end.i224:                                      ; preds = %rt700_index_write.exit220
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7675976, i32 noundef 53833, i32 noundef %call.i221) #12
  br label %rt700_index_write.exit225

rt700_index_write.exit225:                        ; preds = %do.end.i224, %rt700_index_write.exit220.rt700_index_write.exit225_crit_edge
  %72 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap16, align 4
  %call75 = tail call i32 @regmap_write(ptr noundef %73, i32 noundef 13569, i32 noundef 3) #9
  %74 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %first_hw_init, align 1, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool77.not = icmp eq i8 %75, 0
  br i1 %tobool77.not, label %do.body79, label %rt700_index_write.exit225.if.end121_crit_edge

rt700_index_write.exit225.if.end121_crit_edge:    ; preds = %rt700_index_write.exit225
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

do.body79:                                        ; preds = %rt700_index_write.exit225
  call void @__sanitizer_cov_trace_pc() #11
  %jack_detect_work = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 9
  tail call void @__init_work(ptr noundef %jack_detect_work, i32 noundef 0) #9
  %76 = ptrtoint ptr %jack_detect_work to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -64, ptr %jack_detect_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 9, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @rt700_io_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry86 = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 9, i32 0, i32 1
  %77 = ptrtoint ptr %entry86 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %entry86, ptr %entry86, align 4
  %prev.i = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 9, i32 0, i32 1, i32 1
  %78 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %entry86, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 9, i32 0, i32 2
  %79 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @rt700_jack_detect_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @rt700_io_init.__key.8) #9
  %jack_btn_check_work = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 10
  tail call void @__init_work(ptr noundef %jack_btn_check_work, i32 noundef 0) #9
  %80 = ptrtoint ptr %jack_btn_check_work to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -64, ptr %jack_btn_check_work, align 4
  %lockdep_map105 = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 10, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map105, ptr noundef nonnull @.str.11, ptr noundef nonnull @rt700_io_init.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry108 = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 10, i32 0, i32 1
  %81 = ptrtoint ptr %entry108 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %entry108, ptr %entry108, align 4
  %prev.i226 = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %prev.i226 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %entry108, ptr %prev.i226, align 4
  %func111 = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 10, i32 0, i32 2
  %83 = ptrtoint ptr %func111 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @rt700_btn_check_handler, ptr %func111, align 4
  %timer116 = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 10, i32 1
  tail call void @init_timer_key(ptr noundef %timer116, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.13, ptr noundef nonnull @rt700_io_init.__key.12) #9
  br label %if.end121

if.end121:                                        ; preds = %do.body79, %rt700_index_write.exit225.if.end121_crit_edge
  %hs_jack = getelementptr inbounds %struct.rt700_priv, ptr %1, i32 0, i32 8
  %84 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hs_jack, align 4
  %tobool122.not = icmp eq ptr %85, null
  br i1 %tobool122.not, label %if.end121.if.end124_crit_edge, label %if.then123

if.end121.if.end124_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

if.then123:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rt700_jack_init(ptr noundef %1)
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.end121.if.end124_crit_edge
  %86 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %first_hw_init, align 1, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool126.not = icmp eq i8 %87, 0
  br i1 %tobool126.not, label %if.else, label %if.then127

if.then127:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap16, align 4
  tail call void @regcache_cache_bypass(ptr noundef %89, i1 noundef zeroext false) #9
  %90 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap16, align 4
  tail call void @regcache_mark_dirty(ptr noundef %91) #9
  br label %if.end131

if.else:                                          ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %first_hw_init, align 1
  br label %if.end131

if.end131:                                        ; preds = %if.else, %if.then127
  %93 = ptrtoint ptr %hw_init to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %hw_init, align 4
  %call.i227 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i228 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 22
  %94 = ptrtoint ptr %last_busy.i228 to i32
  call void @__asan_store8_noabort(i32 %94)
  store volatile i64 %call.i227, ptr %last_busy.i228, align 8
  %call.i229 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev15, i32 noundef 13) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt700_io_init.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt700_io_init, %if.then141)) #9
          to label %cleanup [label %if.then141], !srcloc !218

if.then141:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt700_io_init.__UNIQUE_ID_ddebug248, ptr noundef %dev15, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then141, %if.end131, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt700_jack_detect_handler(ptr noundef %work) #0 align 64 {
entry:
  %jack_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jack_status) #9
  %0 = ptrtoint ptr %jack_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %jack_status, align 4
  %hs_jack = getelementptr i8, ptr %work, i32 -4
  %1 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hs_jack, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %card = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %instantiated = getelementptr inbounds %struct.snd_soc_card, ptr %6, i32 0, i32 56
  %7 = ptrtoint ptr %instantiated to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %instantiated, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %regmap = getelementptr i8, ptr %work, i32 -60
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %9, i32 noundef 47393, ptr noundef nonnull %jack_status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %io_error, label %if.end5

if.end5:                                          ; preds = %if.end3
  %10 = ptrtoint ptr %jack_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %jack_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool6.not = icmp sgt i32 %11, -1
  %jack_type26 = getelementptr i8, ptr %work, i32 200
  br i1 %tobool6.not, label %if.else25, label %if.then7

if.then7:                                         ; preds = %if.end5
  %12 = ptrtoint ptr %jack_type26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %jack_type26, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %13, label %if.then7.do.body_crit_edge [
    i32 0, label %if.then9
    i32 3, label %if.then21
  ]

if.then7.do.body_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then9:                                         ; preds = %if.then7
  %call10 = call fastcc i32 @rt700_headset_detect(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then9.cleanup_crit_edge, label %if.end13

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  %15 = ptrtoint ptr %jack_type26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %jack_type26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp15 = icmp eq i32 %16, 3
  br i1 %cmp15, label %if.then16, label %if.end13.do.body_crit_edge

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = call fastcc i32 @rt700_button_detect(ptr noundef %add.ptr)
  br label %do.body

if.then21:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = call fastcc i32 @rt700_button_detect(ptr noundef %add.ptr)
  br label %do.body

if.else25:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %jack_type26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %jack_type26, align 4
  br label %do.body

do.body:                                          ; preds = %if.else25, %if.then21, %if.then16, %if.end13.do.body_crit_edge, %if.then7.do.body_crit_edge
  %btn_type.0 = phi i32 [ %call17, %if.then16 ], [ 0, %if.end13.do.body_crit_edge ], [ %call22, %if.then21 ], [ 0, %if.else25 ], [ 0, %if.then7.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt700_jack_detect_handler.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt700_jack_detect_handler, %if.then33)) #9
          to label %do.body36 [label %if.then33], !srcloc !218

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %slave = getelementptr i8, ptr %work, i32 -52
  %18 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slave, align 4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %19, i32 0, i32 1
  %jack_type34 = getelementptr i8, ptr %work, i32 200
  %20 = ptrtoint ptr %jack_type34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %jack_type34, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt700_jack_detect_handler.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72, i32 noundef %21) #9
  br label %do.body36

do.body36:                                        ; preds = %if.then33, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt700_jack_detect_handler.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt700_jack_detect_handler, %if.then48)) #9
          to label %do.end53 [label %if.then48], !srcloc !218

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  %slave49 = getelementptr i8, ptr %work, i32 -52
  %22 = ptrtoint ptr %slave49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %slave49, align 4
  %dev50 = getelementptr inbounds %struct.sdw_slave, ptr %23, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt700_jack_detect_handler.__UNIQUE_ID_ddebug240, ptr noundef %dev50, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72, i32 noundef %btn_type.0) #9
  br label %do.end53

do.end53:                                         ; preds = %if.then48, %do.body36
  %24 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hs_jack, align 4
  %jack_type55 = getelementptr i8, ptr %work, i32 200
  %26 = ptrtoint ptr %jack_type55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %jack_type55, align 4
  %or = or i32 %27, %btn_type.0
  call void @snd_soc_jack_report(ptr noundef %25, i32 noundef %or, i32 noundef 30723) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %btn_type.0)
  %tobool56.not = icmp eq i32 %btn_type.0, 0
  br i1 %tobool56.not, label %do.end53.cleanup_crit_edge, label %if.then57

do.end53.cleanup_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then57:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hs_jack, align 4
  %30 = ptrtoint ptr %jack_type55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %jack_type55, align 4
  call void @snd_soc_jack_report(ptr noundef %29, i32 noundef %31, i32 noundef 30723) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %32 = load ptr, ptr @system_power_efficient_wq, align 4
  %jack_btn_check_work = getelementptr i8, ptr %work, i32 100
  %call.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %jack_btn_check_work, i32 noundef 20) #9
  br label %cleanup

io_error:                                         ; preds = %if.end3
  %call63 = call i32 @___ratelimit(ptr noundef nonnull @rt700_jack_detect_handler._rs, ptr noundef nonnull @.str.72) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %io_error.cleanup_crit_edge, label %do.end68

io_error.cleanup_crit_edge:                       ; preds = %io_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end68:                                         ; preds = %io_error
  call void @__sanitizer_cov_trace_pc() #11
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.72, i32 noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %io_error.cleanup_crit_edge, %if.then57, %do.end53.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jack_status) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt700_btn_check_handler(ptr noundef %work) #0 align 64 {
entry:
  %jack_status = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jack_status) #9
  %0 = ptrtoint ptr %jack_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %jack_status, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 47393, ptr %reg, align 4
  %regmap = getelementptr i8, ptr %work, i32 -160
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 47393, ptr noundef nonnull %jack_status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.io_error_crit_edge, label %if.end

entry.io_error_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %io_error

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %jack_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %jack_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  %jack_type6 = getelementptr i8, ptr %work, i32 100
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %6 = ptrtoint ptr %jack_type6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %jack_type6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp2 = icmp eq i32 %7, 3
  br i1 %cmp2, label %if.then3, label %if.then1.if.end7_crit_edge

if.then1.if.end7_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = call fastcc i32 @rt700_button_detect(ptr noundef %add.ptr)
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %jack_type6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %jack_type6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3, %if.then1.if.end7_crit_edge
  %btn_type.0 = phi i32 [ %call4, %if.then3 ], [ 0, %if.then1.if.end7_crit_edge ], [ 0, %if.else ]
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %reg, align 4
  %call.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 7675974, ptr noundef nonnull %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  br i1 %cmp.i, label %rt700_index_read.exit.thread, label %if.end12

rt700_index_read.exit.thread:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 7675974, i32 noundef %13, i32 noundef %call.i) #12
  br label %io_error

if.end12:                                         ; preds = %if.end7
  %and13 = and i32 %13, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %and13)
  %cmp14 = icmp eq i32 %and13, 240
  %spec.select = select i1 %cmp14, i32 0, i32 %btn_type.0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt700_btn_check_handler.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt700_btn_check_handler, %if.then22)) #9
          to label %do.end [label %if.then22], !srcloc !218

if.then22:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %slave = getelementptr i8, ptr %work, i32 -152
  %14 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slave, align 4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %15, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt700_btn_check_handler.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.87, i32 noundef %spec.select) #9
  br label %do.end

do.end:                                           ; preds = %if.then22, %if.end12
  %hs_jack = getelementptr i8, ptr %work, i32 -104
  %16 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hs_jack, align 4
  %jack_type24 = getelementptr i8, ptr %work, i32 100
  %18 = ptrtoint ptr %jack_type24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %jack_type24, align 4
  %or = or i32 %19, %spec.select
  call void @snd_soc_jack_report(ptr noundef %17, i32 noundef %or, i32 noundef 30723) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool25.not = icmp eq i32 %spec.select, 0
  br i1 %tobool25.not, label %do.end.cleanup_crit_edge, label %if.then26

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hs_jack, align 4
  %22 = ptrtoint ptr %jack_type24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %jack_type24, align 4
  call void @snd_soc_jack_report(ptr noundef %21, i32 noundef %23, i32 noundef 30723) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %24 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i60 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %work, i32 noundef 20) #9
  br label %cleanup

io_error:                                         ; preds = %rt700_index_read.exit.thread, %entry.io_error_crit_edge
  %ret.0 = phi i32 [ %call, %entry.io_error_crit_edge ], [ %call.i, %rt700_index_read.exit.thread ]
  %call32 = call i32 @___ratelimit(ptr noundef nonnull @rt700_btn_check_handler._rs, ptr noundef nonnull @.str.87) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %io_error.cleanup_crit_edge, label %do.end37

io_error.cleanup_crit_edge:                       ; preds = %io_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end37:                                         ; preds = %io_error
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.87, i32 noundef %ret.0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %io_error.cleanup_crit_edge, %if.then26, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jack_status) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt700_jack_init(ptr noundef %rt700) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rt700 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rt700, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dapm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap = getelementptr inbounds %struct.rt700_priv, ptr %rt700, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 13569, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hs_jack = getelementptr inbounds %struct.rt700_priv, ptr %rt700, i32 0, i32 8
  %6 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hs_jack, align 4
  %tobool.not = icmp eq ptr %7, null
  %regmap21 = getelementptr inbounds %struct.rt700_priv, ptr %rt700, i32 0, i32 1
  %8 = ptrtoint ptr %regmap21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap21, align 4
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 14361, i32 noundef 130) #9
  %10 = ptrtoint ptr %regmap21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap21, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 14369, i32 noundef 129) #9
  %12 = ptrtoint ptr %regmap21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap21, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 14421, i32 noundef 131) #9
  %14 = ptrtoint ptr %regmap21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap21, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 7675920, i32 noundef 9248) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then2.rt700_index_write.exit_crit_edge

if.then2.rt700_index_write.exit_crit_edge:        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt700_index_write.exit

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7675920, i32 noundef 9248, i32 noundef %call.i) #12
  br label %rt700_index_write.exit

rt700_index_write.exit:                           ; preds = %do.end.i, %if.then2.rt700_index_write.exit_crit_edge
  %16 = ptrtoint ptr %regmap21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap21, align 4
  %call.i71 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 7675929, i32 noundef 11793) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp.i72 = icmp slt i32 %call.i71, 0
  br i1 %cmp.i72, label %do.end.i74, label %rt700_index_write.exit.rt700_index_write.exit75_crit_edge

rt700_index_write.exit.rt700_index_write.exit75_crit_edge: ; preds = %rt700_index_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt700_index_write.exit75

do.end.i74:                                       ; preds = %rt700_index_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7675929, i32 noundef 11793, i32 noundef %call.i71) #12
  br label %rt700_index_write.exit75

rt700_index_write.exit75:                         ; preds = %do.end.i74, %rt700_index_write.exit.rt700_index_write.exit75_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt700_jack_init.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt700_jack_init, %if.then17)) #9
          to label %do.end [label %if.then17], !srcloc !218

if.then17:                                        ; preds = %rt700_index_write.exit75
  call void @__sanitizer_cov_trace_pc() #11
  %slave = getelementptr inbounds %struct.rt700_priv, ptr %rt700, i32 0, i32 3
  %18 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slave, align 4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %19, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt700_jack_init.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.89) #9
  br label %do.end

do.end:                                           ; preds = %if.then17, %rt700_index_write.exit75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %20 = load ptr, ptr @system_power_efficient_wq, align 4
  %jack_detect_work = getelementptr inbounds %struct.rt700_priv, ptr %rt700, i32 0, i32 9
  %call.i76 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %jack_detect_work, i32 noundef 25) #9
  br label %if.end45

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 14361, i32 noundef 0) #9
  %21 = ptrtoint ptr %regmap21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap21, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 14369, i32 noundef 0) #9
  %23 = ptrtoint ptr %regmap21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap21, align 4
  %call26 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 14421, i32 noundef 0) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt700_jack_init.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt700_jack_init, %if.then39)) #9
          to label %if.end45 [label %if.then39], !srcloc !218

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %slave40 = getelementptr inbounds %struct.rt700_priv, ptr %rt700, i32 0, i32 3
  %25 = ptrtoint ptr %slave40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slave40, align 4
  %dev41 = getelementptr inbounds %struct.sdw_slave, ptr %26, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt700_jack_init.__UNIQUE_ID_ddebug243, ptr noundef %dev41, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.89) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then39, %if.else, %do.end
  %27 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dapm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp47 = icmp ult i32 %28, 2
  br i1 %cmp47, label %if.then48, label %if.end45.if.end51_crit_edge

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %regmap49 = getelementptr inbounds %struct.rt700_priv, ptr %rt700, i32 0, i32 1
  %29 = ptrtoint ptr %regmap49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap49, align 4
  %call50 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 13569, i32 noundef 3) #9
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end45.if.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt700_probe(ptr noundef %component) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__asan_store4_noabort(i32 %4)
  store ptr %component, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt700_set_jack_detect(ptr nocapture noundef readonly %component, ptr noundef %hs_jack, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %hs_jack1 = getelementptr inbounds %struct.rt700_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %hs_jack1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hs_jack, ptr %hs_jack1, align 4
  %hw_init = getelementptr inbounds %struct.rt700_priv, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hw_init, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt700_set_jack_detect.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt700_set_jack_detect, %if.then6)) #9
          to label %cleanup [label %if.then6], !srcloc !218

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %slave = getelementptr inbounds %struct.rt700_priv, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %slave, align 4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %8, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt700_set_jack_detect.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rt700_jack_init(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %do.body
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt700_set_bias_level(ptr nocapture noundef %component, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge
  %.sink11 = phi i32 [ 0, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 3, %entry.sw.epilog.sink.split_crit_edge ]
  %regmap = getelementptr inbounds %struct.rt700_priv, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 13569, i32 noundef %.sink11) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %9 = ptrtoint ptr %dapm.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %level, ptr %dapm.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt700_set_amp_gain_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %read_ll = alloca i32, align 4
  %read_rl = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_ll) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_rl) #9
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
  %regmap.i = getelementptr inbounds %struct.rt700_priv, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %17, i32 noundef %12, ptr noundef nonnull %read_rl) #9
  %shl1.i = or i32 %., 8192
  %18 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shl1.i, ptr %read_ll, align 4
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %20, i32 noundef %10, ptr noundef nonnull %read_ll) #9
  %invert = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 8
  %21 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %invert, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %22 = ptrtoint ptr %read_ll to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %read_ll, align 4
  br i1 %tobool.not, label %if.else8, label %if.then1

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %24 = lshr i32 %23, 7
  %.lobit = and i32 %24, 1
  %25 = xor i32 %.lobit, 1
  %26 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %read_ll, align 4
  %27 = ptrtoint ptr %read_rl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %read_rl, align 4
  %29 = lshr i32 %28, 7
  %.lobit19 = and i32 %29, 1
  %30 = xor i32 %.lobit19, 1
  br label %if.end11

if.else8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and9 = and i32 %23, 127
  %31 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and9, ptr %read_ll, align 4
  %32 = ptrtoint ptr %read_rl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %read_rl, align 4
  %and10 = and i32 %33, 127
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.then1
  %storemerge = phi i32 [ %and10, %if.else8 ], [ %30, %if.then1 ]
  %34 = ptrtoint ptr %read_ll to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %read_ll, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %36 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %value, align 8
  %arrayidx13 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %storemerge, ptr %arrayidx13, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_rl) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_ll) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt700_set_amp_gain_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %read_ll = alloca i32, align 4
  %read_rl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_ll) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_rl) #9
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %rreg = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 4
  %11 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rreg, align 4
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 5
  %13 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %cmp = icmp eq i32 %14, 7
  %. = select i1 %cmp, i32 32768, i32 0
  %15 = ptrtoint ptr %read_rl to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %., ptr %read_rl, align 4
  %regmap.i = getelementptr inbounds %struct.rt700_priv, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %17, i32 noundef %12, ptr noundef nonnull %read_rl) #9
  %shl1.i = or i32 %., 8192
  %18 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shl1.i, ptr %read_ll, align 4
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %20, i32 noundef %10, ptr noundef nonnull %read_ll) #9
  %invert = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 8
  %21 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %invert, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else3, label %if.then2

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %max = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 1
  %22 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %24 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value, align 8
  %sub = sub i32 %23, %25
  %shl = shl i32 %sub, 7
  %26 = ptrtoint ptr %read_ll to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %read_ll, align 4
  %and = and i32 %27, 127
  store i32 %and, ptr %read_ll, align 4
  %or = or i32 %shl, %and
  br label %if.end14

if.else3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %value4 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %28 = ptrtoint ptr %value4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value4, align 8
  %and6 = and i32 %29, 127
  %max7 = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 1
  %30 = ptrtoint ptr %max7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max7, align 4
  %32 = call i32 @llvm.umin.i32(i32 %and6, i32 %31)
  %33 = ptrtoint ptr %read_ll to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %read_ll, align 4
  %and12 = and i32 %34, 128
  store i32 %and12, ptr %read_ll, align 4
  %or13 = or i32 %and12, %32
  br label %if.end14

if.end14:                                         ; preds = %if.else3, %if.then2
  %val_ll.1 = phi i32 [ %or, %if.then2 ], [ %or13, %if.else3 ]
  %35 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dapm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp15 = icmp ult i32 %36, 2
  br i1 %cmp15, label %if.then16, label %if.end14.if.end18_crit_edge

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i, align 4
  %call17 = call i32 @regmap_write(ptr noundef %38, i32 noundef 13569, i32 noundef 0) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14.if.end18_crit_edge
  %39 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load20 = load i8, ptr %invert, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load20)
  %tobool23.not = icmp sgt i8 %bf.load20, -1
  br i1 %tobool23.not, label %if.else32, label %if.then24

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %max25 = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 1
  %40 = ptrtoint ptr %max25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max25, align 4
  %value26 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx27 = getelementptr [128 x i32], ptr %value26, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx27, align 4
  %sub28 = sub i32 %41, %43
  %shl29 = shl i32 %sub28, 7
  %44 = ptrtoint ptr %read_rl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %read_rl, align 4
  %and30 = and i32 %45, 127
  store i32 %and30, ptr %read_rl, align 4
  %or31 = or i32 %shl29, %and30
  br label %if.end43

if.else32:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %value33 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx34 = getelementptr [128 x i32], ptr %value33, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx34, align 4
  %and35 = and i32 %47, 127
  %max36 = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 1
  %48 = ptrtoint ptr %max36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max36, align 4
  %50 = call i32 @llvm.umin.i32(i32 %and35, i32 %49)
  %51 = ptrtoint ptr %read_rl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %read_rl, align 4
  %and41 = and i32 %52, 128
  store i32 %and41, ptr %read_rl, align 4
  %or42 = or i32 %and41, %50
  br label %if.end43

if.end43:                                         ; preds = %if.else32, %if.then24
  %val_lr.1 = phi i32 [ %or31, %if.then24 ], [ %or42, %if.else32 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %val_ll.1, i32 %val_lr.1)
  %cmp45 = icmp eq i32 %val_ll.1, %val_lr.1
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %if.end43
  %i.0148 = phi i32 [ 0, %if.end43 ], [ %i.0148.be, %for.body.backedge ]
  %53 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %shift, align 4
  %55 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i, align 4
  %or49 = shl i32 256, %54
  %shl51 = or i32 %val_ll.1, %or49
  br i1 %cmp45, label %if.then46, label %if.else58

if.then46:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %or52 = or i32 %shl51, 12288
  %call53 = call i32 @regmap_write(ptr noundef %56, i32 noundef %10, i32 noundef %or52) #9
  %57 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i, align 4
  %call57 = call i32 @regmap_write(ptr noundef %58, i32 noundef %12, i32 noundef %or52) #9
  br label %if.end73

if.else58:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %or64 = or i32 %shl51, 8192
  %call65 = call i32 @regmap_write(ptr noundef %56, i32 noundef %10, i32 noundef %or64) #9
  %59 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %shift, align 4
  %61 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap.i, align 4
  %or68 = shl i32 256, %60
  %shl70 = or i32 %val_lr.1, %or68
  %or71 = or i32 %shl70, 4096
  %call72 = call i32 @regmap_write(ptr noundef %62, i32 noundef %12, i32 noundef %or71) #9
  br label %if.end73

if.end73:                                         ; preds = %if.else58, %if.then46
  %63 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %64)
  %cmp75 = icmp eq i32 %64, 7
  %.142 = select i1 %cmp75, i32 32768, i32 0
  %65 = ptrtoint ptr %read_rl to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %.142, ptr %read_rl, align 4
  %66 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap.i, align 4
  %call.i145 = call i32 @regmap_read(ptr noundef %67, i32 noundef %12, ptr noundef nonnull %read_rl) #9
  %shl1.i146 = or i32 %.142, 8192
  %68 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %shl1.i146, ptr %read_ll, align 4
  %69 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap.i, align 4
  %call3.i147 = call i32 @regmap_read(ptr noundef %70, i32 noundef %10, ptr noundef nonnull %read_ll) #9
  %71 = ptrtoint ptr %read_rl to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %read_rl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %val_lr.1)
  %cmp79 = icmp eq i32 %72, %val_lr.1
  br i1 %cmp79, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %if.end73
  %73 = ptrtoint ptr %read_ll to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %read_ll, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %val_ll.1)
  %cmp80 = icmp ne i32 %74, %val_ll.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0148)
  %cmp44 = icmp ult i32 %i.0148, 2
  %or.cond = select i1 %cmp80, i1 %cmp44, i1 false
  br i1 %or.cond, label %land.lhs.true.for.body.backedge_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true.for.body.backedge_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.backedge

for.inc:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0148)
  %cmp44.old = icmp ult i32 %i.0148, 2
  br i1 %cmp44.old, label %for.inc.for.body.backedge_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %land.lhs.true.for.body.backedge_crit_edge
  %i.0148.be = add nuw nsw i32 %i.0148, 1
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %75 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dapm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %cmp84 = icmp ult i32 %76, 2
  br i1 %cmp84, label %if.then85, label %for.end.if.end88_crit_edge

for.end.if.end88_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then85:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap.i, align 4
  %call87 = call i32 @regmap_write(ptr noundef %78, i32 noundef 13569, i32 noundef 3) #9
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %for.end.if.end88_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_rl) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_ll) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt700_dac_front_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.94)
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
  %.sink7 = phi i32 [ 0, %sw.bb3 ], [ 16, %entry.sw.epilog.sink.split_crit_edge ]
  %regmap4 = getelementptr inbounds %struct.rt700_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap4, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 13826, i32 noundef %.sink7) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt700_dac_surround_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.95)
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
  %.sink7 = phi i32 [ 0, %sw.bb3 ], [ 16, %entry.sw.epilog.sink.split_crit_edge ]
  %regmap4 = getelementptr inbounds %struct.rt700_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap4, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 13827, i32 noundef %.sink7) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt700_hpo_mux_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap = getelementptr inbounds %struct.rt700_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 29473, i32 noundef 45056) #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap4 = getelementptr inbounds %struct.rt700_priv, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap4, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 29473, i32 noundef 45184) #9
  tail call void @usleep_range_state(i32 noundef 50000, i32 noundef 55000, i32 noundef 2) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt700_spk_pga_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.97)
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
  %.sink11 = phi i32 [ 45184, %sw.bb3 ], [ 45056, %entry.sw.epilog.sink.split_crit_edge ]
  %regmap4 = getelementptr inbounds %struct.rt700_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap4, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 29460, i32 noundef %.sink11) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt700_adc_09_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.98)
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
  %.sink7 = phi i32 [ 0, %sw.bb3 ], [ 16, %entry.sw.epilog.sink.split_crit_edge ]
  %regmap4 = getelementptr inbounds %struct.rt700_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap4, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 13833, i32 noundef %.sink7) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt700_adc_08_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.99)
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
  %.sink7 = phi i32 [ 0, %sw.bb3 ], [ 16, %entry.sw.epilog.sink.split_crit_edge ]
  %regmap4 = getelementptr inbounds %struct.rt700_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap4, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 13832, i32 noundef %.sink7) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt700_mux_get(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
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
  store i32 0, ptr %val, align 4
  %name = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 4
  %call2 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.36)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.else, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.else:                                          ; preds = %entry
  %call6 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.40)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.else9, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.else9:                                         ; preds = %if.else
  %call13 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.41)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.else9.cleanup_crit_edge, label %if.else9.if.end18_crit_edge

if.else9.if.end18_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.else9.cleanup_crit_edge:                       ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.else9.if.end18_crit_edge, %if.else.if.end18_crit_edge, %entry.if.end18_crit_edge
  %nid.0 = phi i32 [ 12577, %entry.if.end18_crit_edge ], [ 12578, %if.else.if.end18_crit_edge ], [ 12579, %if.else9.if.end18_crit_edge ]
  %regmap = getelementptr inbounds %struct.rt700_priv, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call19 = call i32 @regmap_read(ptr noundef %6, i32 noundef %nid.0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end18.cleanup_crit_edge, %if.else9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -22, %if.else9.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt700_mux_put(ptr noundef %kcontrol, ptr noundef readonly %ucontrol) #0 align 64 {
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
  %call4 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.36)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.else, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.else:                                          ; preds = %if.end
  %call9 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.40)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.else12, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.else12:                                        ; preds = %if.else
  %call16 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.41)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.else12.cleanup_crit_edge, label %if.else12.if.end22_crit_edge

if.else12.if.end22_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.else12.cleanup_crit_edge:                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.else12.if.end22_crit_edge, %if.else.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %nid.0 = phi i32 [ 12577, %if.end.if.end22_crit_edge ], [ 12578, %if.else.if.end22_crit_edge ], [ 12579, %if.else12.if.end22_crit_edge ]
  %values.i = getelementptr inbounds %struct.soc_enum, ptr %6, i32 0, i32 6
  %12 = ptrtoint ptr %values.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %values.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end22.snd_soc_enum_item_to_val.exit_crit_edge, label %if.end.i

if.end22.snd_soc_enum_item_to_val.exit_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_soc_enum_item_to_val.exit

if.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr i32, ptr %13, i32 %9
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  br label %snd_soc_enum_item_to_val.exit

snd_soc_enum_item_to_val.exit:                    ; preds = %if.end.i, %if.end22.snd_soc_enum_item_to_val.exit_crit_edge
  %retval.0.i = phi i32 [ %15, %if.end.i ], [ %9, %if.end22.snd_soc_enum_item_to_val.exit_crit_edge ]
  %shift_l = getelementptr inbounds %struct.soc_enum, ptr %6, i32 0, i32 1
  %16 = ptrtoint ptr %shift_l to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shift_l, align 4
  %conv = zext i8 %17 to i32
  %shl = shl i32 %retval.0.i, %conv
  %regmap = getelementptr inbounds %struct.rt700_priv, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call25 = call i32 @regmap_read(ptr noundef %19, i32 noundef %nid.0, ptr noundef nonnull %val2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %snd_soc_enum_item_to_val.exit.cleanup_crit_edge, label %if.end29

snd_soc_enum_item_to_val.exit.cleanup_crit_edge:  ; preds = %snd_soc_enum_item_to_val.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %snd_soc_enum_item_to_val.exit
  %20 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %21)
  %cmp30 = icmp eq i32 %shl, %21
  %not.cmp30 = xor i1 %cmp30, true
  %. = zext i1 %not.cmp30 to i32
  br i1 %cmp30, label %if.end29.if.end40_crit_edge, label %if.then36

if.end29.if.end40_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call39 = call i32 @regmap_write(ptr noundef %23, i32 noundef %nid.0, i32 noundef %shl) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end29.if.end40_crit_edge
  %24 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value, align 4
  %call42 = call i32 @snd_soc_dapm_mux_update_power(ptr noundef %call1, ptr noundef %kcontrol, i32 noundef %25, ptr noundef %6, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %snd_soc_enum_item_to_val.exit.cleanup_crit_edge, %if.else12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.end40 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else12.cleanup_crit_edge ], [ %call25, %snd_soc_enum_item_to_val.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_mux_update_power(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt700_set_sdw_stream(ptr nocapture noundef writeonly %dai, ptr noundef %sdw_stream, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sdw_stream, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #13
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
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

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt700_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef %dai) #0 align 64 {
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
  store ptr null, ptr %cond.in.i, align 4
  tail call void @kfree(ptr noundef %cond.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt700_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt700_pcm_hw_params.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt700_pcm_hw_params, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !218

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %dai to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dai, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt700_pcm_hw_params.__UNIQUE_ID_ddebug245, ptr noundef %13, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, ptr noundef %15) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %16 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %18 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %tobool7.not = icmp eq ptr %cond.i, null
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %slave = getelementptr inbounds %struct.rt700_priv, ptr %5, i32 0, i32 3
  %19 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %slave, align 4
  %tobool10.not = icmp eq ptr %20, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %not.cmp.i = xor i1 %cmp.i, true
  %. = zext i1 %not.cmp.i to i32
  %.100 = select i1 %cmp.i, i32 1, i32 2
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %22, label %do.end18 [
    i32 0, label %if.end12.sw.epilog_crit_edge
    i32 1, label %sw.bb
  ]

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw nsw i32 %.100, 2
  br label %sw.epilog

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.61, i32 noundef %22) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %if.end12.sw.epilog_crit_edge
  %port.1 = phi i32 [ %add, %sw.bb ], [ %.100, %if.end12.sw.epilog_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  %28 = ptrtoint ptr %stream_config to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %stream_config, align 4
  %arrayidx.i.i101 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %arrayidx.i.i101 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i101, align 4
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %6, align 4
  %arrayidx.i.i102 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %arrayidx.i.i102 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %sw.epilog.if.then.i.i_crit_edge

sw.epilog.if.then.i.i_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %sw.epilog.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %sw.epilog.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %33, %sw.epilog.if.then.i.i_crit_edge ], [ %36, %for.inc.i.i.if.then.i.i_crit_edge ]
  %34 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #9, !range !221
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call24 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i) #9
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call24, ptr %7, align 4
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %., ptr %8, align 4
  %39 = ptrtoint ptr %arrayidx.i.i101 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i101, align 4
  %notmask = shl nsw i32 -1, %40
  %sub = xor i32 %notmask, -1
  %41 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub, ptr %11, align 4
  %42 = ptrtoint ptr %port_config to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %port.1, ptr %port_config, align 4
  %43 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %slave, align 4
  %45 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cond.i, align 4
  %call28 = call i32 @sdw_stream_add_slave(ptr noundef %44, ptr noundef nonnull %stream_config, ptr noundef nonnull %port_config, i32 noundef 1, ptr noundef %46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev34 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %47 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev34, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.65) #12
  br label %cleanup

if.end35:                                         ; preds = %params_format.exit
  %49 = ptrtoint ptr %arrayidx.i.i101 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %50)
  %cmp37 = icmp ult i32 %50, 17
  br i1 %cmp37, label %if.then38, label %do.end44

if.then38:                                        ; preds = %if.end35
  %sub40 = add nsw i32 %50, -1
  %51 = ptrtoint ptr %arrayidx.i.i102 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i.i.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.then38.if.then.i.i.i_crit_edge

if.then38.if.then.i.i.i_crit_edge:                ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.then38.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.then38.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %52, %if.then38.if.then.i.i.i_crit_edge ], [ %55, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %53 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #9, !range !221
  %add.i.i.i = or i32 %53, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.then38
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.1.i.i.i = icmp eq i32 %55, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #9
  %56 = add i32 %call1.i, -8
  %57 = call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 30)
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %57, label %params_width.exit.cleanup_crit_edge [
    i32 0, label %params_width.exit.sw.epilog58_crit_edge
    i32 2, label %sw.bb49
    i32 3, label %sw.bb51
    i32 4, label %sw.bb53
    i32 6, label %sw.bb55
  ]

params_width.exit.sw.epilog58_crit_edge:          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog58

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.68, i32 noundef %50) #12
  br label %cleanup

sw.bb49:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  %or50 = or i32 %sub40, 16
  br label %sw.epilog58

sw.bb51:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  %or52 = or i32 %sub40, 32
  br label %sw.epilog58

sw.bb53:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  %or54 = or i32 %sub40, 48
  br label %sw.epilog58

sw.bb55:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  %or56 = or i32 %sub40, 64
  br label %sw.epilog58

sw.epilog58:                                      ; preds = %sw.bb55, %sw.bb53, %sw.bb51, %sw.bb49, %params_width.exit.sw.epilog58_crit_edge
  %val.0 = phi i32 [ %or56, %sw.bb55 ], [ %or54, %sw.bb53 ], [ %or52, %sw.bb51 ], [ %or50, %sw.bb49 ], [ %sub40, %params_width.exit.sw.epilog58_crit_edge ]
  %regmap = getelementptr inbounds %struct.rt700_priv, ptr %5, i32 0, i32 1
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %call59 = call i32 @regmap_write(ptr noundef %62, i32 noundef 29187, i32 noundef %val.0) #9
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %call61 = call i32 @regmap_write(ptr noundef %64, i32 noundef 29193, i32 noundef %val.0) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog58, %do.end44, %params_width.exit.cleanup_crit_edge, %do.end33, %do.end18, %if.end9.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end18 ], [ %call28, %do.end33 ], [ 0, %sw.epilog58 ], [ -22, %do.end44 ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %params_width.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %port_config) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stream_config) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt700_pcm_hw_free(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %slave = getelementptr inbounds %struct.rt700_priv, ptr %5, i32 0, i32 3
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
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_stream_add_slave(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt700_headset_detect(ptr nocapture noundef %rt700) unnamed_addr #0 align 64 {
entry:
  %buf = alloca i32, align 4
  %jack_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jack_status) #9
  %0 = ptrtoint ptr %jack_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %jack_status, align 4
  %regmap = getelementptr inbounds %struct.rt700_priv, ptr %rt700, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buf, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 7675974, ptr noundef nonnull %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %rt700_index_read.exit.thread, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

rt700_index_read.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf, align 4
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 7675974, i32 noundef %5, i32 noundef %call.i) #12
  br label %io_error

while.cond:                                       ; preds = %if.end7.while.cond_crit_edge, %entry.while.cond_crit_edge
  %loop.0 = phi i32 [ %inc, %if.end7.while.cond_crit_edge ], [ 0, %entry.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %loop.0)
  %exitcond.not = icmp eq i32 %loop.0, 500
  br i1 %exitcond.not, label %to_error, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf, align 4
  %and = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %while.body, label %if.end16

while.body:                                       ; preds = %land.rhs
  call void @usleep_range_state(i32 noundef 9000, i32 noundef 10000, i32 noundef 2) #9
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %buf, align 4
  %call.i64 = call i32 @regmap_read(ptr noundef %9, i32 noundef 7675974, ptr noundef nonnull %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp.i65 = icmp slt i32 %call.i64, 0
  br i1 %cmp.i65, label %rt700_index_read.exit68.thread, label %if.end7

rt700_index_read.exit68.thread:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buf, align 4
  %call1.i66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 7675974, i32 noundef %12, i32 noundef %call.i64) #12
  br label %io_error

if.end7:                                          ; preds = %while.body
  %inc = add nuw nsw i32 %loop.0, 1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call9 = call i32 @regmap_read(ptr noundef %14, i32 noundef 47393, ptr noundef nonnull %jack_status) #9
  %15 = ptrtoint ptr %jack_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %jack_status, align 4
  %cmp11 = icmp sgt i32 %16, -1
  br i1 %cmp11, label %remove_error, label %if.end7.while.cond_crit_edge

if.end7.while.cond_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.end16:                                         ; preds = %land.rhs
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buf, align 4
  %and17 = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.not = icmp eq i32 %and17, 0
  br i1 %tobool.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %jack_type = getelementptr inbounds %struct.rt700_priv, ptr %rt700, i32 0, i32 11
  %19 = ptrtoint ptr %jack_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %jack_type, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end16
  %20 = and i32 %18, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %if.else.cleanup_crit_edge, label %if.then23

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %jack_type24 = getelementptr inbounds %struct.rt700_priv, ptr %rt700, i32 0, i32 11
  %22 = ptrtoint ptr %jack_type24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %jack_type24, align 4
  br label %cleanup

to_error:                                         ; preds = %while.cond
  %call27 = call i32 @___ratelimit(ptr noundef nonnull @rt700_headset_detect._rs, ptr noundef nonnull @__func__.rt700_headset_detect) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %to_error.cleanup_crit_edge, label %do.end

to_error.cleanup_crit_edge:                       ; preds = %to_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %to_error
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.rt700_headset_detect) #12
  br label %cleanup

io_error:                                         ; preds = %rt700_index_read.exit68.thread, %rt700_index_read.exit.thread
  %ret.0 = phi i32 [ %call.i, %rt700_index_read.exit.thread ], [ %call.i64, %rt700_index_read.exit68.thread ]
  %call32 = call i32 @___ratelimit(ptr noundef nonnull @rt700_headset_detect._rs.78, ptr noundef nonnull @__func__.rt700_headset_detect) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %io_error.cleanup_crit_edge, label %do.end37

io_error.cleanup_crit_edge:                       ; preds = %io_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end37:                                         ; preds = %io_error
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.rt700_headset_detect, i32 noundef %ret.0) #12
  br label %cleanup

remove_error:                                     ; preds = %if.end7
  %call41 = call i32 @___ratelimit(ptr noundef nonnull @rt700_headset_detect._rs.81, ptr noundef nonnull @__func__.rt700_headset_detect) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %remove_error.cleanup_crit_edge, label %do.end46

remove_error.cleanup_crit_edge:                   ; preds = %remove_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end46:                                         ; preds = %remove_error
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @__func__.rt700_headset_detect) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %remove_error.cleanup_crit_edge, %do.end37, %io_error.cleanup_crit_edge, %do.end, %to_error.cleanup_crit_edge, %if.then23, %if.else.cleanup_crit_edge, %if.then18
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %if.then18 ], [ -110, %do.end ], [ -110, %to_error.cleanup_crit_edge ], [ %ret.0, %do.end37 ], [ %ret.0, %io_error.cleanup_crit_edge ], [ -19, %do.end46 ], [ -19, %remove_error.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jack_status) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt700_button_detect(ptr nocapture noundef readonly %rt700) unnamed_addr #0 align 64 {
entry:
  %val80 = alloca i32, align 4
  %val81 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val80) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val81) #9
  %regmap = getelementptr inbounds %struct.rt700_priv, ptr %rt700, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %2 = ptrtoint ptr %val80 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val80, align 4
  %call.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 7676032, ptr noundef nonnull %val80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %rt700_index_read.exit.thread, label %if.end

rt700_index_read.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %val80 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val80, align 4
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 7676032, i32 noundef %4, i32 noundef %call.i) #12
  br label %read_error

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %7 = ptrtoint ptr %val81 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %val81, align 4
  %call.i23 = call i32 @regmap_read(ptr noundef %6, i32 noundef 7676033, ptr noundef nonnull %val81) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %cmp.i24 = icmp slt i32 %call.i23, 0
  br i1 %cmp.i24, label %rt700_index_read.exit27.thread, label %if.end5

rt700_index_read.exit27.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %val81 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val81, align 4
  %call1.i25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 7676033, i32 noundef %9, i32 noundef %call.i23) #12
  br label %read_error

if.end5:                                          ; preds = %if.end
  %10 = ptrtoint ptr %val80 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val80, align 4
  %and = and i32 %11, 897
  %12 = ptrtoint ptr %val81 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val81, align 4
  %14 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %and, label %if.end5.sw.epilog_crit_edge [
    i32 512, label %if.end5.sw.bb_crit_edge
    i32 256, label %if.end5.sw.bb_crit_edge28
    i32 128, label %if.end5.sw.bb_crit_edge29
    i32 1, label %sw.bb7
  ]

if.end5.sw.bb_crit_edge29:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end5.sw.bb_crit_edge28:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end5.sw.bb_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end5.sw.bb_crit_edge, %if.end5.sw.bb_crit_edge28, %if.end5.sw.bb_crit_edge29
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb, %if.end5.sw.epilog_crit_edge
  %btn_type.0 = phi i32 [ 0, %if.end5.sw.epilog_crit_edge ], [ 2048, %sw.bb7 ], [ 16384, %sw.bb ]
  %15 = trunc i32 %13 to i16
  %trunc = and i16 %15, -256
  %16 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.103)
  switch i16 %trunc, label %sw.epilog.read_error_crit_edge [
    i16 -32768, label %sw.epilog.sw.bb9_crit_edge
    i16 16384, label %sw.epilog.sw.bb9_crit_edge30
    i16 8192, label %sw.epilog.sw.bb9_crit_edge31
    i16 4096, label %sw.epilog.sw.bb11_crit_edge
    i16 2048, label %sw.epilog.sw.bb11_crit_edge32
    i16 1024, label %sw.epilog.sw.bb11_crit_edge33
    i16 512, label %sw.epilog.sw.bb13_crit_edge
    i16 256, label %sw.epilog.sw.bb13_crit_edge34
  ]

sw.epilog.sw.bb13_crit_edge34:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

sw.epilog.sw.bb13_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb13

sw.epilog.sw.bb11_crit_edge33:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11

sw.epilog.sw.bb11_crit_edge32:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11

sw.epilog.sw.bb11_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11

sw.epilog.sw.bb9_crit_edge31:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

sw.epilog.sw.bb9_crit_edge30:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

sw.epilog.sw.bb9_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

sw.epilog.read_error_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_error

sw.bb9:                                           ; preds = %sw.epilog.sw.bb9_crit_edge, %sw.epilog.sw.bb9_crit_edge30, %sw.epilog.sw.bb9_crit_edge31
  %or10 = or i32 %btn_type.0, 8192
  br label %read_error

sw.bb11:                                          ; preds = %sw.epilog.sw.bb11_crit_edge, %sw.epilog.sw.bb11_crit_edge32, %sw.epilog.sw.bb11_crit_edge33
  %or12 = or i32 %btn_type.0, 4096
  br label %read_error

sw.bb13:                                          ; preds = %sw.epilog.sw.bb13_crit_edge, %sw.epilog.sw.bb13_crit_edge34
  %or14 = or i32 %btn_type.0, 2048
  br label %read_error

read_error:                                       ; preds = %sw.bb13, %sw.bb11, %sw.bb9, %sw.epilog.read_error_crit_edge, %rt700_index_read.exit27.thread, %rt700_index_read.exit.thread
  %btn_type.1 = phi i32 [ %btn_type.0, %sw.epilog.read_error_crit_edge ], [ %or14, %sw.bb13 ], [ %or12, %sw.bb11 ], [ %or10, %sw.bb9 ], [ 0, %rt700_index_read.exit.thread ], [ 0, %rt700_index_read.exit27.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val81) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val80) #9
  ret i32 %btn_type.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !132, !134, !136, !138, !140, !141, !142, !144, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !170, !171, !172, !173, !174, !176, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208}
!llvm.module.flags = !{!209, !210, !211, !212, !213, !214, !215, !216}
!llvm.ident = !{!217}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt700.c", i32 1094, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rt700_clock_config.__UNIQUE_ID_ddebug246, !1, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!6 = !{ptr @rt700_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/rt700.c", i32 1115, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/rt700.c", i32 1129, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rt700_init.__UNIQUE_ID_ddebug247, !10, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!13 = !{ptr @rt700_io_init.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../sound/soc/codecs/rt700.c", i32 1212, i32 3}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rt700_io_init.__key.8, !14, !"__key", i1 false, i1 false}
!17 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rt700_io_init.__key.10, !19, !"__key", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/rt700.c", i32 1214, i32 3}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rt700_io_init.__key.12, !19, !"__key", i1 false, i1 false}
!22 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/rt700.c", i32 1237, i32 2}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rt700_io_init.__UNIQUE_ID_ddebug248, !24, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_description249, !28, !"__UNIQUE_ID_description249", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/rt700.c", i32 1242, i32 1}
!29 = !{ptr @__UNIQUE_ID_author250, !30, !"__UNIQUE_ID_author250", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/rt700.c", i32 1243, i32 1}
!31 = !{ptr @__UNIQUE_ID_file251, !32, !"__UNIQUE_ID_file251", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/rt700.c", i32 1244, i32 1}
!33 = !{ptr @__UNIQUE_ID_license252, !32, !"__UNIQUE_ID_license252", i1 false, i1 false}
!34 = !{ptr @soc_codec_dev_rt700, !35, !"soc_codec_dev_rt700", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/rt700.c", i32 846, i32 46}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/rt700.c", i32 484, i32 2}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/rt700.c", i32 488, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/rt700.c", i32 492, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/rt700.c", i32 496, i32 2}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/rt700.c", i32 500, i32 2}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/rt700.c", i32 504, i32 2}
!48 = !{ptr @rt700_snd_controls, !49, !"rt700_snd_controls", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/rt700.c", i32 483, i32 38}
!50 = !{ptr @out_vol_tlv, !51, !"out_vol_tlv", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/rt700.c", i32 479, i32 14}
!52 = !{ptr @in_vol_tlv, !53, !"in_vol_tlv", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/rt700.c", i32 480, i32 14}
!54 = !{ptr @mic_vol_tlv, !55, !"mic_vol_tlv", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/rt700.c", i32 481, i32 14}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/rt700.c", i32 751, i32 2}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/rt700.c", i32 752, i32 2}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/rt700.c", i32 753, i32 2}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/rt700.c", i32 754, i32 2}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/rt700.c", i32 755, i32 2}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/rt700.c", i32 756, i32 2}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/rt700.c", i32 757, i32 2}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/rt700.c", i32 758, i32 2}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/rt700.c", i32 761, i32 2}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/rt700.c", i32 764, i32 2}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/rt700.c", i32 767, i32 2}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/rt700.c", i32 770, i32 2}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/rt700.c", i32 773, i32 2}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/rt700.c", i32 776, i32 2}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/rt700.c", i32 778, i32 2}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/rt700.c", i32 780, i32 2}
!88 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/rt700.c", i32 781, i32 2}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/rt700.c", i32 782, i32 2}
!94 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/rt700.c", i32 783, i32 2}
!97 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @rt700_dapm_widgets, !99, !"rt700_dapm_widgets", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/rt700.c", i32 750, i32 41}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/rt700.c", i32 618, i32 2}
!102 = !{ptr @rt700_hp_mux, !103, !"rt700_hp_mux", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/rt700.c", i32 617, i32 38}
!104 = !{ptr @rt700_hp_enum, !105, !"rt700_hp_enum", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/rt700.c", i32 614, i32 8}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/rt700.c", i32 610, i32 2}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/rt700.c", i32 611, i32 2}
!110 = !{ptr @out_mux_text, !111, !"out_mux_text", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/rt700.c", i32 609, i32 27}
!112 = !{ptr @rt700_adc22_mux, !113, !"rt700_adc22_mux", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/rt700.c", i32 601, i32 38}
!114 = !{ptr @rt700_adc22_enum, !115, !"rt700_adc22_enum", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/rt700.c", i32 595, i32 8}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/rt700.c", i32 592, i32 2}
!118 = !{ptr @adc_mux_text, !119, !"adc_mux_text", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/rt700.c", i32 588, i32 27}
!120 = !{ptr @rt700_adc23_mux, !121, !"rt700_adc23_mux", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/rt700.c", i32 605, i32 38}
!122 = !{ptr @rt700_adc23_enum, !123, !"rt700_adc23_enum", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/rt700.c", i32 598, i32 8}
!124 = !{ptr @rt700_audio_map, !125, !"rt700_audio_map", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/rt700.c", i32 786, i32 40}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/rt700.c", i32 322, i32 3}
!128 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @rt700_set_jack_detect.__UNIQUE_ID_ddebug244, !127, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/rt700.c", i32 1014, i32 11}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/rt700.c", i32 1033, i32 11}
!134 = !{ptr @rt700_dai, !135, !"rt700_dai", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/rt700.c", i32 1012, i32 34}
!136 = !{ptr @rt700_ops, !137, !"rt700_ops", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/rt700.c", i32 1005, i32 37}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/rt700.c", i32 904, i32 2}
!140 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @rt700_pcm_hw_params.__UNIQUE_ID_ddebug245, !139, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/rt700.c", i32 930, i32 3}
!144 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @rt700_pcm_hw_params._entry, !143, !"_entry", i1 false, i1 false}
!147 = !{ptr @rt700_pcm_hw_params._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.65, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/rt700.c", i32 946, i32 3}
!150 = !{ptr @rt700_pcm_hw_params._entry.64, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @rt700_pcm_hw_params._entry_ptr.66, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/rt700.c", i32 954, i32 3}
!154 = !{ptr @rt700_pcm_hw_params._entry.67, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @rt700_pcm_hw_params._entry_ptr.69, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/rt700.c", i32 39, i32 3}
!158 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @rt700_index_write._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @rt700_index_write._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/rt700.c", i32 191, i32 2}
!163 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @rt700_jack_detect_handler.__UNIQUE_ID_ddebug239, !162, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!165 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/rt700.c", i32 193, i32 2}
!167 = !{ptr @rt700_jack_detect_handler.__UNIQUE_ID_ddebug240, !166, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!168 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/rt700.c", i32 215, i32 2}
!170 = !{ptr @rt700_jack_detect_handler._rs, !169, !"_rs", i1 false, i1 false}
!171 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @rt700_jack_detect_handler._entry, !169, !"_entry", i1 false, i1 false}
!173 = !{ptr @rt700_jack_detect_handler._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @rt700_headset_detect._rs, !175, !"_rs", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/rt700.c", i32 145, i32 2}
!176 = !{ptr @__func__.rt700_headset_detect, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @rt700_headset_detect._entry, !175, !"_entry", i1 false, i1 false}
!179 = !{ptr @rt700_headset_detect._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @rt700_headset_detect._rs.78, !181, !"_rs", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/rt700.c", i32 148, i32 2}
!182 = !{ptr @rt700_headset_detect._entry.79, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @rt700_headset_detect._entry_ptr.80, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @rt700_headset_detect._rs.81, !185, !"_rs", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/rt700.c", i32 151, i32 2}
!186 = !{ptr @.str.83, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @rt700_headset_detect._entry.82, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @rt700_headset_detect._entry_ptr.84, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.85, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/rt700.c", i32 54, i32 3}
!191 = !{ptr @.str.86, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @rt700_index_read._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @rt700_index_read._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.87, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/rt700.c", i32 248, i32 2}
!196 = !{ptr @.str.88, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @rt700_btn_check_handler.__UNIQUE_ID_ddebug241, !195, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!198 = !{ptr @rt700_btn_check_handler._rs, !199, !"_rs", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/rt700.c", i32 269, i32 2}
!200 = !{ptr @rt700_btn_check_handler._entry, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @rt700_btn_check_handler._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.89, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/rt700.c", i32 293, i32 3}
!204 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @rt700_jack_init.__UNIQUE_ID_ddebug242, !203, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!206 = !{ptr @.str.91, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/rt700.c", i32 305, i32 3}
!208 = !{ptr @rt700_jack_init.__UNIQUE_ID_ddebug243, !207, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!209 = !{i32 1, !"wchar_size", i32 2}
!210 = !{i32 1, !"min_enum_size", i32 4}
!211 = !{i32 8, !"branch-target-enforcement", i32 0}
!212 = !{i32 8, !"sign-return-address", i32 0}
!213 = !{i32 8, !"sign-return-address-all", i32 0}
!214 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!215 = !{i32 7, !"uwtable", i32 1}
!216 = !{i32 7, !"frame-pointer", i32 2}
!217 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!218 = !{i64 2148983888, i64 2148983893, i64 2148983906, i64 2148983950, i64 2148983984, i64 2148984005}
!219 = !{i8 0, i8 2}
!220 = !{i64 2148370511, i64 2148370537, i64 2148370566, i64 2148370600, i64 2148370631, i64 2148370654}
!221 = !{i32 0, i32 33}
