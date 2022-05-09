; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt711-sdca.c_pt.bc'
source_filename = "../sound/soc/codecs/rt711-sdca.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
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
%struct.rt711_sdca_priv = type { ptr, ptr, ptr, ptr, i32, %struct.sdw_bus_params, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, %struct.mutex, %struct.mutex, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8 }
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

@rt711_sdca_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&rt711->disable_irq_lock\00", [39 x i8] zeroinitializer }, align 32
@soc_sdca_dev_rt711 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @rt711_sdca_snd_controls, i32 7, ptr @rt711_sdca_dapm_widgets, i32 19, ptr @rt711_sdca_audio_map, i32 19, ptr @rt711_sdca_probe, ptr @rt711_sdca_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt711_sdca_set_jack_detect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rt711_sdca_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.59, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt711_sdca_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.51, i64 68719476804, i32 5312, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.49, i64 68719476804, i32 5312, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.60, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rt711_sdca_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.53, i64 68719476804, i32 5312, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@rt711_sdca_init.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_soc_rt711_sdca\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt711_sdca_init\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/codecs/rt711-sdca.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@rt711_sdca_io_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&rt711->jack_detect_work)->work)\00", [43 x i8] zeroinitializer }, align 32
@rt711_sdca_io_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&rt711->jack_detect_work)->timer\00", [61 x i8] zeroinitializer }, align 32
@rt711_sdca_io_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&(&rt711->jack_btn_check_work)->work)\00", [40 x i8] zeroinitializer }, align 32
@rt711_sdca_io_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&(&rt711->jack_btn_check_work)->timer\00", [58 x i8] zeroinitializer }, align 32
@rt711_sdca_io_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&rt711->calibrate_mutex\00", [40 x i8] zeroinitializer }, align 32
@rt711_sdca_io_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 1558, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s, calibration failed!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rt711_sdca_io_init\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt711_sdca_io_init._entry_ptr = internal global ptr @rt711_sdca_io_init._entry, section ".printk_index", align 4
@rt711_sdca_io_init.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.3, ptr @.str.18, i8 1, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s hw_init complete\0A\00", [43 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description252 = internal constant [58 x i8] c"snd_soc_rt711_sdca.description=ASoC RT711 SDCA SDW driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [61 x i8] c"snd_soc_rt711_sdca.author=Shuming Fan <shumingf@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file254 = internal constant [60 x i8] c"snd_soc_rt711_sdca.file=sound/soc/codecs/snd-soc-rt711-sdca\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [31 x i8] c"snd_soc_rt711_sdca.license=GPL\00", section ".modinfo", align 1
@rt711_sdca_snd_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt711_sdca_set_gain_get, ptr @rt711_sdca_set_gain_put, %union.anon.83 { ptr @out_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @rt711_sdca_fu1e_capture_get, ptr @rt711_sdca_fu1e_capture_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @rt711_sdca_fu0f_capture_get, ptr @rt711_sdca_fu0f_capture_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt711_sdca_set_gain_get, ptr @rt711_sdca_set_gain_put, %union.anon.83 { ptr @in_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt711_sdca_set_gain_get, ptr @rt711_sdca_set_gain_put, %union.anon.83 { ptr @in_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt711_sdca_set_gain_get, ptr @rt711_sdca_set_gain_put, %union.anon.83 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @rt711_sdca_set_gain_get, ptr @rt711_sdca_set_gain_put, %union.anon.83 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }], [80 x i8] zeroinitializer }, align 32
@rt711_sdca_audio_map = internal constant { [19 x %struct.snd_soc_dapm_route], [228 x i8] } { [19 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.43, ptr null, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr null, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr null, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.32, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr @.str.55, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr @.str.36, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr @.str.37, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr @.str.33, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr @.str.55, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr @.str.36, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr @.str.37, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr @.str.33, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.32, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }], [228 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FU05 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@out_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6525, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 87, i32 87, i32 1077936785, i32 1077936786, i32 87, i32 87, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FU1E Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FU0F Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FU1E Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@in_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1725, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 1082134289, i32 1082134290, i32 23, i32 23, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FU0F Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 1077938065, i32 1077938066, i32 23, i32 23, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FU44 Gain Volume\00", [47 x i8] zeroinitializer }, align 32
@mic_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 1000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 1080033881, i32 1080033882, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FU15 Gain Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 1082133209, i32 1082133210, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC2\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC1\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC2\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LINE1\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LINE2\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LINE1 Power\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LINE2 Power\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PDE 28\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PDE 29\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PDE 2A\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FU 05\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FU 0F\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FU 1E\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC 22 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt711_sdca_adc22_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rt711_sdca_mux_get, ptr @rt711_sdca_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt711_adc22_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC 23 Mux\00", [21 x i8] zeroinitializer }, align 32
@rt711_sdca_adc23_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rt711_sdca_mux_get, ptr @rt711_sdca_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rt711_adc23_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DP3RX\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DP3 Playback\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DP2TX\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DP2 Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DP4TX\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DP4 Capture\00", [20 x i8] zeroinitializer }, align 32
@rt711_sdca_dapm_widgets = internal constant { [19 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [836 x i8] } { [19 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.32, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.33, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.34, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.35, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.36, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.37, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt711_sdca_line1_power_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt711_sdca_line2_power_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt711_sdca_pde28_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt711_sdca_pde29_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt711_sdca_pde2a_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt711_sdca_fu05_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt711_sdca_fu0f_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rt711_sdca_fu1e_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt711_sdca_adc22_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rt711_sdca_adc23_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.48, ptr @.str.49, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.50, ptr @.str.51, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.52, ptr @.str.53, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [836 x i8] zeroinitializer }, align 32
@rt711_sdca_line1_power_event.sel_mode = internal global { i32, [28 x i8] } { i32 65535, [28 x i8] zeroinitializer }, align 32
@rt711_adc22_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 4, i32 3, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc_mux_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.33, ptr @.str.36, ptr @.str.37, ptr @.str.55], [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@rt711_adc23_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 4, i32 3, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"realtek,jd-src\00", [17 x i8] zeroinitializer }, align 32
@rt711_sdca_set_jack_detect.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 0, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rt711_sdca_set_jack_detect\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s hw_init not ready yet\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt711-sdca-aif1\00", [16 x i8] zeroinitializer }, align 32
@rt711_sdca_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt711_sdca_set_sdw_stream, ptr null, ptr null, ptr null, ptr @rt711_sdca_shutdown, ptr @rt711_sdca_pcm_hw_params, ptr @rt711_sdca_pcm_hw_free, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt711-sdca-aif2\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rt711_sdca_pcm_hw_params.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 1, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rt711_sdca_pcm_hw_params\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@rt711_sdca_pcm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.3, i32 1294, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to configure port\0A\00", [38 x i8] zeroinitializer }, align 32
@rt711_sdca_pcm_hw_params._entry_ptr = internal global ptr @rt711_sdca_pcm_hw_params._entry, section ".printk_index", align 4
@rt711_sdca_pcm_hw_params._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.61, ptr @.str.3, i32 1300, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported channels %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rt711_sdca_pcm_hw_params._entry_ptr.66 = internal global ptr @rt711_sdca_pcm_hw_params._entry.64, section ".printk_index", align 4
@rt711_sdca_pcm_hw_params._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.61, ptr @.str.3, i32 1320, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Rate %d is not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@rt711_sdca_pcm_hw_params._entry_ptr.69 = internal global ptr @rt711_sdca_pcm_hw_params._entry.67, section ".printk_index", align 4
@rt711_sdca_index_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 55, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to get private value: %06x => %04x ret=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt711_sdca_index_read\00", [42 x i8] zeroinitializer }, align 32
@rt711_sdca_index_read._entry_ptr = internal global ptr @rt711_sdca_index_read._entry, section ".printk_index", align 4
@rt711_sdca_index_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 39, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to set private value: %06x <= %04x ret=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rt711_sdca_index_write\00", [41 x i8] zeroinitializer }, align 32
@rt711_sdca_index_write._entry_ptr = internal global ptr @rt711_sdca_index_write._entry, section ".printk_index", align 4
@rt711_sdca_jack_detect_handler.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.74, ptr @.str.3, ptr @.str.75, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rt711_sdca_jack_detect_handler\00", [33 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"in %s, jack_type=0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@rt711_sdca_jack_detect_handler.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.74, ptr @.str.3, ptr @.str.76, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"in %s, btn_type=0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@rt711_sdca_jack_detect_handler.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.74, ptr @.str.3, ptr @.str.77, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"in %s, scp_sdca_stat1=0x%x, scp_sdca_stat2=0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@rt711_sdca_headset_detect.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str.3, ptr @.str.79, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rt711_sdca_headset_detect\00", [38 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s, detected_mode=0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@rt711_sdca_headset_detect._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.80, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@rt711_sdca_headset_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.78, ptr @.str.3, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013IO error in %s, ret %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rt711_sdca_headset_detect._entry_ptr = internal global ptr @rt711_sdca_headset_detect._entry, section ".printk_index", align 4
@rt711_sdca_btn_check_handler.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.82, ptr @.str.3, ptr @.str.83, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rt711_sdca_btn_check_handler\00", [35 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s, btn_type=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@rt711_sdca_btn_check_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.80, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rt711_sdca_btn_check_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rt711_sdca_btn_check_handler._entry_ptr = internal global ptr @rt711_sdca_btn_check_handler._entry, section ".printk_index", align 4
@rt711_sdca_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 107, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s, RC calibration time-out!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rt711_sdca_calibration\00", [41 x i8] zeroinitializer }, align 32
@rt711_sdca_calibration._entry_ptr = internal global ptr @rt711_sdca_calibration._entry, section ".printk_index", align 4
@rt711_sdca_calibration._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.3, i32 148, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s, calibration time-out!\0A\00", [37 x i8] zeroinitializer }, align 32
@rt711_sdca_calibration._entry_ptr.88 = internal global ptr @rt711_sdca_calibration._entry.86, section ".printk_index", align 4
@rt711_sdca_calibration.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.3, ptr @.str.89, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s calibration complete, ret=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@rt711_sdca_jack_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.3, i32 466, ptr @.str.92, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Wrong JD source\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rt711_sdca_jack_init\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rt711_sdca_jack_init._entry_ptr = internal global ptr @rt711_sdca_jack_init._entry, section ".printk_index", align 4
@rt711_sdca_jack_init.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.91, ptr @.str.3, ptr @.str.93, i8 0, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in %s enable\0A\00", [18 x i8] zeroinitializer }, align 32
@rt711_sdca_jack_init.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.91, ptr @.str.3, ptr @.str.94, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in %s disable\0A\00", [17 x i8] zeroinitializer }, align 32
@switch.table.rt711_sdca_jack_detect_handler = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4096, i32 2048, i32 0, i32 16384, i32 0, i32 0, i32 0, i32 8192], [32 x i8] zeroinitializer }, align 32
@switch.table.rt711_sdca_btn_check_handler = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4096, i32 2048, i32 0, i32 16384, i32 0, i32 0, i32 0, i32 8192], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.95 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.106 = internal global [6 x i64] [i64 4, i64 32, i64 44100, i64 48000, i64 96000, i64 192000]
@__sancov_gen_cov_switch_values.107 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 5]
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1414, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [19 x i8] c"soc_sdca_dev_rt711\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1201, i32 46 }
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"rt711_sdca_dai\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1365, i32 34 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1435, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1548, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1550, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1552, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1558, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1585, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [24 x i8] c"rt711_sdca_snd_controls\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 766, i32 38 }
@___asan_gen_.183 = private unnamed_addr constant [21 x i8] c"rt711_sdca_audio_map\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1151, i32 40 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 767, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [12 x i8] c"out_vol_tlv\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 762, i32 14 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 772, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 774, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 776, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [11 x i8] c"in_vol_tlv\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 763, i32 14 }
@___asan_gen_.207 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 781, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 786, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [12 x i8] c"mic_vol_tlv\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 764, i32 14 }
@___asan_gen_.218 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 791, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1108, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1109, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1110, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1111, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1112, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1113, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1115, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1118, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1122, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1125, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1128, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1132, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1135, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1138, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1141, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [21 x i8] c"rt711_sdca_adc22_mux\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 878, i32 38 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1143, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [21 x i8] c"rt711_sdca_adc23_mux\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 882, i32 38 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1146, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1147, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1148, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [24 x i8] c"rt711_sdca_dapm_widgets\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1107, i32 41 }
@___asan_gen_.298 = private unnamed_addr constant [9 x i8] c"sel_mode\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1040, i32 22 }
@___asan_gen_.301 = private unnamed_addr constant [17 x i8] c"rt711_adc22_enum\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 872, i32 8 }
@___asan_gen_.304 = private unnamed_addr constant [13 x i8] c"adc_mux_text\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 865, i32 27 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 869, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [17 x i8] c"rt711_adc23_enum\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 875, i32 8 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1178, i32 32 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 494, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1367, i32 11 }
@___asan_gen_.325 = private unnamed_addr constant [15 x i8] c"rt711_sdca_ops\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1358, i32 37 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1386, i32 11 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1259, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1294, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1299, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1319, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 53, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 37, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 314, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 316, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 318, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 278, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 284, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 407, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 427, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 107, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 148, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 163, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 466, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 474, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.449 = private constant [33 x i8] c"../sound/soc/codecs/rt711-sdca.c\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 480, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant [44 x i8] c"switch.table.rt711_sdca_jack_detect_handler\00", align 1
@___asan_gen_.452 = private unnamed_addr constant [42 x i8] c"switch.table.rt711_sdca_btn_check_handler\00", align 1
@llvm.compiler.used = appending global [136 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @rt711_sdca_btn_check_handler._entry, ptr @rt711_sdca_btn_check_handler._entry_ptr, ptr @rt711_sdca_calibration._entry, ptr @rt711_sdca_calibration._entry.86, ptr @rt711_sdca_calibration._entry_ptr, ptr @rt711_sdca_calibration._entry_ptr.88, ptr @rt711_sdca_headset_detect._entry, ptr @rt711_sdca_headset_detect._entry_ptr, ptr @rt711_sdca_index_read._entry, ptr @rt711_sdca_index_read._entry_ptr, ptr @rt711_sdca_index_write._entry, ptr @rt711_sdca_index_write._entry_ptr, ptr @rt711_sdca_io_init._entry, ptr @rt711_sdca_io_init._entry_ptr, ptr @rt711_sdca_jack_init._entry, ptr @rt711_sdca_jack_init._entry_ptr, ptr @rt711_sdca_pcm_hw_params._entry, ptr @rt711_sdca_pcm_hw_params._entry.64, ptr @rt711_sdca_pcm_hw_params._entry.67, ptr @rt711_sdca_pcm_hw_params._entry_ptr, ptr @rt711_sdca_pcm_hw_params._entry_ptr.66, ptr @rt711_sdca_pcm_hw_params._entry_ptr.69, ptr @rt711_sdca_init.__key, ptr @.str, ptr @soc_sdca_dev_rt711, ptr @rt711_sdca_dai, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rt711_sdca_io_init.__key, ptr @.str.5, ptr @rt711_sdca_io_init.__key.6, ptr @.str.7, ptr @rt711_sdca_io_init.__key.8, ptr @.str.9, ptr @rt711_sdca_io_init.__key.10, ptr @.str.11, ptr @rt711_sdca_io_init.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @rt711_sdca_snd_controls, ptr @rt711_sdca_audio_map, ptr @.str.19, ptr @out_vol_tlv, ptr @.compoundliteral, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @in_vol_tlv, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @mic_vol_tlv, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @rt711_sdca_adc22_mux, ptr @.str.47, ptr @rt711_sdca_adc23_mux, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @rt711_sdca_dapm_widgets, ptr @rt711_sdca_line1_power_event.sel_mode, ptr @rt711_adc22_enum, ptr @adc_mux_text, ptr @.str.55, ptr @rt711_adc23_enum, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @rt711_sdca_ops, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @rt711_sdca_headset_detect._rs, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @rt711_sdca_btn_check_handler._rs, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @switch.table.rt711_sdca_jack_detect_handler, ptr @switch.table.rt711_sdca_btn_check_handler], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_sdca_dev_rt711 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_io_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_io_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_io_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_io_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_io_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_io_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_snd_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_audio_map to i32), i32 988, i32 1216, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_adc22_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_adc23_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_dapm_widgets to i32), i32 3420, i32 4256, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_line1_power_event.sel_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_adc22_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_mux_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_adc23_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_pcm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_pcm_hw_params._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_pcm_hw_params._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_index_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_index_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_headset_detect._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_headset_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_btn_check_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_btn_check_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_calibration._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_jack_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt711_sdca_jack_detect_handler to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt711_sdca_btn_check_handler to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt711_sdca_init(ptr noundef %dev, ptr noundef %regmap, ptr noundef %mbq_regmap, ptr noundef %slave) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 480, i32 noundef 3520) #9
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
  %slave1 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %slave, ptr %slave1, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %regmap, ptr %call.i, align 4
  %mbq_regmap3 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %mbq_regmap3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mbq_regmap, ptr %mbq_regmap3, align 4
  %disable_irq_lock = getelementptr inbounds %struct.rt711_sdca_priv, ptr %call.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %disable_irq_lock, ptr noundef nonnull @.str, ptr noundef nonnull @rt711_sdca_init.__key) #9
  %hw_init = getelementptr inbounds %struct.rt711_sdca_priv, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %hw_init to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %hw_init, align 4
  %first_hw_init = getelementptr inbounds %struct.rt711_sdca_priv, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %first_hw_init, align 1
  %fu0f_dapm_mute = getelementptr inbounds %struct.rt711_sdca_priv, ptr %call.i, i32 0, i32 19
  %jd_src = getelementptr inbounds %struct.rt711_sdca_priv, ptr %call.i, i32 0, i32 15
  %6 = call ptr @memset(ptr %fu0f_dapm_mute, i32 1, i32 6)
  %7 = ptrtoint ptr %jd_src to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %jd_src, align 4
  %call4 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_sdca_dev_rt711, ptr noundef nonnull @rt711_sdca_dai, i32 noundef 2) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_sdca_init.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_sdca_init, %if.then10)) #9
          to label %cleanup [label %if.then10], !srcloc !223

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev11 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_sdca_init.__UNIQUE_ID_ddebug250, ptr noundef %dev11, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.then10 ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rt711_sdca_io_init(ptr noundef %dev, ptr noundef %slave) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !224
  %disable_irq = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %disable_irq to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %disable_irq, align 4
  %hw_init = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_init, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %first_hw_init = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %first_hw_init, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %9, i1 noundef zeroext false) #9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_bypass(ptr noundef %11, i1 noundef zeroext true) #9
  %mbq_regmap = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mbq_regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %13, i1 noundef zeroext false) #9
  %14 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mbq_regmap, align 4
  tail call void @regcache_cache_bypass(ptr noundef %15, i1 noundef zeroext true) #9
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev5, i32 noundef 3000) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev5, i1 noundef zeroext true) #9
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev5, i32 noundef 0) #9
  %call.i155 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 22
  %16 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store volatile i64 %call.i155, ptr %last_busy.i, align 8
  tail call void @pm_runtime_enable(ptr noundef %dev5) #9
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then2
  %dev12 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %usage_count.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !226
  tail call fastcc void @rt711_sdca_index_update_bits(ptr noundef %1, i32 noundef 32, i32 noundef 26, i32 noundef 16384, i32 noundef 16384) #9
  tail call fastcc void @rt711_sdca_index_update_bits(ptr noundef %1, i32 noundef 97, i32 noundef 8, i32 noundef 1, i32 noundef 1) #9
  %mbq_regmap.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i156 = call i32 @regmap_read(ptr noundef %19, i32 noundef 33554432, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %cmp.i = icmp slt i32 %call.i156, 0
  br i1 %cmp.i, label %do.end.i, label %if.end11.rt711_sdca_index_read.exit_crit_edge

if.end11.rt711_sdca_index_read.exit_crit_edge:    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_index_read.exit

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %component.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %component.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.70, i32 noundef 33554432, i32 noundef %25, i32 noundef %call.i156) #12
  br label %rt711_sdca_index_read.exit

