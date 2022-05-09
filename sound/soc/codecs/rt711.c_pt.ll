; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt711.c_pt.bc'
source_filename = "../sound/soc/codecs/rt711.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.rt711_priv = type { ptr, ptr, ptr, ptr, i32, %struct.sdw_bus_params, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.mutex, i32, i32, %struct.mutex, i8 }
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

@rt711_clock_config.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_soc_rt711\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt711_clock_config\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/codecs/rt711.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s complete, clk_freq=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@rt711_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&rt711->disable_irq_lock\00", [39 x i8] zeroinitializer }, align 32
@soc_codec_dev_rt711 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @rt711_snd_controls, i32 8, ptr @rt711_dapm_widgets, i32 14, ptr @rt711_audio_map, i32 14, ptr @rt711_probe, ptr @rt711_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt711_set_jack_detect, ptr null, ptr null, ptr null, ptr null, ptr @rt711_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rt711_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.62, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt711_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.51, i64 68719476805, i32 192, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.47, i64 68719476805, i32 192, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.63, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt711_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.49, i64 68719476805, i32 192, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@rt711_init.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 1, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt711_init\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@rt711_io_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&rt711->jack_detect_work)->work)\00", [43 x i8] zeroinitializer }, align 32
@rt711_io_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&rt711->jack_detect_work)->timer\00", [61 x i8] zeroinitializer }, align 32
@rt711_io_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&(&rt711->jack_btn_check_work)->work)\00", [40 x i8] zeroinitializer }, align 32
@rt711_io_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&(&rt711->jack_btn_check_work)->timer\00", [58 x i8] zeroinitializer }, align 32
@rt711_io_init.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&rt711->calibrate_mutex\00", [40 x i8] zeroinitializer }, align 32
@rt711_io_init.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&rt711->calibration_work)\00", [52 x i8] zeroinitializer }, align 32
@rt711_io_init.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 1, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt711_io_init\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s hw_init complete\0A\00", [43 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description250 = internal constant [48 x i8] c"snd_soc_rt711.description=ASoC RT711 SDW driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [56 x i8] c"snd_soc_rt711.author=Shuming Fan <shumingf@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [50 x i8] c"snd_soc_rt711.file=sound/soc/codecs/snd-soc-rt711\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [26 x i8] c"snd_soc_rt711.license=GPL\00", section ".modinfo", align 1
@rt711_snd_controls = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt711_set_amp_gain_get, ptr @rt711_set_amp_gain_put, %union.anon.83 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @rt711_set_amp_gain_get, ptr @rt711_set_amp_gain_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @rt711_set_amp_gain_get, ptr @rt711_set_amp_gain_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt711_set_amp_gain_get, ptr @rt711_set_amp_gain_put, %union.anon.83 { ptr @in_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt711_set_amp_gain_get, ptr @rt711_set_amp_gain_put, %union.anon.83 { ptr @in_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt711_set_amp_gain_get, ptr @rt711_set_amp_gain_put, %union.anon.83 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt711_set_amp_gain_get, ptr @rt711_set_amp_gain_put, %union.anon.83 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt711_set_amp_gain_get, ptr @rt711_set_amp_gain_put, %union.anon.83 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }], [96 x i8] zeroinitializer }, align 32
@rt711_audio_map = internal constant { [14 x %struct.snd_soc_dapm_route], [168 x i8] } { [14 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr null, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.58, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.39, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.40, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.36, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.58, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.39, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.40, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.36, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }], [168 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DAC Surr Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@out_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6525, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 87, i32 87, i32 29443, i32 33667, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADC 08 Capture Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 29448, i32 33672, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADC 09 Capture Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 29449, i32 33673, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADC 08 Capture Volume\00", [42 x i8] zeroinitializer }, align 32
@in_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1725, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 29448, i32 33672, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADC 09 Capture Volume\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 29449, i32 33673, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AMIC Volume\00", [20 x i8] zeroinitializer }, align 32
@mic_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 1000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 29465, i32 33689, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC1 Volume\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 29458, i32 33682, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC2 Volume\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 29459, i32 33683, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC2\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC1\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC2\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LINE1\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LINE2\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC Surround\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADC 09\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADC 08\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC 22 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt711_adc22_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rt711_mux_get, ptr @rt711_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt711_adc22_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC 23 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt711_adc23_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rt711_mux_get, ptr @rt711_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt711_adc23_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DP3RX\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DP3 Playback\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DP2TX\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DP2 Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DP4TX\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DP4 Capture\00", [20 x i8] zeroinitializer }, align 32
@rt711_dapm_widgets = internal constant { [14 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [616 x i8] } { [14 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.35, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.36, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.37, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt711_dac_surround_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt711_adc_09_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt711_adc_08_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt711_adc22_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt711_adc23_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.46, ptr @.str.47, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.48, ptr @.str.49, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.50, ptr @.str.51, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [616 x i8] zeroinitializer }, align 32
@rt711_adc22_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 4, i32 3, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rt711_mux_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 682, ptr @.str.55, ptr @.str.56 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: sdw read failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt711_mux_get\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt711_mux_get._entry_ptr = internal global ptr @rt711_mux_get._entry, section ".printk_index", align 4
@rt711_mux_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.57, ptr @.str.2, i32 721, ptr @.str.55, ptr @.str.56 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt711_mux_put\00", [18 x i8] zeroinitializer }, align 32
@rt711_mux_put._entry_ptr = internal global ptr @rt711_mux_put._entry, section ".printk_index", align 4
@adc_mux_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.58], [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@rt711_adc23_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 4, i32 3, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"realtek,jd-src\00", [17 x i8] zeroinitializer }, align 32
@rt711_set_jack_detect.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 0, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt711_set_jack_detect\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s hw_init not ready yet\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt711-aif1\00", [21 x i8] zeroinitializer }, align 32
@rt711_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt711_set_sdw_stream, ptr null, ptr null, ptr null, ptr @rt711_shutdown, ptr @rt711_pcm_hw_params, ptr @rt711_pcm_hw_free, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt711-aif2\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rt711_pcm_hw_params.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 -8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rt711_pcm_hw_params\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@rt711_pcm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 1029, ptr @.str.55, ptr @.str.56 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to configure port\0A\00", [38 x i8] zeroinitializer }, align 32
@rt711_pcm_hw_params._entry_ptr = internal global ptr @rt711_pcm_hw_params._entry, section ".printk_index", align 4
@rt711_pcm_hw_params._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.64, ptr @.str.2, i32 1038, ptr @.str.55, ptr @.str.56 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported channels %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rt711_pcm_hw_params._entry_ptr.69 = internal global ptr @rt711_pcm_hw_params._entry.67, section ".printk_index", align 4
@rt711_index_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013Failed to get private value: %06x => %04x ret=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt711_index_read\00", [47 x i8] zeroinitializer }, align 32
@rt711_index_read._entry_ptr = internal global ptr @rt711_index_read._entry, section ".printk_index", align 4
@rt711_index_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013Failed to set private value: %06x <= %04x ret=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rt711_index_write\00", [46 x i8] zeroinitializer }, align 32
@rt711_index_write._entry_ptr = internal global ptr @rt711_index_write._entry, section ".printk_index", align 4
@rt711_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s, calibration time-out!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rt711_calibration\00", [46 x i8] zeroinitializer }, align 32
@rt711_calibration._entry_ptr = internal global ptr @rt711_calibration._entry, section ".printk_index", align 4
@rt711_calibration.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s calibration complete, ret=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@rt711_jack_detect_handler.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.2, ptr @.str.78, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rt711_jack_detect_handler\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"in %s, jack_type=0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@rt711_jack_detect_handler.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.2, ptr @.str.79, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"in %s, btn_type=0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@rt711_jack_detect_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.80, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@rt711_jack_detect_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.77, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013IO error in %s, ret %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rt711_jack_detect_handler._entry_ptr = internal global ptr @rt711_jack_detect_handler._entry, section ".printk_index", align 4
@rt711_headset_detect._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.80, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rt711_headset_detect = private unnamed_addr constant [21 x i8] c"rt711_headset_detect\00", align 1
@rt711_headset_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @__func__.rt711_headset_detect, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013Time-out error in %s\0A\00", [40 x i8] zeroinitializer }, align 32
@rt711_headset_detect._entry_ptr = internal global ptr @rt711_headset_detect._entry, section ".printk_index", align 4
@rt711_headset_detect._rs.83 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.80, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rt711_headset_detect._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @__func__.rt711_headset_detect, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rt711_headset_detect._entry_ptr.85 = internal global ptr @rt711_headset_detect._entry.84, section ".printk_index", align 4
@rt711_headset_detect._rs.86 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.80, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rt711_headset_detect._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @__func__.rt711_headset_detect, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013Jack removal in %s\0A\00", [42 x i8] zeroinitializer }, align 32
@rt711_headset_detect._entry_ptr.89 = internal global ptr @rt711_headset_detect._entry.87, section ".printk_index", align 4
@rt711_btn_check_handler.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.91, i8 0, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rt711_btn_check_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s, btn_type=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@rt711_btn_check_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.80, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rt711_btn_check_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.90, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rt711_btn_check_handler._entry_ptr = internal global ptr @rt711_btn_check_handler._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rt711_jack_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 423, ptr @.str.94, ptr @.str.56 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Wrong JD source\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt711_jack_init\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rt711_jack_init._entry_ptr = internal global ptr @rt711_jack_init._entry, section ".printk_index", align 4
@rt711_jack_init.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.95, i8 0, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in %s enable\0A\00", [18 x i8] zeroinitializer }, align 32
@rt711_jack_init.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.96, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in %s disable\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 2400000, i64 4800000, i64 6000000, i64 9600000, i64 12000000, i64 12288000]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.98 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.104 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.105 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 128, i64 256, i64 512]
@__sancov_gen_cov_switch_values.106 = internal global [10 x i64] [i64 8, i64 16, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768]
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1171, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1199, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [20 x i8] c"soc_codec_dev_rt711\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 935, i32 46 }
@___asan_gen_.128 = private unnamed_addr constant [10 x i8] c"rt711_dai\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1096, i32 34 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1216, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1309, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1311, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1313, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1314, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1337, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [19 x i8] c"rt711_snd_controls\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 626, i32 38 }
@___asan_gen_.182 = private unnamed_addr constant [16 x i8] c"rt711_audio_map\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 860, i32 40 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 627, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [12 x i8] c"out_vol_tlv\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 622, i32 14 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 631, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 635, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 639, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [11 x i8] c"in_vol_tlv\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 623, i32 14 }
@___asan_gen_.206 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 643, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 647, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [12 x i8] c"mic_vol_tlv\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 624, i32 14 }
@___asan_gen_.217 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 651, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 655, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 834, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 835, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 836, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 837, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 838, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 839, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 841, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 844, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 847, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 850, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [16 x i8] c"rt711_adc22_mux\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 754, i32 38 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 852, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [16 x i8] c"rt711_adc23_mux\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 758, i32 38 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 855, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 856, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 857, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [19 x i8] c"rt711_dapm_widgets\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 833, i32 41 }
@___asan_gen_.286 = private unnamed_addr constant [17 x i8] c"rt711_adc22_enum\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 748, i32 8 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 681, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 720, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [13 x i8] c"adc_mux_text\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 741, i32 27 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 745, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [17 x i8] c"rt711_adc23_enum\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 751, i32 8 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 912, i32 32 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 457, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1098, i32 11 }
@___asan_gen_.331 = private unnamed_addr constant [10 x i8] c"rt711_ops\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1089, i32 37 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1117, i32 11 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 994, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1029, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 1037, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 54, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 39, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 112, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 132, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 271, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 273, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 295, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 225, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 228, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 231, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 329, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 350, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 423, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 427, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.458 = private constant [28 x i8] c"../sound/soc/codecs/rt711.c\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.458, i32 439, i32 3 }
@llvm.compiler.used = appending global [140 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @rt711_btn_check_handler._entry, ptr @rt711_btn_check_handler._entry_ptr, ptr @rt711_calibration._entry, ptr @rt711_calibration._entry_ptr, ptr @rt711_headset_detect._entry, ptr @rt711_headset_detect._entry.84, ptr @rt711_headset_detect._entry.87, ptr @rt711_headset_detect._entry_ptr, ptr @rt711_headset_detect._entry_ptr.85, ptr @rt711_headset_detect._entry_ptr.89, ptr @rt711_index_read._entry, ptr @rt711_index_read._entry_ptr, ptr @rt711_index_write._entry, ptr @rt711_index_write._entry_ptr, ptr @rt711_jack_detect_handler._entry, ptr @rt711_jack_detect_handler._entry_ptr, ptr @rt711_jack_init._entry, ptr @rt711_jack_init._entry_ptr, ptr @rt711_mux_get._entry, ptr @rt711_mux_get._entry_ptr, ptr @rt711_mux_put._entry, ptr @rt711_mux_put._entry_ptr, ptr @rt711_pcm_hw_params._entry, ptr @rt711_pcm_hw_params._entry.67, ptr @rt711_pcm_hw_params._entry_ptr, ptr @rt711_pcm_hw_params._entry_ptr.69, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rt711_init.__key, ptr @.str.4, ptr @soc_codec_dev_rt711, ptr @rt711_dai, ptr @.str.5, ptr @.str.6, ptr @rt711_io_init.__key, ptr @.str.7, ptr @rt711_io_init.__key.8, ptr @.str.9, ptr @rt711_io_init.__key.10, ptr @.str.11, ptr @rt711_io_init.__key.12, ptr @.str.13, ptr @rt711_io_init.__key.14, ptr @.str.15, ptr @rt711_io_init.__key.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @rt711_snd_controls, ptr @rt711_audio_map, ptr @.str.20, ptr @out_vol_tlv, ptr @.compoundliteral, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @in_vol_tlv, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @mic_vol_tlv, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @rt711_adc22_mux, ptr @.str.45, ptr @rt711_adc23_mux, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @rt711_dapm_widgets, ptr @rt711_adc22_enum, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @adc_mux_text, ptr @.str.58, ptr @rt711_adc23_enum, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @rt711_ops, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @rt711_jack_detect_handler._rs, ptr @.str.80, ptr @.str.81, ptr @rt711_headset_detect._rs, ptr @.str.82, ptr @rt711_headset_detect._rs.83, ptr @rt711_headset_detect._rs.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @rt711_btn_check_handler._rs, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96], section "llvm.metadata"
@0 = internal global [123 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_codec_dev_rt711 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_io_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_io_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_io_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_io_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_io_init.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_io_init.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_snd_controls to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_audio_map to i32), i32 728, i32 896, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_adc22_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_adc23_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_dapm_widgets to i32), i32 2520, i32 3136, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_adc22_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_mux_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_mux_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_mux_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_adc23_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_pcm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_pcm_hw_params._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_index_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_index_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_jack_detect_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_jack_detect_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_headset_detect._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_headset_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_headset_detect._rs.83 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_headset_detect._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_headset_detect._rs.86 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_headset_detect._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_btn_check_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_btn_check_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_jack_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt711_clock_config(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %curr_dr_freq = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 5, i32 3
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_clock_config.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_clock_config, %if.then)) #8
          to label %cleanup [label %if.then], !srcloc !225

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_clock_config.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %shr) #8
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
define dso_local i32 @rt711_init(ptr noundef %dev, ptr noundef %sdw_regmap, ptr noundef %regmap, ptr noundef %slave) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 504, i32 noundef 3520) #8
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
  %slave1 = getelementptr inbounds %struct.rt711_priv, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %slave, ptr %slave1, align 4
  %sdw_regmap2 = getelementptr inbounds %struct.rt711_priv, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %sdw_regmap2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sdw_regmap, ptr %sdw_regmap2, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regmap, ptr %call.i, align 4
  %disable_irq_lock = getelementptr inbounds %struct.rt711_priv, ptr %call.i, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %disable_irq_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @rt711_init.__key) #8
  %hw_init = getelementptr inbounds %struct.rt711_priv, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %hw_init to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %hw_init, align 4
  %first_hw_init = getelementptr inbounds %struct.rt711_priv, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %first_hw_init, align 1
  %jd_src = getelementptr inbounds %struct.rt711_priv, ptr %call.i, i32 0, i32 14
  %6 = ptrtoint ptr %jd_src to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %jd_src, align 4
  %call4 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_codec_dev_rt711, ptr noundef nonnull @rt711_dai, i32 noundef 2) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_init.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_init, %if.then10)) #8
          to label %cleanup [label %if.then10], !srcloc !225

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev11 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_init.__UNIQUE_ID_ddebug248, ptr noundef %dev11, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5) #8
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
define dso_local i32 @rt711_io_init(ptr nocapture noundef readonly %dev, ptr noundef %slave) local_unnamed_addr #0 align 64 {
entry:
  %orig.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %disable_irq = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %disable_irq to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %disable_irq, align 4
  %hw_init = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hw_init, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %first_hw_init = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %first_hw_init, align 1, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.end.if.then7_crit_edge, label %if.end4

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %8, i1 noundef zeroext false) #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_bypass(ptr noundef %10, i1 noundef zeroext true) #8
  %11 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %11)
  %.pr = load i8, ptr %first_hw_init, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool6.not = icmp eq i8 %.pr, 0
  br i1 %tobool6.not, label %if.end4.if.then7_crit_edge, label %if.end4.if.end14_crit_edge

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end4.if.then7_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.then7:                                         ; preds = %if.end4.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %dev8 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev8, i32 noundef 3000) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev8, i1 noundef zeroext true) #8
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev8, i32 noundef 0) #8
  %call.i242 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 22
  %12 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i242, ptr %last_busy.i, align 8
  tail call void @pm_runtime_enable(ptr noundef %dev8) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %if.end4.if.end14_crit_edge
  %dev15 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %usage_count.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !227
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i243 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 65281, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i.i) #8
  %16 = ptrtoint ptr %orig.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %orig.i.i, align 4
  %call.i.i.i244 = call i32 @regmap_read(ptr noundef %15, i32 noundef 7675930, ptr noundef nonnull %orig.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i244)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i244, 0
  %17 = ptrtoint ptr %orig.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %orig.i.i, align 4
  br i1 %cmp.i.i.i, label %rt711_index_read.exit.thread.i.i, label %if.end.i.i

