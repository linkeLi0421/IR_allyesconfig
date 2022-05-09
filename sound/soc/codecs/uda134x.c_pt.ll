; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/uda134x.c_pt.bc'
source_filename = "../sound/soc/codecs/uda134x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.uda134x_priv = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.l3_pins = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.uda134x_platform_data = type { %struct.l3_pins, ptr, i32 }
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

@__initcall__kmod_snd_soc_uda134x__246_584_uda134x_codec_driver_init6 = internal global ptr @uda134x_codec_driver_init, section ".initcall6.init", align 4
@uda134x_codec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uda134x_codec_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uda134x_codec_driver_exit = internal global ptr @uda134x_codec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description247 = internal constant [58 x i8] c"snd_soc_uda134x.description=UDA134X ALSA soc codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [81 x i8] c"snd_soc_uda134x.author=Zoltan Devai, Christian Pellegrin <chripell@evolware.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [54 x i8] c"snd_soc_uda134x.file=sound/soc/codecs/snd-soc-uda134x\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [28 x i8] c"snd_soc_uda134x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uda134x-codec\00", [18 x i8] zeroinitializer }, align 32
@uda134x_codec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 551, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Missing L3 bitbang function\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uda134x_codec_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/uda134x.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uda134x_codec_probe._entry_ptr = internal global ptr @uda134x_codec_probe._entry, section ".printk_index", align 4
@uda134x_codec_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@uda134x_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr @uda134x_regmap_write, ptr null, i8 0, i32 14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uda134x_reg_defaults, i32 15, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"uda134x:569:(&uda134x_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@soc_component_dev_uda134x = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr @uda134x_dapm_widgets, i32 6, ptr @uda134x_dapm_routes, i32 6, ptr @uda134x_soc_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uda134x_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@uda134x_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.91, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @uda134x_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.31, i64 1168231104517, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.30, i64 1168231104517, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@uda134x_reg_defaults = internal constant { [15 x %struct.reg_default], [40 x i8] } { [15 x %struct.reg_default] [%struct.reg_default { i32 0, i32 4 }, %struct.reg_default { i32 1, i32 4 }, %struct.reg_default { i32 2, i32 4 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 3 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 0 }], [40 x i8] zeroinitializer }, align 32
@uda134x_dapm_routes = internal constant { [6 x %struct.snd_soc_dapm_route], [72 x i8] } { [6 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.7, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.8, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.9, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.10, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.15, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.15, ptr null, %struct.snd_soc_dobj zeroinitializer }], [72 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VINL1\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VINR1\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VINL2\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VINR2\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VOUTL\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VOUTR\00", [26 x i8] zeroinitializer }, align 32
@uda134x_dapm_widgets = internal constant { [6 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [264 x i8] } { [6 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.7, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.8, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.9, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.10, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.11, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.12, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [264 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@uda134x_soc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016UDA134X SoC Audio Codec\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uda134x_soc_probe\00", [46 x i8] zeroinitializer }, align 32
@uda134x_soc_probe._entry_ptr = internal global ptr @uda134x_soc_probe._entry, section ".printk_index", align 4
@uda134x_soc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013UDA134X SoC codec: unsupported model %d\0A\00", [53 x i8] zeroinitializer }, align 32
@uda134x_soc_probe._entry_ptr.20 = internal global ptr @uda134x_soc_probe._entry.18, section ".printk_index", align 4
@uda134x_soc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.3, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s failed to register dapm controls: %d\00", [54 x i8] zeroinitializer }, align 32
@uda134x_soc_probe._entry_ptr.23 = internal global ptr @uda134x_soc_probe._entry.21, section ".printk_index", align 4
@uda1340_snd_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @uda134x_mixer_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @uda134x_mixer_enum, i64 64) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }], [64 x i8] zeroinitializer }, align 32
@uda1341_snd_controls = internal constant { [20 x %struct.snd_kcontrol_new], [224 x i8] } { [20 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @uda134x_mixer_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @uda134x_mixer_enum, i64 64) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @uda134x_mixer_enum, i64 128) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }], [224 x i8] zeroinitializer }, align 32
@uda1345_snd_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @uda134x_mixer_enum, i64 64) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }], [48 x i8] zeroinitializer }, align 32
@uda134x_soc_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.3, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s unknown codec type: %d\00", [36 x i8] zeroinitializer }, align 32
@uda134x_soc_probe._entry_ptr.26 = internal global ptr @uda134x_soc_probe._entry.24, section ".printk_index", align 4
@uda134x_soc_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.3, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013UDA134X: failed to register controls\0A\00", [56 x i8] zeroinitializer }, align 32
@uda134x_soc_probe._entry_ptr.29 = internal global ptr @uda134x_soc_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@uda1341_dapm_widgets = internal constant { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [88 x i8] } { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.15, ptr @.str.30, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.14, ptr @.str.31, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@uda1340_dapm_widgets = internal constant { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [88 x i8] } { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.15, ptr @.str.30, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.14, ptr @.str.31, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 10, i32 10, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Tone Control - Bass\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 11, i32 11, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Tone Control - Treble\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 11, i32 11, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Sound Processing Filter\00", [40 x i8] zeroinitializer }, align 32
@uda134x_mixer_enum = internal constant { [3 x %struct.soc_enum], [32 x i8] } { [3 x %struct.soc_enum] [%struct.soc_enum { i32 12, i8 0, i8 0, i32 4, i32 3, ptr @uda134x_dsp_setting, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 12, i8 3, i8 3, i32 4, i32 3, ptr @uda134x_deemph, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 2, i8 0, i8 0, i32 4, i32 3, ptr @uda134x_mixmode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCM Playback De-emphasis\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DC Filter Enable Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8, i32 8, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@uda134x_dsp_setting = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], [16 x i8] zeroinitializer }, align 32
@uda134x_deemph = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], [16 x i8] zeroinitializer }, align 32
@uda134x_mixmode = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Flat\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Minimum1\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Minimum2\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Maximum\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32Khz\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"44.1Khz\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"48Khz\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Differential\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Analog1\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Analog2\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Both\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 10, i32 10, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 2, i32 2, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Analog1 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Analog2 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1, i32 1, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mic Sensitivity\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 2, i32 2, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 5, i32 5, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 11, i32 11, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 11, i32 11, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Input Mux\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AGC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AGC Target Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 6, i32 6, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AGC Timing\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 6, i32 6, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC +6dB Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADC +6dB Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC Polarity Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC Polarity Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Double Speed Playback Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8, i32 8, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 10, i32 10, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8, i32 8, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@uda134x_set_bias_level.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.88, ptr @.str.89, ptr @.str.3, ptr @.str.90, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_uda134x\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uda134x_set_bias_level\00", [41 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s bias level %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uda134x-hifi\00", [19 x i8] zeroinitializer }, align 32
@uda134x_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @uda134x_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @uda134x_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uda134x_mute, ptr @uda134x_startup, ptr @uda134x_shutdown, ptr @uda134x_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@uda134x_set_dai_sysclk.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.88, ptr @.str.92, ptr @.str.3, ptr @.str.93, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uda134x_set_dai_sysclk\00", [41 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s clk_id: %d, freq: %u, dir: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@uda134x_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.3, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s unsupported sysclk\0A\00", [39 x i8] zeroinitializer }, align 32
@uda134x_set_dai_sysclk._entry_ptr = internal global ptr @uda134x_set_dai_sysclk._entry, section ".printk_index", align 4
@uda134x_set_dai_fmt.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.88, ptr @.str.95, ptr @.str.3, ptr @.str.96, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uda134x_set_dai_fmt\00", [44 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s fmt: %08X\0A\00", [18 x i8] zeroinitializer }, align 32
@uda134x_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.3, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s unsupported slave mode\0A\00", [35 x i8] zeroinitializer }, align 32
@uda134x_set_dai_fmt._entry_ptr = internal global ptr @uda134x_set_dai_fmt._entry, section ".printk_index", align 4
@uda134x_set_dai_fmt._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.95, ptr @.str.3, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s unsupported clock inversion\0A\00", [62 x i8] zeroinitializer }, align 32
@uda134x_set_dai_fmt._entry_ptr.100 = internal global ptr @uda134x_set_dai_fmt._entry.98, section ".printk_index", align 4
@uda134x_mute.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.88, ptr @.str.101, ptr @.str.3, ptr @.str.102, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uda134x_mute\00", [19 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s mute: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@uda134x_startup.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.88, ptr @.str.103, ptr @.str.3, ptr @.str.104, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uda134x_startup\00", [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s constraining to %d bits at %d\0A\00", [62 x i8] zeroinitializer }, align 32
@uda134x_hw_params.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.88, ptr @.str.105, ptr @.str.3, ptr @.str.106, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uda134x_hw_params\00", [46 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s ignoring hw_params for slave substream\0A\00", [53 x i8] zeroinitializer }, align 32
@uda134x_hw_params.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.88, ptr @.str.105, ptr @.str.3, ptr @.str.107, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s sysclk: %d, rate:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@uda134x_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.105, ptr @.str.3, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s unsupported fs\0A\00", [43 x i8] zeroinitializer }, align 32
@uda134x_hw_params._entry_ptr = internal global ptr @uda134x_hw_params._entry, section ".printk_index", align 4
@uda134x_hw_params.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.88, ptr @.str.105, ptr @.str.3, ptr @.str.109, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s dai_fmt: %d, params_format:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@uda134x_hw_params._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.105, ptr @.str.3, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s unsupported format (right)\0A\00", [63 x i8] zeroinitializer }, align 32
@uda134x_hw_params._entry_ptr.112 = internal global ptr @uda134x_hw_params._entry.110, section ".printk_index", align 4
@uda134x_hw_params._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.105, ptr @.str.3, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s unsupported format\0A\00", [39 x i8] zeroinitializer }, align 32
@uda134x_hw_params._entry_ptr.115 = internal global ptr @uda134x_hw_params._entry.113, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.116 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 384, i64 512]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 18, i64 20]
@___asan_gen_.121 = private unnamed_addr constant [21 x i8] c"uda134x_codec_driver\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 577, i32 31 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 579, i32 11 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 551, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [22 x i8] c"uda134x_regmap_config\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 533, i32 35 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 568, i32 20 }
@___asan_gen_.154 = private unnamed_addr constant [26 x i8] c"soc_component_dev_uda134x\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 519, i32 46 }
@___asan_gen_.157 = private unnamed_addr constant [12 x i8] c"uda134x_dai\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 425, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant [21 x i8] c"uda134x_reg_defaults\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 42, i32 33 }
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c"uda134x_dapm_routes\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 406, i32 40 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 398, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 399, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 400, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 401, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 402, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 403, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [21 x i8] c"uda134x_dapm_widgets\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 397, i32 41 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 407, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 411, i32 19 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 456, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 465, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 486, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [21 x i8] c"uda1340_snd_controls\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 364, i32 38 }
@___asan_gen_.217 = private unnamed_addr constant [21 x i8] c"uda1341_snd_controls\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 336, i32 38 }
@___asan_gen_.220 = private unnamed_addr constant [21 x i8] c"uda1345_snd_controls\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 376, i32 38 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 506, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 512, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 386, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 387, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [21 x i8] c"uda1341_dapm_widgets\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 385, i32 41 }
@___asan_gen_.244 = private unnamed_addr constant [21 x i8] c"uda1340_dapm_widgets\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 391, i32 41 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 365, i32 1 }
@___asan_gen_.250 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 367, i32 1 }
@___asan_gen_.254 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 368, i32 1 }
@___asan_gen_.258 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 370, i32 1 }
@___asan_gen_.262 = private unnamed_addr constant [19 x i8] c"uda134x_mixer_enum\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 330, i32 30 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 371, i32 1 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 373, i32 1 }
@___asan_gen_.271 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [20 x i8] c"uda134x_dsp_setting\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 324, i32 20 }
@___asan_gen_.275 = private unnamed_addr constant [15 x i8] c"uda134x_deemph\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 326, i32 20 }
@___asan_gen_.278 = private unnamed_addr constant [16 x i8] c"uda134x_mixmode\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 327, i32 20 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 324, i32 45 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 324, i32 53 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 325, i32 10 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 325, i32 22 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 326, i32 40 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 326, i32 48 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 326, i32 57 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 326, i32 68 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 327, i32 41 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 327, i32 57 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 328, i32 6 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 328, i32 17 }
@___asan_gen_.317 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 338, i32 1 }
@___asan_gen_.321 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 339, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 340, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 342, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 343, i32 1 }
@___asan_gen_.337 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 350, i32 1 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 352, i32 1 }
@___asan_gen_.346 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 353, i32 1 }
@___asan_gen_.350 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 354, i32 1 }
@___asan_gen_.354 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 356, i32 1 }
@___asan_gen_.358 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 357, i32 1 }
@___asan_gen_.362 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 358, i32 1 }
@___asan_gen_.366 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 359, i32 1 }
@___asan_gen_.370 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 360, i32 1 }
@___asan_gen_.374 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 299, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 426, i32 10 }
@___asan_gen_.390 = private unnamed_addr constant [16 x i8] c"uda134x_dai_ops\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 415, i32 37 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 251, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 263, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 273, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 277, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 283, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 126, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 146, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 186, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 191, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 205, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 209, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 228, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.463 = private constant [30 x i8] c"../sound/soc/codecs/uda134x.c\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 237, i32 3 }
@llvm.compiler.used = appending global [149 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_uda134x_codec_driver_exit, ptr @__initcall__kmod_snd_soc_uda134x__246_584_uda134x_codec_driver_init6, ptr @uda134x_codec_driver_exit, ptr @uda134x_codec_probe._entry, ptr @uda134x_codec_probe._entry_ptr, ptr @uda134x_hw_params._entry, ptr @uda134x_hw_params._entry.110, ptr @uda134x_hw_params._entry.113, ptr @uda134x_hw_params._entry_ptr, ptr @uda134x_hw_params._entry_ptr.112, ptr @uda134x_hw_params._entry_ptr.115, ptr @uda134x_set_dai_fmt._entry, ptr @uda134x_set_dai_fmt._entry.98, ptr @uda134x_set_dai_fmt._entry_ptr, ptr @uda134x_set_dai_fmt._entry_ptr.100, ptr @uda134x_set_dai_sysclk._entry, ptr @uda134x_set_dai_sysclk._entry_ptr, ptr @uda134x_soc_probe._entry, ptr @uda134x_soc_probe._entry.18, ptr @uda134x_soc_probe._entry.21, ptr @uda134x_soc_probe._entry.24, ptr @uda134x_soc_probe._entry.27, ptr @uda134x_soc_probe._entry_ptr, ptr @uda134x_soc_probe._entry_ptr.20, ptr @uda134x_soc_probe._entry_ptr.23, ptr @uda134x_soc_probe._entry_ptr.26, ptr @uda134x_soc_probe._entry_ptr.29, ptr @uda134x_codec_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @uda134x_codec_probe._key, ptr @uda134x_regmap_config, ptr @.str.6, ptr @soc_component_dev_uda134x, ptr @uda134x_dai, ptr @uda134x_reg_defaults, ptr @uda134x_dapm_routes, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @uda134x_dapm_widgets, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @uda1340_snd_controls, ptr @uda1341_snd_controls, ptr @uda1345_snd_controls, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @uda1341_dapm_widgets, ptr @uda1340_dapm_widgets, ptr @.str.34, ptr @.compoundliteral, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @uda134x_mixer_enum, ptr @.str.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @uda134x_dsp_setting, ptr @uda134x_deemph, ptr @uda134x_mixmode, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.compoundliteral.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.compoundliteral.85, ptr @.compoundliteral.86, ptr @.compoundliteral.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @uda134x_dai_ops, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_codec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_codec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_codec_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_uda134x to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_reg_defaults to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_dapm_routes to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_dapm_widgets to i32), i32 1080, i32 1344, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_soc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_soc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_soc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda1340_snd_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda1341_snd_controls to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda1345_snd_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_soc_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_soc_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda1341_dapm_widgets to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda1340_dapm_widgets to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_mixer_enum to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_dsp_setting to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_deemph to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_mixmode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_set_dai_fmt._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_hw_params._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uda134x_hw_params._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uda134x_codec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uda134x_codec_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uda134x_codec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @uda134x_codec_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uda134x_codec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pd6 = getelementptr inbounds %struct.uda134x_priv, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %pd6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %pd6, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %use_gpios = getelementptr inbounds %struct.l3_pins, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %use_gpios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %use_gpios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.end5.if.end15_crit_edge, label %if.then8

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then8:                                         ; preds = %if.end5
  %call12 = tail call i32 @l3_set_gpio_ops(ptr noundef %dev, ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.then8.cleanup_crit_edge, label %if.then8.if.end15_crit_edge

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.then8.if.end15_crit_edge, %if.end5.if.end15_crit_edge
  %call17 = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull @uda134x_regmap_config, ptr noundef nonnull @uda134x_codec_probe._key, ptr noundef nonnull @.str.6) #7
  %regmap = getelementptr inbounds %struct.uda134x_priv, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call17, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_uda134x, ptr noundef nonnull @uda134x_dai, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then20, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %7, %if.then20 ], [ %call25, %if.end23 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call12, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3_set_gpio_ops(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uda134x_regmap_write(ptr noundef %context, i32 noundef %reg, i32 noundef %value) #2 align 64 {
entry:
  %addr = alloca i8, align 1
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  %conv = trunc i32 %value to i8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %data, align 1
  %1 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 8, label %entry.sw.bb_crit_edge
    i32 9, label %entry.sw.bb_crit_edge31
    i32 10, label %entry.sw.bb3_crit_edge
    i32 11, label %entry.sw.bb3_crit_edge32
    i32 12, label %entry.sw.bb3_crit_edge33
    i32 13, label %entry.sw.bb3_crit_edge34
    i32 14, label %sw.bb9
  ]

entry.sw.bb3_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb_crit_edge31:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge31
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 22, ptr %addr, align 1
  %reg.tr30 = trunc i32 %reg to i8
  %3 = shl i8 %reg.tr30, 7
  %conv2 = or i8 %3, %conv
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv2, ptr %data, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge32, %entry.sw.bb3_crit_edge33, %entry.sw.bb3_crit_edge34
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 20, ptr %addr, align 1
  %reg.tr = trunc i32 %reg to i8
  %6 = shl i8 %reg.tr, 6
  %7 = xor i8 %6, -128
  %conv8 = or i8 %7, %conv
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv8, ptr %data, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 21, ptr %addr, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = trunc i32 %reg to i8
  %conv11 = or i8 %10, -64
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv11, ptr %addr, align 1
  %call = call i32 @l3_write(ptr noundef %context, i8 noundef zeroext 20, ptr noundef nonnull %addr, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 20, ptr %addr, align 1
  %conv14 = or i8 %conv, -32
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv14, ptr %data, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb9, %sw.bb3, %sw.bb
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %addr, align 1
  %call16 = call i32 @l3_write(ptr noundef %context, i8 noundef zeroext %15, ptr noundef nonnull %data, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 1
  %. = select i1 %cmp17.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %sw.default.cleanup_crit_edge ], [ %., %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3_write(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uda134x_soc_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %pd2 = getelementptr inbounds %struct.uda134x_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pd2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd2, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  %model = getelementptr inbounds %struct.uda134x_platform_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %model, align 4
  %.off = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %sw.epilog, label %do.end6

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %7) #10
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %power = getelementptr inbounds %struct.uda134x_platform_data, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %power, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %9(i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.uda134x_priv, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 8, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @msleep(i32 noundef 1) #7
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 8, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %18 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp = icmp eq i32 %19, 2
  %uda1341_dapm_widgets.uda1340_dapm_widgets = select i1 %cmp, ptr @uda1341_dapm_widgets, ptr @uda1340_dapm_widgets
  %call14 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i, ptr noundef nonnull %uda1341_dapm_widgets.uda1340_dapm_widgets, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.17, i32 noundef %call14) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %20 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %model, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %21, label %do.end33 [
    i32 1, label %if.end22.sw.bb24_crit_edge
    i32 3, label %if.end22.sw.bb24_crit_edge66
    i32 2, label %sw.bb26
    i32 4, label %sw.bb28
  ]

if.end22.sw.bb24_crit_edge66:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb24

if.end22.sw.bb24_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb24

sw.bb24:                                          ; preds = %if.end22.sw.bb24_crit_edge, %if.end22.sw.bb24_crit_edge66
  %call25 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @uda1340_snd_controls, i32 noundef 6) #7
  br label %sw.epilog37

sw.bb26:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @uda1341_snd_controls, i32 noundef 20) #7
  br label %sw.epilog37

sw.bb28:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @uda1345_snd_controls, i32 noundef 3) #7
  br label %sw.epilog37