rt711_sdca_index_read.exit:                       ; preds = %do.end.i, %if.end11.rt711_sdca_index_read.exit_crit_edge
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %and = and i32 %27, 15
  %hw_ver = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 18
  %28 = ptrtoint ptr %hw_ver to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and, ptr %hw_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then15, label %if.else16

if.then15:                                        ; preds = %rt711_sdca_index_read.exit
  %29 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i.i = call i32 @regmap_write(ptr noundef %30, i32 noundef 33554541, i32 noundef 3584) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then15.rt711_sdca_index_write.exit.i_crit_edge

if.then15.rt711_sdca_index_write.exit.i_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_index_write.exit.i

do.end.i.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %component.i.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %component.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %component.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.72, i32 noundef 33554541, i32 noundef 3584, i32 noundef %call.i.i) #12
  br label %rt711_sdca_index_write.exit.i

rt711_sdca_index_write.exit.i:                    ; preds = %do.end.i.i, %if.then15.rt711_sdca_index_write.exit.i_crit_edge
  %35 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i21.i = call i32 @regmap_write(ptr noundef %36, i32 noundef 101711882, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i)
  %cmp.i22.i = icmp slt i32 %call.i21.i, 0
  br i1 %cmp.i22.i, label %do.end.i25.i, label %rt711_sdca_index_write.exit.i.rt711_sdca_index_write.exit26.i_crit_edge

rt711_sdca_index_write.exit.i.rt711_sdca_index_write.exit26.i_crit_edge: ; preds = %rt711_sdca_index_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_index_write.exit26.i

do.end.i25.i:                                     ; preds = %rt711_sdca_index_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %component.i23.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %component.i23.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %component.i23.i, align 4
  %dev.i24.i = getelementptr inbounds %struct.snd_soc_component, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %dev.i24.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i24.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.72, i32 noundef 101711882, i32 noundef 8, i32 noundef %call.i21.i) #12
  br label %rt711_sdca_index_write.exit26.i

rt711_sdca_index_write.exit26.i:                  ; preds = %do.end.i25.i, %rt711_sdca_index_write.exit.i.rt711_sdca_index_write.exit26.i_crit_edge
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %42, i32 noundef 12122, i32 noundef 1) #9
  %43 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i28.i = call i32 @regmap_write(ptr noundef %44, i32 noundef 33554615, i32 noundef 34600) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %cmp.i29.i = icmp slt i32 %call.i28.i, 0
  br i1 %cmp.i29.i, label %do.end.i32.i, label %rt711_sdca_index_write.exit26.i.rt711_sdca_index_write.exit33.i_crit_edge

rt711_sdca_index_write.exit26.i.rt711_sdca_index_write.exit33.i_crit_edge: ; preds = %rt711_sdca_index_write.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_index_write.exit33.i

do.end.i32.i:                                     ; preds = %rt711_sdca_index_write.exit26.i
  call void @__sanitizer_cov_trace_pc() #11
  %component.i30.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %component.i30.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %component.i30.i, align 4
  %dev.i31.i = getelementptr inbounds %struct.snd_soc_component, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %dev.i31.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i31.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.72, i32 noundef 33554615, i32 noundef 34600, i32 noundef %call.i28.i) #12
  br label %rt711_sdca_index_write.exit33.i

rt711_sdca_index_write.exit33.i:                  ; preds = %do.end.i32.i, %rt711_sdca_index_write.exit26.i.rt711_sdca_index_write.exit33.i_crit_edge
  %49 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i35.i = call i32 @regmap_write(ptr noundef %50, i32 noundef 33554503, i32 noundef 42098) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %cmp.i36.i = icmp slt i32 %call.i35.i, 0
  br i1 %cmp.i36.i, label %do.end.i39.i, label %rt711_sdca_index_write.exit33.i.rt711_sdca_index_write.exit40.i_crit_edge

rt711_sdca_index_write.exit33.i.rt711_sdca_index_write.exit40.i_crit_edge: ; preds = %rt711_sdca_index_write.exit33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_index_write.exit40.i

do.end.i39.i:                                     ; preds = %rt711_sdca_index_write.exit33.i
  call void @__sanitizer_cov_trace_pc() #11
  %component.i37.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %component.i37.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %component.i37.i, align 4
  %dev.i38.i = getelementptr inbounds %struct.snd_soc_component, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %dev.i38.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i38.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.72, i32 noundef 33554503, i32 noundef 42098, i32 noundef %call.i35.i) #12
  br label %rt711_sdca_index_write.exit40.i

rt711_sdca_index_write.exit40.i:                  ; preds = %do.end.i39.i, %rt711_sdca_index_write.exit33.i.rt711_sdca_index_write.exit40.i_crit_edge
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %call6.i = call i32 @regmap_write(ptr noundef %56, i32 noundef 12112, i32 noundef 2) #9
  call fastcc void @rt711_sdca_index_update_bits(ptr noundef %1, i32 noundef 95, i32 noundef 5, i32 noundef 24576, i32 noundef 24576) #9
  call fastcc void @rt711_sdca_index_update_bits(ptr noundef %1, i32 noundef 32, i32 noundef 71, i32 noundef 12, i32 noundef 12) #9
  %57 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i42.i = call i32 @regmap_write(ptr noundef %58, i32 noundef 101711878, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %cmp.i43.i = icmp slt i32 %call.i42.i, 0
  br i1 %cmp.i43.i, label %do.end.i46.i, label %rt711_sdca_index_write.exit40.i.rt711_sdca_index_write.exit47.i_crit_edge

rt711_sdca_index_write.exit40.i.rt711_sdca_index_write.exit47.i_crit_edge: ; preds = %rt711_sdca_index_write.exit40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_index_write.exit47.i

do.end.i46.i:                                     ; preds = %rt711_sdca_index_write.exit40.i
  call void @__sanitizer_cov_trace_pc() #11
  %component.i44.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 2
  %59 = ptrtoint ptr %component.i44.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %component.i44.i, align 4
  %dev.i45.i = getelementptr inbounds %struct.snd_soc_component, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %dev.i45.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i45.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.72, i32 noundef 101711878, i32 noundef 0, i32 noundef %call.i42.i) #12
  br label %rt711_sdca_index_write.exit47.i

rt711_sdca_index_write.exit47.i:                  ; preds = %do.end.i46.i, %rt711_sdca_index_write.exit40.i.rt711_sdca_index_write.exit47.i_crit_edge
  %63 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i49.i = call i32 @regmap_write(ptr noundef %64, i32 noundef 98566160, i32 noundef 80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i)
  %cmp.i50.i = icmp slt i32 %call.i49.i, 0
  br i1 %cmp.i50.i, label %rt711_sdca_index_write.exit47.i.if.end17.sink.split_crit_edge, label %rt711_sdca_index_write.exit47.i.if.end17_crit_edge

rt711_sdca_index_write.exit47.i.if.end17_crit_edge: ; preds = %rt711_sdca_index_write.exit47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

rt711_sdca_index_write.exit47.i.if.end17.sink.split_crit_edge: ; preds = %rt711_sdca_index_write.exit47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.sink.split

if.else16:                                        ; preds = %rt711_sdca_index_read.exit
  call fastcc void @rt711_sdca_index_update_bits(ptr noundef %1, i32 noundef 97, i32 noundef 3, i32 noundef 768, i32 noundef 0) #9
  %65 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i.i158 = call i32 @regmap_write(ptr noundef %66, i32 noundef 33554503, i32 noundef 42046) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i158)
  %cmp.i.i159 = icmp slt i32 %call.i.i158, 0
  br i1 %cmp.i.i159, label %do.end.i.i162, label %if.else16.rt711_sdca_index_write.exit.i164_crit_edge

if.else16.rt711_sdca_index_write.exit.i164_crit_edge: ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_index_write.exit.i164

do.end.i.i162:                                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  %component.i.i160 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 2
  %67 = ptrtoint ptr %component.i.i160 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %component.i.i160, align 4
  %dev.i.i161 = getelementptr inbounds %struct.snd_soc_component, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %dev.i.i161 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i.i161, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.72, i32 noundef 33554503, i32 noundef 42046, i32 noundef %call.i.i158) #12
  br label %rt711_sdca_index_write.exit.i164

rt711_sdca_index_write.exit.i164:                 ; preds = %do.end.i.i162, %if.else16.rt711_sdca_index_write.exit.i164_crit_edge
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %call2.i163 = call i32 @regmap_write(ptr noundef %72, i32 noundef 12122, i32 noundef 5) #9
  %73 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i14.i = call i32 @regmap_write(ptr noundef %74, i32 noundef 33554538, i32 noundef 1280) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %cmp.i15.i = icmp slt i32 %call.i14.i, 0
  br i1 %cmp.i15.i, label %do.end.i18.i, label %rt711_sdca_index_write.exit.i164.rt711_sdca_index_write.exit19.i_crit_edge

rt711_sdca_index_write.exit.i164.rt711_sdca_index_write.exit19.i_crit_edge: ; preds = %rt711_sdca_index_write.exit.i164
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_index_write.exit19.i

do.end.i18.i:                                     ; preds = %rt711_sdca_index_write.exit.i164
  call void @__sanitizer_cov_trace_pc() #11
  %component.i16.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 2
  %75 = ptrtoint ptr %component.i16.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %component.i16.i, align 4
  %dev.i17.i = getelementptr inbounds %struct.snd_soc_component, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %dev.i17.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i17.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.72, i32 noundef 33554538, i32 noundef 1280, i32 noundef %call.i14.i) #12
  br label %rt711_sdca_index_write.exit19.i

rt711_sdca_index_write.exit19.i:                  ; preds = %do.end.i18.i, %rt711_sdca_index_write.exit.i164.rt711_sdca_index_write.exit19.i_crit_edge
  %79 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i21.i165 = call i32 @regmap_write(ptr noundef %80, i32 noundef 33554438, i32 noundef 24947) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i165)
  %cmp.i22.i166 = icmp slt i32 %call.i21.i165, 0
  br i1 %cmp.i22.i166, label %do.end.i25.i169, label %rt711_sdca_index_write.exit19.i.rt711_sdca_index_write.exit26.i172_crit_edge

rt711_sdca_index_write.exit19.i.rt711_sdca_index_write.exit26.i172_crit_edge: ; preds = %rt711_sdca_index_write.exit19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_index_write.exit26.i172

do.end.i25.i169:                                  ; preds = %rt711_sdca_index_write.exit19.i
  call void @__sanitizer_cov_trace_pc() #11
  %component.i23.i167 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 2
  %81 = ptrtoint ptr %component.i23.i167 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %component.i23.i167, align 4
  %dev.i24.i168 = getelementptr inbounds %struct.snd_soc_component, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %dev.i24.i168 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i24.i168, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.72, i32 noundef 33554438, i32 noundef 24947, i32 noundef %call.i21.i165) #12
  br label %rt711_sdca_index_write.exit26.i172