rt711_index_read.exit.thread.i.i:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7675930, i32 noundef %18, i32 noundef %call.i.i.i244) #11
  br label %rt711_reset.exit

if.end.i.i:                                       ; preds = %if.end14
  %or.i.i = or i32 %18, 16384
  %call.i4.i.i = call i32 @regmap_write(ptr noundef %15, i32 noundef 7675930, i32 noundef %or.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i)
  %cmp.i5.i.i = icmp slt i32 %call.i4.i.i, 0
  br i1 %cmp.i5.i.i, label %do.end.i7.i.i, label %if.end.i.i.rt711_reset.exit_crit_edge

if.end.i.i.rt711_reset.exit_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_reset.exit

do.end.i7.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 7675930, i32 noundef %or.i.i, i32 noundef %call.i4.i.i) #11
  br label %rt711_reset.exit

rt711_reset.exit:                                 ; preds = %do.end.i7.i.i, %if.end.i.i.rt711_reset.exit_crit_edge, %rt711_index_read.exit.thread.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i.i) #8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call18 = call i32 @regmap_write(ptr noundef %20, i32 noundef 13569, i32 noundef 0) #8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call20 = call i32 @regmap_write(ptr noundef %22, i32 noundef 14105, i32 noundef 37) #8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call22 = call i32 @regmap_write(ptr noundef %24, i32 noundef 14113, i32 noundef 192) #8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call24 = call i32 @regmap_write(ptr noundef %26, i32 noundef 14098, i32 noundef 32) #8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call26 = call i32 @regmap_write(ptr noundef %28, i32 noundef 14099, i32 noundef 32) #8
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call28 = call i32 @regmap_write(ptr noundef %30, i32 noundef 14106, i32 noundef 32) #8
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call30 = call i32 @regmap_write(ptr noundef %32, i32 noundef 14107, i32 noundef 32) #8
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call32 = call i32 @regmap_write(ptr noundef %34, i32 noundef 29473, i32 noundef 41088) #8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call34 = call i32 @regmap_write(ptr noundef %36, i32 noundef 29473, i32 noundef 36992) #8
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %call36 = call i32 @regmap_write(ptr noundef %38, i32 noundef 29448, i32 noundef 24704) #8
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call38 = call i32 @regmap_write(ptr noundef %40, i32 noundef 29448, i32 noundef 20608) #8
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call40 = call i32 @regmap_write(ptr noundef %42, i32 noundef 29449, i32 noundef 24704) #8
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call42 = call i32 @regmap_write(ptr noundef %44, i32 noundef 29449, i32 noundef 20608) #8
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call44 = call i32 @regmap_write(ptr noundef %46, i32 noundef 20242, i32 noundef 145) #8
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %call46 = call i32 @regmap_write(ptr noundef %48, i32 noundef 19986, i32 noundef 214) #8
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %call48 = call i32 @regmap_write(ptr noundef %50, i32 noundef 19730, i32 noundef 17) #8
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %call50 = call i32 @regmap_write(ptr noundef %52, i32 noundef 19474, i32 noundef 32) #8
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %call52 = call i32 @regmap_write(ptr noundef %54, i32 noundef 20243, i32 noundef 145) #8
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %call54 = call i32 @regmap_write(ptr noundef %56, i32 noundef 19987, i32 noundef 214) #8
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %call56 = call i32 @regmap_write(ptr noundef %58, i32 noundef 19731, i32 noundef 17) #8
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %call58 = call i32 @regmap_write(ptr noundef %60, i32 noundef 19475, i32 noundef 33) #8
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %call60 = call i32 @regmap_write(ptr noundef %62, i32 noundef 19489, i32 noundef 240) #8
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %call62 = call i32 @regmap_write(ptr noundef %64, i32 noundef 19745, i32 noundef 17) #8
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %call64 = call i32 @regmap_write(ptr noundef %66, i32 noundef 20001, i32 noundef 17) #8
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %call66 = call i32 @regmap_write(ptr noundef %68, i32 noundef 20257, i32 noundef 1) #8
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %call.i245 = call i32 @regmap_write(ptr noundef %70, i32 noundef 7676049, i32 noundef 340) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i245)
  %cmp.i = icmp slt i32 %call.i245, 0
  br i1 %cmp.i, label %do.end.i, label %rt711_reset.exit.rt711_index_write.exit_crit_edge

rt711_reset.exit.rt711_index_write.exit_crit_edge: ; preds = %rt711_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_write.exit

do.end.i:                                         ; preds = %rt711_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 7676049, i32 noundef 340, i32 noundef %call.i245) #11
  br label %rt711_index_write.exit

rt711_index_write.exit:                           ; preds = %do.end.i, %rt711_reset.exit.rt711_index_write.exit_crit_edge
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %call.i246 = call i32 @regmap_write(ptr noundef %72, i32 noundef 7675978, i32 noundef 8219) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %cmp.i247 = icmp slt i32 %call.i246, 0
  br i1 %cmp.i247, label %do.end.i249, label %rt711_index_write.exit.rt711_index_write.exit250_crit_edge

rt711_index_write.exit.rt711_index_write.exit250_crit_edge: ; preds = %rt711_index_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_write.exit250

do.end.i249:                                      ; preds = %rt711_index_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i248 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 7675978, i32 noundef 8219, i32 noundef %call.i246) #11
  br label %rt711_index_write.exit250

rt711_index_write.exit250:                        ; preds = %do.end.i249, %rt711_index_write.exit.rt711_index_write.exit250_crit_edge
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %call.i251 = call i32 @regmap_write(ptr noundef %74, i32 noundef 7675973, i32 noundef 20617) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251)
  %cmp.i252 = icmp slt i32 %call.i251, 0
  br i1 %cmp.i252, label %do.end.i254, label %rt711_index_write.exit250.rt711_index_write.exit255_crit_edge

rt711_index_write.exit250.rt711_index_write.exit255_crit_edge: ; preds = %rt711_index_write.exit250
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_write.exit255

do.end.i254:                                      ; preds = %rt711_index_write.exit250
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i253 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 7675973, i32 noundef 20617, i32 noundef %call.i251) #11
  br label %rt711_index_write.exit255