do.end33:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.17, i32 noundef %21) #10
  br label %cleanup

sw.epilog37:                                      ; preds = %sw.bb28, %sw.bb26, %sw.bb24
  %ret.0 = phi i32 [ %call29, %sw.bb28 ], [ %call27, %sw.bb26 ], [ %call25, %sw.bb24 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp38 = icmp slt i32 %ret.0, 0
  br i1 %cmp38, label %do.end42, label %sw.epilog37.cleanup_crit_edge

sw.epilog37.cleanup_crit_edge:                    ; preds = %sw.epilog37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end42:                                         ; preds = %sw.epilog37
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %sw.epilog37.cleanup_crit_edge, %do.end33, %do.end19, %do.end6
  %retval.0 = phi i32 [ -22, %do.end6 ], [ %call14, %do.end19 ], [ -22, %do.end33 ], [ %ret.0, %do.end42 ], [ 0, %sw.epilog37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uda134x_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pd1 = getelementptr inbounds %struct.uda134x_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uda134x_set_bias_level.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uda134x_set_bias_level, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !228

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @uda134x_set_bias_level.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.89, i32 noundef %level) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %level, label %do.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb10
    i32 2, label %sw.bb
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %power = getelementptr inbounds %struct.uda134x_platform_data, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %power, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %sw.bb.sw.epilog_crit_edge, label %if.then6

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %8(i32 noundef 1) #7
  %regmap = getelementptr inbounds %struct.uda134x_priv, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regcache_sync(ptr noundef %10) #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end
  %power11 = getelementptr inbounds %struct.uda134x_platform_data, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %power11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %power11, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %sw.bb10.sw.epilog_crit_edge, label %if.then13

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then13:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %12(i32 noundef 0) #7
  %regmap15 = getelementptr inbounds %struct.uda134x_priv, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap15, align 4
  tail call void @regcache_mark_dirty(ptr noundef %14) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then13, %sw.bb10.sw.epilog_crit_edge, %if.then6, %sw.bb.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

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
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uda134x_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uda134x_set_dai_sysclk.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uda134x_set_dai_sysclk, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !228

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @uda134x_set_dai_sysclk.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.92, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = add i32 %freq, -2048000
  call void @__sanitizer_cov_trace_const_cmp4(i32 22528001, i32 %6)
  %7 = icmp ult i32 %6, 22528001
  br i1 %7, label %if.then6, label %do.end10

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %freq, ptr %5, align 4
  br label %cleanup

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.92) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ -22, %do.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uda134x_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uda134x_set_dai_fmt.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uda134x_set_dai_fmt, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !228

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @uda134x_set_dai_fmt.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.95, i32 noundef %fmt) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %fmt, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and)
  %cmp.not = icmp eq i32 %and, 16384
  br i1 %cmp.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.95) #10
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %and12 = and i32 %fmt, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13.not = icmp eq i32 %and12, 0
  br i1 %cmp13.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.95) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %dai_fmt = getelementptr inbounds %struct.uda134x_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %fmt, ptr %dai_fmt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end17, %do.end8
  %retval.0 = phi i32 [ -22, %do.end8 ], [ -22, %do.end17 ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uda134x_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uda134x_mute.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uda134x_mute, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !228

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @uda134x_mute.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.101, i32 noundef %mute) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool4.not = icmp eq i32 %mute, 0
  %. = select i1 %tobool4.not, i32 0, i32 4
  %regmap = getelementptr inbounds %struct.uda134x_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 12, i32 noundef 4, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uda134x_startup(ptr noundef %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %master_substream = getelementptr inbounds %struct.uda134x_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %master_substream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master_substream, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then:                                          ; preds = %entry
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uda134x_startup.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uda134x_startup, %if.then7)) #7
          to label %do.end [label %if.then7], !srcloc !228

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %sample_bits = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %sample_bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sample_bits, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 14
  %12 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @uda134x_startup.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.103, i32 noundef %11, i32 noundef %13) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.then
  %runtime8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %14 = ptrtoint ptr %runtime8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime8, align 4
  %rate9 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 14
  %16 = ptrtoint ptr %rate9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate9, align 4
  %call.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %15, i32 noundef 11, i32 noundef %17, i32 noundef %17) #7
  %18 = ptrtoint ptr %runtime8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %runtime8, align 4
  %sample_bits12 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 22
  %20 = ptrtoint ptr %sample_bits12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sample_bits12, align 4
  %call.i25 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %19, i32 noundef 8, i32 noundef %21, i32 noundef %21) #7
  %slave_substream = getelementptr inbounds %struct.uda134x_priv, ptr %5, i32 0, i32 3
  br label %if.end15