rt711_sdca_index_write.exit26.i172:               ; preds = %do.end.i25.i169, %rt711_sdca_index_write.exit19.i.rt711_sdca_index_write.exit26.i172_crit_edge
  %85 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i28.i170 = call i32 @regmap_write(ptr noundef %86, i32 noundef 101711878, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i170)
  %cmp.i29.i171 = icmp slt i32 %call.i28.i170, 0
  br i1 %cmp.i29.i171, label %do.end.i32.i175, label %rt711_sdca_index_write.exit26.i172.rt711_sdca_index_write.exit33.i178_crit_edge

rt711_sdca_index_write.exit26.i172.rt711_sdca_index_write.exit33.i178_crit_edge: ; preds = %rt711_sdca_index_write.exit26.i172
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_index_write.exit33.i178

do.end.i32.i175:                                  ; preds = %rt711_sdca_index_write.exit26.i172
  call void @__sanitizer_cov_trace_pc() #11
  %component.i30.i173 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 2
  %87 = ptrtoint ptr %component.i30.i173 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %component.i30.i173, align 4
  %dev.i31.i174 = getelementptr inbounds %struct.snd_soc_component, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %dev.i31.i174 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i31.i174, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.72, i32 noundef 101711878, i32 noundef 0, i32 noundef %call.i28.i170) #12
  br label %rt711_sdca_index_write.exit33.i178

rt711_sdca_index_write.exit33.i178:               ; preds = %do.end.i32.i175, %rt711_sdca_index_write.exit26.i172.rt711_sdca_index_write.exit33.i178_crit_edge
  %91 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i35.i176 = call i32 @regmap_write(ptr noundef %92, i32 noundef 98566160, i32 noundef 80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i176)
  %cmp.i36.i177 = icmp slt i32 %call.i35.i176, 0
  br i1 %cmp.i36.i177, label %rt711_sdca_index_write.exit33.i178.if.end17.sink.split_crit_edge, label %rt711_sdca_index_write.exit33.i178.if.end17_crit_edge

rt711_sdca_index_write.exit33.i178.if.end17_crit_edge: ; preds = %rt711_sdca_index_write.exit33.i178
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

rt711_sdca_index_write.exit33.i178.if.end17.sink.split_crit_edge: ; preds = %rt711_sdca_index_write.exit33.i178
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %rt711_sdca_index_write.exit33.i178.if.end17.sink.split_crit_edge, %rt711_sdca_index_write.exit47.i.if.end17.sink.split_crit_edge
  %call.i35.i176.sink = phi i32 [ %call.i49.i, %rt711_sdca_index_write.exit47.i.if.end17.sink.split_crit_edge ], [ %call.i35.i176, %rt711_sdca_index_write.exit33.i178.if.end17.sink.split_crit_edge ]
  %component.i37.i179 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 2
  %93 = ptrtoint ptr %component.i37.i179 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %component.i37.i179, align 4
  %dev.i38.i180 = getelementptr inbounds %struct.snd_soc_component, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %dev.i38.i180 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i38.i180, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.72, i32 noundef 98566160, i32 noundef 80, i32 noundef %call.i35.i176.sink) #12
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %rt711_sdca_index_write.exit33.i178.if.end17_crit_edge, %rt711_sdca_index_write.exit47.i.if.end17_crit_edge
  call fastcc void @rt711_sdca_index_update_bits(ptr noundef %1, i32 noundef 32, i32 noundef 176, i32 noundef 6144, i32 noundef 2048)
  call fastcc void @rt711_sdca_index_update_bits(ptr noundef %1, i32 noundef 97, i32 noundef 54, i32 noundef 32, i32 noundef 0)
  %97 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %first_hw_init, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool21.not = icmp eq i8 %98, 0
  br i1 %tobool21.not, label %do.body23, label %if.end17.if.end68_crit_edge

if.end17.if.end68_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

do.body23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %jack_detect_work = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 9
  call void @__init_work(ptr noundef %jack_detect_work, i32 noundef 0) #9
  %99 = ptrtoint ptr %jack_detect_work to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -64, ptr %jack_detect_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 9, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @rt711_sdca_io_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry30 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 9, i32 0, i32 1
  %100 = ptrtoint ptr %entry30 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %entry30, ptr %entry30, align 4
  %prev.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 9, i32 0, i32 1, i32 1
  %101 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %entry30, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 9, i32 0, i32 2
  %102 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @rt711_sdca_jack_detect_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 9, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @rt711_sdca_io_init.__key.6) #9
  %jack_btn_check_work = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 10
  call void @__init_work(ptr noundef %jack_btn_check_work, i32 noundef 0) #9
  %103 = ptrtoint ptr %jack_btn_check_work to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -64, ptr %jack_btn_check_work, align 4
  %lockdep_map49 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 10, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map49, ptr noundef nonnull @.str.9, ptr noundef nonnull @rt711_sdca_io_init.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry52 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 10, i32 0, i32 1
  %104 = ptrtoint ptr %entry52 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %entry52, ptr %entry52, align 4
  %prev.i183 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 10, i32 0, i32 1, i32 1
  %105 = ptrtoint ptr %prev.i183 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %entry52, ptr %prev.i183, align 4
  %func55 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 10, i32 0, i32 2
  %106 = ptrtoint ptr %func55 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @rt711_sdca_btn_check_handler, ptr %func55, align 4
  %timer60 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 10, i32 1
  call void @init_timer_key(ptr noundef %timer60, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.11, ptr noundef nonnull @rt711_sdca_io_init.__key.10) #9
  %calibrate_mutex = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 11
  call void @__mutex_init(ptr noundef %calibrate_mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @rt711_sdca_io_init.__key.12) #9
  br label %if.end68

if.end68:                                         ; preds = %do.body23, %if.end17.if.end68_crit_edge
  %call69 = call fastcc i32 @rt711_sdca_calibration(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %do.end74, label %if.end68.if.end75_crit_edge

if.end68.if.end75_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

do.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #12
  br label %if.end75

if.end75:                                         ; preds = %do.end74, %if.end68.if.end75_crit_edge
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 4
  %call77 = call i32 @regmap_write(ptr noundef %108, i32 noundef 1079509760, i32 noundef 4) #9
  %hs_jack = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 8
  %109 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hs_jack, align 4
  %tobool78.not = icmp eq ptr %110, null
  br i1 %tobool78.not, label %if.end75.if.end80_crit_edge, label %if.then79

if.end75.if.end80_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rt711_sdca_jack_init(ptr noundef %1)
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end75.if.end80_crit_edge
  %111 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %first_hw_init, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool82.not = icmp eq i8 %112, 0
  br i1 %tobool82.not, label %if.else88, label %if.then83

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %1, align 4
  call void @regcache_cache_bypass(ptr noundef %114, i1 noundef zeroext false) #9
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %1, align 4
  call void @regcache_mark_dirty(ptr noundef %116) #9
  %117 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mbq_regmap.i, align 4
  call void @regcache_cache_bypass(ptr noundef %118, i1 noundef zeroext false) #9
  %119 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mbq_regmap.i, align 4
  call void @regcache_mark_dirty(ptr noundef %120) #9
  br label %if.end90

if.else88:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %121 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %first_hw_init, align 1
  br label %if.end90

if.end90:                                         ; preds = %if.else88, %if.then83
  %122 = ptrtoint ptr %hw_init to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %hw_init, align 4
  %call.i184 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i185 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 22
  %123 = ptrtoint ptr %last_busy.i185 to i32
  call void @__asan_store8_noabort(i32 %123)
  store volatile i64 %call.i184, ptr %last_busy.i185, align 8
  %call.i186 = call i32 @__pm_runtime_suspend(ptr noundef %dev12, i32 noundef 13) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_sdca_io_init.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_sdca_io_init, %if.then100)) #9
          to label %cleanup [label %if.then100], !srcloc !223

if.then100:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_sdca_io_init.__UNIQUE_ID_ddebug251, ptr noundef %dev12, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then100, %if.end90, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
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
define internal fastcc void @rt711_sdca_index_update_bits(ptr nocapture noundef readonly %rt711, i32 noundef %nid, i32 noundef %reg, i32 noundef %mask, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #9
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !224
  %mbq_regmap.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 1
  %1 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mbq_regmap.i, align 4
  %shl.i = shl i32 %nid, 20
  %or.i = or i32 %shl.i, %reg
  %call.i1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %or.i, ptr noundef nonnull %tmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp.i = icmp slt i32 %call.i1, 0
  br i1 %cmp.i, label %rt711_sdca_index_read.exit.thread, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  %neg = xor i32 %mask, -1
  br label %do.body

rt711_sdca_index_read.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %component.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 2
  %3 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %component.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tmp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.70, i32 noundef %or.i, i32 noundef %8, i32 noundef %call.i1) #12
  br label %cleanup

do.body:                                          ; preds = %__cmpxchg.exit.do.body_crit_edge, %do.body.preheader
  %9 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %tmp, align 4
  %and = and i32 %10, %neg
  %or = or i32 %and, %val
  %call.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !227
  call void @llvm.prefetch.p0(ptr nonnull %tmp, i32 1, i32 3, i32 1) #9
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body
  %11 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr nonnull %tmp, i32 %10, i32 %or) #9, !srcloc !228
  %asmresult.i = extractvalue { i32, i32 } %11, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %11, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !229
  %cmp23.not = icmp eq i32 %asmresult1.i, %10
  br i1 %cmp23.not, label %do.end24, label %__cmpxchg.exit.do.body_crit_edge

__cmpxchg.exit.do.body_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end24:                                         ; preds = %__cmpxchg.exit
  %12 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tmp, align 4
  %14 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i5 = call i32 @regmap_write(ptr noundef %15, i32 noundef %or.i, i32 noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %cmp.i6 = icmp slt i32 %call.i5, 0
  br i1 %cmp.i6, label %do.end.i9, label %do.end24.cleanup_crit_edge

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i9:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  %component.i7 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 2
  %16 = ptrtoint ptr %component.i7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %component.i7, align 4
  %dev.i8 = getelementptr inbounds %struct.snd_soc_component, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %dev.i8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.72, i32 noundef %or.i, i32 noundef %13, i32 noundef %call.i5) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i9, %do.end24.cleanup_crit_edge, %rt711_sdca_index_read.exit.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt711_sdca_jack_detect_handler(ptr noundef %work) #0 align 64 {