rt711_index_write.exit255:                        ; preds = %do.end.i254, %rt711_index_write.exit250.rt711_index_write.exit255_crit_edge
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %call.i256 = call i32 @regmap_write(ptr noundef %76, i32 noundef 7676011, i32 noundef 20580) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i256)
  %cmp.i257 = icmp slt i32 %call.i256, 0
  br i1 %cmp.i257, label %do.end.i259, label %rt711_index_write.exit255.rt711_index_write.exit260_crit_edge

rt711_index_write.exit255.rt711_index_write.exit260_crit_edge: ; preds = %rt711_index_write.exit255
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_write.exit260

do.end.i259:                                      ; preds = %rt711_index_write.exit255
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i258 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 7676011, i32 noundef 20580, i32 noundef %call.i256) #11
  br label %rt711_index_write.exit260

rt711_index_write.exit260:                        ; preds = %do.end.i259, %rt711_index_write.exit255.rt711_index_write.exit260_crit_edge
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %call.i261 = call i32 @regmap_write(ptr noundef %78, i32 noundef 7675976, i32 noundef 53833) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i261)
  %cmp.i262 = icmp slt i32 %call.i261, 0
  br i1 %cmp.i262, label %do.end.i264, label %rt711_index_write.exit260.rt711_index_write.exit265_crit_edge

rt711_index_write.exit260.rt711_index_write.exit265_crit_edge: ; preds = %rt711_index_write.exit260
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_write.exit265

do.end.i264:                                      ; preds = %rt711_index_write.exit260
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i263 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 7675976, i32 noundef 53833, i32 noundef %call.i261) #11
  br label %rt711_index_write.exit265

rt711_index_write.exit265:                        ; preds = %do.end.i264, %rt711_index_write.exit260.rt711_index_write.exit265_crit_edge
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %call78 = call i32 @regmap_write(ptr noundef %80, i32 noundef 13569, i32 noundef 3) #8
  %81 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %first_hw_init, align 1, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool80.not = icmp eq i8 %82, 0
  br i1 %tobool80.not, label %do.body83, label %if.then81

if.then81:                                        ; preds = %rt711_index_write.exit265
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @rt711_calibration(ptr noundef %1)
  br label %if.end143

do.body83:                                        ; preds = %rt711_index_write.exit265
  call void @__sanitizer_cov_trace_pc() #10
  %jack_detect_work = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 9
  call void @__init_work(ptr noundef %jack_detect_work, i32 noundef 0) #8
  %83 = ptrtoint ptr %jack_detect_work to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -64, ptr %jack_detect_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 9, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @rt711_io_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry90 = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 9, i32 0, i32 1
  %84 = ptrtoint ptr %entry90 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %entry90, ptr %entry90, align 4
  %prev.i = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 9, i32 0, i32 1, i32 1
  %85 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %entry90, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 9, i32 0, i32 2
  %86 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @rt711_jack_detect_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 9, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @rt711_io_init.__key.8) #8
  %jack_btn_check_work = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 10
  call void @__init_work(ptr noundef %jack_btn_check_work, i32 noundef 0) #8
  %87 = ptrtoint ptr %jack_btn_check_work to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -64, ptr %jack_btn_check_work, align 4
  %lockdep_map109 = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 10, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map109, ptr noundef nonnull @.str.11, ptr noundef nonnull @rt711_io_init.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry112 = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 10, i32 0, i32 1
  %88 = ptrtoint ptr %entry112 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %entry112, ptr %entry112, align 4
  %prev.i266 = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %prev.i266 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %entry112, ptr %prev.i266, align 4
  %func115 = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 10, i32 0, i32 2
  %90 = ptrtoint ptr %func115 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @rt711_btn_check_handler, ptr %func115, align 4
  %timer120 = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 10, i32 1
  call void @init_timer_key(ptr noundef %timer120, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.13, ptr noundef nonnull @rt711_io_init.__key.12) #8
  %calibrate_mutex = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 12
  call void @__mutex_init(ptr noundef %calibrate_mutex, ptr noundef nonnull @.str.15, ptr noundef nonnull @rt711_io_init.__key.14) #8
  %calibration_work = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 11
  call void @__init_work(ptr noundef %calibration_work, i32 noundef 0) #8
  %91 = ptrtoint ptr %calibration_work to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -64, ptr %calibration_work, align 4
  %lockdep_map134 = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 11, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map134, ptr noundef nonnull @.str.17, ptr noundef nonnull @rt711_io_init.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry136 = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 11, i32 1
  %92 = ptrtoint ptr %entry136 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %entry136, ptr %entry136, align 4
  %prev.i267 = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 11, i32 1, i32 1
  %93 = ptrtoint ptr %prev.i267 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %entry136, ptr %prev.i267, align 4
  %func138 = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 11, i32 2
  %94 = ptrtoint ptr %func138 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @rt711_calibration_work, ptr %func138, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %95 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %95, ptr noundef %calibration_work) #8
  br label %if.end143

if.end143:                                        ; preds = %do.body83, %if.then81
  %hs_jack = getelementptr inbounds %struct.rt711_priv, ptr %1, i32 0, i32 8
  %96 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hs_jack, align 4
  %tobool144.not = icmp eq ptr %97, null
  br i1 %tobool144.not, label %if.end143.if.end146_crit_edge, label %if.then145

if.end143.if.end146_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

if.then145:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @rt711_jack_init(ptr noundef %1)
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.end143.if.end146_crit_edge
  %98 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %first_hw_init, align 1, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool148.not = icmp eq i8 %99, 0
  br i1 %tobool148.not, label %if.else152, label %if.then149

if.then149:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 4
  call void @regcache_cache_bypass(ptr noundef %101, i1 noundef zeroext false) #8
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  call void @regcache_mark_dirty(ptr noundef %103) #8
  br label %if.end154

if.else152:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %first_hw_init, align 1
  br label %if.end154

if.end154:                                        ; preds = %if.else152, %if.then149
  %105 = ptrtoint ptr %hw_init to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %hw_init, align 4
  %call.i268 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i269 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 22
  %106 = ptrtoint ptr %last_busy.i269 to i32
  call void @__asan_store8_noabort(i32 %106)
  store volatile i64 %call.i268, ptr %last_busy.i269, align 8
  %call.i270 = call i32 @__pm_runtime_suspend(ptr noundef %dev15, i32 noundef 13) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_io_init.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_io_init, %if.then164)) #8
          to label %cleanup [label %if.then164], !srcloc !225

if.then164:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_io_init.__UNIQUE_ID_ddebug249, ptr noundef %dev15, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then164, %if.end154, %entry.cleanup_crit_edge
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt711_calibration(ptr noundef %rt711) unnamed_addr #0 align 64 {
entry:
  %orig.i20 = alloca i32, align 4
  %orig.i1 = alloca i32, align 4
  %orig.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !228
  %1 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rt711, align 4
  %calibrate_mutex = getelementptr inbounds %struct.rt711_priv, ptr %rt711, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %calibrate_mutex, i32 noundef 0) #8
  %3 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rt711, align 4
  %call = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 13569, i32 noundef 0) #8
  %call3 = tail call ptr @regmap_get_device(ptr noundef %2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i) #8
  %5 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %orig.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 7676015, ptr noundef nonnull %orig.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %6 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %orig.i, align 4
  br i1 %cmp.i.i, label %rt711_index_read.exit.thread.i, label %if.end.i

rt711_index_read.exit.thread.i:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7676015, i32 noundef %7, i32 noundef %call.i.i) #11
  br label %rt711_index_update_bits.exit

if.end.i:                                         ; preds = %entry
  %and.i = and i32 %7, -16
  %call.i4.i = call i32 @regmap_write(ptr noundef %2, i32 noundef 7676015, i32 noundef %and.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %cmp.i5.i = icmp slt i32 %call.i4.i, 0
  br i1 %cmp.i5.i, label %do.end.i7.i, label %if.end.i.rt711_index_update_bits.exit_crit_edge

if.end.i.rt711_index_update_bits.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_update_bits.exit

do.end.i7.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 7676015, i32 noundef %and.i, i32 noundef %call.i4.i) #11
  br label %rt711_index_update_bits.exit

rt711_index_update_bits.exit:                     ; preds = %do.end.i7.i, %if.end.i.rt711_index_update_bits.exit_crit_edge, %rt711_index_read.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i1) #8
  %8 = ptrtoint ptr %orig.i1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %orig.i1, align 4
  %call.i.i2 = call i32 @regmap_read(ptr noundef %2, i32 noundef 7690240, ptr noundef nonnull %orig.i1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i2)
  %cmp.i.i3 = icmp slt i32 %call.i.i2, 0
  %9 = ptrtoint ptr %orig.i1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %orig.i1, align 4
  br i1 %cmp.i.i3, label %rt711_index_read.exit.thread.i5, label %if.end.i9

rt711_index_read.exit.thread.i5:                  ; preds = %rt711_index_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7690240, i32 noundef %10, i32 noundef %call.i.i2) #11
  br label %rt711_index_update_bits.exit12

if.end.i9:                                        ; preds = %rt711_index_update_bits.exit
  %or.i = or i32 %10, 32768
  %call.i4.i7 = call i32 @regmap_write(ptr noundef %2, i32 noundef 7690240, i32 noundef %or.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i7)
  %cmp.i5.i8 = icmp slt i32 %call.i4.i7, 0
  br i1 %cmp.i5.i8, label %do.end.i7.i11, label %if.end.i9.rt711_index_update_bits.exit12_crit_edge

if.end.i9.rt711_index_update_bits.exit12_crit_edge: ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_update_bits.exit12

do.end.i7.i11:                                    ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i6.i10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 7690240, i32 noundef %or.i, i32 noundef %call.i4.i7) #11
  br label %rt711_index_update_bits.exit12

rt711_index_update_bits.exit12:                   ; preds = %do.end.i7.i11, %if.end.i9.rt711_index_update_bits.exit12_crit_edge, %rt711_index_read.exit.thread.i5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i1) #8
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %val, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 7690240, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %rt711_index_update_bits.exit12.rt711_index_read.exit_crit_edge

rt711_index_update_bits.exit12.rt711_index_read.exit_crit_edge: ; preds = %rt711_index_update_bits.exit12
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_read.exit

do.end.i:                                         ; preds = %rt711_index_update_bits.exit12
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7690240, i32 noundef %13, i32 noundef %call.i) #11
  br label %rt711_index_read.exit

rt711_index_read.exit:                            ; preds = %do.end.i, %rt711_index_update_bits.exit12.rt711_index_read.exit_crit_edge
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %and34 = and i32 %15, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool.not35 = icmp eq i32 %and34, 0
  br i1 %tobool.not35, label %rt711_index_read.exit.while.end_crit_edge, label %rt711_index_read.exit.while.body_crit_edge

rt711_index_read.exit.while.body_crit_edge:       ; preds = %rt711_index_read.exit
  br label %while.body

rt711_index_read.exit.while.end_crit_edge:        ; preds = %rt711_index_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %rt711_index_read.exit19.while.body_crit_edge, %rt711_index_read.exit.while.body_crit_edge
  %loop.036 = phi i32 [ %inc, %rt711_index_read.exit19.while.body_crit_edge ], [ 0, %rt711_index_read.exit.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %loop.036)
  %exitcond = icmp eq i32 %loop.036, 500
  br i1 %exitcond, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75) #11
  br label %while.end

if.end:                                           ; preds = %while.body
  %inc = add nuw nsw i32 %loop.036, 1
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %val, align 4
  %call.i14 = call i32 @regmap_read(ptr noundef %2, i32 noundef 7690240, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %cmp.i15 = icmp slt i32 %call.i14, 0
  br i1 %cmp.i15, label %do.end.i17, label %if.end.rt711_index_read.exit19_crit_edge

if.end.rt711_index_read.exit19_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_read.exit19

do.end.i17:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %call2.i16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7690240, i32 noundef %18, i32 noundef %call.i14) #11
  br label %rt711_index_read.exit19

rt711_index_read.exit19:                          ; preds = %do.end.i17, %if.end.rt711_index_read.exit19_crit_edge
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %and = and i32 %20, 32768
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %rt711_index_read.exit19.while.end_crit_edge, label %rt711_index_read.exit19.while.body_crit_edge

rt711_index_read.exit19.while.body_crit_edge:     ; preds = %rt711_index_read.exit19
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