if.end15:                                         ; preds = %do.end, %entry.if.end15_crit_edge
  %master_substream.sink = phi ptr [ %slave_substream, %do.end ], [ %master_substream, %entry.if.end15_crit_edge ]
  %22 = ptrtoint ptr %master_substream.sink to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %substream, ptr %master_substream.sink, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @uda134x_shutdown(ptr noundef readnone %substream, ptr nocapture noundef readonly %dai) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %master_substream = getelementptr inbounds %struct.uda134x_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %master_substream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master_substream, align 4
  %cmp = icmp eq ptr %7, %substream
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %slave_substream = getelementptr inbounds %struct.uda134x_priv, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %slave_substream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slave_substream, align 4
  %10 = ptrtoint ptr %master_substream to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %master_substream, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %slave_substream3 = getelementptr inbounds %struct.uda134x_priv, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %slave_substream3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %slave_substream3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uda134x_hw_params(ptr noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %slave_substream = getelementptr inbounds %struct.uda134x_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %slave_substream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slave_substream, align 4
  %cmp = icmp eq ptr %7, %substream
  br i1 %cmp, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uda134x_hw_params.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uda134x_hw_params, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !228

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @uda134x_hw_params.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105) #7
  br label %cleanup

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uda134x_hw_params.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uda134x_hw_params, %if.then19)) #7
          to label %do.end23 [label %if.then19], !srcloc !228

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @uda134x_hw_params.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.105, i32 noundef %9, i32 noundef %11) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body7
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  %arrayidx.i.i98 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx.i.i98 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i98, align 4
  %div = udiv i32 %13, %15
  %16 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %div, label %do.end30 [
    i32 512, label %do.end23.do.body33_crit_edge
    i32 384, label %sw.bb
    i32 256, label %sw.bb26
  ]