entry:
  %offset.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %owner.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -64
  %hs_jack = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hs_jack, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %component = getelementptr i8, ptr %work, i32 -56
  %2 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %component, align 4
  %card = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %instantiated = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 56
  %6 = ptrtoint ptr %instantiated to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %instantiated, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %scp_sdca_stat1 = getelementptr i8, ptr %work, i32 396
  %7 = ptrtoint ptr %scp_sdca_stat1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scp_sdca_stat1, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.if.end8_crit_edge, label %if.then5

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then5:                                         ; preds = %if.end3
  %call = tail call fastcc i32 @rt711_sdca_headset_detect(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then5.cleanup_crit_edge, label %if.then5.if.end8_crit_edge

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.then5.if.end8_crit_edge, %if.end3.if.end8_crit_edge
  %scp_sdca_stat2 = getelementptr i8, ptr %work, i32 400
  %9 = ptrtoint ptr %scp_sdca_stat2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scp_sdca_stat2, align 4
  %and9 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end13_crit_edge, label %if.then11

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #9
  %11 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %offset.i, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val.i, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %owner.i) #9
  %13 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %owner.i, align 4, !annotation !224
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %call.i = call i32 @regmap_read(ptr noundef %15, i32 noundef 1086849152, ptr noundef nonnull %owner.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then11.rt711_sdca_button_detect.exit_crit_edge, label %if.end.i

if.then11.rt711_sdca_button_detect.exit_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_button_detect.exit

if.end.i:                                         ; preds = %if.then11
  %16 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %owner.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp1.i = icmp eq i32 %17, 1
  br i1 %cmp1.i, label %if.end.i.rt711_sdca_button_detect.exit_crit_edge, label %if.end3.i

if.end.i.rt711_sdca_button_detect.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_button_detect.exit

if.end3.i:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %call5.i = call i32 @regmap_read(ptr noundef %19, i32 noundef 1086849168, ptr noundef nonnull %offset.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end3.i._end_btn_det_.i_crit_edge, label %for.body.preheader.i

if.end3.i._end_btn_det_.i_crit_edge:              ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_end_btn_det_.i

for.body.preheader.i:                             ; preds = %if.end3.i
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  %22 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset.i, align 4
  %add11.i = add i32 %23, 1141047296
  %call12.i = call i32 @regmap_read(ptr noundef %21, i32 noundef %add11.i, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %for.body.preheader.i._end_btn_det_.i_crit_edge, label %if.end15.i

for.body.preheader.i._end_btn_det_.i_crit_edge:   ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_end_btn_det_.i

if.end15.i:                                       ; preds = %for.body.preheader.i
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i, align 4
  %conv.i = trunc i32 %25 to i8
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %28 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i, align 4
  %add11.1.i = add i32 %29, 1141047297
  %call12.1.i = call i32 @regmap_read(ptr noundef %27, i32 noundef %add11.1.i, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1.i)
  %cmp13.1.i = icmp slt i32 %call12.1.i, 0
  br i1 %cmp13.1.i, label %if.end15.i._end_btn_det_.i_crit_edge, label %if.end15.1.i

if.end15.i._end_btn_det_.i_crit_edge:             ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_end_btn_det_.i

if.end15.1.i:                                     ; preds = %if.end15.i
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i, align 4
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 4
  %34 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset.i, align 4
  %add11.2.i = add i32 %35, 1141047298
  %call12.2.i = call i32 @regmap_read(ptr noundef %33, i32 noundef %add11.2.i, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.2.i)
  %cmp13.2.i = icmp slt i32 %call12.2.i, 0
  br i1 %cmp13.2.i, label %if.end15.1.i._end_btn_det_.i_crit_edge, label %if.end15.2.i

if.end15.1.i._end_btn_det_.i_crit_edge:           ; preds = %if.end15.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_end_btn_det_.i

if.end15.2.i:                                     ; preds = %if.end15.1.i
  %36 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.i, align 4
  %conv.2.i = trunc i32 %37 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %conv.i)
  %cmp18.i = icmp eq i8 %conv.i, 17
  br i1 %cmp18.i, label %if.then20.i, label %if.end15.2.i._end_btn_det_.i_crit_edge

if.end15.2.i._end_btn_det_.i_crit_edge:           ; preds = %if.end15.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_end_btn_det_.i

if.then20.i:                                      ; preds = %if.end15.2.i
  %38 = and i32 %31, 240
  %39 = add nsw i32 %38, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %39)
  %40 = icmp ult i32 %39, 128
  br i1 %40, label %switch.lookup, label %if.then20.i.sw.epilog.i_crit_edge

if.then20.i.sw.epilog.i_crit_edge:                ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = lshr exact i32 %39, 4
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.rt711_sdca_jack_detect_handler, i32 0, i32 %41
  %42 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %42)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.then20.i.sw.epilog.i_crit_edge
  %btn_type.0.i = phi i32 [ 0, %if.then20.i.sw.epilog.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %43 = zext i8 %conv.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv.2.i, label %sw.epilog.i._end_btn_det_.i_crit_edge [
    i8 1, label %sw.epilog.i.sw.bb32.i_crit_edge
    i8 16, label %sw.epilog.i.sw.bb32.i_crit_edge104
    i8 2, label %sw.epilog.i.sw.bb34.i_crit_edge
    i8 32, label %sw.epilog.i.sw.bb34.i_crit_edge105
    i8 4, label %sw.epilog.i.sw.bb36.i_crit_edge
    i8 64, label %sw.epilog.i.sw.bb36.i_crit_edge106
    i8 8, label %sw.epilog.i.sw.bb38.i_crit_edge
    i8 -128, label %sw.epilog.i.sw.bb38.i_crit_edge107
  ]

sw.epilog.i.sw.bb38.i_crit_edge107:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb38.i

sw.epilog.i.sw.bb38.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb38.i

sw.epilog.i.sw.bb36.i_crit_edge106:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36.i

sw.epilog.i.sw.bb36.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36.i

sw.epilog.i.sw.bb34.i_crit_edge105:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb34.i

sw.epilog.i.sw.bb34.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb34.i

sw.epilog.i.sw.bb32.i_crit_edge104:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32.i

sw.epilog.i.sw.bb32.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32.i

sw.epilog.i._end_btn_det_.i_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_end_btn_det_.i

sw.bb32.i:                                        ; preds = %sw.epilog.i.sw.bb32.i_crit_edge, %sw.epilog.i.sw.bb32.i_crit_edge104
  %or33.i = or i32 %btn_type.0.i, 4096
  br label %_end_btn_det_.i

sw.bb34.i:                                        ; preds = %sw.epilog.i.sw.bb34.i_crit_edge, %sw.epilog.i.sw.bb34.i_crit_edge105
  %or35.i = or i32 %btn_type.0.i, 2048
  br label %_end_btn_det_.i

sw.bb36.i:                                        ; preds = %sw.epilog.i.sw.bb36.i_crit_edge, %sw.epilog.i.sw.bb36.i_crit_edge106
  %or37.i = or i32 %btn_type.0.i, 16384
  br label %_end_btn_det_.i

sw.bb38.i:                                        ; preds = %sw.epilog.i.sw.bb38.i_crit_edge, %sw.epilog.i.sw.bb38.i_crit_edge107
  %or39.i = or i32 %btn_type.0.i, 8192
  br label %_end_btn_det_.i

_end_btn_det_.i:                                  ; preds = %sw.bb38.i, %sw.bb36.i, %sw.bb34.i, %sw.bb32.i, %sw.epilog.i._end_btn_det_.i_crit_edge, %if.end15.2.i._end_btn_det_.i_crit_edge, %if.end15.1.i._end_btn_det_.i_crit_edge, %if.end15.i._end_btn_det_.i_crit_edge, %for.body.preheader.i._end_btn_det_.i_crit_edge, %if.end3.i._end_btn_det_.i_crit_edge
  %btn_type.1.i = phi i32 [ 0, %if.end3.i._end_btn_det_.i_crit_edge ], [ %btn_type.0.i, %sw.epilog.i._end_btn_det_.i_crit_edge ], [ %or39.i, %sw.bb38.i ], [ %or37.i, %sw.bb36.i ], [ %or35.i, %sw.bb34.i ], [ %or33.i, %sw.bb32.i ], [ 0, %if.end15.2.i._end_btn_det_.i_crit_edge ], [ 0, %if.end15.1.i._end_btn_det_.i_crit_edge ], [ 0, %if.end15.i._end_btn_det_.i_crit_edge ], [ 0, %for.body.preheader.i._end_btn_det_.i_crit_edge ]
  %44 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %owner.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp42.i = icmp eq i32 %45, 0
  br i1 %cmp42.i, label %if.then44.i, label %_end_btn_det_.i.rt711_sdca_button_detect.exit_crit_edge

_end_btn_det_.i.rt711_sdca_button_detect.exit_crit_edge: ; preds = %_end_btn_det_.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_button_detect.exit

if.then44.i:                                      ; preds = %_end_btn_det_.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr, align 4
  %call46.i = call i32 @regmap_write(ptr noundef %47, i32 noundef 1086849160, i32 noundef 1) #9
  br label %rt711_sdca_button_detect.exit

rt711_sdca_button_detect.exit:                    ; preds = %if.then44.i, %_end_btn_det_.i.rt711_sdca_button_detect.exit_crit_edge, %if.end.i.rt711_sdca_button_detect.exit_crit_edge, %if.then11.rt711_sdca_button_detect.exit_crit_edge
  %retval.0.i99 = phi i32 [ 0, %if.then11.rt711_sdca_button_detect.exit_crit_edge ], [ 0, %if.end.i.rt711_sdca_button_detect.exit_crit_edge ], [ %btn_type.1.i, %if.then44.i ], [ %btn_type.1.i, %_end_btn_det_.i.rt711_sdca_button_detect.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %owner.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #9
  br label %if.end13

if.end13:                                         ; preds = %rt711_sdca_button_detect.exit, %if.end8.if.end13_crit_edge
  %btn_type.0 = phi i32 [ %retval.0.i99, %rt711_sdca_button_detect.exit ], [ 0, %if.end8.if.end13_crit_edge ]
  %jack_type = getelementptr i8, ptr %work, i32 388
  %48 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %jack_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp14 = icmp eq i32 %49, 0
  %spec.select = select i1 %cmp14, i32 0, i32 %btn_type.0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_sdca_jack_detect_handler.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_sdca_jack_detect_handler, %if.then22)) #9
          to label %do.body25 [label %if.then22], !srcloc !223

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %slave = getelementptr i8, ptr %work, i32 -52
  %50 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %slave, align 4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %jack_type, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_sdca_jack_detect_handler.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74, i32 noundef %53) #9
  br label %do.body25

do.body25:                                        ; preds = %if.then22, %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_sdca_jack_detect_handler.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_sdca_jack_detect_handler, %if.then37)) #9
          to label %do.body43 [label %if.then37], !srcloc !223

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  %slave38 = getelementptr i8, ptr %work, i32 -52
  %54 = ptrtoint ptr %slave38 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %slave38, align 4
  %dev39 = getelementptr inbounds %struct.sdw_slave, ptr %55, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_sdca_jack_detect_handler.__UNIQUE_ID_ddebug243, ptr noundef %dev39, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.74, i32 noundef %spec.select) #9
  br label %do.body43

do.body43:                                        ; preds = %if.then37, %do.body25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_sdca_jack_detect_handler.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_sdca_jack_detect_handler, %if.then55)) #9
          to label %do.end62 [label %if.then55], !srcloc !223

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  %slave56 = getelementptr i8, ptr %work, i32 -52
  %56 = ptrtoint ptr %slave56 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %slave56, align 4
  %dev57 = getelementptr inbounds %struct.sdw_slave, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %scp_sdca_stat1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %scp_sdca_stat1, align 4
  %60 = ptrtoint ptr %scp_sdca_stat2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %scp_sdca_stat2, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_sdca_jack_detect_handler.__UNIQUE_ID_ddebug244, ptr noundef %dev57, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.74, i32 noundef %59, i32 noundef %61) #9
  br label %do.end62

do.end62:                                         ; preds = %if.then55, %do.body43
  %62 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hs_jack, align 4
  %64 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %jack_type, align 4
  %or = or i32 %65, %spec.select
  call void @snd_soc_jack_report(ptr noundef %63, i32 noundef %or, i32 noundef 30723) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool65.not = icmp eq i32 %spec.select, 0
  br i1 %tobool65.not, label %do.end62.cleanup_crit_edge, label %if.then66

do.end62.cleanup_crit_edge:                       ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then66:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hs_jack, align 4
  %68 = ptrtoint ptr %jack_type to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %jack_type, align 4
  call void @snd_soc_jack_report(ptr noundef %67, i32 noundef %69, i32 noundef 30723) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %70 = load ptr, ptr @system_power_efficient_wq, align 4
  %jack_btn_check_work = getelementptr i8, ptr %work, i32 100
  %call.i100 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %70, ptr noundef %jack_btn_check_work, i32 noundef 20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %do.end62.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt711_sdca_btn_check_handler(ptr noundef %work) #0 align 64 {
entry:
  %det_mode = alloca i32, align 4
  %offset = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %det_mode) #9
  %0 = ptrtoint ptr %det_mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %det_mode, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #9
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %offset, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !224
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 1080034448, ptr noundef nonnull %det_mode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.io_error_crit_edge, label %if.end

entry.io_error_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %io_error

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %det_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %det_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %call3 = call i32 @regmap_read(ptr noundef %8, i32 noundef 1086849168, ptr noundef nonnull %offset) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then1.io_error_crit_edge, label %for.body.preheader

if.then1.io_error_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %io_error

for.body.preheader:                               ; preds = %if.then1
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %add9 = add i32 %12, 1141047296
  %call10 = call i32 @regmap_read(ptr noundef %10, i32 noundef %add9, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %for.body.preheader.io_error_crit_edge, label %if.end13

for.body.preheader.io_error_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %io_error

if.end13:                                         ; preds = %for.body.preheader
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %conv = trunc i32 %14 to i8
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %add9.1 = add i32 %18, 1141047297
  %call10.1 = call i32 @regmap_read(ptr noundef %16, i32 noundef %add9.1, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1)
  %cmp11.1 = icmp slt i32 %call10.1, 0
  br i1 %cmp11.1, label %if.end13.io_error_crit_edge, label %if.end13.1

if.end13.io_error_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %io_error

if.end13.1:                                       ; preds = %if.end13
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 4
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 4
  %add9.2 = add i32 %24, 1141047298
  %call10.2 = call i32 @regmap_read(ptr noundef %22, i32 noundef %add9.2, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.2)
  %cmp11.2 = icmp slt i32 %call10.2, 0
  br i1 %cmp11.2, label %if.end13.1.io_error_crit_edge, label %if.end13.2

if.end13.1.io_error_crit_edge:                    ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %io_error

if.end13.2:                                       ; preds = %if.end13.1
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  %conv.2 = trunc i32 %26 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %conv)
  %cmp16 = icmp eq i8 %conv, 17
  br i1 %cmp16, label %if.then18, label %if.end13.2.do.body_crit_edge

if.end13.2.do.body_crit_edge:                     ; preds = %if.end13.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then18:                                        ; preds = %if.end13.2
  %27 = and i32 %20, 240
  %28 = add nsw i32 %27, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %28)
  %29 = icmp ult i32 %28, 128
  br i1 %29, label %switch.lookup, label %if.then18.sw.epilog_crit_edge

if.then18.sw.epilog_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %30 = lshr exact i32 %28, 4
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.rt711_sdca_btn_check_handler, i32 0, i32 %30
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.then18.sw.epilog_crit_edge
  %btn_type.0 = phi i32 [ 0, %if.then18.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %32 = zext i8 %conv.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %conv.2, label %sw.epilog.do.body_crit_edge [
    i8 1, label %sw.epilog.sw.bb30_crit_edge
    i8 16, label %sw.epilog.sw.bb30_crit_edge101
    i8 2, label %sw.epilog.sw.bb32_crit_edge
    i8 32, label %sw.epilog.sw.bb32_crit_edge102
    i8 4, label %sw.epilog.sw.bb34_crit_edge
    i8 64, label %sw.epilog.sw.bb34_crit_edge103
    i8 8, label %sw.epilog.sw.bb36_crit_edge
    i8 -128, label %sw.epilog.sw.bb36_crit_edge104
  ]

sw.epilog.sw.bb36_crit_edge104:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36

sw.epilog.sw.bb36_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36

sw.epilog.sw.bb34_crit_edge103:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb34

sw.epilog.sw.bb34_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb34

sw.epilog.sw.bb32_crit_edge102:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

sw.epilog.sw.bb32_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

sw.epilog.sw.bb30_crit_edge101:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb30

sw.epilog.sw.bb30_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb30

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb30:                                          ; preds = %sw.epilog.sw.bb30_crit_edge, %sw.epilog.sw.bb30_crit_edge101
  %or31 = or i32 %btn_type.0, 4096
  br label %do.body

sw.bb32:                                          ; preds = %sw.epilog.sw.bb32_crit_edge, %sw.epilog.sw.bb32_crit_edge102
  %or33 = or i32 %btn_type.0, 2048
  br label %do.body

sw.bb34:                                          ; preds = %sw.epilog.sw.bb34_crit_edge, %sw.epilog.sw.bb34_crit_edge103
  %or35 = or i32 %btn_type.0, 16384
  br label %do.body

sw.bb36:                                          ; preds = %sw.epilog.sw.bb36_crit_edge, %sw.epilog.sw.bb36_crit_edge104
  %or37 = or i32 %btn_type.0, 8192
  br label %do.body

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %jack_type = getelementptr i8, ptr %work, i32 288
  %33 = ptrtoint ptr %jack_type to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %jack_type, align 4
  br label %do.body

do.body:                                          ; preds = %if.else, %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb30, %sw.epilog.do.body_crit_edge, %if.end13.2.do.body_crit_edge
  %btn_type.1 = phi i32 [ %btn_type.0, %sw.epilog.do.body_crit_edge ], [ %or37, %sw.bb36 ], [ %or35, %sw.bb34 ], [ %or33, %sw.bb32 ], [ %or31, %sw.bb30 ], [ 0, %if.end13.2.do.body_crit_edge ], [ 0, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_sdca_btn_check_handler.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_sdca_btn_check_handler, %if.then46)) #9
          to label %do.end [label %if.then46], !srcloc !223

if.then46:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %slave = getelementptr i8, ptr %work, i32 -152
  %34 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %slave, align 4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %35, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_sdca_btn_check_handler.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82, i32 noundef %btn_type.1) #9
  br label %do.end

do.end:                                           ; preds = %if.then46, %do.body
  %hs_jack = getelementptr i8, ptr %work, i32 -104
  %36 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hs_jack, align 4
  %jack_type48 = getelementptr i8, ptr %work, i32 288
  %38 = ptrtoint ptr %jack_type48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %jack_type48, align 4
  %or49 = or i32 %39, %btn_type.1
  call void @snd_soc_jack_report(ptr noundef %37, i32 noundef %or49, i32 noundef 30723) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %btn_type.1)
  %tobool50.not = icmp eq i32 %btn_type.1, 0
  br i1 %tobool50.not, label %do.end.cleanup_crit_edge, label %if.then51

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then51:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hs_jack, align 4
  %42 = ptrtoint ptr %jack_type48 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %jack_type48, align 4
  call void @snd_soc_jack_report(ptr noundef %41, i32 noundef %43, i32 noundef 30723) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %44 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %work, i32 noundef 20) #9
  br label %cleanup

io_error:                                         ; preds = %if.end13.1.io_error_crit_edge, %if.end13.io_error_crit_edge, %for.body.preheader.io_error_crit_edge, %if.then1.io_error_crit_edge, %entry.io_error_crit_edge
  %ret.0 = phi i32 [ %call, %entry.io_error_crit_edge ], [ %call3, %if.then1.io_error_crit_edge ], [ %call10, %for.body.preheader.io_error_crit_edge ], [ %call10.1, %if.end13.io_error_crit_edge ], [ %call10.2, %if.end13.1.io_error_crit_edge ]
  %call57 = call i32 @___ratelimit(ptr noundef nonnull @rt711_sdca_btn_check_handler._rs, ptr noundef nonnull @.str.82) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %io_error.cleanup_crit_edge, label %do.end62