rt711_index_read.exit19.while.end_crit_edge:      ; preds = %rt711_index_read.exit19
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %rt711_index_read.exit19.while.end_crit_edge, %do.end, %rt711_index_read.exit.while.end_crit_edge
  %ret.0 = phi i32 [ -110, %do.end ], [ 0, %rt711_index_read.exit.while.end_crit_edge ], [ 0, %rt711_index_read.exit19.while.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i20) #8
  %21 = ptrtoint ptr %orig.i20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %orig.i20, align 4
  %call.i.i21 = call i32 @regmap_read(ptr noundef %2, i32 noundef 7676015, ptr noundef nonnull %orig.i20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21)
  %cmp.i.i22 = icmp slt i32 %call.i.i21, 0
  %22 = ptrtoint ptr %orig.i20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %orig.i20, align 4
  br i1 %cmp.i.i22, label %rt711_index_read.exit.thread.i24, label %if.end.i29

rt711_index_read.exit.thread.i24:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7676015, i32 noundef %23, i32 noundef %call.i.i21) #11
  br label %rt711_index_update_bits.exit32

if.end.i29:                                       ; preds = %while.end
  %and.i25 = and i32 %23, -16
  %or.i26 = or i32 %and.i25, 3
  %call.i4.i27 = call i32 @regmap_write(ptr noundef %2, i32 noundef 7676015, i32 noundef %or.i26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i27)
  %cmp.i5.i28 = icmp slt i32 %call.i4.i27, 0
  br i1 %cmp.i5.i28, label %do.end.i7.i31, label %if.end.i29.rt711_index_update_bits.exit32_crit_edge

if.end.i29.rt711_index_update_bits.exit32_crit_edge: ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_update_bits.exit32

do.end.i7.i31:                                    ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i6.i30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 7676015, i32 noundef %or.i26, i32 noundef %call.i4.i27) #11
  br label %rt711_index_update_bits.exit32

rt711_index_update_bits.exit32:                   ; preds = %do.end.i7.i31, %if.end.i29.rt711_index_update_bits.exit32_crit_edge, %rt711_index_read.exit.thread.i24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i20) #8
  %24 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rt711, align 4
  %call11 = call i32 @regmap_write(ptr noundef %25, i32 noundef 13569, i32 noundef 3) #8
  call void @mutex_unlock(ptr noundef %calibrate_mutex) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_calibration.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_calibration, %if.then19)) #8
          to label %do.end22 [label %if.then19], !srcloc !225

if.then19:                                        ; preds = %rt711_index_update_bits.exit32
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_calibration.__UNIQUE_ID_ddebug239, ptr noundef %call3, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.75, i32 noundef %ret.0) #8
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %rt711_index_update_bits.exit32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt711_jack_detect_handler(ptr noundef %work) #0 align 64 {
entry:
  %jack_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jack_status) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %component = getelementptr i8, ptr %work, i32 -56
  %3 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %component, align 4
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %call = call i32 @regmap_read(ptr noundef %9, i32 noundef 47393, ptr noundef nonnull %jack_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %io_error, label %if.end5

if.end5:                                          ; preds = %if.end3
  %10 = ptrtoint ptr %jack_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %jack_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool6.not = icmp sgt i32 %11, -1
  %jack_type26 = getelementptr i8, ptr %work, i32 336
  br i1 %tobool6.not, label %if.else25, label %if.then7

if.then7:                                         ; preds = %if.end5
  %12 = ptrtoint ptr %jack_type26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %jack_type26, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %13, label %if.then7.do.body_crit_edge [
    i32 0, label %if.then9
    i32 3, label %if.then21
  ]

if.then7.do.body_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then9:                                         ; preds = %if.then7
  %call10 = call fastcc i32 @rt711_headset_detect(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then9.cleanup_crit_edge, label %if.end13

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  %15 = ptrtoint ptr %jack_type26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %jack_type26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp15 = icmp eq i32 %16, 3
  br i1 %cmp15, label %if.then16, label %if.end13.do.body_crit_edge

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call fastcc i32 @rt711_button_detect(ptr noundef %add.ptr)
  br label %do.body

if.then21:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = call fastcc i32 @rt711_button_detect(ptr noundef %add.ptr)
  br label %do.body

if.else25:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %jack_type26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %jack_type26, align 4
  br label %do.body

do.body:                                          ; preds = %if.else25, %if.then21, %if.then16, %if.end13.do.body_crit_edge, %if.then7.do.body_crit_edge
  %btn_type.0 = phi i32 [ %call17, %if.then16 ], [ 0, %if.end13.do.body_crit_edge ], [ %call22, %if.then21 ], [ 0, %if.else25 ], [ 0, %if.then7.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_jack_detect_handler.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_jack_detect_handler, %if.then33)) #8
          to label %do.body36 [label %if.then33], !srcloc !225

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %slave = getelementptr i8, ptr %work, i32 -52
  %18 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slave, align 4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %19, i32 0, i32 1
  %jack_type34 = getelementptr i8, ptr %work, i32 336
  %20 = ptrtoint ptr %jack_type34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %jack_type34, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_jack_detect_handler.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.77, i32 noundef %21) #8
  br label %do.body36

do.body36:                                        ; preds = %if.then33, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_jack_detect_handler.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_jack_detect_handler, %if.then48)) #8
          to label %do.end53 [label %if.then48], !srcloc !225

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  %slave49 = getelementptr i8, ptr %work, i32 -52
  %22 = ptrtoint ptr %slave49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %slave49, align 4
  %dev50 = getelementptr inbounds %struct.sdw_slave, ptr %23, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_jack_detect_handler.__UNIQUE_ID_ddebug241, ptr noundef %dev50, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.77, i32 noundef %btn_type.0) #8
  br label %do.end53

do.end53:                                         ; preds = %if.then48, %do.body36
  %24 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hs_jack, align 4
  %jack_type55 = getelementptr i8, ptr %work, i32 336
  %26 = ptrtoint ptr %jack_type55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %jack_type55, align 4
  %or = or i32 %27, %btn_type.0
  call void @snd_soc_jack_report(ptr noundef %25, i32 noundef %or, i32 noundef 30723) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %btn_type.0)
  %tobool56.not = icmp eq i32 %btn_type.0, 0
  br i1 %tobool56.not, label %do.end53.cleanup_crit_edge, label %if.then57

do.end53.cleanup_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then57:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hs_jack, align 4
  %30 = ptrtoint ptr %jack_type55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %jack_type55, align 4
  call void @snd_soc_jack_report(ptr noundef %29, i32 noundef %31, i32 noundef 30723) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %32 = load ptr, ptr @system_power_efficient_wq, align 4
  %jack_btn_check_work = getelementptr i8, ptr %work, i32 100
  %call.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %jack_btn_check_work, i32 noundef 20) #8
  br label %cleanup

io_error:                                         ; preds = %if.end3
  %call63 = call i32 @___ratelimit(ptr noundef nonnull @rt711_jack_detect_handler._rs, ptr noundef nonnull @.str.77) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %io_error.cleanup_crit_edge, label %do.end68

io_error.cleanup_crit_edge:                       ; preds = %io_error
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end68:                                         ; preds = %io_error
  call void @__sanitizer_cov_trace_pc() #10
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.77, i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %io_error.cleanup_crit_edge, %if.then57, %do.end53.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jack_status) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt711_btn_check_handler(ptr noundef %work) #0 align 64 {
entry:
  %jack_status = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jack_status) #8
  %0 = ptrtoint ptr %jack_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %jack_status, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 47393, ptr %reg, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 47393, ptr noundef nonnull %jack_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.io_error_crit_edge, label %if.end

entry.io_error_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %io_error

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %jack_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %jack_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  %jack_type6 = getelementptr i8, ptr %work, i32 236
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %6 = ptrtoint ptr %jack_type6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %jack_type6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp2 = icmp eq i32 %7, 3
  br i1 %cmp2, label %if.then3, label %if.then1.if.end7_crit_edge

if.then1.if.end7_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = call fastcc i32 @rt711_button_detect(ptr noundef %add.ptr)
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %jack_type6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %jack_type6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3, %if.then1.if.end7_crit_edge
  %btn_type.0 = phi i32 [ %call4, %if.then3 ], [ 0, %if.then1.if.end7_crit_edge ], [ 0, %if.else ]
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %reg, align 4
  %call.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 7675974, ptr noundef nonnull %reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  br i1 %cmp.i, label %rt711_index_read.exit.thread, label %if.end12

rt711_index_read.exit.thread:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7675974, i32 noundef %13, i32 noundef %call.i) #11
  br label %io_error

if.end12:                                         ; preds = %if.end7
  %and13 = and i32 %13, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %and13)
  %cmp14 = icmp eq i32 %and13, 240
  %spec.select = select i1 %cmp14, i32 0, i32 %btn_type.0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_btn_check_handler.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_btn_check_handler, %if.then22)) #8
          to label %do.end [label %if.then22], !srcloc !225

if.then22:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %slave = getelementptr i8, ptr %work, i32 -152
  %14 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slave, align 4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %15, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_btn_check_handler.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.90, i32 noundef %spec.select) #8
  br label %do.end

do.end:                                           ; preds = %if.then22, %if.end12
  %hs_jack = getelementptr i8, ptr %work, i32 -104
  %16 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hs_jack, align 4
  %jack_type24 = getelementptr i8, ptr %work, i32 236
  %18 = ptrtoint ptr %jack_type24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %jack_type24, align 4
  %or = or i32 %19, %spec.select
  call void @snd_soc_jack_report(ptr noundef %17, i32 noundef %or, i32 noundef 30723) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool25.not = icmp eq i32 %spec.select, 0
  br i1 %tobool25.not, label %do.end.cleanup_crit_edge, label %if.then26

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hs_jack, align 4
  %22 = ptrtoint ptr %jack_type24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %jack_type24, align 4
  call void @snd_soc_jack_report(ptr noundef %21, i32 noundef %23, i32 noundef 30723) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %24 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i60 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %work, i32 noundef 20) #8
  br label %cleanup

io_error:                                         ; preds = %rt711_index_read.exit.thread, %entry.io_error_crit_edge
  %ret.0 = phi i32 [ %call, %entry.io_error_crit_edge ], [ %call.i, %rt711_index_read.exit.thread ]
  %call32 = call i32 @___ratelimit(ptr noundef nonnull @rt711_btn_check_handler._rs, ptr noundef nonnull @.str.90) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %io_error.cleanup_crit_edge, label %do.end37

io_error.cleanup_crit_edge:                       ; preds = %io_error
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end37:                                         ; preds = %io_error
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.90, i32 noundef %ret.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %io_error.cleanup_crit_edge, %if.then26, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jack_status) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt711_calibration_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -264
  tail call fastcc void @rt711_calibration(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt711_jack_init(ptr noundef %rt711) unnamed_addr #0 align 64 {
entry:
  %orig.i189 = alloca i32, align 4
  %orig.i176 = alloca i32, align 4
  %orig.i163 = alloca i32, align 4
  %orig.i151 = alloca i32, align 4
  %orig.i138 = alloca i32, align 4
  %orig.i125 = alloca i32, align 4
  %orig.i112 = alloca i32, align 4
  %orig.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.rt711_priv, ptr %rt711, i32 0, i32 2
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %calibrate_mutex = getelementptr inbounds %struct.rt711_priv, ptr %rt711, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %calibrate_mutex, i32 noundef 0) #8
  %2 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dapm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rt711, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 13569, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hs_jack = getelementptr inbounds %struct.rt711_priv, ptr %rt711, i32 0, i32 8
  %6 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hs_jack, align 4
  %tobool.not = icmp eq ptr %7, null
  %8 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rt711, align 4
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 14361, i32 noundef 130) #8
  %10 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rt711, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 14369, i32 noundef 129) #8
  %12 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rt711, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 14421, i32 noundef 131) #8
  %14 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rt711, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 7675920, i32 noundef 9248) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then2.rt711_index_write.exit_crit_edge

if.then2.rt711_index_write.exit_crit_edge:        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_write.exit

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 7675920, i32 noundef 9248, i32 noundef %call.i) #11
  br label %rt711_index_write.exit