do.end23.do.body33_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body33

sw.bb:                                            ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body33

sw.bb26:                                          ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body33

do.end30:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.105) #10
  br label %cleanup

do.body33:                                        ; preds = %sw.bb26, %sw.bb, %do.end23.do.body33_crit_edge
  %hw_params.0 = phi i32 [ 32, %sw.bb26 ], [ 16, %sw.bb ], [ 0, %do.end23.do.body33_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uda134x_hw_params.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uda134x_hw_params, %if.then45)) #7
          to label %do.end49 [label %if.then45], !srcloc !228

if.then45:                                        ; preds = %do.body33
  %dai_fmt = getelementptr inbounds %struct.uda134x_priv, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dai_fmt, align 4
  %arrayidx.i.i99 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx.i.i99 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.then45.if.then.i.i_crit_edge

if.then45.if.then.i.i_crit_edge:                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %if.then45.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.then45.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %20, %if.then45.if.then.i.i_crit_edge ], [ %23, %for.inc.i.i.if.then.i.i_crit_edge ]
  %21 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !229
  %add.i.i = or i32 %21, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.then45
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.1.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @uda134x_hw_params.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.105, i32 noundef %18, i32 noundef %retval.0.i.i) #7
  br label %do.end49

do.end49:                                         ; preds = %params_format.exit, %do.body33
  %dai_fmt50 = getelementptr inbounds %struct.uda134x_priv, ptr %5, i32 0, i32 1
  %24 = ptrtoint ptr %dai_fmt50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dai_fmt50, align 4
  %and = and i32 %25, 15
  %26 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %and, label %do.end71 [
    i32 1, label %do.end49.sw.epilog74_crit_edge
    i32 2, label %sw.bb51
    i32 3, label %sw.bb66
  ]