io_error.cleanup_crit_edge:                       ; preds = %io_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end62:                                         ; preds = %io_error
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef %ret.0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %io_error.cleanup_crit_edge, %if.then51, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %det_mode) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt711_sdca_calibration(ptr noundef %rt711) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !224
  %1 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rt711, align 4
  %calibrate_mutex = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %calibrate_mutex, i32 noundef 0) #9
  %call = tail call ptr @regmap_get_device(ptr noundef %2) #9
  %3 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rt711, align 4
  %call3 = call i32 @regmap_read(ptr noundef %4, i32 noundef 12812, ptr noundef nonnull %val) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rt711_sdca_index_update_bits(ptr noundef %rt711, i32 noundef 95, i32 noundef 1, i32 noundef 16, i32 noundef 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and5147 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5147)
  %tobool6.not148 = icmp eq i32 %and5147, 0
  br i1 %tobool6.not148, label %if.end.for.body_crit_edge, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

land.rhs:                                         ; preds = %for.inc
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and5 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.rhs.for.body_crit_edge, label %land.rhs.if.end14_crit_edge

land.rhs.if.end14_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %land.rhs.for.body_crit_edge, %if.end.for.body_crit_edge
  %tobool6.not150 = phi i1 [ %tobool6.not, %land.rhs.for.body_crit_edge ], [ %tobool6.not148, %if.end.for.body_crit_edge ]
  %loop_rc.0122149 = phi i32 [ %inc, %land.rhs.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %11 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rt711, align 4
  %call8 = call i32 @regmap_read(ptr noundef %12, i32 noundef 12812, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %for.body._cali_fail__crit_edge, label %for.inc

for.body._cali_fail__crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %_cali_fail_

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %loop_rc.0122149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %do.end, label %land.rhs

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85) #12
  br label %if.end14

if.end14:                                         ; preds = %do.end, %land.rhs.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %tobool6.not143 = phi i1 [ %tobool6.not150, %do.end ], [ %tobool6.not148, %if.end.if.end14_crit_edge ], [ %tobool6.not, %land.rhs.if.end14_crit_edge ]
  %ret.0120 = phi i32 [ %call8, %do.end ], [ 0, %if.end.if.end14_crit_edge ], [ %call8, %land.rhs.if.end14_crit_edge ]
  call fastcc void @rt711_sdca_index_update_bits(ptr noundef %rt711, i32 noundef 32, i32 noundef 111, i32 noundef 8192, i32 noundef 8192)
  call fastcc void @rt711_sdca_index_update_bits(ptr noundef %rt711, i32 noundef 32, i32 noundef 111, i32 noundef 15, i32 noundef 0)
  call fastcc void @rt711_sdca_index_update_bits(ptr noundef %rt711, i32 noundef 88, i32 noundef 0, i32 noundef 8, i32 noundef 0)
  call fastcc void @rt711_sdca_index_update_bits(ptr noundef %rt711, i32 noundef 88, i32 noundef 0, i32 noundef 8, i32 noundef 8)
  %hw_ver = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 18
  %13 = ptrtoint ptr %hw_ver to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp19 = icmp eq i32 %14, 0
  br i1 %cmp19, label %if.then20, label %if.end14.if.end22_crit_edge

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rt711_sdca_index_update_bits(ptr noundef %rt711, i32 noundef 88, i32 noundef 0, i32 noundef 16384, i32 noundef 16384)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end14.if.end22_crit_edge
  call fastcc void @rt711_sdca_index_update_bits(ptr noundef %rt711, i32 noundef 88, i32 noundef 0, i32 noundef 32768, i32 noundef 32768)
  %mbq_regmap.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 1
  %15 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %16, i32 noundef 92274688, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end22.rt711_sdca_index_read.exit_crit_edge

if.end22.rt711_sdca_index_read.exit_crit_edge:    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_index_read.exit

do.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %component.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 2
  %17 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %component.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.70, i32 noundef 92274688, i32 noundef %22, i32 noundef %call.i) #12
  br label %rt711_sdca_index_read.exit

rt711_sdca_index_read.exit:                       ; preds = %do.end.i, %if.end22.rt711_sdca_index_read.exit_crit_edge
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %and28152 = and i32 %24, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28152)
  %tobool29.not153 = icmp eq i32 %and28152, 0
  br i1 %tobool29.not153, label %rt711_sdca_index_read.exit.lor.lhs.false.critedge_crit_edge, label %rt711_sdca_index_read.exit.for.body31_crit_edge

rt711_sdca_index_read.exit.for.body31_crit_edge:  ; preds = %rt711_sdca_index_read.exit
  br label %for.body31

rt711_sdca_index_read.exit.lor.lhs.false.critedge_crit_edge: ; preds = %rt711_sdca_index_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.critedge

land.rhs27:                                       ; preds = %for.inc36
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  %and28 = and i32 %26, 32768
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %land.rhs27.lor.lhs.false.critedge_crit_edge, label %land.rhs27.for.body31_crit_edge

land.rhs27.for.body31_crit_edge:                  ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body31

land.rhs27.lor.lhs.false.critedge_crit_edge:      ; preds = %land.rhs27
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.critedge

for.body31:                                       ; preds = %land.rhs27.for.body31_crit_edge, %rt711_sdca_index_read.exit.for.body31_crit_edge
  %loop_dc.0124154 = phi i32 [ %inc37, %land.rhs27.for.body31_crit_edge ], [ 0, %rt711_sdca_index_read.exit.for.body31_crit_edge ]
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %27 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i95 = call i32 @regmap_read(ptr noundef %28, i32 noundef 92274688, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %cmp.i96 = icmp slt i32 %call.i95, 0
  br i1 %cmp.i96, label %rt711_sdca_index_read.exit100.thread, label %for.inc36

rt711_sdca_index_read.exit100.thread:             ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #11
  %component.i97 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 2
  %29 = ptrtoint ptr %component.i97 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %component.i97, align 4
  %dev.i98 = getelementptr inbounds %struct.snd_soc_component, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %dev.i98 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i98, align 4
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.70, i32 noundef 92274688, i32 noundef %34, i32 noundef %call.i95) #12
  br label %_cali_fail_

for.inc36:                                        ; preds = %for.body31
  %inc37 = add nuw nsw i32 %loop_dc.0124154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc37)
  %exitcond131.not = icmp eq i32 %inc37, 100
  br i1 %exitcond131.not, label %do.end43, label %land.rhs27

do.end43:                                         ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85) #12
  br label %if.then47

lor.lhs.false.critedge:                           ; preds = %land.rhs27.lor.lhs.false.critedge_crit_edge, %rt711_sdca_index_read.exit.lor.lhs.false.critedge_crit_edge
  %ret.1123.lcssa = phi i32 [ %ret.0120, %rt711_sdca_index_read.exit.lor.lhs.false.critedge_crit_edge ], [ %call.i95, %land.rhs27.lor.lhs.false.critedge_crit_edge ]
  br i1 %tobool6.not143, label %lor.lhs.false.critedge.if.then47_crit_edge, label %lor.lhs.false.critedge._cali_fail__crit_edge

lor.lhs.false.critedge._cali_fail__crit_edge:     ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %_cali_fail_

lor.lhs.false.critedge.if.then47_crit_edge:       ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

if.then47:                                        ; preds = %lor.lhs.false.critedge.if.then47_crit_edge, %do.end43
  br label %_cali_fail_

_cali_fail_:                                      ; preds = %if.then47, %lor.lhs.false.critedge._cali_fail__crit_edge, %rt711_sdca_index_read.exit100.thread, %for.body._cali_fail__crit_edge
  %ret.2 = phi i32 [ -110, %if.then47 ], [ %ret.1123.lcssa, %lor.lhs.false.critedge._cali_fail__crit_edge ], [ %call.i95, %rt711_sdca_index_read.exit100.thread ], [ %call8, %for.body._cali_fail__crit_edge ]
  call fastcc void @rt711_sdca_index_update_bits(ptr noundef %rt711, i32 noundef 32, i32 noundef 111, i32 noundef 64, i32 noundef 64)
  %mbq_regmap.i101 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 1
  %35 = ptrtoint ptr %mbq_regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mbq_regmap.i101, align 4
  %call.i102 = call i32 @regmap_write(ptr noundef %36, i32 noundef 33554506, i32 noundef 8219) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %cmp.i103 = icmp slt i32 %call.i102, 0
  br i1 %cmp.i103, label %do.end.i106, label %_cali_fail_.rt711_sdca_index_write.exit_crit_edge

_cali_fail_.rt711_sdca_index_write.exit_crit_edge: ; preds = %_cali_fail_
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_index_write.exit

do.end.i106:                                      ; preds = %_cali_fail_
  call void @__sanitizer_cov_trace_pc() #11
  %component.i104 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 2
  %37 = ptrtoint ptr %component.i104 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %component.i104, align 4
  %dev.i105 = getelementptr inbounds %struct.snd_soc_component, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %dev.i105 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i105, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.72, i32 noundef 33554506, i32 noundef 8219, i32 noundef %call.i102) #12
  br label %rt711_sdca_index_write.exit

rt711_sdca_index_write.exit:                      ; preds = %do.end.i106, %_cali_fail_.rt711_sdca_index_write.exit_crit_edge
  call void @mutex_unlock(ptr noundef %calibrate_mutex) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_sdca_calibration.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_sdca_calibration, %if.then58)) #9
          to label %do.end61 [label %if.then58], !srcloc !223

if.then58:                                        ; preds = %rt711_sdca_index_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_sdca_calibration.__UNIQUE_ID_ddebug240, ptr noundef %call, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.85, i32 noundef %ret.2) #9
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %rt711_sdca_index_write.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %ret.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rt711_sdca_jack_init(ptr noundef %rt711) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %calibrate_mutex = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %calibrate_mutex, i32 noundef 0) #9
  %hs_jack = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 8
  %0 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hs_jack, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @rt711_sdca_index_update_bits(ptr noundef %rt711, i32 noundef 97, i32 noundef 60, i32 noundef 33008, i32 noundef 32768)
  tail call fastcc void @rt711_sdca_index_update_bits(ptr noundef %rt711, i32 noundef 97, i32 noundef 56, i32 noundef 4573, i32 noundef 4573)
  %mbq_regmap.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 1
  %2 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 101711933, i32 noundef 65535) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.rt711_sdca_index_write.exit_crit_edge

if.then.rt711_sdca_index_write.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_index_write.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %component.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 2
  %4 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %component.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.72, i32 noundef 101711933, i32 noundef 65535, i32 noundef %call.i) #12
  br label %rt711_sdca_index_write.exit

rt711_sdca_index_write.exit:                      ; preds = %do.end.i, %if.then.rt711_sdca_index_write.exit_crit_edge
  tail call fastcc void @rt711_sdca_index_update_bits(ptr noundef %rt711, i32 noundef 97, i32 noundef 63, i32 noundef 61440, i32 noundef 0)
  tail call fastcc void @rt711_sdca_index_update_bits(ptr noundef %rt711, i32 noundef 97, i32 noundef 53, i32 noundef 3072, i32 noundef 3072)
  %jd_src = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 15
  %8 = ptrtoint ptr %jd_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %jd_src, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %9, label %do.end [
    i32 1, label %rt711_sdca_index_write.exit.sw.epilog_crit_edge
    i32 2, label %sw.bb
  ]

rt711_sdca_index_write.exit.sw.epilog_crit_edge:  ; preds = %rt711_sdca_index_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %rt711_sdca_index_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rt711_sdca_index_update_bits(ptr noundef %rt711, i32 noundef 32, i32 noundef 8, i32 noundef 2, i32 noundef 2)
  tail call fastcc void @rt711_sdca_index_update_bits(ptr noundef %rt711, i32 noundef 32, i32 noundef 9, i32 noundef 8194, i32 noundef 8194)
  tail call fastcc void @rt711_sdca_index_update_bits(ptr noundef %rt711, i32 noundef 32, i32 noundef 17, i32 noundef 1024, i32 noundef 1024)
  br label %sw.epilog

do.end:                                           ; preds = %rt711_sdca_index_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %component = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 2
  %11 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %component, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.90) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb, %rt711_sdca_index_write.exit.sw.epilog_crit_edge
  %slave = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 3
  %15 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slave, align 4
  %call8 = tail call i32 @sdw_write_no_pm(ptr noundef %16, i32 noundef 92, i8 noundef zeroext 1) #9
  %17 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %slave, align 4
  %call10 = tail call i32 @sdw_write_no_pm(ptr noundef %18, i32 noundef 93, i8 noundef zeroext 1) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_sdca_jack_init.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_sdca_jack_init, %if.then16)) #9
          to label %if.end38 [label %if.then16], !srcloc !223

if.then16:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %slave, align 4
  %dev18 = getelementptr inbounds %struct.sdw_slave, ptr %20, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_sdca_jack_init.__UNIQUE_ID_ddebug246, ptr noundef %dev18, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.91) #9
  br label %if.end38

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rt711_sdca_index_update_bits(ptr noundef %rt711, i32 noundef 97, i32 noundef 53, i32 noundef 3072, i32 noundef 0)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_sdca_jack_init.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_sdca_jack_init, %if.then33)) #9
          to label %if.end38 [label %if.then33], !srcloc !223

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %slave34 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 3
  %21 = ptrtoint ptr %slave34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %slave34, align 4
  %dev35 = getelementptr inbounds %struct.sdw_slave, ptr %22, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_sdca_jack_init.__UNIQUE_ID_ddebug247, ptr noundef %dev35, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.91) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.else, %if.then16, %sw.epilog
  tail call void @mutex_unlock(ptr noundef %calibrate_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_probe(ptr noundef %component) #0 align 64 {
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
  %slave = getelementptr inbounds %struct.rt711_sdca_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave, align 4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %5, i32 0, i32 1
  %jd_src.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %3, i32 0, i32 15
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef %jd_src.i, i32 noundef 1) #9
  %component2 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %component2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %component, ptr %component2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt711_sdca_remove(ptr nocapture noundef readonly %component) #0 align 64 {
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
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #9
  %mbq_regmap = getelementptr inbounds %struct.rt711_sdca_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mbq_regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext true) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_set_jack_detect(ptr nocapture noundef readonly %component, ptr noundef %hs_jack, ptr nocapture noundef readnone %data) #0 align 64 {
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
  %hs_jack1 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %hs_jack1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hs_jack, ptr %hs_jack1, align 4
  %hw_init = getelementptr inbounds %struct.rt711_sdca_priv, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hw_init, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_sdca_set_jack_detect.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_sdca_set_jack_detect, %if.then6)) #9
          to label %cleanup [label %if.then6], !srcloc !223

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %slave = getelementptr inbounds %struct.rt711_sdca_priv, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %slave, align 4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %8, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_sdca_set_jack_detect.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.57) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rt711_sdca_jack_init(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %do.body
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_set_gain_get(ptr nocapture noundef readonly %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  %read_l = alloca i32, align 4
  %read_r = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_l) #9
  %9 = ptrtoint ptr %read_l to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %read_l, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_r) #9
  %10 = ptrtoint ptr %read_r to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %read_r, align 4, !annotation !224
  %name = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 4
  %call1 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.24)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call5 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.26)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %tobool17.not = phi i1 [ false, %if.then ], [ true, %lor.lhs.false.if.end_crit_edge ]
  %mbq_regmap = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mbq_regmap, align 4
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg, align 4
  %call7 = call i32 @regmap_read(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %read_l) #9
  %15 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mbq_regmap, align 4
  %rreg = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 4
  %17 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rreg, align 4
  %call9 = call i32 @regmap_read(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %read_r) #9
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 5
  %19 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %20)
  %cmp = icmp eq i32 %20, 8
  %21 = ptrtoint ptr %read_l to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %read_l, align 4
  br i1 %cmp, label %if.end32.thread, label %if.else