rt711_index_write.exit:                           ; preds = %do.end.i, %if.then2.rt711_index_write.exit_crit_edge
  %16 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rt711, align 4
  %call.i107 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 7675929, i32 noundef 11793) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %cmp.i108 = icmp slt i32 %call.i107, 0
  br i1 %cmp.i108, label %do.end.i110, label %rt711_index_write.exit.rt711_index_write.exit111_crit_edge

rt711_index_write.exit.rt711_index_write.exit111_crit_edge: ; preds = %rt711_index_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_write.exit111

do.end.i110:                                      ; preds = %rt711_index_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 7675929, i32 noundef 11793, i32 noundef %call.i107) #11
  br label %rt711_index_write.exit111

rt711_index_write.exit111:                        ; preds = %do.end.i110, %rt711_index_write.exit.rt711_index_write.exit111_crit_edge
  %jd_src = getelementptr inbounds %struct.rt711_priv, ptr %rt711, i32 0, i32 14
  %18 = ptrtoint ptr %jd_src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %jd_src, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %19, label %do.end [
    i32 1, label %rt711_index_write.exit111.do.body32_crit_edge
    i32 2, label %sw.bb
    i32 3, label %sw.bb17
    i32 4, label %sw.bb22
  ]

rt711_index_write.exit111.do.body32_crit_edge:    ; preds = %rt711_index_write.exit111
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

sw.bb:                                            ; preds = %rt711_index_write.exit111
  %21 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rt711, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i) #8
  %23 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %orig.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %22, i32 noundef 7675913, ptr noundef nonnull %orig.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %24 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %orig.i, align 4
  br i1 %cmp.i.i, label %rt711_index_read.exit.thread.i, label %if.end.i

rt711_index_read.exit.thread.i:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7675913, i32 noundef %25, i32 noundef %call.i.i) #11
  br label %rt711_index_update_bits.exit

if.end.i:                                         ; preds = %sw.bb
  %or.i = or i32 %25, 8194
  %call.i4.i = call i32 @regmap_write(ptr noundef %22, i32 noundef 7675913, i32 noundef %or.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %cmp.i5.i = icmp slt i32 %call.i4.i, 0
  br i1 %cmp.i5.i, label %do.end.i7.i, label %if.end.i.rt711_index_update_bits.exit_crit_edge

if.end.i.rt711_index_update_bits.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_update_bits.exit

do.end.i7.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 7675913, i32 noundef %or.i, i32 noundef %call.i4.i) #11
  br label %rt711_index_update_bits.exit

rt711_index_update_bits.exit:                     ; preds = %do.end.i7.i, %if.end.i.rt711_index_update_bits.exit_crit_edge, %rt711_index_read.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #8
  %26 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rt711, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i112) #8
  %28 = ptrtoint ptr %orig.i112 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %orig.i112, align 4
  %call.i.i113 = call i32 @regmap_read(ptr noundef %27, i32 noundef 7675921, ptr noundef nonnull %orig.i112) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i113)
  %cmp.i.i114 = icmp slt i32 %call.i.i113, 0
  %29 = ptrtoint ptr %orig.i112 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %orig.i112, align 4
  br i1 %cmp.i.i114, label %rt711_index_read.exit.thread.i116, label %if.end.i121

rt711_index_read.exit.thread.i116:                ; preds = %rt711_index_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7675921, i32 noundef %30, i32 noundef %call.i.i113) #11
  br label %rt711_index_update_bits.exit124

if.end.i121:                                      ; preds = %rt711_index_update_bits.exit
  %or.i118 = or i32 %30, 1024
  %call.i4.i119 = call i32 @regmap_write(ptr noundef %27, i32 noundef 7675921, i32 noundef %or.i118) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i119)
  %cmp.i5.i120 = icmp slt i32 %call.i4.i119, 0
  br i1 %cmp.i5.i120, label %do.end.i7.i123, label %if.end.i121.rt711_index_update_bits.exit124_crit_edge

if.end.i121.rt711_index_update_bits.exit124_crit_edge: ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_update_bits.exit124

do.end.i7.i123:                                   ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i6.i122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 7675921, i32 noundef %or.i118, i32 noundef %call.i4.i119) #11
  br label %rt711_index_update_bits.exit124

rt711_index_update_bits.exit124:                  ; preds = %do.end.i7.i123, %if.end.i121.rt711_index_update_bits.exit124_crit_edge, %rt711_index_read.exit.thread.i116
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i112) #8
  br label %do.body32

sw.bb17:                                          ; preds = %rt711_index_write.exit111
  %31 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rt711, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i125) #8
  %33 = ptrtoint ptr %orig.i125 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %orig.i125, align 4
  %call.i.i126 = call i32 @regmap_read(ptr noundef %32, i32 noundef 7675913, ptr noundef nonnull %orig.i125) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i126)
  %cmp.i.i127 = icmp slt i32 %call.i.i126, 0
  %34 = ptrtoint ptr %orig.i125 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %orig.i125, align 4
  br i1 %cmp.i.i127, label %rt711_index_read.exit.thread.i129, label %if.end.i134

rt711_index_read.exit.thread.i129:                ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7675913, i32 noundef %35, i32 noundef %call.i.i126) #11
  br label %rt711_index_update_bits.exit137

if.end.i134:                                      ; preds = %sw.bb17
  %and.i130 = and i32 %35, -7172
  %or.i131 = or i32 %and.i130, 1026
  %call.i4.i132 = call i32 @regmap_write(ptr noundef %32, i32 noundef 7675913, i32 noundef %or.i131) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i132)
  %cmp.i5.i133 = icmp slt i32 %call.i4.i132, 0
  br i1 %cmp.i5.i133, label %do.end.i7.i136, label %if.end.i134.rt711_index_update_bits.exit137_crit_edge

if.end.i134.rt711_index_update_bits.exit137_crit_edge: ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_update_bits.exit137

do.end.i7.i136:                                   ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i6.i135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 7675913, i32 noundef %or.i131, i32 noundef %call.i4.i132) #11
  br label %rt711_index_update_bits.exit137

rt711_index_update_bits.exit137:                  ; preds = %do.end.i7.i136, %if.end.i134.rt711_index_update_bits.exit137_crit_edge, %rt711_index_read.exit.thread.i129
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i125) #8
  %36 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rt711, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i138) #8
  %38 = ptrtoint ptr %orig.i138 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %orig.i138, align 4
  %call.i.i139 = call i32 @regmap_read(ptr noundef %37, i32 noundef 7675921, ptr noundef nonnull %orig.i138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i139)
  %cmp.i.i140 = icmp slt i32 %call.i.i139, 0
  %39 = ptrtoint ptr %orig.i138 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %orig.i138, align 4
  br i1 %cmp.i.i140, label %rt711_index_read.exit.thread.i142, label %if.end.i147

rt711_index_read.exit.thread.i142:                ; preds = %rt711_index_update_bits.exit137
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7675921, i32 noundef %40, i32 noundef %call.i.i139) #11
  br label %rt711_index_update_bits.exit150

if.end.i147:                                      ; preds = %rt711_index_update_bits.exit137
  %or.i144 = or i32 %40, 1024
  %call.i4.i145 = call i32 @regmap_write(ptr noundef %37, i32 noundef 7675921, i32 noundef %or.i144) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i145)
  %cmp.i5.i146 = icmp slt i32 %call.i4.i145, 0
  br i1 %cmp.i5.i146, label %do.end.i7.i149, label %if.end.i147.rt711_index_update_bits.exit150_crit_edge

if.end.i147.rt711_index_update_bits.exit150_crit_edge: ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_update_bits.exit150

do.end.i7.i149:                                   ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i6.i148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 7675921, i32 noundef %or.i144, i32 noundef %call.i4.i145) #11
  br label %rt711_index_update_bits.exit150

rt711_index_update_bits.exit150:                  ; preds = %do.end.i7.i149, %if.end.i147.rt711_index_update_bits.exit150_crit_edge, %rt711_index_read.exit.thread.i142
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i138) #8
  br label %do.body32

sw.bb22:                                          ; preds = %rt711_index_write.exit111
  %41 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rt711, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i151) #8
  %43 = ptrtoint ptr %orig.i151 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %orig.i151, align 4
  %call.i.i152 = call i32 @regmap_read(ptr noundef %42, i32 noundef 7675912, ptr noundef nonnull %orig.i151) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i152)
  %cmp.i.i153 = icmp slt i32 %call.i.i152, 0
  %44 = ptrtoint ptr %orig.i151 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %orig.i151, align 4
  br i1 %cmp.i.i153, label %rt711_index_read.exit.thread.i155, label %if.end.i159

rt711_index_read.exit.thread.i155:                ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7675912, i32 noundef %45, i32 noundef %call.i.i152) #11
  br label %rt711_index_update_bits.exit162

if.end.i159:                                      ; preds = %sw.bb22
  %and.i156 = and i32 %45, -3
  %call.i4.i157 = call i32 @regmap_write(ptr noundef %42, i32 noundef 7675912, i32 noundef %and.i156) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i157)
  %cmp.i5.i158 = icmp slt i32 %call.i4.i157, 0
  br i1 %cmp.i5.i158, label %do.end.i7.i161, label %if.end.i159.rt711_index_update_bits.exit162_crit_edge

if.end.i159.rt711_index_update_bits.exit162_crit_edge: ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_update_bits.exit162

do.end.i7.i161:                                   ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i6.i160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 7675912, i32 noundef %and.i156, i32 noundef %call.i4.i157) #11
  br label %rt711_index_update_bits.exit162

rt711_index_update_bits.exit162:                  ; preds = %do.end.i7.i161, %if.end.i159.rt711_index_update_bits.exit162_crit_edge, %rt711_index_read.exit.thread.i155
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i151) #8
  %46 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rt711, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i163) #8
  %48 = ptrtoint ptr %orig.i163 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %orig.i163, align 4
  %call.i.i164 = call i32 @regmap_read(ptr noundef %47, i32 noundef 7675913, ptr noundef nonnull %orig.i163) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i164)
  %cmp.i.i165 = icmp slt i32 %call.i.i164, 0
  %49 = ptrtoint ptr %orig.i163 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %orig.i163, align 4
  br i1 %cmp.i.i165, label %rt711_index_read.exit.thread.i167, label %if.end.i172

rt711_index_read.exit.thread.i167:                ; preds = %rt711_index_update_bits.exit162
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7675913, i32 noundef %50, i32 noundef %call.i.i164) #11
  br label %rt711_index_update_bits.exit175

if.end.i172:                                      ; preds = %rt711_index_update_bits.exit162
  %and.i168 = and i32 %50, -3075
  %or.i169 = or i32 %and.i168, 1026
  %call.i4.i170 = call i32 @regmap_write(ptr noundef %47, i32 noundef 7675913, i32 noundef %or.i169) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i170)
  %cmp.i5.i171 = icmp slt i32 %call.i4.i170, 0
  br i1 %cmp.i5.i171, label %do.end.i7.i174, label %if.end.i172.rt711_index_update_bits.exit175_crit_edge

if.end.i172.rt711_index_update_bits.exit175_crit_edge: ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_update_bits.exit175

do.end.i7.i174:                                   ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i6.i173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 7675913, i32 noundef %or.i169, i32 noundef %call.i4.i170) #11
  br label %rt711_index_update_bits.exit175

rt711_index_update_bits.exit175:                  ; preds = %do.end.i7.i174, %if.end.i172.rt711_index_update_bits.exit175_crit_edge, %rt711_index_read.exit.thread.i167
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i163) #8
  %51 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rt711, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i176) #8
  %53 = ptrtoint ptr %orig.i176 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %orig.i176, align 4
  %call.i.i177 = call i32 @regmap_read(ptr noundef %52, i32 noundef 7675915, ptr noundef nonnull %orig.i176) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i177)
  %cmp.i.i178 = icmp slt i32 %call.i.i177, 0
  %54 = ptrtoint ptr %orig.i176 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %orig.i176, align 4
  br i1 %cmp.i.i178, label %rt711_index_read.exit.thread.i180, label %if.end.i185

rt711_index_read.exit.thread.i180:                ; preds = %rt711_index_update_bits.exit175
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7675915, i32 noundef %55, i32 noundef %call.i.i177) #11
  br label %rt711_index_update_bits.exit188