do.end49.sw.epilog74_crit_edge:                   ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog74

sw.bb51:                                          ; preds = %do.end49
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %sw.bb51.if.then.i.i.i_crit_edge

sw.bb51.if.then.i.i.i_crit_edge:                  ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %sw.bb51.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %sw.bb51.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %28, %sw.bb51.if.then.i.i.i_crit_edge ], [ %31, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %29 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !229
  %add.i.i.i = or i32 %29, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %sw.bb51
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.1.i.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #7
  %32 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %call1.i, label %do.end62 [
    i32 16, label %sw.bb53
    i32 18, label %sw.bb55
    i32 20, label %sw.bb57
  ]

sw.bb53:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or54 = or i32 %hw_params.0, 2
  br label %sw.epilog74

sw.bb55:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or56 = or i32 %hw_params.0, 4
  br label %sw.epilog74

sw.bb57:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or58 = or i32 %hw_params.0, 6
  br label %sw.epilog74

do.end62:                                         ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.105) #10
  br label %cleanup

sw.bb66:                                          ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  %or67 = or i32 %hw_params.0, 8
  br label %sw.epilog74

do.end71:                                         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.105) #10
  br label %cleanup

sw.epilog74:                                      ; preds = %sw.bb66, %sw.bb57, %sw.bb55, %sw.bb53, %do.end49.sw.epilog74_crit_edge
  %hw_params.1 = phi i32 [ %or67, %sw.bb66 ], [ %or58, %sw.bb57 ], [ %or56, %sw.bb55 ], [ %or54, %sw.bb53 ], [ %hw_params.0, %do.end49.sw.epilog74_crit_edge ]
  %regmap = getelementptr inbounds %struct.uda134x_priv, ptr %5, i32 0, i32 4
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 8, i32 noundef -1, i32 noundef %hw_params.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog74, %do.end71, %do.end62, %do.end30, %if.then5, %do.body
  %retval.0 = phi i32 [ -22, %do.end30 ], [ -22, %do.end71 ], [ %call.i, %sw.epilog74 ], [ -22, %do.end62 ], [ 0, %if.then5 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !163, !165, !167, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !206, !207, !208, !210, !211, !213, !214, !215, !217, !218}