if.else:                                          ; preds = %if.end
  %and = and i32 %22, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %neg = sub i32 0, %22
  %and14 = and i32 %neg, 65535
  %ctl_l.0 = select i1 %tobool12.not, i32 %22, i32 %and14
  %mul = mul i32 %ctl_l.0, 100
  br i1 %tobool17.not, label %if.else28, label %if.then18

if.then18:                                        ; preds = %if.else
  %div26 = udiv i32 %mul, 19200
  br i1 %tobool12.not, label %if.else24, label %if.then20

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %sub23 = sub i32 %20, %div26
  br label %if.end32

if.else24:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %div26, %20
  br label %if.end32

if.else28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %max = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 1
  %23 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max, align 4
  %div29 = udiv i32 %mul, 19200
  %sub30 = sub i32 %24, %div29
  br label %if.end32

if.end32:                                         ; preds = %if.else28, %if.else24, %if.then20
  %ctl_l.1 = phi i32 [ %sub23, %if.then20 ], [ %add, %if.else24 ], [ %sub30, %if.else28 ]
  %25 = ptrtoint ptr %read_l to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %read_l, align 4
  %27 = ptrtoint ptr %read_r to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %read_r, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp33.not = icmp eq i32 %26, %28
  br i1 %cmp33.not, label %if.end32.if.end70_crit_edge, label %if.else41

if.end32.if.end70_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.end32.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 %22, 2560
  %29 = ptrtoint ptr %read_r to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %read_r, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %30)
  %cmp33.not105 = icmp eq i32 %22, %30
  %div40 = udiv i32 %30, 2560
  %spec.select = select i1 %cmp33.not105, i32 %div, i32 %div40
  br label %if.end70

if.else41:                                        ; preds = %if.end32
  %and42 = and i32 %28, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %neg46 = sub i32 0, %28
  %and47 = and i32 %neg46, 65535
  %ctl_r.0 = select i1 %tobool43.not, i32 %28, i32 %and47
  %mul49 = mul i32 %ctl_r.0, 100
  br i1 %tobool17.not, label %if.else63, label %if.then52

if.then52:                                        ; preds = %if.else41
  %div60 = udiv i32 %mul49, 19200
  br i1 %tobool43.not, label %if.else58, label %if.then54

if.then54:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  %sub57 = sub i32 %20, %div60
  br label %if.end70

if.else58:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  %add61 = add i32 %div60, %20
  br label %if.end70

if.else63:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  %max64 = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 1
  %31 = ptrtoint ptr %max64 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max64, align 4
  %div65 = udiv i32 %mul49, 19200
  %sub66 = sub i32 %32, %div65
  br label %if.end70

if.end70:                                         ; preds = %if.else63, %if.else58, %if.then54, %if.end32.thread, %if.end32.if.end70_crit_edge
  %ctl_l.1107 = phi i32 [ %ctl_l.1, %if.then54 ], [ %ctl_l.1, %if.else58 ], [ %ctl_l.1, %if.else63 ], [ %ctl_l.1, %if.end32.if.end70_crit_edge ], [ %div, %if.end32.thread ]
  %ctl_r.1 = phi i32 [ %sub57, %if.then54 ], [ %add61, %if.else58 ], [ %sub66, %if.else63 ], [ %ctl_l.1, %if.end32.if.end70_crit_edge ], [ %spec.select, %if.end32.thread ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %33 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %ctl_l.1107, ptr %value, align 8
  %arrayidx72 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %ctl_r.1, ptr %arrayidx72, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_r) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_l) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_set_gain_put(ptr nocapture noundef readonly %kcontrol, ptr noundef readonly %ucontrol) #0 align 64 {
entry:
  %read_l = alloca i32, align 4
  %read_r = alloca i32, align 4
  %lvalue = alloca i32, align 4
  %rvalue = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_l) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_r) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lvalue) #9
  %9 = ptrtoint ptr %lvalue to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %lvalue, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rvalue) #9
  %10 = ptrtoint ptr %rvalue to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %rvalue, align 4, !annotation !224
  %name = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 4
  %call1 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.24)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call5 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.26)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %tobool16.not = phi i1 [ false, %if.then ], [ true, %lor.lhs.false.if.end_crit_edge ]
  %mbq_regmap = getelementptr inbounds %struct.rt711_sdca_priv, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mbq_regmap, align 4
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 3
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg, align 4
  %call7 = call i32 @regmap_read(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %lvalue) #9
  %15 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mbq_regmap, align 4
  %rreg = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 4
  %17 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rreg, align 4
  %call9 = call i32 @regmap_read(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %rvalue) #9
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value, align 8
  %max = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 1
  %21 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max, align 4
  %23 = call i32 @llvm.umin.i32(i32 %20, i32 %22)
  %24 = ptrtoint ptr %read_l to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %read_l, align 4
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 5
  %25 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %26)
  %cmp13 = icmp eq i32 %26, 8
  br i1 %cmp13, label %if.then44, label %if.else

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %tobool16.not.not = xor i1 %tobool16.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %26)
  %cmp18 = icmp ugt i32 %23, %26
  %or.cond = select i1 %tobool16.not.not, i1 %cmp18, i1 false
  %sub = sub i32 %23, %26
  %sub24 = sub i32 %26, %23
  %gain_l_val.1.in = select i1 %or.cond, i32 %sub, i32 %sub24
  %shl27 = mul i32 %gain_l_val.1.in, 19200
  %div = udiv i32 %shl27, 100
  %cmp18.not = xor i1 %cmp18, true
  %brmerge = select i1 %tobool16.not, i1 true, i1 %cmp18.not
  %add = sub nsw i32 0, %div
  %gain_l_val.2 = select i1 %brmerge, i32 %add, i32 %div
  %and = and i32 %gain_l_val.2, 65535
  %arrayidx36 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx36, align 4
  %29 = call i32 @llvm.umin.i32(i32 %28, i32 %22)
  %30 = ptrtoint ptr %read_r to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %read_r, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %26)
  %cmp52 = icmp ugt i32 %29, %26
  %or.cond179 = select i1 %tobool16.not.not, i1 %cmp52, i1 false
  %sub55 = sub i32 %29, %26
  %sub59 = sub i32 %26, %29
  %gain_r_val.1.in = select i1 %or.cond179, i32 %sub55, i32 %sub59
  %shl62 = mul i32 %gain_r_val.1.in, 19200
  %div63 = udiv i32 %shl62, 100
  %cmp52.not = xor i1 %cmp52, true
  %brmerge188 = select i1 %tobool16.not, i1 true, i1 %cmp52.not
  %add70 = sub nsw i32 0, %div63
  %gain_r_val.2 = select i1 %brmerge188, i32 %add70, i32 %div63
  %and72 = and i32 %gain_r_val.2, 65535
  br label %if.end73

if.then44:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %shl = mul i32 %23, 2560
  %arrayidx36182 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx36182 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx36182, align 4
  %33 = call i32 @llvm.umin.i32(i32 %32, i32 %22)
  %34 = ptrtoint ptr %read_r to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %read_r, align 4
  %shl47 = mul i32 %33, 2560
  br label %if.end73

if.end73:                                         ; preds = %if.then44, %if.else
  %gain_l_val.3185 = phi i32 [ %shl, %if.then44 ], [ %and, %if.else ]
  %gain_r_val.3 = phi i32 [ %shl47, %if.then44 ], [ %and72, %if.else ]
  %35 = ptrtoint ptr %lvalue to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lvalue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %gain_l_val.3185)
  %cmp74.not = icmp eq i32 %36, %gain_l_val.3185
  br i1 %cmp74.not, label %lor.lhs.false75, label %if.end73.if.then77_crit_edge

if.end73.if.then77_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then77

lor.lhs.false75:                                  ; preds = %if.end73
  %37 = ptrtoint ptr %rvalue to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rvalue, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %gain_r_val.3)
  %cmp76.not = icmp eq i32 %38, %gain_r_val.3
  br i1 %cmp76.not, label %lor.lhs.false75.cleanup_crit_edge, label %lor.lhs.false75.if.then77_crit_edge

lor.lhs.false75.if.then77_crit_edge:              ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then77

lor.lhs.false75.cleanup_crit_edge:                ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then77:                                        ; preds = %lor.lhs.false75.if.then77_crit_edge, %if.end73.if.then77_crit_edge
  %39 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mbq_regmap, align 4
  %41 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg, align 4
  %call83 = call i32 @regmap_write(ptr noundef %40, i32 noundef %42, i32 noundef %gain_l_val.3185) #9
  %43 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mbq_regmap, align 4
  %45 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rreg, align 4
  %call86 = call i32 @regmap_write(ptr noundef %44, i32 noundef %46, i32 noundef %gain_r_val.3) #9
  %47 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mbq_regmap, align 4
  %49 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reg, align 4
  %call89 = call i32 @regmap_read(ptr noundef %48, i32 noundef %50, ptr noundef nonnull %read_l) #9
  %51 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mbq_regmap, align 4
  %53 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rreg, align 4
  %call92 = call i32 @regmap_read(ptr noundef %52, i32 noundef %54, ptr noundef nonnull %read_r) #9
  %55 = ptrtoint ptr %read_r to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %read_r, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %gain_r_val.3)
  %cmp93 = icmp eq i32 %56, %gain_r_val.3
  br i1 %cmp93, label %land.lhs.true94, label %if.then77.for.inc_crit_edge

if.then77.for.inc_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true94:                                  ; preds = %if.then77
  %57 = ptrtoint ptr %read_l to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %read_l, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %gain_l_val.3185)
  %cmp95 = icmp eq i32 %58, %gain_l_val.3185
  br i1 %cmp95, label %land.lhs.true94.cleanup_crit_edge, label %land.lhs.true94.for.inc_crit_edge

land.lhs.true94.for.inc_crit_edge:                ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true94.cleanup_crit_edge:                ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true94.for.inc_crit_edge, %if.then77.for.inc_crit_edge
  %59 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mbq_regmap, align 4
  %61 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %reg, align 4
  %call83.1 = call i32 @regmap_write(ptr noundef %60, i32 noundef %62, i32 noundef %gain_l_val.3185) #9
  %63 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mbq_regmap, align 4
  %65 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rreg, align 4
  %call86.1 = call i32 @regmap_write(ptr noundef %64, i32 noundef %66, i32 noundef %gain_r_val.3) #9
  %67 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mbq_regmap, align 4
  %69 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %reg, align 4
  %call89.1 = call i32 @regmap_read(ptr noundef %68, i32 noundef %70, ptr noundef nonnull %read_l) #9
  %71 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mbq_regmap, align 4
  %73 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rreg, align 4
  %call92.1 = call i32 @regmap_read(ptr noundef %72, i32 noundef %74, ptr noundef nonnull %read_r) #9
  %75 = ptrtoint ptr %read_r to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %read_r, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %gain_r_val.3)
  %cmp93.1 = icmp eq i32 %76, %gain_r_val.3
  br i1 %cmp93.1, label %land.lhs.true94.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

land.lhs.true94.1:                                ; preds = %for.inc
  %77 = ptrtoint ptr %read_l to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %read_l, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %gain_l_val.3185)
  %cmp95.1 = icmp eq i32 %78, %gain_l_val.3185
  br i1 %cmp95.1, label %land.lhs.true94.1.cleanup_crit_edge, label %land.lhs.true94.1.for.inc.1_crit_edge

land.lhs.true94.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true94.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

land.lhs.true94.1.cleanup_crit_edge:              ; preds = %land.lhs.true94.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.1:                                        ; preds = %land.lhs.true94.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %79 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mbq_regmap, align 4
  %81 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %reg, align 4
  %call83.2 = call i32 @regmap_write(ptr noundef %80, i32 noundef %82, i32 noundef %gain_l_val.3185) #9
  %83 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mbq_regmap, align 4
  %85 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rreg, align 4
  %call86.2 = call i32 @regmap_write(ptr noundef %84, i32 noundef %86, i32 noundef %gain_r_val.3) #9
  %87 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mbq_regmap, align 4
  %89 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %reg, align 4
  %call89.2 = call i32 @regmap_read(ptr noundef %88, i32 noundef %90, ptr noundef nonnull %read_l) #9
  %91 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mbq_regmap, align 4
  %93 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rreg, align 4
  %call92.2 = call i32 @regmap_read(ptr noundef %92, i32 noundef %94, ptr noundef nonnull %read_r) #9
  %95 = ptrtoint ptr %read_r to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %read_r, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %gain_r_val.3)
  %cmp93.2 = icmp eq i32 %96, %gain_r_val.3
  br i1 %cmp93.2, label %land.lhs.true94.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

land.lhs.true94.2:                                ; preds = %for.inc.1
  %97 = ptrtoint ptr %read_l to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %read_l, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %gain_l_val.3185)
  %cmp95.2 = icmp eq i32 %98, %gain_l_val.3185
  br i1 %cmp95.2, label %land.lhs.true94.2.cleanup_crit_edge, label %land.lhs.true94.2.for.inc.2_crit_edge

land.lhs.true94.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true94.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

land.lhs.true94.2.cleanup_crit_edge:              ; preds = %land.lhs.true94.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.2:                                        ; preds = %land.lhs.true94.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.2, %land.lhs.true94.2.cleanup_crit_edge, %land.lhs.true94.1.cleanup_crit_edge, %land.lhs.true94.cleanup_crit_edge, %lor.lhs.false75.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false75.cleanup_crit_edge ], [ -5, %for.inc.2 ], [ 1, %land.lhs.true94.2.cleanup_crit_edge ], [ 1, %land.lhs.true94.1.cleanup_crit_edge ], [ 1, %land.lhs.true94.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rvalue) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lvalue) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_r) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_l) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt711_sdca_fu1e_capture_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
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
  %fu1e_mixer_l_mute = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %fu1e_mixer_l_mute to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fu1e_mixer_l_mute, align 4, !range !225
  %8 = xor i8 %7, 1
  %9 = zext i8 %8 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 8
  %fu1e_mixer_r_mute = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 24
  %11 = ptrtoint ptr %fu1e_mixer_r_mute to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fu1e_mixer_r_mute, align 1, !range !225
  %13 = xor i8 %12, 1
  %14 = zext i8 %13 to i32
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_fu1e_capture_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %fu1e_mixer_l_mute = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %fu1e_mixer_l_mute to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fu1e_mixer_l_mute, align 4, !range !225
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  %10 = zext i1 %tobool1.not to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %10)
  %cmp.not = icmp eq i8 %7, %10
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %fu1e_mixer_r_mute = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 24
  %11 = ptrtoint ptr %fu1e_mixer_r_mute to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fu1e_mixer_r_mute, align 1, !range !225
  %arrayidx6 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp eq i32 %14, 0
  %15 = zext i1 %tobool7.not to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %15)
  %cmp10.not = icmp eq i8 %12, %15
  br i1 %cmp10.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %changed.0 = phi i32 [ 1, %if.then ], [ 0, %lor.lhs.false.if.end_crit_edge ]
  %16 = ptrtoint ptr %fu1e_mixer_l_mute to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %10, ptr %fu1e_mixer_l_mute, align 4
  %arrayidx19 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool20.not = icmp eq i32 %18, 0
  %fu1e_mixer_r_mute23 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 24
  %frombool24 = zext i1 %tobool20.not to i8
  %19 = ptrtoint ptr %fu1e_mixer_r_mute23 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool24, ptr %fu1e_mixer_r_mute23, align 1
  %fu1e_dapm_mute.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 22
  %20 = ptrtoint ptr %fu1e_dapm_mute.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fu1e_dapm_mute.i, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp ne i8 %21, 0
  %narrow = select i1 %tobool.not.i, i1 true, i1 %tobool1.not
  %22 = zext i1 %narrow to i32
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 1082134281, i32 noundef %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.rt711_sdca_set_fu1e_capture_ctl.exit_crit_edge, label %if.end.i