if.end.i185:                                      ; preds = %rt711_index_update_bits.exit175
  %and.i181 = and i32 %55, -12
  %or.i182 = or i32 %and.i181, 10
  %call.i4.i183 = call i32 @regmap_write(ptr noundef %52, i32 noundef 7675915, i32 noundef %or.i182) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i183)
  %cmp.i5.i184 = icmp slt i32 %call.i4.i183, 0
  br i1 %cmp.i5.i184, label %do.end.i7.i187, label %if.end.i185.rt711_index_update_bits.exit188_crit_edge

if.end.i185.rt711_index_update_bits.exit188_crit_edge: ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_update_bits.exit188

do.end.i7.i187:                                   ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i6.i186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 7675915, i32 noundef %or.i182, i32 noundef %call.i4.i183) #11
  br label %rt711_index_update_bits.exit188

rt711_index_update_bits.exit188:                  ; preds = %do.end.i7.i187, %if.end.i185.rt711_index_update_bits.exit188_crit_edge, %rt711_index_read.exit.thread.i180
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i176) #8
  %56 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rt711, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i189) #8
  %58 = ptrtoint ptr %orig.i189 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %orig.i189, align 4
  %call.i.i190 = call i32 @regmap_read(ptr noundef %57, i32 noundef 7675921, ptr noundef nonnull %orig.i189) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i190)
  %cmp.i.i191 = icmp slt i32 %call.i.i190, 0
  %59 = ptrtoint ptr %orig.i189 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %orig.i189, align 4
  br i1 %cmp.i.i191, label %rt711_index_read.exit.thread.i193, label %if.end.i198

rt711_index_read.exit.thread.i193:                ; preds = %rt711_index_update_bits.exit188
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7675921, i32 noundef %60, i32 noundef %call.i.i190) #11
  br label %rt711_index_update_bits.exit201

if.end.i198:                                      ; preds = %rt711_index_update_bits.exit188
  %or.i195 = or i32 %60, 1024
  %call.i4.i196 = call i32 @regmap_write(ptr noundef %57, i32 noundef 7675921, i32 noundef %or.i195) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i196)
  %cmp.i5.i197 = icmp slt i32 %call.i4.i196, 0
  br i1 %cmp.i5.i197, label %do.end.i7.i200, label %if.end.i198.rt711_index_update_bits.exit201_crit_edge

if.end.i198.rt711_index_update_bits.exit201_crit_edge: ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #10
  br label %rt711_index_update_bits.exit201

do.end.i7.i200:                                   ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i6.i199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 7675921, i32 noundef %or.i195, i32 noundef %call.i4.i196) #11
  br label %rt711_index_update_bits.exit201

rt711_index_update_bits.exit201:                  ; preds = %do.end.i7.i200, %if.end.i198.rt711_index_update_bits.exit201_crit_edge, %rt711_index_read.exit.thread.i193
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i189) #8
  br label %do.body32

do.end:                                           ; preds = %rt711_index_write.exit111
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %component, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.92) #11
  br label %do.body32

do.body32:                                        ; preds = %do.end, %rt711_index_update_bits.exit201, %rt711_index_update_bits.exit150, %rt711_index_update_bits.exit124, %rt711_index_write.exit111.do.body32_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_jack_init.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_jack_init, %if.then37)) #8
          to label %do.end41 [label %if.then37], !srcloc !225

if.then37:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %slave = getelementptr inbounds %struct.rt711_priv, ptr %rt711, i32 0, i32 3
  %65 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %slave, align 4
  %dev38 = getelementptr inbounds %struct.sdw_slave, ptr %66, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_jack_init.__UNIQUE_ID_ddebug243, ptr noundef %dev38, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93) #8
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %67 = load ptr, ptr @system_power_efficient_wq, align 4
  %jack_detect_work = getelementptr inbounds %struct.rt711_priv, ptr %rt711, i32 0, i32 9
  %call.i202 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %67, ptr noundef %jack_detect_work, i32 noundef 25) #8
  br label %if.end68

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 14361, i32 noundef 0) #8
  %68 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rt711, align 4
  %call47 = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 14369, i32 noundef 0) #8
  %70 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rt711, align 4
  %call49 = tail call i32 @regmap_write(ptr noundef %71, i32 noundef 14421, i32 noundef 0) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_jack_init.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_jack_init, %if.then62)) #8
          to label %if.end68 [label %if.then62], !srcloc !225

if.then62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %slave63 = getelementptr inbounds %struct.rt711_priv, ptr %rt711, i32 0, i32 3
  %72 = ptrtoint ptr %slave63 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %slave63, align 4
  %dev64 = getelementptr inbounds %struct.sdw_slave, ptr %73, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_jack_init.__UNIQUE_ID_ddebug244, ptr noundef %dev64, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.93) #8
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %if.else, %do.end41
  %74 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dapm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %75)
  %cmp70 = icmp ult i32 %75, 2
  br i1 %cmp70, label %if.then71, label %if.end68.if.end74_crit_edge

if.end68.if.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rt711, align 4
  %call73 = call i32 @regmap_write(ptr noundef %77, i32 noundef 13569, i32 noundef 3) #8
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end68.if.end74_crit_edge
  call void @mutex_unlock(ptr noundef %calibrate_mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_probe(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %slave = getelementptr inbounds %struct.rt711_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave, align 4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %5, i32 0, i32 1
  %jd_src.i = getelementptr inbounds %struct.rt711_priv, ptr %3, i32 0, i32 14
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef %jd_src.i, i32 noundef 1) #8
  %component2 = getelementptr inbounds %struct.rt711_priv, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %component2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %component, ptr %component2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt711_remove(ptr nocapture noundef readonly %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_set_jack_detect(ptr nocapture noundef readonly %component, ptr noundef %hs_jack, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %hs_jack1 = getelementptr inbounds %struct.rt711_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %hs_jack1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hs_jack, ptr %hs_jack1, align 4
  %hw_init = getelementptr inbounds %struct.rt711_priv, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hw_init, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_set_jack_detect.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_set_jack_detect, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !225

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %slave = getelementptr inbounds %struct.rt711_priv, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %slave, align 4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %8, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_set_jack_detect.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60) #8
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rt711_jack_init(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %do.body
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
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
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %calibrate_mutex = getelementptr inbounds %struct.rt711_priv, ptr %3, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %calibrate_mutex, i32 noundef 0) #8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 13569, i32 noundef 3) #8
  tail call void @mutex_unlock(ptr noundef %calibrate_mutex) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_set_amp_gain_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
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
  %shl1.i = or i32 %., 8192
  %18 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shl1.i, ptr %read_ll, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %20, i32 noundef %10, ptr noundef nonnull %read_ll) #8
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_rl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_ll) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_set_amp_gain_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %calibrate_mutex = getelementptr inbounds %struct.rt711_priv, ptr %8, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %calibrate_mutex, i32 noundef 0) #8
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
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %8, align 4
  %call.i = call i32 @regmap_read(ptr noundef %17, i32 noundef %12, ptr noundef nonnull %read_rl) #8
  %shl1.i = or i32 %., 8192
  %18 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shl1.i, ptr %read_ll, align 4
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %8, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %20, i32 noundef %10, ptr noundef nonnull %read_ll) #8
  %invert = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 8
  %21 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %invert, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else3, label %if.then2

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %8, align 4
  %call17 = call i32 @regmap_write(ptr noundef %38, i32 noundef 13569, i32 noundef 0) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14.if.end18_crit_edge
  %39 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load20 = load i8, ptr %invert, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load20)
  %tobool23.not = icmp sgt i8 %bf.load20, -1
  br i1 %tobool23.not, label %if.else32, label %if.then24

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  %i.0150 = phi i32 [ 0, %if.end43 ], [ %i.0150.be, %for.body.backedge ]
  %53 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %shift, align 4
  %55 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %8, align 4
  %or49 = shl i32 256, %54
  %shl51 = or i32 %val_ll.1, %or49
  br i1 %cmp45, label %if.then46, label %if.else58

if.then46:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %or52 = or i32 %shl51, 12288
  %call53 = call i32 @regmap_write(ptr noundef %56, i32 noundef %10, i32 noundef %or52) #8
  %57 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %8, align 4
  %call57 = call i32 @regmap_write(ptr noundef %58, i32 noundef %12, i32 noundef %or52) #8
  br label %if.end73

if.else58:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %or64 = or i32 %shl51, 8192
  %call65 = call i32 @regmap_write(ptr noundef %56, i32 noundef %10, i32 noundef %or64) #8
  %59 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %shift, align 4
  %61 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %8, align 4
  %or68 = shl i32 256, %60
  %shl70 = or i32 %val_lr.1, %or68
  %or71 = or i32 %shl70, 4096
  %call72 = call i32 @regmap_write(ptr noundef %62, i32 noundef %12, i32 noundef %or71) #8
  br label %if.end73

if.end73:                                         ; preds = %if.else58, %if.then46
  %63 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %64)
  %cmp75 = icmp eq i32 %64, 7
  %.145 = select i1 %cmp75, i32 32768, i32 0
  %65 = ptrtoint ptr %read_rl to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %.145, ptr %read_rl, align 4
  %66 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %8, align 4
  %call.i147 = call i32 @regmap_read(ptr noundef %67, i32 noundef %12, ptr noundef nonnull %read_rl) #8
  %shl1.i148 = or i32 %.145, 8192
  %68 = ptrtoint ptr %read_ll to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %shl1.i148, ptr %read_ll, align 4
  %69 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %8, align 4
  %call3.i149 = call i32 @regmap_read(ptr noundef %70, i32 noundef %10, ptr noundef nonnull %read_ll) #8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0150)
  %cmp44 = icmp ult i32 %i.0150, 2
  %or.cond = select i1 %cmp80, i1 %cmp44, i1 false
  br i1 %or.cond, label %land.lhs.true.for.body.backedge_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true.for.body.backedge_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge

for.inc:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0150)
  %cmp44.old = icmp ult i32 %i.0150, 2
  br i1 %cmp44.old, label %for.inc.for.body.backedge_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %land.lhs.true.for.body.backedge_crit_edge
  %i.0150.be = add nuw nsw i32 %i.0150, 1
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %75 = ptrtoint ptr %dapm.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dapm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %cmp84 = icmp ult i32 %76, 2
  br i1 %cmp84, label %if.then85, label %for.end.if.end88_crit_edge

for.end.if.end88_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then85:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %8, align 4
  %call87 = call i32 @regmap_write(ptr noundef %78, i32 noundef 13569, i32 noundef 3) #8
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %for.end.if.end88_crit_edge
  call void @mutex_unlock(ptr noundef %calibrate_mutex) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_rl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_ll) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_dac_surround_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 13827, i32 noundef 16) #8
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 29473, i32 noundef 45056) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 29473, i32 noundef 45184) #8
  tail call void @usleep_range_state(i32 noundef 50000, i32 noundef 55000, i32 noundef 2) #8
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 13827, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_adc_09_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.epilog.sink.split_crit_edge
    i32 4, label %sw.bb3
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %entry.sw.epilog.sink.split_crit_edge
  %.sink7 = phi i32 [ 0, %sw.bb3 ], [ 16, %entry.sw.epilog.sink.split_crit_edge ]
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 13833, i32 noundef %.sink7) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_adc_08_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.epilog.sink.split_crit_edge
    i32 4, label %sw.bb3
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %entry.sw.epilog.sink.split_crit_edge
  %.sink7 = phi i32 [ 0, %sw.bb3 ], [ 16, %entry.sw.epilog.sink.split_crit_edge ]
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 13832, i32 noundef %.sink7) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_mux_get(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val, align 4
  %name = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 4
  %call2 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.44)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.else, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.else:                                          ; preds = %entry
  %call6 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.45)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %entry.if.end10_crit_edge
  %nid.0 = phi i32 [ 12578, %entry.if.end10_crit_edge ], [ 12579, %if.else.if.end10_crit_edge ]
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %call11 = call i32 @regmap_read(ptr noundef %6, i32 noundef %nid.0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %call11) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end ], [ 0, %if.end13 ], [ -22, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_mux_put(ptr noundef %kcontrol, ptr noundef readonly %ucontrol) #0 align 64 {
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
  %name = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 4
  %call4 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.44)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.else, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.else:                                          ; preds = %if.end
  %call9 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.45)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.else.cleanup_crit_edge, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %nid.0 = phi i32 [ 12578, %if.end.if.end14_crit_edge ], [ 12579, %if.else.if.end14_crit_edge ]
  %values.i = getelementptr inbounds %struct.soc_enum, ptr %6, i32 0, i32 6
  %12 = ptrtoint ptr %values.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %values.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end14.snd_soc_enum_item_to_val.exit_crit_edge, label %if.end.i