!llvm.module.flags = !{!219, !220, !221, !222, !223, !224, !225, !226}
!llvm.ident = !{!227}

!0 = !{ptr @__initcall__kmod_snd_soc_uda134x__246_584_uda134x_codec_driver_init6, !1, !"__initcall__kmod_snd_soc_uda134x__246_584_uda134x_codec_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/uda134x.c", i32 584, i32 1}
!2 = !{ptr @__exitcall_uda134x_codec_driver_exit, !1, !"__exitcall_uda134x_codec_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description247, !4, !"__UNIQUE_ID_description247", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/uda134x.c", i32 586, i32 1}
!5 = !{ptr @__UNIQUE_ID_author248, !6, !"__UNIQUE_ID_author248", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/uda134x.c", i32 587, i32 1}
!7 = !{ptr @__UNIQUE_ID_file249, !8, !"__UNIQUE_ID_file249", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/uda134x.c", i32 588, i32 1}
!9 = !{ptr @__UNIQUE_ID_license250, !8, !"__UNIQUE_ID_license250", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/uda134x.c", i32 579, i32 11}
!12 = !{ptr @uda134x_codec_driver, !13, !"uda134x_codec_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/uda134x.c", i32 577, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/uda134x.c", i32 551, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @uda134x_codec_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @uda134x_codec_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @uda134x_codec_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/uda134x.c", i32 568, i32 20}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @uda134x_regmap_config, !26, !"uda134x_regmap_config", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/uda134x.c", i32 533, i32 35}
!27 = !{ptr @uda134x_reg_defaults, !28, !"uda134x_reg_defaults", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/uda134x.c", i32 42, i32 33}
!29 = !{ptr @soc_component_dev_uda134x, !30, !"soc_component_dev_uda134x", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/uda134x.c", i32 519, i32 46}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/uda134x.c", i32 398, i32 2}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/uda134x.c", i32 399, i32 2}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/uda134x.c", i32 400, i32 2}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/uda134x.c", i32 401, i32 2}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/uda134x.c", i32 402, i32 2}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/uda134x.c", i32 403, i32 2}
!43 = !{ptr @uda134x_dapm_widgets, !44, !"uda134x_dapm_widgets", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/uda134x.c", i32 397, i32 41}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/uda134x.c", i32 407, i32 4}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/uda134x.c", i32 411, i32 19}
!49 = !{ptr @uda134x_dapm_routes, !50, !"uda134x_dapm_routes", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/uda134x.c", i32 406, i32 40}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/uda134x.c", i32 456, i32 2}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @uda134x_soc_probe._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @uda134x_soc_probe._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/uda134x.c", i32 465, i32 3}
!58 = !{ptr @uda134x_soc_probe._entry.18, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @uda134x_soc_probe._entry_ptr.20, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/uda134x.c", i32 486, i32 3}
!62 = !{ptr @uda134x_soc_probe._entry.21, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @uda134x_soc_probe._entry_ptr.23, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/uda134x.c", i32 506, i32 3}
!66 = !{ptr @uda134x_soc_probe._entry.24, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @uda134x_soc_probe._entry_ptr.26, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/uda134x.c", i32 512, i32 3}
!70 = !{ptr @uda134x_soc_probe._entry.27, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @uda134x_soc_probe._entry_ptr.29, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/uda134x.c", i32 386, i32 2}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/uda134x.c", i32 387, i32 2}
!76 = !{ptr @uda1341_dapm_widgets, !77, !"uda1341_dapm_widgets", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/uda134x.c", i32 385, i32 41}
!78 = !{ptr @uda1340_dapm_widgets, !79, !"uda1340_dapm_widgets", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/uda134x.c", i32 391, i32 41}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/uda134x.c", i32 365, i32 1}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/uda134x.c", i32 367, i32 1}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/uda134x.c", i32 368, i32 1}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/uda134x.c", i32 370, i32 1}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/uda134x.c", i32 371, i32 1}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/uda134x.c", i32 373, i32 1}
!92 = !{ptr @uda1340_snd_controls, !93, !"uda1340_snd_controls", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/uda134x.c", i32 364, i32 38}
!94 = !{ptr @uda134x_mixer_enum, !95, !"uda134x_mixer_enum", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/uda134x.c", i32 330, i32 30}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/uda134x.c", i32 324, i32 45}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/uda134x.c", i32 324, i32 53}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/uda134x.c", i32 325, i32 10}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/uda134x.c", i32 325, i32 22}
!104 = !{ptr @uda134x_dsp_setting, !105, !"uda134x_dsp_setting", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/uda134x.c", i32 324, i32 20}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/uda134x.c", i32 326, i32 40}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/uda134x.c", i32 326, i32 48}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/uda134x.c", i32 326, i32 57}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/uda134x.c", i32 326, i32 68}
!114 = !{ptr @uda134x_deemph, !115, !"uda134x_deemph", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/uda134x.c", i32 326, i32 20}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/uda134x.c", i32 327, i32 41}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/uda134x.c", i32 327, i32 57}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/uda134x.c", i32 328, i32 6}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/uda134x.c", i32 328, i32 17}
!124 = !{ptr @uda134x_mixmode, !125, !"uda134x_mixmode", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/uda134x.c", i32 327, i32 20}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/uda134x.c", i32 338, i32 1}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/uda134x.c", i32 339, i32 1}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/uda134x.c", i32 340, i32 1}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/uda134x.c", i32 342, i32 1}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/uda134x.c", i32 343, i32 1}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/uda134x.c", i32 350, i32 1}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/uda134x.c", i32 352, i32 1}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/uda134x.c", i32 353, i32 1}
!142 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/uda134x.c", i32 354, i32 1}
!144 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/uda134x.c", i32 356, i32 1}
!146 = !{ptr @.str.77, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/uda134x.c", i32 357, i32 1}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/uda134x.c", i32 358, i32 1}
!150 = !{ptr @.str.81, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/uda134x.c", i32 359, i32 1}
!152 = !{ptr @.str.83, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/uda134x.c", i32 360, i32 1}
!154 = !{ptr @uda1341_snd_controls, !155, !"uda1341_snd_controls", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/uda134x.c", i32 336, i32 38}
!156 = !{ptr @uda1345_snd_controls, !157, !"uda1345_snd_controls", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/uda134x.c", i32 376, i32 38}
!158 = !{ptr @.str.88, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/uda134x.c", i32 299, i32 2}
!160 = !{ptr @.str.89, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.90, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @uda134x_set_bias_level.__UNIQUE_ID_ddebug245, !159, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!163 = !{ptr @.str.91, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/uda134x.c", i32 426, i32 10}
!165 = !{ptr @uda134x_dai, !166, !"uda134x_dai", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/uda134x.c", i32 425, i32 34}
!167 = !{ptr @uda134x_dai_ops, !168, !"uda134x_dai_ops", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/uda134x.c", i32 415, i32 37}
!169 = !{ptr @.str.92, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/uda134x.c", i32 251, i32 2}
!171 = !{ptr @.str.93, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @uda134x_set_dai_sysclk.__UNIQUE_ID_ddebug243, !170, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!173 = !{ptr @.str.94, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/uda134x.c", i32 263, i32 2}
!175 = !{ptr @uda134x_set_dai_sysclk._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @uda134x_set_dai_sysclk._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.95, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/uda134x.c", i32 273, i32 2}
!179 = !{ptr @.str.96, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @uda134x_set_dai_fmt.__UNIQUE_ID_ddebug244, !178, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!181 = !{ptr @.str.97, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/uda134x.c", i32 277, i32 3}
!183 = !{ptr @uda134x_set_dai_fmt._entry, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @uda134x_set_dai_fmt._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.99, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/uda134x.c", i32 283, i32 3}
!187 = !{ptr @uda134x_set_dai_fmt._entry.98, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @uda134x_set_dai_fmt._entry_ptr.100, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.101, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/uda134x.c", i32 126, i32 2}
!191 = !{ptr @.str.102, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @uda134x_mute.__UNIQUE_ID_ddebug238, !190, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!193 = !{ptr @.str.103, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/uda134x.c", i32 146, i32 3}
!195 = !{ptr @.str.104, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @uda134x_startup.__UNIQUE_ID_ddebug239, !194, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!197 = !{ptr @.str.105, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/uda134x.c", i32 186, i32 3}
!199 = !{ptr @.str.106, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @uda134x_hw_params.__UNIQUE_ID_ddebug240, !198, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!201 = !{ptr @.str.107, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/uda134x.c", i32 191, i32 2}
!203 = !{ptr @uda134x_hw_params.__UNIQUE_ID_ddebug241, !202, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!204 = !{ptr @.str.108, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/uda134x.c", i32 205, i32 3}
!206 = !{ptr @uda134x_hw_params._entry, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @uda134x_hw_params._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.109, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/uda134x.c", i32 209, i32 2}
!210 = !{ptr @uda134x_hw_params.__UNIQUE_ID_ddebug242, !209, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!211 = !{ptr @.str.111, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/uda134x.c", i32 228, i32 4}
!213 = !{ptr @uda134x_hw_params._entry.110, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @uda134x_hw_params._entry_ptr.112, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.114, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/uda134x.c", i32 237, i32 3}
!217 = !{ptr @uda134x_hw_params._entry.113, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @uda134x_hw_params._entry_ptr.115, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{i32 1, !"wchar_size", i32 2}
!220 = !{i32 1, !"min_enum_size", i32 4}
!221 = !{i32 8, !"branch-target-enforcement", i32 0}
!222 = !{i32 8, !"sign-return-address", i32 0}
!223 = !{i32 8, !"sign-return-address-all", i32 0}
!224 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!225 = !{i32 7, !"uwtable", i32 1}
!226 = !{i32 7, !"frame-pointer", i32 2}
!227 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!228 = !{i64 2148967409, i64 2148967414, i64 2148967427, i64 2148967471, i64 2148967505, i64 2148967526}
!229 = !{i32 0, i32 33}