if.end.rt711_sdca_set_fu1e_capture_ctl.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_set_fu1e_capture_ctl.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %narrow41 = select i1 %tobool.not.i, i1 true, i1 %tobool20.not
  %25 = zext i1 %narrow41 to i32
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  %call9.i = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 1082134282, i32 noundef %25) #9
  %28 = tail call i32 @llvm.smin.i32(i32 %call9.i, i32 0) #9
  br label %rt711_sdca_set_fu1e_capture_ctl.exit

rt711_sdca_set_fu1e_capture_ctl.exit:             ; preds = %if.end.i, %if.end.rt711_sdca_set_fu1e_capture_ctl.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.rt711_sdca_set_fu1e_capture_ctl.exit_crit_edge ], [ %28, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp26 = icmp slt i32 %retval.0.i, 0
  %call25.changed.0 = select i1 %cmp26, i32 %retval.0.i, i32 %changed.0
  ret i32 %call25.changed.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rt711_sdca_fu0f_capture_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
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
  %fu0f_mixer_l_mute = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %fu0f_mixer_l_mute to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fu0f_mixer_l_mute, align 1, !range !225
  %8 = xor i8 %7, 1
  %9 = zext i8 %8 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 8
  %fu0f_mixer_r_mute = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 21
  %11 = ptrtoint ptr %fu0f_mixer_r_mute to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fu0f_mixer_r_mute, align 2, !range !225
  %13 = xor i8 %12, 1
  %14 = zext i8 %13 to i32
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_fu0f_capture_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
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
  %fu0f_mixer_l_mute = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %fu0f_mixer_l_mute to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fu0f_mixer_l_mute, align 1, !range !225
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  %10 = zext i1 %tobool1.not to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %10)
  %cmp.not = icmp eq i8 %7, %10
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %fu0f_mixer_r_mute = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 21
  %11 = ptrtoint ptr %fu0f_mixer_r_mute to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fu0f_mixer_r_mute, align 2, !range !225
  %arrayidx6 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp eq i32 %14, 0
  %15 = zext i1 %tobool7.not to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %15)
  %cmp10.not = icmp eq i8 %12, %15
  br i1 %cmp10.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %changed.0 = phi i32 [ 1, %if.then ], [ 0, %lor.lhs.false.if.end_crit_edge ]
  %16 = ptrtoint ptr %fu0f_mixer_l_mute to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %10, ptr %fu0f_mixer_l_mute, align 1
  %arrayidx19 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool20.not = icmp eq i32 %18, 0
  %fu0f_mixer_r_mute23 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 21
  %frombool24 = zext i1 %tobool20.not to i8
  %19 = ptrtoint ptr %fu0f_mixer_r_mute23 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool24, ptr %fu0f_mixer_r_mute23, align 2
  %fu0f_dapm_mute.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 19
  %20 = ptrtoint ptr %fu0f_dapm_mute.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fu0f_dapm_mute.i, align 4, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp ne i8 %21, 0
  %narrow = select i1 %tobool.not.i, i1 true, i1 %tobool1.not
  %22 = zext i1 %narrow to i32
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 1077938057, i32 noundef %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.rt711_sdca_set_fu0f_capture_ctl.exit_crit_edge, label %if.end.i

if.end.rt711_sdca_set_fu0f_capture_ctl.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_set_fu0f_capture_ctl.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %narrow41 = select i1 %tobool.not.i, i1 true, i1 %tobool20.not
  %25 = zext i1 %narrow41 to i32
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  %call9.i = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 1077938058, i32 noundef %25) #9
  %28 = tail call i32 @llvm.smin.i32(i32 %call9.i, i32 0) #9
  br label %rt711_sdca_set_fu0f_capture_ctl.exit

rt711_sdca_set_fu0f_capture_ctl.exit:             ; preds = %if.end.i, %if.end.rt711_sdca_set_fu0f_capture_ctl.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.rt711_sdca_set_fu0f_capture_ctl.exit_crit_edge ], [ %28, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp26 = icmp slt i32 %retval.0.i, 0
  %call25.changed.0 = select i1 %cmp26, i32 %retval.0.i, i32 %changed.0
  ret i32 %call25.changed.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_line1_power_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
    i32 2, label %sw.bb
    i32 4, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %call2 = tail call i32 @regmap_read(ptr noundef %8, i32 noundef 1080034440, ptr noundef nonnull @rt711_sdca_line1_power_event.sel_mode) #9
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 1079510144, i32 noundef 1) #9
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %entry
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 1079510144, i32 noundef 0) #9
  %13 = load i32, ptr @rt711_sdca_line1_power_event.sel_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %13)
  %cmp.not = icmp eq i32 %13, 65535
  br i1 %cmp.not, label %sw.bb7.sw.epilog_crit_edge, label %sw.bb7.sw.epilog.sink.split_crit_edge

sw.bb7.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb7.sw.epilog.sink.split_crit_edge, %sw.bb
  %.sink16 = phi i32 [ 7, %sw.bb ], [ %13, %sw.bb7.sw.epilog.sink.split_crit_edge ]
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 1080034440, i32 noundef %.sink16) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb7.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_line2_power_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
    i32 2, label %sw.bb
    i32 4, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 1077943048, i32 noundef 0) #9
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 1079515264, i32 noundef 1) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 1079515264, i32 noundef 0) #9
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 1077943048, i32 noundef 3) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_pde28_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  %.sink8 = phi i32 [ 3, %sw.bb3 ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 1077941256, i32 noundef %.sink8) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_pde29_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.100)
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
  %.sink8 = phi i32 [ 3, %sw.bb3 ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 1077941384, i32 noundef %.sink8) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_pde2a_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.101)
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
  %.sink8 = phi i32 [ 3, %sw.bb3 ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 1082135816, i32 noundef %.sink8) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_fu05_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.epilog.sink.split_crit_edge
    i32 4, label %sw.bb6
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb6, %entry.sw.epilog.sink.split_crit_edge
  %.sink19 = phi i32 [ 1, %sw.bb6 ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 1077936777, i32 noundef %.sink19) #9
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %call12 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 1077936778, i32 noundef %.sink19) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_fu0f_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %lor.end6.i
    i32 4, label %lor.end6.i16
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.end6.i:                                       ; preds = %entry
  %fu0f_dapm_mute = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 19
  %7 = ptrtoint ptr %fu0f_dapm_mute to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %fu0f_dapm_mute, align 4
  %fu0f_mixer_l_mute.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 20
  %8 = ptrtoint ptr %fu0f_mixer_l_mute.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fu0f_mixer_l_mute.i, align 1, !range !225
  %10 = zext i8 %9 to i32
  %fu0f_mixer_r_mute.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 21
  %11 = ptrtoint ptr %fu0f_mixer_r_mute.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fu0f_mixer_r_mute.i, align 2, !range !225
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 1077938057, i32 noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %lor.end6.i.sw.epilog_crit_edge, label %if.end.i

lor.end6.i.sw.epilog_crit_edge:                   ; preds = %lor.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i:                                         ; preds = %lor.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = zext i8 %12 to i32
  br label %sw.epilog.sink.split

lor.end6.i16:                                     ; preds = %entry
  %fu0f_dapm_mute4 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 19
  %16 = ptrtoint ptr %fu0f_dapm_mute4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %fu0f_dapm_mute4, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %call.i14 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 1077938057, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %cmp.i15 = icmp slt i32 %call.i14, 0
  br i1 %cmp.i15, label %lor.end6.i16.sw.epilog_crit_edge, label %lor.end6.i16.sw.epilog.sink.split_crit_edge

lor.end6.i16.sw.epilog.sink.split_crit_edge:      ; preds = %lor.end6.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

lor.end6.i16.sw.epilog_crit_edge:                 ; preds = %lor.end6.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %lor.end6.i16.sw.epilog.sink.split_crit_edge, %if.end.i
  %.sink21 = phi i32 [ %15, %if.end.i ], [ 1, %lor.end6.i16.sw.epilog.sink.split_crit_edge ]
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %call9.i17 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 1077938058, i32 noundef %.sink21) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %lor.end6.i16.sw.epilog_crit_edge, %lor.end6.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_fu1e_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %lor.end6.i
    i32 4, label %lor.end6.i16
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.end6.i:                                       ; preds = %entry
  %fu1e_dapm_mute = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 22
  %7 = ptrtoint ptr %fu1e_dapm_mute to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %fu1e_dapm_mute, align 1
  %fu1e_mixer_l_mute.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 23
  %8 = ptrtoint ptr %fu1e_mixer_l_mute.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fu1e_mixer_l_mute.i, align 4, !range !225
  %10 = zext i8 %9 to i32
  %fu1e_mixer_r_mute.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 24
  %11 = ptrtoint ptr %fu1e_mixer_r_mute.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fu1e_mixer_r_mute.i, align 1, !range !225
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 1082134281, i32 noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %lor.end6.i.sw.epilog_crit_edge, label %if.end.i

lor.end6.i.sw.epilog_crit_edge:                   ; preds = %lor.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i:                                         ; preds = %lor.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = zext i8 %12 to i32
  br label %sw.epilog.sink.split

lor.end6.i16:                                     ; preds = %entry
  %fu1e_dapm_mute4 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 22
  %16 = ptrtoint ptr %fu1e_dapm_mute4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %fu1e_dapm_mute4, align 1
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %call.i14 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 1082134281, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %cmp.i15 = icmp slt i32 %call.i14, 0
  br i1 %cmp.i15, label %lor.end6.i16.sw.epilog_crit_edge, label %lor.end6.i16.sw.epilog.sink.split_crit_edge

lor.end6.i16.sw.epilog.sink.split_crit_edge:      ; preds = %lor.end6.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

lor.end6.i16.sw.epilog_crit_edge:                 ; preds = %lor.end6.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %lor.end6.i16.sw.epilog.sink.split_crit_edge, %if.end.i
  %.sink21 = phi i32 [ %15, %if.end.i ], [ 1, %lor.end6.i16.sw.epilog.sink.split_crit_edge ]
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %call9.i17 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 1082134282, i32 noundef %.sink21) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %lor.end6.i16.sw.epilog_crit_edge, %lor.end6.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_mux_get(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
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
  %call2 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.46)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.else, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.else:                                          ; preds = %entry
  %call6 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.47)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %entry.if.end10_crit_edge
  %mask_sft.0 = phi i32 [ 10, %entry.if.end10_crit_edge ], [ 13, %if.else.if.end10_crit_edge ]
  %mbq_regmap.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i17 = call i32 @regmap_read(ptr noundef %6, i32 noundef 101711872, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp.i = icmp slt i32 %call.i17, 0
  br i1 %cmp.i, label %do.end.i, label %if.end10.rt711_sdca_index_read.exit_crit_edge

if.end10.rt711_sdca_index_read.exit_crit_edge:    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_index_read.exit

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %component.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %component.i, align 4
  %dev.i18 = getelementptr inbounds %struct.snd_soc_component, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev.i18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i18, align 4
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.70, i32 noundef 101711872, i32 noundef %12, i32 noundef %call.i17) #12
  br label %rt711_sdca_index_read.exit

rt711_sdca_index_read.exit:                       ; preds = %do.end.i, %if.end10.rt711_sdca_index_read.exit_crit_edge
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %shr = lshr i32 %14, %mask_sft.0
  %and = and i32 %shr, 7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %rt711_sdca_index_read.exit, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rt711_sdca_index_read.exit ], [ -22, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_mux_put(ptr noundef %kcontrol, ptr noundef readonly %ucontrol) #0 align 64 {
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
  %call4 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.46)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.else, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.else:                                          ; preds = %if.end
  %call9 = tail call ptr @strstr(ptr noundef %name, ptr noundef nonnull @.str.47)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.else.cleanup_crit_edge, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %mask_sft.0 = phi i32 [ 10, %if.end.if.end14_crit_edge ], [ 13, %if.else.if.end14_crit_edge ]
  %values.i = getelementptr inbounds %struct.soc_enum, ptr %6, i32 0, i32 6
  %12 = ptrtoint ptr %values.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %values.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end14.snd_soc_enum_item_to_val.exit_crit_edge, label %if.end.i

if.end14.snd_soc_enum_item_to_val.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_soc_enum_item_to_val.exit

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
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
  %mbq_regmap.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mbq_regmap.i, align 4
  %call.i54 = call i32 @regmap_read(ptr noundef %19, i32 noundef 101711872, ptr noundef nonnull %val2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp.i = icmp slt i32 %call.i54, 0
  br i1 %cmp.i, label %do.end.i, label %snd_soc_enum_item_to_val.exit.rt711_sdca_index_read.exit_crit_edge

snd_soc_enum_item_to_val.exit.rt711_sdca_index_read.exit_crit_edge: ; preds = %snd_soc_enum_item_to_val.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rt711_sdca_index_read.exit

do.end.i:                                         ; preds = %snd_soc_enum_item_to_val.exit
  call void @__sanitizer_cov_trace_pc() #11
  %component.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %component.i, align 4
  %dev.i55 = getelementptr inbounds %struct.snd_soc_component, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %dev.i55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i55, align 4
  %24 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.70, i32 noundef 101711872, i32 noundef %25, i32 noundef %call.i54) #12
  br label %rt711_sdca_index_read.exit

rt711_sdca_index_read.exit:                       ; preds = %do.end.i, %snd_soc_enum_item_to_val.exit.rt711_sdca_index_read.exit_crit_edge
  %26 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val2, align 4
  %shr = lshr i32 %27, %mask_sft.0
  %and = and i32 %shr, 7
  store i32 %and, ptr %val2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %and)
  %cmp18 = icmp eq i32 %shl, %and
  %not.cmp18 = xor i1 %cmp18, true
  %. = zext i1 %not.cmp18 to i32
  br i1 %cmp18, label %rt711_sdca_index_read.exit.if.end28_crit_edge, label %if.then24