if.end14.snd_soc_enum_item_to_val.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_soc_enum_item_to_val.exit

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i32, ptr %13, i32 %9
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  br label %snd_soc_enum_item_to_val.exit

snd_soc_enum_item_to_val.exit:                    ; preds = %if.end.i, %if.end14.snd_soc_enum_item_to_val.exit_crit_edge
  %retval.0.i = phi i32 [ %15, %if.end.i ], [ %9, %if.end14.snd_soc_enum_item_to_val.exit_crit_edge ]
  %shift_l = getelementptr inbounds %struct.soc_enum, ptr %6, i32 0, i32 1
  %16 = ptrtoint ptr %shift_l to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shift_l, align 4
  %conv = zext i8 %17 to i32
  %shl = shl i32 %retval.0.i, %conv
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %call17 = call i32 @regmap_read(ptr noundef %19, i32 noundef %nid.0, ptr noundef nonnull %val2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end, label %if.end21

do.end:                                           ; preds = %snd_soc_enum_item_to_val.exit
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.57, i32 noundef %call17) #11
  br label %cleanup

if.end21:                                         ; preds = %snd_soc_enum_item_to_val.exit
  %22 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %23)
  %cmp22 = icmp eq i32 %shl, %23
  %not.cmp22 = xor i1 %cmp22, true
  %. = zext i1 %not.cmp22 to i32
  br i1 %cmp22, label %if.end21.if.end32_crit_edge, label %if.then28

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %call31 = call i32 @regmap_write(ptr noundef %25, i32 noundef %nid.0, i32 noundef %shl) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end21.if.end32_crit_edge
  %26 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value, align 4
  %call34 = call i32 @snd_soc_dapm_mux_update_power(ptr noundef %call1, ptr noundef %kcontrol, i32 noundef %27, ptr noundef %6, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %do.end ], [ %., %if.end32 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_mux_update_power(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_set_sdw_stream(ptr nocapture noundef writeonly %dai, ptr noundef %sdw_stream, i32 noundef %direction) #0 align 64 {
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
define internal void @rt711_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef %dai) #0 align 64 {
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
define internal i32 @rt711_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_pcm_hw_params.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_pcm_hw_params, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %dai to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dai, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_pcm_hw_params.__UNIQUE_ID_ddebug246, ptr noundef %13, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, ptr noundef %15) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %slave = getelementptr inbounds %struct.rt711_priv, ptr %5, i32 0, i32 3
  %19 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %slave, align 4
  %tobool10.not = icmp eq ptr %20, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  br i1 %cmp.i, label %if.end12.if.end24_crit_edge, label %if.else

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.else:                                          ; preds = %if.end12
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %22, label %if.else.cleanup_crit_edge [
    i32 0, label %if.else.if.end24_crit_edge
    i32 1, label %if.then20
  ]

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.else.if.end24_crit_edge, %if.end12.if.end24_crit_edge
  %direction.0 = phi i32 [ 1, %if.then20 ], [ 0, %if.end12.if.end24_crit_edge ], [ 1, %if.else.if.end24_crit_edge ]
  %port.0 = phi i32 [ 2, %if.then20 ], [ 3, %if.end12.if.end24_crit_edge ], [ 4, %if.else.if.end24_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i, align 4
  %26 = ptrtoint ptr %stream_config to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %stream_config, align 4
  %arrayidx.i.i103 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i103, align 4
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %6, align 4
  %arrayidx.i.i104 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx.i.i104 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end24.if.then.i.i_crit_edge

if.end24.if.then.i.i_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %if.end24.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end24.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %31, %if.end24.if.then.i.i_crit_edge ], [ %34, %for.inc.i.i.if.then.i.i_crit_edge ]
  %32 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #8, !range !229
  %add.i.i = or i32 %32, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end24
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.1.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call28 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i) #8
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call28, ptr %7, align 4
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %direction.0, ptr %8, align 4
  %37 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i103, align 4
  %notmask = shl nsw i32 -1, %38
  %sub = xor i32 %notmask, -1
  %39 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub, ptr %11, align 4
  %40 = ptrtoint ptr %port_config to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %port.0, ptr %port_config, align 4
  %41 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %slave, align 4
  %43 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cond.i, align 4
  %call32 = call i32 @sdw_stream_add_slave(ptr noundef %42, ptr noundef nonnull %stream_config, ptr noundef nonnull %port_config, i32 noundef 1, ptr noundef %44) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end39, label %do.end37

do.end37:                                         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev38 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %45 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev38, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.66) #11
  br label %cleanup

if.end39:                                         ; preds = %params_format.exit
  %47 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %48)
  %cmp41 = icmp ult i32 %48, 17
  br i1 %cmp41, label %if.then42, label %do.end48

if.then42:                                        ; preds = %if.end39
  %sub44 = add nsw i32 %48, -1
  %49 = ptrtoint ptr %arrayidx.i.i104 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.then42.if.then.i.i.i_crit_edge

if.then42.if.then.i.i.i_crit_edge:                ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.then42.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.then42.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %50, %if.then42.if.then.i.i.i_crit_edge ], [ %53, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %51 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !229
  %add.i.i.i = or i32 %51, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.then42
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.1.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #8
  %54 = add i32 %call1.i, -8
  %55 = call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 30)
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %55, label %params_width.exit.cleanup_crit_edge [
    i32 0, label %params_width.exit.sw.epilog_crit_edge
    i32 2, label %sw.bb
    i32 3, label %sw.bb54
    i32 4, label %sw.bb56
    i32 6, label %sw.bb58
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end48:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.68, i32 noundef %48) #11
  br label %cleanup

sw.bb:                                            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or53 = or i32 %sub44, 16
  br label %sw.epilog

sw.bb54:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or55 = or i32 %sub44, 32
  br label %sw.epilog

sw.bb56:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or57 = or i32 %sub44, 48
  br label %sw.epilog

sw.bb58:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or59 = or i32 %sub44, 64
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb58, %sw.bb56, %sw.bb54, %sw.bb, %params_width.exit.sw.epilog_crit_edge
  %val.0 = phi i32 [ %or59, %sw.bb58 ], [ %or57, %sw.bb56 ], [ %or55, %sw.bb54 ], [ %or53, %sw.bb ], [ %sub44, %params_width.exit.sw.epilog_crit_edge ]
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %5, align 4
  %call60 = call i32 @regmap_write(ptr noundef %60, i32 noundef 29187, i32 noundef %val.0) #8
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %5, align 4
  %call62 = call i32 @regmap_write(ptr noundef %62, i32 noundef 29193, i32 noundef %val.0) #8
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %5, align 4
  %call64 = call i32 @regmap_write(ptr noundef %64, i32 noundef 29192, i32 noundef %val.0) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end48, %params_width.exit.cleanup_crit_edge, %do.end37, %if.else.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %do.end37 ], [ 0, %sw.epilog ], [ -22, %do.end48 ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %params_width.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %port_config) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stream_config) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_pcm_hw_free(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %slave = getelementptr inbounds %struct.rt711_priv, ptr %5, i32 0, i32 3
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt711_headset_detect(ptr nocapture noundef %rt711) unnamed_addr #0 align 64 {
entry:
  %buf = alloca i32, align 4
  %jack_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jack_status) #8
  %0 = ptrtoint ptr %jack_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %jack_status, align 4
  %1 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rt711, align 4
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buf, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 7675974, ptr noundef nonnull %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %rt711_index_read.exit.thread, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

rt711_index_read.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf, align 4
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7675974, i32 noundef %5, i32 noundef %call.i) #11
  br label %io_error

while.cond:                                       ; preds = %if.end12.while.cond_crit_edge, %entry.while.cond_crit_edge
  %loop.0 = phi i32 [ %inc, %if.end12.while.cond_crit_edge ], [ 0, %entry.while.cond_crit_edge ]
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
  br i1 %cmp2, label %while.body, label %if.end19

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %loop.0, 1
  call void @usleep_range_state(i32 noundef 9000, i32 noundef 10000, i32 noundef 2) #8
  %8 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rt711, align 4
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %buf, align 4
  %call.i68 = call i32 @regmap_read(ptr noundef %9, i32 noundef 7675974, ptr noundef nonnull %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %cmp.i69 = icmp slt i32 %call.i68, 0
  br i1 %cmp.i69, label %rt711_index_read.exit72.thread, label %if.end7

rt711_index_read.exit72.thread:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buf, align 4
  %call2.i70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7675974, i32 noundef %12, i32 noundef %call.i68) #11
  br label %io_error

if.end7:                                          ; preds = %while.body
  %13 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rt711, align 4
  %call9 = call i32 @regmap_read(ptr noundef %14, i32 noundef 47393, ptr noundef nonnull %jack_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end7.io_error_crit_edge, label %if.end12

if.end7.io_error_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %io_error

if.end12:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %jack_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %jack_status, align 4
  %cmp14 = icmp sgt i32 %16, -1
  br i1 %cmp14, label %remove_error, label %if.end12.while.cond_crit_edge

if.end12.while.cond_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.end19:                                         ; preds = %land.rhs
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buf, align 4
  %and20 = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool.not = icmp eq i32 %and20, 0
  br i1 %tobool.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %jack_type = getelementptr inbounds %struct.rt711_priv, ptr %rt711, i32 0, i32 13
  %19 = ptrtoint ptr %jack_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %jack_type, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end19
  %20 = and i32 %18, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %if.else.cleanup_crit_edge, label %if.then26

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %jack_type27 = getelementptr inbounds %struct.rt711_priv, ptr %rt711, i32 0, i32 13
  %22 = ptrtoint ptr %jack_type27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %jack_type27, align 4
  br label %cleanup

to_error:                                         ; preds = %while.cond
  %call30 = call i32 @___ratelimit(ptr noundef nonnull @rt711_headset_detect._rs, ptr noundef nonnull @__func__.rt711_headset_detect) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %to_error.cleanup_crit_edge, label %do.end

to_error.cleanup_crit_edge:                       ; preds = %to_error
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %to_error
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @__func__.rt711_headset_detect) #11
  br label %cleanup

io_error:                                         ; preds = %if.end7.io_error_crit_edge, %rt711_index_read.exit72.thread, %rt711_index_read.exit.thread
  %ret.0 = phi i32 [ %call.i, %rt711_index_read.exit.thread ], [ %call.i68, %rt711_index_read.exit72.thread ], [ %call9, %if.end7.io_error_crit_edge ]
  %call35 = call i32 @___ratelimit(ptr noundef nonnull @rt711_headset_detect._rs.83, ptr noundef nonnull @__func__.rt711_headset_detect) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %io_error.cleanup_crit_edge, label %do.end40

io_error.cleanup_crit_edge:                       ; preds = %io_error
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end40:                                         ; preds = %io_error
  call void @__sanitizer_cov_trace_pc() #10
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__.rt711_headset_detect, i32 noundef %ret.0) #11
  br label %cleanup

remove_error:                                     ; preds = %if.end12
  %call44 = call i32 @___ratelimit(ptr noundef nonnull @rt711_headset_detect._rs.86, ptr noundef nonnull @__func__.rt711_headset_detect) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %remove_error.cleanup_crit_edge, label %do.end49

remove_error.cleanup_crit_edge:                   ; preds = %remove_error
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end49:                                         ; preds = %remove_error
  call void @__sanitizer_cov_trace_pc() #10
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.rt711_headset_detect) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %remove_error.cleanup_crit_edge, %do.end40, %io_error.cleanup_crit_edge, %do.end, %to_error.cleanup_crit_edge, %if.then26, %if.else.cleanup_crit_edge, %if.then21
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %if.then21 ], [ -110, %do.end ], [ -110, %to_error.cleanup_crit_edge ], [ %ret.0, %do.end40 ], [ %ret.0, %io_error.cleanup_crit_edge ], [ -19, %do.end49 ], [ -19, %remove_error.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jack_status) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt711_button_detect(ptr nocapture noundef readonly %rt711) unnamed_addr #0 align 64 {
entry:
  %val80 = alloca i32, align 4
  %val81 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val80) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val81) #8
  %0 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rt711, align 4
  %2 = ptrtoint ptr %val80 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val80, align 4
  %call.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 7676032, ptr noundef nonnull %val80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %rt711_index_read.exit.thread, label %if.end

rt711_index_read.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %val80 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val80, align 4
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7676032, i32 noundef %4, i32 noundef %call.i) #11
  br label %read_error

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rt711, align 4
  %7 = ptrtoint ptr %val81 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %val81, align 4
  %call.i23 = call i32 @regmap_read(ptr noundef %6, i32 noundef 7676033, ptr noundef nonnull %val81) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %cmp.i24 = icmp slt i32 %call.i23, 0
  br i1 %cmp.i24, label %rt711_index_read.exit27.thread, label %if.end5

rt711_index_read.exit27.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %val81 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val81, align 4
  %call2.i25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef 7676033, i32 noundef %9, i32 noundef %call.i23) #11
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
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %and, label %if.end5.sw.epilog_crit_edge [
    i32 512, label %if.end5.sw.bb_crit_edge
    i32 256, label %if.end5.sw.bb_crit_edge28
    i32 128, label %if.end5.sw.bb_crit_edge29
    i32 1, label %sw.bb7
  ]

if.end5.sw.bb_crit_edge29:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end5.sw.bb_crit_edge28:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end5.sw.bb_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end5.sw.bb_crit_edge, %if.end5.sw.bb_crit_edge28, %if.end5.sw.bb_crit_edge29
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb, %if.end5.sw.epilog_crit_edge
  %btn_type.0 = phi i32 [ 0, %if.end5.sw.epilog_crit_edge ], [ 2048, %sw.bb7 ], [ 16384, %sw.bb ]
  %15 = trunc i32 %13 to i16
  %trunc = and i16 %15, -256
  %16 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.106)
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13

sw.epilog.sw.bb13_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13

sw.epilog.sw.bb11_crit_edge33:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

sw.epilog.sw.bb11_crit_edge32:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

sw.epilog.sw.bb11_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11

sw.epilog.sw.bb9_crit_edge31:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

sw.epilog.sw.bb9_crit_edge30:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

sw.epilog.sw.bb9_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

sw.epilog.read_error_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
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

read_error:                                       ; preds = %sw.bb13, %sw.bb11, %sw.bb9, %sw.epilog.read_error_crit_edge, %rt711_index_read.exit27.thread, %rt711_index_read.exit.thread
  %btn_type.1 = phi i32 [ %btn_type.0, %sw.epilog.read_error_crit_edge ], [ %or14, %sw.bb13 ], [ %or12, %sw.bb11 ], [ %or10, %sw.bb9 ], [ 0, %rt711_index_read.exit.thread ], [ 0, %rt711_index_read.exit27.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val81) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val80) #8
  ret i32 %btn_type.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !28, !29, !31, !32, !33, !35, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !93, !94, !96, !97, !99, !101, !103, !104, !105, !106, !107, !108, !110, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !132, !134, !136, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !170, !171, !172, !174, !175, !177, !178, !179, !180, !181, !183, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !209, !210, !212, !213, !215}
!llvm.module.flags = !{!216, !217, !218, !219, !220, !221, !222, !223}
!llvm.ident = !{!224}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt711.c", i32 1171, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rt711_clock_config.__UNIQUE_ID_ddebug247, !1, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!6 = !{ptr @rt711_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/rt711.c", i32 1199, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/rt711.c", i32 1216, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rt711_init.__UNIQUE_ID_ddebug248, !10, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!13 = !{ptr @rt711_io_init.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../sound/soc/codecs/rt711.c", i32 1309, i32 3}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rt711_io_init.__key.8, !14, !"__key", i1 false, i1 false}
!17 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rt711_io_init.__key.10, !19, !"__key", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/rt711.c", i32 1311, i32 3}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rt711_io_init.__key.12, !19, !"__key", i1 false, i1 false}
!22 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rt711_io_init.__key.14, !24, !"__key", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/rt711.c", i32 1313, i32 3}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rt711_io_init.__key.16, !27, !"__key", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/rt711.c", i32 1314, i32 3}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/rt711.c", i32 1337, i32 2}
!31 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rt711_io_init.__UNIQUE_ID_ddebug249, !30, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_description250, !34, !"__UNIQUE_ID_description250", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/rt711.c", i32 1341, i32 1}
!35 = !{ptr @__UNIQUE_ID_author251, !36, !"__UNIQUE_ID_author251", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/rt711.c", i32 1342, i32 1}
!37 = !{ptr @__UNIQUE_ID_file252, !38, !"__UNIQUE_ID_file252", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/rt711.c", i32 1343, i32 1}
!39 = !{ptr @__UNIQUE_ID_license253, !38, !"__UNIQUE_ID_license253", i1 false, i1 false}
!40 = !{ptr @soc_codec_dev_rt711, !41, !"soc_codec_dev_rt711", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/rt711.c", i32 935, i32 46}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/rt711.c", i32 627, i32 2}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/rt711.c", i32 631, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/rt711.c", i32 635, i32 2}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/rt711.c", i32 639, i32 2}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/rt711.c", i32 643, i32 2}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/rt711.c", i32 647, i32 2}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/rt711.c", i32 651, i32 2}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/rt711.c", i32 655, i32 2}
!58 = !{ptr @rt711_snd_controls, !59, !"rt711_snd_controls", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/rt711.c", i32 626, i32 38}
!60 = !{ptr @out_vol_tlv, !61, !"out_vol_tlv", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/rt711.c", i32 622, i32 14}
!62 = !{ptr @in_vol_tlv, !63, !"in_vol_tlv", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/rt711.c", i32 623, i32 14}
!64 = !{ptr @mic_vol_tlv, !65, !"mic_vol_tlv", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/rt711.c", i32 624, i32 14}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/rt711.c", i32 834, i32 2}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/rt711.c", i32 835, i32 2}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/rt711.c", i32 836, i32 2}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/rt711.c", i32 837, i32 2}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/rt711.c", i32 838, i32 2}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/rt711.c", i32 839, i32 2}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/rt711.c", i32 841, i32 2}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/rt711.c", i32 844, i32 2}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/rt711.c", i32 847, i32 2}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/rt711.c", i32 850, i32 2}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/rt711.c", i32 852, i32 2}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/rt711.c", i32 855, i32 2}
!90 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/rt711.c", i32 856, i32 2}
!93 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/rt711.c", i32 857, i32 2}
!96 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @rt711_dapm_widgets, !98, !"rt711_dapm_widgets", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/rt711.c", i32 833, i32 41}
!99 = !{ptr @rt711_adc22_mux, !100, !"rt711_adc22_mux", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/rt711.c", i32 754, i32 38}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/rt711.c", i32 681, i32 3}
!103 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @rt711_mux_get._entry, !102, !"_entry", i1 false, i1 false}
!107 = !{ptr @rt711_mux_get._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/rt711.c", i32 720, i32 3}
!110 = !{ptr @rt711_mux_put._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @rt711_mux_put._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @rt711_adc22_enum, !113, !"rt711_adc22_enum", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/rt711.c", i32 748, i32 8}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/rt711.c", i32 745, i32 2}
!116 = !{ptr @adc_mux_text, !117, !"adc_mux_text", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/rt711.c", i32 741, i32 27}
!118 = !{ptr @rt711_adc23_mux, !119, !"rt711_adc23_mux", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/rt711.c", i32 758, i32 38}
!120 = !{ptr @rt711_adc23_enum, !121, !"rt711_adc23_enum", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/rt711.c", i32 751, i32 8}
!122 = !{ptr @rt711_audio_map, !123, !"rt711_audio_map", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/rt711.c", i32 860, i32 40}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/rt711.c", i32 912, i32 32}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/rt711.c", i32 457, i32 3}
!128 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @rt711_set_jack_detect.__UNIQUE_ID_ddebug245, !127, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/rt711.c", i32 1098, i32 11}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/rt711.c", i32 1117, i32 11}
!134 = !{ptr @rt711_dai, !135, !"rt711_dai", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/rt711.c", i32 1096, i32 34}
!136 = !{ptr @rt711_ops, !137, !"rt711_ops", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/rt711.c", i32 1089, i32 37}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/rt711.c", i32 994, i32 2}
!140 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @rt711_pcm_hw_params.__UNIQUE_ID_ddebug246, !139, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/rt711.c", i32 1029, i32 3}
!144 = !{ptr @rt711_pcm_hw_params._entry, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @rt711_pcm_hw_params._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/rt711.c", i32 1037, i32 3}
!148 = !{ptr @rt711_pcm_hw_params._entry.67, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @rt711_pcm_hw_params._entry_ptr.69, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/rt711.c", i32 54, i32 3}
!152 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @rt711_index_read._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @rt711_index_read._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/rt711.c", i32 39, i32 3}
!157 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @rt711_index_write._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @rt711_index_write._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/rt711.c", i32 112, i32 4}
!162 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @rt711_calibration._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @rt711_calibration._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/rt711.c", i32 132, i32 2}
!167 = !{ptr @rt711_calibration.__UNIQUE_ID_ddebug239, !166, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!168 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/rt711.c", i32 271, i32 2}
!170 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @rt711_jack_detect_handler.__UNIQUE_ID_ddebug240, !169, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!172 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/rt711.c", i32 273, i32 2}
!174 = !{ptr @rt711_jack_detect_handler.__UNIQUE_ID_ddebug241, !173, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/rt711.c", i32 295, i32 2}
!177 = !{ptr @rt711_jack_detect_handler._rs, !176, !"_rs", i1 false, i1 false}
!178 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @rt711_jack_detect_handler._entry, !176, !"_entry", i1 false, i1 false}
!180 = !{ptr @rt711_jack_detect_handler._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @rt711_headset_detect._rs, !182, !"_rs", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/rt711.c", i32 225, i32 2}
!183 = !{ptr @__func__.rt711_headset_detect, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.82, !182, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @rt711_headset_detect._entry, !182, !"_entry", i1 false, i1 false}
!186 = !{ptr @rt711_headset_detect._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @rt711_headset_detect._rs.83, !188, !"_rs", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/rt711.c", i32 228, i32 2}
!189 = !{ptr @rt711_headset_detect._entry.84, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @rt711_headset_detect._entry_ptr.85, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @rt711_headset_detect._rs.86, !192, !"_rs", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/rt711.c", i32 231, i32 2}
!193 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @rt711_headset_detect._entry.87, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @rt711_headset_detect._entry_ptr.89, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.90, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/rt711.c", i32 329, i32 2}
!198 = !{ptr @.str.91, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @rt711_btn_check_handler.__UNIQUE_ID_ddebug242, !197, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!200 = !{ptr @rt711_btn_check_handler._rs, !201, !"_rs", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/rt711.c", i32 350, i32 2}
!202 = !{ptr @rt711_btn_check_handler._entry, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @rt711_btn_check_handler._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.92, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/rt711.c", i32 423, i32 4}
!206 = !{ptr @.str.93, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.94, !205, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @rt711_jack_init._entry, !205, !"_entry", i1 false, i1 false}
!209 = !{ptr @rt711_jack_init._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.95, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/rt711.c", i32 427, i32 3}
!212 = !{ptr @rt711_jack_init.__UNIQUE_ID_ddebug243, !211, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!213 = !{ptr @.str.96, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/rt711.c", i32 439, i32 3}
!215 = !{ptr @rt711_jack_init.__UNIQUE_ID_ddebug244, !214, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!216 = !{i32 1, !"wchar_size", i32 2}
!217 = !{i32 1, !"min_enum_size", i32 4}
!218 = !{i32 8, !"branch-target-enforcement", i32 0}
!219 = !{i32 8, !"sign-return-address", i32 0}
!220 = !{i32 8, !"sign-return-address-all", i32 0}
!221 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!222 = !{i32 7, !"uwtable", i32 1}
!223 = !{i32 7, !"frame-pointer", i32 2}
!224 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!225 = !{i64 2148986996, i64 2148987001, i64 2148987014, i64 2148987058, i64 2148987092, i64 2148987113}
!226 = !{i8 0, i8 2}
!227 = !{i64 2148373619, i64 2148373645, i64 2148373674, i64 2148373708, i64 2148373739, i64 2148373762}
!228 = !{!"auto-init"}
!229 = !{i32 0, i32 33}