rt711_sdca_index_read.exit.if.end28_crit_edge:    ; preds = %rt711_sdca_index_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then24:                                        ; preds = %rt711_sdca_index_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %shl25 = shl nuw nsw i32 7, %mask_sft.0
  %shl26 = shl i32 %shl, %mask_sft.0
  call fastcc void @rt711_sdca_index_update_bits(ptr noundef %3, i32 noundef 97, i32 noundef 0, i32 noundef %shl25, i32 noundef %shl26)
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %rt711_sdca_index_read.exit.if.end28_crit_edge
  %28 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value, align 4
  %call30 = call i32 @snd_soc_dapm_mux_update_power(ptr noundef %call1, ptr noundef %kcontrol, i32 noundef %29, ptr noundef %6, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.end28 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_mux_update_power(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_set_sdw_stream(ptr nocapture noundef writeonly %dai, ptr noundef %sdw_stream, i32 noundef %direction) #0 align 64 {
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
define internal void @rt711_sdca_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef %dai) #0 align 64 {
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
define internal i32 @rt711_sdca_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_sdca_pcm_hw_params.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_sdca_pcm_hw_params, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !223

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %dai to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dai, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_sdca_pcm_hw_params.__UNIQUE_ID_ddebug249, ptr noundef %13, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, ptr noundef %15) #9
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
  %slave = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 3
  %19 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %slave, align 4
  %tobool10.not = icmp eq ptr %20, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  br i1 %cmp.i, label %if.end12.if.end24_crit_edge, label %if.else

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.else:                                          ; preds = %if.end12
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %22, label %if.else.cleanup_crit_edge [
    i32 0, label %if.else.if.end24_crit_edge
    i32 1, label %if.then20
  ]

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.else.if.end24_crit_edge, %if.end12.if.end24_crit_edge
  %direction.0 = phi i32 [ 1, %if.then20 ], [ 0, %if.end12.if.end24_crit_edge ], [ 1, %if.else.if.end24_crit_edge ]
  %port.0 = phi i32 [ 4, %if.then20 ], [ 3, %if.end12.if.end24_crit_edge ], [ 2, %if.else.if.end24_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i, align 4
  %26 = ptrtoint ptr %stream_config to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %stream_config, align 4
  %arrayidx.i.i97 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i97, align 4
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %6, align 4
  %arrayidx.i.i98 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx.i.i98 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end24.if.then.i.i_crit_edge

if.end24.if.then.i.i_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %if.end24.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end24.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %31, %if.end24.if.then.i.i_crit_edge ], [ %34, %for.inc.i.i.if.then.i.i_crit_edge ]
  %32 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #9, !range !230
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call28 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i) #9
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call28, ptr %7, align 4
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %direction.0, ptr %8, align 4
  %37 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i97, align 4
  %sub31 = sub i32 32, %38
  %shr = lshr i32 -1, %sub31
  %39 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shr, ptr %11, align 4
  %40 = ptrtoint ptr %port_config to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %port.0, ptr %port_config, align 4
  %41 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %slave, align 4
  %43 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cond.i, align 4
  %call33 = call i32 @sdw_stream_add_slave(ptr noundef %42, ptr noundef nonnull %stream_config, ptr noundef nonnull %port_config, i32 noundef 1, ptr noundef %44) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev39 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %45 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev39, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.63) #12
  br label %cleanup

if.end40:                                         ; preds = %params_format.exit
  %47 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %48)
  %cmp42 = icmp ugt i32 %48, 16
  br i1 %cmp42, label %do.end46, label %if.end49

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.65, i32 noundef %48) #12
  br label %cleanup

if.end49:                                         ; preds = %if.end40
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %52, label %do.end56 [
    i32 44100, label %if.end49.sw.epilog_crit_edge
    i32 48000, label %sw.bb51
    i32 96000, label %sw.bb52
    i32 192000, label %sw.bb53
  ]

if.end49.sw.epilog_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.68, i32 noundef %52) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb53, %sw.bb52, %sw.bb51, %if.end49.sw.epilog_crit_edge
  %sampling_rate.0 = phi i32 [ 13, %sw.bb53 ], [ 11, %sw.bb52 ], [ 9, %sw.bb51 ], [ 8, %if.end49.sw.epilog_crit_edge ]
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %5, align 4
  %call59 = call i32 @regmap_write(ptr noundef %57, i32 noundef 1078460544, i32 noundef %sampling_rate.0) #9
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %5, align 4
  %call61 = call i32 @regmap_write(ptr noundef %59, i32 noundef 1078462592, i32 noundef %sampling_rate.0) #9
  %60 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %5, align 4
  %call63 = call i32 @regmap_write(ptr noundef %61, i32 noundef 1082658688, i32 noundef %sampling_rate.0) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end56, %do.end46, %do.end38, %if.else.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %do.end38 ], [ -22, %do.end46 ], [ -22, %do.end56 ], [ 0, %sw.epilog ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %port_config) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stream_config) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_pcm_hw_free(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %slave = getelementptr inbounds %struct.rt711_sdca_priv, ptr %5, i32 0, i32 3
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
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rt711_sdca_headset_detect(ptr nocapture noundef %rt711) unnamed_addr #0 align 64 {
entry:
  %det_mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %det_mode) #9
  %0 = ptrtoint ptr %det_mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %det_mode, align 4, !annotation !224
  %1 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rt711, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 1080034448, ptr noundef nonnull %det_mode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.io_error_crit_edge, label %if.end

entry.io_error_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %io_error

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %det_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %det_mode, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %4, label %if.end.if.then5_crit_edge [
    i32 0, label %sw.epilog.thread37
    i32 3, label %if.end.if.then5.sink.split_crit_edge
    i32 5, label %sw.bb3
  ]

if.end.if.then5.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.sink.split

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

sw.epilog.thread37:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %jack_type = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 14
  %6 = ptrtoint ptr %jack_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %jack_type, align 4
  br label %do.body

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.sink.split

if.then5.sink.split:                              ; preds = %sw.bb3, %if.end.if.then5.sink.split_crit_edge
  %.sink = phi i32 [ 3, %sw.bb3 ], [ 1, %if.end.if.then5.sink.split_crit_edge ]
  %jack_type2 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 14
  %7 = ptrtoint ptr %jack_type2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %jack_type2, align 4
  br label %if.then5

if.then5:                                         ; preds = %if.then5.sink.split, %if.end.if.then5_crit_edge
  %8 = ptrtoint ptr %rt711 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rt711, align 4
  %call7 = call i32 @regmap_write(ptr noundef %9, i32 noundef 1080034440, i32 noundef %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then5.io_error_crit_edge, label %if.then5.do.body_crit_edge

if.then5.do.body_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then5.io_error_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %io_error

do.body:                                          ; preds = %if.then5.do.body_crit_edge, %sw.epilog.thread37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_sdca_headset_detect.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_sdca_headset_detect, %if.then16)) #9
          to label %cleanup [label %if.then16], !srcloc !223

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %slave = getelementptr inbounds %struct.rt711_sdca_priv, ptr %rt711, i32 0, i32 3
  %10 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slave, align 4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %det_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %det_mode, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_sdca_headset_detect.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.78, i32 noundef %13) #9
  br label %cleanup

io_error:                                         ; preds = %if.then5.io_error_crit_edge, %entry.io_error_crit_edge
  %ret.0 = phi i32 [ %call, %entry.io_error_crit_edge ], [ %call7, %if.then5.io_error_crit_edge ]
  %call18 = call i32 @___ratelimit(ptr noundef nonnull @rt711_sdca_headset_detect._rs, ptr noundef nonnull @.str.78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %io_error.cleanup_crit_edge, label %do.end23

io_error.cleanup_crit_edge:                       ; preds = %io_error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end23:                                         ; preds = %io_error
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.78, i32 noundef %ret.0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %io_error.cleanup_crit_edge, %if.then16, %do.body
  %retval.0 = phi i32 [ 0, %if.then16 ], [ %ret.0, %do.end23 ], [ %ret.0, %io_error.cleanup_crit_edge ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %det_mode) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_write_no_pm(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !24, !25, !26, !27, !28, !29, !31, !32, !34, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98, !100, !101, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !127, !128, !130, !132, !134, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !171, !172, !174, !175, !176, !178, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !204, !205, !206, !207, !208, !210, !211, !213}
!llvm.module.flags = !{!214, !215, !216, !217, !218, !219, !220, !221}
!llvm.ident = !{!222}

!0 = !{ptr @rt711_sdca_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1414, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1435, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rt711_sdca_init.__UNIQUE_ID_ddebug250, !4, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!9 = !{ptr @rt711_sdca_io_init.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1548, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rt711_sdca_io_init.__key.6, !10, !"__key", i1 false, i1 false}
!13 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @rt711_sdca_io_init.__key.8, !15, !"__key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1550, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rt711_sdca_io_init.__key.10, !15, !"__key", i1 false, i1 false}
!18 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rt711_sdca_io_init.__key.12, !20, !"__key", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1552, i32 3}
!21 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1558, i32 3}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.17, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rt711_sdca_io_init._entry, !23, !"_entry", i1 false, i1 false}
!28 = !{ptr @rt711_sdca_io_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1585, i32 2}
!31 = !{ptr @rt711_sdca_io_init.__UNIQUE_ID_ddebug251, !30, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_description252, !33, !"__UNIQUE_ID_description252", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1589, i32 1}
!34 = !{ptr @__UNIQUE_ID_author253, !35, !"__UNIQUE_ID_author253", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1590, i32 1}
!36 = !{ptr @__UNIQUE_ID_file254, !37, !"__UNIQUE_ID_file254", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1591, i32 1}
!38 = !{ptr @__UNIQUE_ID_license255, !37, !"__UNIQUE_ID_license255", i1 false, i1 false}
!39 = !{ptr @soc_sdca_dev_rt711, !40, !"soc_sdca_dev_rt711", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1201, i32 46}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 767, i32 2}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 772, i32 2}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 774, i32 2}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 776, i32 2}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 781, i32 2}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 786, i32 2}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 791, i32 2}
!55 = !{ptr @rt711_sdca_snd_controls, !56, !"rt711_sdca_snd_controls", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 766, i32 38}
!57 = !{ptr @out_vol_tlv, !58, !"out_vol_tlv", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 762, i32 14}
!59 = !{ptr @in_vol_tlv, !60, !"in_vol_tlv", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 763, i32 14}
!61 = !{ptr @mic_vol_tlv, !62, !"mic_vol_tlv", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 764, i32 14}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1108, i32 2}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1109, i32 2}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1110, i32 2}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1111, i32 2}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1112, i32 2}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1113, i32 2}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1115, i32 2}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1118, i32 2}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1122, i32 2}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1125, i32 2}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1128, i32 2}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1132, i32 2}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1135, i32 2}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1138, i32 2}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1141, i32 2}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1143, i32 2}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1146, i32 2}
!97 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1147, i32 2}
!100 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1148, i32 2}
!103 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @rt711_sdca_dapm_widgets, !105, !"rt711_sdca_dapm_widgets", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1107, i32 41}
!106 = !{ptr @rt711_sdca_line1_power_event.sel_mode, !107, !"sel_mode", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1040, i32 22}
!108 = !{ptr @rt711_sdca_adc22_mux, !109, !"rt711_sdca_adc22_mux", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 878, i32 38}
!110 = !{ptr @rt711_adc22_enum, !111, !"rt711_adc22_enum", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 872, i32 8}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 869, i32 2}
!114 = !{ptr @adc_mux_text, !115, !"adc_mux_text", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 865, i32 27}
!116 = !{ptr @rt711_sdca_adc23_mux, !117, !"rt711_sdca_adc23_mux", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 882, i32 38}
!118 = !{ptr @rt711_adc23_enum, !119, !"rt711_adc23_enum", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 875, i32 8}
!120 = !{ptr @rt711_sdca_audio_map, !121, !"rt711_sdca_audio_map", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1151, i32 40}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1178, i32 32}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 494, i32 3}
!126 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @rt711_sdca_set_jack_detect.__UNIQUE_ID_ddebug248, !125, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1367, i32 11}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1386, i32 11}
!132 = !{ptr @rt711_sdca_dai, !133, !"rt711_sdca_dai", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1365, i32 34}
!134 = !{ptr @rt711_sdca_ops, !135, !"rt711_sdca_ops", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1358, i32 37}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1259, i32 2}
!138 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @rt711_sdca_pcm_hw_params.__UNIQUE_ID_ddebug249, !137, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1294, i32 3}
!142 = !{ptr @rt711_sdca_pcm_hw_params._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @rt711_sdca_pcm_hw_params._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1299, i32 3}
!146 = !{ptr @rt711_sdca_pcm_hw_params._entry.64, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @rt711_sdca_pcm_hw_params._entry_ptr.66, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 1319, i32 3}
!150 = !{ptr @rt711_sdca_pcm_hw_params._entry.67, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @rt711_sdca_pcm_hw_params._entry_ptr.69, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 53, i32 3}
!154 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @rt711_sdca_index_read._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @rt711_sdca_index_read._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 37, i32 3}
!159 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @rt711_sdca_index_write._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @rt711_sdca_index_write._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 314, i32 2}
!164 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @rt711_sdca_jack_detect_handler.__UNIQUE_ID_ddebug242, !163, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!166 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 316, i32 2}
!168 = !{ptr @rt711_sdca_jack_detect_handler.__UNIQUE_ID_ddebug243, !167, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 318, i32 2}
!171 = !{ptr @rt711_sdca_jack_detect_handler.__UNIQUE_ID_ddebug244, !170, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!172 = !{ptr @.str.78, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 278, i32 2}
!174 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @rt711_sdca_headset_detect.__UNIQUE_ID_ddebug241, !173, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 284, i32 2}
!178 = !{ptr @rt711_sdca_headset_detect._rs, !177, !"_rs", i1 false, i1 false}
!179 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @rt711_sdca_headset_detect._entry, !177, !"_entry", i1 false, i1 false}
!181 = !{ptr @rt711_sdca_headset_detect._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 407, i32 2}
!184 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @rt711_sdca_btn_check_handler.__UNIQUE_ID_ddebug245, !183, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!186 = !{ptr @rt711_sdca_btn_check_handler._rs, !187, !"_rs", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 427, i32 2}
!188 = !{ptr @rt711_sdca_btn_check_handler._entry, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @rt711_sdca_btn_check_handler._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 107, i32 3}
!192 = !{ptr @.str.85, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @rt711_sdca_calibration._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @rt711_sdca_calibration._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.87, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 148, i32 3}
!197 = !{ptr @rt711_sdca_calibration._entry.86, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @rt711_sdca_calibration._entry_ptr.88, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.89, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 163, i32 2}
!201 = !{ptr @rt711_sdca_calibration.__UNIQUE_ID_ddebug240, !200, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 466, i32 4}
!204 = !{ptr @.str.91, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.92, !203, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @rt711_sdca_jack_init._entry, !203, !"_entry", i1 false, i1 false}
!207 = !{ptr @rt711_sdca_jack_init._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.93, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 474, i32 3}
!210 = !{ptr @rt711_sdca_jack_init.__UNIQUE_ID_ddebug246, !209, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!211 = !{ptr @.str.94, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/rt711-sdca.c", i32 480, i32 3}
!213 = !{ptr @rt711_sdca_jack_init.__UNIQUE_ID_ddebug247, !212, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!214 = !{i32 1, !"wchar_size", i32 2}
!215 = !{i32 1, !"min_enum_size", i32 4}
!216 = !{i32 8, !"branch-target-enforcement", i32 0}
!217 = !{i32 8, !"sign-return-address", i32 0}
!218 = !{i32 8, !"sign-return-address-all", i32 0}
!219 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!220 = !{i32 7, !"uwtable", i32 1}
!221 = !{i32 7, !"frame-pointer", i32 2}
!222 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!223 = !{i64 2148996323, i64 2148996328, i64 2148996341, i64 2148996385, i64 2148996419, i64 2148996440}
!224 = !{!"auto-init"}
!225 = !{i8 0, i8 2}
!226 = !{i64 2148382946, i64 2148382972, i64 2148383001, i64 2148383035, i64 2148383066, i64 2148383089}
!227 = !{i64 2154930225}
!228 = !{i64 892438, i64 892459, i64 892482, i64 892501, i64 892520}
!229 = !{i64 2154930634}
!230 = !{i32 0, i32 33}
