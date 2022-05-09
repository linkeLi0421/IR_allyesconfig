; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/es8316.c_pt.bc'
source_filename = "../sound/soc/codecs/es8316.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.es8316_priv = type { %struct.mutex, ptr, ptr, ptr, ptr, i32, i32, [6 x i32], %struct.snd_pcm_hw_constraint_list, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_es8316__297_858_es8316_i2c_driver_init6 = internal global ptr @es8316_i2c_driver_init, section ".initcall6.init", align 4
@es8316_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @es8316_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @es8316_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @es8316_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_es8316_i2c_driver_exit = internal global ptr @es8316_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description298 = internal constant [69 x i8] c"snd_soc_es8316.description=Everest Semi ES8316 ALSA SoC Codec Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [64 x i8] c"snd_soc_es8316.author=David Yang <yangxiaohua@everest-semi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [52 x i8] c"snd_soc_es8316.file=sound/soc/codecs/snd-soc-es8316\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [30 x i8] c"snd_soc_es8316.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"es8316\00", [25 x i8] zeroinitializer }, align 32
@es8316_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"everest,es8316\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@es8316_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"es8316\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@es8316_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@es8316_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 83, ptr null, ptr null, ptr @es8316_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"es8316:806:(&es8316_regmap)->lock\00", [62 x i8] zeroinitializer }, align 32
@es8316_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&es8316->lock\00", [18 x i8] zeroinitializer }, align 32
@es8316_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 817, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get IRQ %d: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"es8316_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/es8316.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@es8316_i2c_probe._entry_ptr = internal global ptr @es8316_i2c_probe._entry, section ".printk_index", align 4
@soc_component_dev_es8316 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @es8316_snd_controls, i32 26, ptr @es8316_dapm_widgets, i32 37, ptr @es8316_dapm_routes, i32 47, ptr @es8316_probe, ptr @es8316_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @es8316_set_jack, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@es8316_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.140, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @es8316_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.141, i64 68719476804, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.142, i64 68719476804, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@es8316_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @es8316_volatile_ranges, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@es8316_volatile_ranges = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 79, i32 79 }], [24 x i8] zeroinitializer }, align 32
@es8316_irq.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.5, ptr @.str.10, i8 0, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_es8316\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"es8316_irq\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpio flags %#04x\0A\00", [46 x i8] zeroinitializer }, align 32
@es8316_irq.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.5, ptr @.str.11, i8 0, i8 -106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jack unplugged\0A\00", [16 x i8] zeroinitializer }, align 32
@es8316_irq.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.5, ptr @.str.10, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Bias\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Analog power\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Bias\00", [27 x i8] zeroinitializer }, align 32
@es8316_snd_controls = internal constant { [26 x %struct.snd_kcontrol_new], [288 x i8] } { [26 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @hpout_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @hpmixer_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @dacpol to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adcpol to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_pga_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_max_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_min_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_target_tlv }, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ng_type to i32) }], [288 x i8] zeroinitializer }, align 32
@es8316_dapm_routes = internal constant { [47 x %struct.snd_soc_dapm_route], [628 x i8] } { [47 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.71, ptr null, ptr @.str.12, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.12, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr null, ptr @.str.14, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.14, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr null, ptr @.str.13, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.13, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr @.str.108, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr @.str.109, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr @.str.112, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.115, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.120, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr @.str.120, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr @.str.121, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr @.str.123, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.125, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.127, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr null, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr null, ptr @.str.14, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr null, ptr @.str.13, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }], [628 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@hpout_vol_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 0, i32 1, i32 8, i32 -4800, i32 0, i32 1, i32 3, i32 1, i32 8, i32 -2400, i32 1200], [40 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 24, i32 24, i32 4, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Headphone Mixer Volume\00", [41 x i8] zeroinitializer }, align 32
@hpmixer_gain_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 4, i32 1, i32 8, i32 -1200, i32 150, i32 8, i32 11, i32 1, i32 8, i32 -450, i32 150], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 11, i32 11, i32 22, i32 22, i32 4, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Playback Polarity\00", [46 x i8] zeroinitializer }, align 32
@dacpol = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 48, i8 0, i8 0, i32 4, i32 3, ptr @dacpol_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@dac_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9600, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 192, i32 192, i32 51, i32 52, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC Soft Ramp Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 48, i32 48, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC Soft Ramp Rate\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 4, i32 4, i32 48, i32 48, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DAC Notch Filter Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 49, i32 49, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC Double Fs Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 49, i32 49, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DAC Stereo Enhancement\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 50, i32 50, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC Mono Mix Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Capture Polarity\00", [47 x i8] zeroinitializer }, align 32
@adcpol = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 1, i8 1, i32 2, i32 1, ptr @adcpol_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mic Boost Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@adc_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9600, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 192, i32 192, i32 39, i32 39, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC PGA Gain Volume\00", [44 x i8] zeroinitializer }, align 32
@adc_pga_gain_tlv = internal constant { [38 x i32], [40 x i8] } { [38 x i32] [i32 3, i32 144, i32 0, i32 0, i32 1, i32 8, i32 -350, i32 0, i32 1, i32 1, i32 1, i32 8, i32 0, i32 0, i32 2, i32 2, i32 1, i32 8, i32 250, i32 0, i32 3, i32 3, i32 1, i32 8, i32 450, i32 0, i32 4, i32 7, i32 1, i32 8, i32 700, i32 300, i32 8, i32 10, i32 1, i32 8, i32 1800, i32 300], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 35, i32 35, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC Soft Ramp Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC Double Fs Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ALC Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ALC Capture Max Volume\00", [41 x i8] zeroinitializer }, align 32
@alc_max_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -650, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 28, i32 28, i32 41, i32 41, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ALC Capture Min Volume\00", [41 x i8] zeroinitializer }, align 32
@alc_min_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 28, i32 28, i32 42, i32 42, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ALC Capture Target Volume\00", [38 x i8] zeroinitializer }, align 32
@alc_target_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1650, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 43, i32 43, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ALC Capture Hold Time\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 43, i32 43, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ALC Capture Decay Time\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 44, i32 44, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ALC Capture Attack Time\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 44, i32 44, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ALC Capture Noise Gate Switch\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ALC Capture Noise Gate Threshold\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 46, i32 46, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ALC Capture Noise Gate Type\00", [36 x i8] zeroinitializer }, align 32
@ng_type = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 46, i8 6, i8 6, i32 2, i32 1, ptr @ng_type_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dacpol_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"R Invert\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"L Invert\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"L + R Invert\00", [19 x i8] zeroinitializer }, align 32
@adcpol_txt = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.63, ptr @.str.67], [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Invert\00", [25 x i8] zeroinitializer }, align 32
@ng_type_txt = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.68, ptr @.str.69], [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Constant PGA Gain\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mute ADC Output\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC1\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC2\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Differential Mux\00", [47 x i8] zeroinitializer }, align 32
@es8316_analog_in_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @es8316_analog_input_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC Vref\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC bias\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC Clock\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Line input PGA\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mono ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Digital Mic Mux\00", [16 x i8] zeroinitializer }, align 32
@es8316_dmic_src_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @es8316_dmic_src_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I2S OUT\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S1 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"I2S IN\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"I2S1 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC Source Mux\00", [17 x i8] zeroinitializer }, align 32
@es8316_dacsrc_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @es8316_dacsrc_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC Vref\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC Clock\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right DAC\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left DAC\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Left Headphone Mux\00", [45 x i8] zeroinitializer }, align 32
@es8316_left_hpmux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @es8316_left_hpmux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Right Headphone Mux\00", [44 x i8] zeroinitializer }, align 32
@es8316_right_hpmux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @es8316_right_hpmux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Left Headphone Mixer\00", [43 x i8] zeroinitializer }, align 32
@es8316_out_left_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.122 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.123, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.124 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Right Headphone Mixer\00", [42 x i8] zeroinitializer }, align 32
@es8316_out_right_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.126 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.128 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Left Headphone Mixer Out\00", [39 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Right Headphone Mixer Out\00", [38 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Left Headphone Charge Pump\00", [37 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Right Headphone Charge Pump\00", [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Headphone Charge Pump\00", [42 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Headphone Charge Pump Clock\00", [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Left Headphone Driver\00", [42 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Right Headphone Driver\00", [41 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Headphone Out\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Left Headphone ical\00", [44 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Right Headphone ical\00", [43 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOL\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOR\00", [27 x i8] zeroinitializer }, align 32
@es8316_dapm_widgets = internal constant { [37 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1692 x i8] } { [37 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.14, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.13, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.12, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @es8316_analog_in_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 34, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 34, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @es8316_dmic_src_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.80, ptr @.str.81, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.82, ptr @.str.83, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @es8316_dacsrc_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 47, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 47, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @es8316_left_hpmux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @es8316_right_hpmux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 21, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @es8316_out_left_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 21, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @es8316_out_right_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 21, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 21, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 23, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 23, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 23, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 23, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 24, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 24, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1692 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Route\00", [26 x i8] zeroinitializer }, align 32
@es8316_analog_input_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 34, i8 4, i8 4, i32 4, i32 3, ptr @es8316_analog_in_txt, ptr @es8316_analog_in_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@es8316_analog_in_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111], [16 x i8] zeroinitializer }, align 32
@es8316_analog_in_values = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lin1-rin1\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lin2-rin2\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lin1-rin1 with 20db Boost\00", [38 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lin2-rin2 with 20db Boost\00", [38 x i8] zeroinitializer }, align 32
@es8316_dmic_src_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 37, i8 0, i8 0, i32 3, i32 3, ptr @es8316_dmic_txt, ptr @es8316_dmic_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@es8316_dmic_txt = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.112, ptr @.str.113, ptr @.str.114], [20 x i8] zeroinitializer }, align 32
@es8316_dmic_values = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dmic disable\00", [19 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dmic data at high level\00", [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dmic data at low level\00", [41 x i8] zeroinitializer }, align 32
@es8316_dacsrc_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 48, i8 6, i8 6, i32 4, i32 3, ptr @es8316_dacsrc_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@es8316_dacsrc_texts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], [16 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LDATA TO LDAC, RDATA TO RDAC\00", [35 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LDATA TO LDAC, LDATA TO RDAC\00", [35 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RDATA TO LDAC, RDATA TO RDAC\00", [35 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RDATA TO LDAC, LDATA TO RDAC\00", [35 x i8] zeroinitializer }, align 32
@es8316_left_hpmux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19, i8 4, i8 4, i32 4, i32 3, ptr @es8316_hpmux_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@es8316_hpmux_texts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.108, ptr @.str.109, ptr @.str.119, ptr @.str.120], [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lin-rin with Boost\00", [45 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lin-rin with Boost and PGA\00", [37 x i8] zeroinitializer }, align 32
@es8316_right_hpmux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19, i8 0, i8 0, i32 4, i32 3, ptr @es8316_hpmux_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LLIN Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Left DAC Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RLIN Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Right DAC Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@es8316_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.5, i32 719, ptr @.str.132, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unable to get mclk\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"es8316_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@es8316_probe._entry_ptr = internal global ptr @es8316_probe._entry, section ".printk_index", align 4
@es8316_probe._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.131, ptr @.str.5, i32 723, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"assuming static mclk\0A\00", [42 x i8] zeroinitializer }, align 32
@es8316_probe._entry_ptr.135 = internal global ptr @es8316_probe._entry.133, section ".printk_index", align 4
@es8316_probe._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.131, ptr @.str.5, i32 727, ptr @.str.132, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to enable mclk\0A\00", [41 x i8] zeroinitializer }, align 32
@es8316_probe._entry_ptr.138 = internal global ptr @es8316_probe._entry.136, section ".printk_index", align 4
@.str.139 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"everest,jack-detect-inverted\00", [35 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ES8316 HiFi\00", [20 x i8] zeroinitializer }, align 32
@es8316_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @es8316_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @es8316_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @es8316_mute, ptr @es8316_pcm_startup, ptr null, ptr @es8316_pcm_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@es8316_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.5, i32 405, ptr @.str.132, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Codec driver only supports slave mode\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"es8316_set_dai_fmt\00", [45 x i8] zeroinitializer }, align 32
@es8316_set_dai_fmt._entry_ptr = internal global ptr @es8316_set_dai_fmt._entry, section ".printk_index", align 4
@es8316_set_dai_fmt._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.5, i32 410, ptr @.str.132, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Codec driver only supports I2S format\0A\00", [57 x i8] zeroinitializer }, align 32
@es8316_set_dai_fmt._entry_ptr.147 = internal global ptr @es8316_set_dai_fmt._entry.145, section ".printk_index", align 4
@switch.table.es8316_set_dai_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 0, i32 32, i32 32], [44 x i8] zeroinitializer }, align 32
@switch.table.es8316_set_dai_fmt.148 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 32, i32 0, i32 32], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 6, i64 10, i64 36]
@___asan_gen_.149 = private unnamed_addr constant [18 x i8] c"es8316_i2c_driver\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 849, i32 26 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 851, i32 13 }
@___asan_gen_.155 = private unnamed_addr constant [16 x i8] c"es8316_of_match\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 833, i32 34 }
@___asan_gen_.158 = private unnamed_addr constant [14 x i8] c"es8316_i2c_id\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 826, i32 35 }
@___asan_gen_.161 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [14 x i8] c"es8316_regmap\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 784, i32 35 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 806, i32 19 }
@___asan_gen_.170 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 811, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 817, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [25 x i8] c"soc_component_dev_es8316\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 760, i32 46 }
@___asan_gen_.197 = private unnamed_addr constant [11 x i8] c"es8316_dai\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 524, i32 34 }
@___asan_gen_.200 = private unnamed_addr constant [22 x i8] c"es8316_volatile_table\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 779, i32 41 }
@___asan_gen_.203 = private unnamed_addr constant [23 x i8] c"es8316_volatile_ranges\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 775, i32 34 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 591, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 600, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 565, i32 42 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 566, i32 42 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 567, i32 42 }
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c"es8316_snd_controls\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 88, i32 38 }
@___asan_gen_.230 = private unnamed_addr constant [19 x i8] c"es8316_dapm_routes\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 283, i32 40 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 89, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [14 x i8] c"hpout_vol_tlv\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 70, i32 14 }
@___asan_gen_.239 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 91, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"hpmixer_gain_tlv\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 56, i32 14 }
@___asan_gen_.246 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 94, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [7 x i8] c"dacpol\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 85, i32 30 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 95, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [12 x i8] c"dac_vol_tlv\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 51, i32 14 }
@___asan_gen_.259 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 97, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 98, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 99, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 100, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 101, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 102, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 104, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [7 x i8] c"adcpol\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 81, i32 30 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 105, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 106, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [12 x i8] c"adc_vol_tlv\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 52, i32 14 }
@___asan_gen_.300 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 108, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [17 x i8] c"adc_pga_gain_tlv\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 61, i32 14 }
@___asan_gen_.307 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 110, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 111, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 113, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 114, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant [17 x i8] c"alc_max_gain_tlv\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 53, i32 14 }
@___asan_gen_.326 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 116, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [17 x i8] c"alc_min_gain_tlv\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 54, i32 14 }
@___asan_gen_.333 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 118, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [15 x i8] c"alc_target_tlv\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 55, i32 14 }
@___asan_gen_.340 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 120, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 121, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 122, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 123, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 125, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 127, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [8 x i8] c"ng_type\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 77, i32 30 }
@___asan_gen_.367 = private unnamed_addr constant [11 x i8] c"dacpol_txt\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 83, i32 26 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 84, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 84, i32 14 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 84, i32 26 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 84, i32 38 }
@___asan_gen_.382 = private unnamed_addr constant [11 x i8] c"adcpol_txt\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 80, i32 27 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 80, i32 54 }
@___asan_gen_.388 = private unnamed_addr constant [12 x i8] c"ng_type_txt\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 75, i32 27 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 76, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 76, i32 25 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 209, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 210, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 211, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 214, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant [30 x i8] c"es8316_analog_in_mux_controls\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 143, i32 38 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 217, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 218, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 219, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 220, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 222, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 223, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant [25 x i8] c"es8316_dmic_src_controls\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 157, i32 38 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 227, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 229, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 232, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant [27 x i8] c"es8316_dacsrc_mux_controls\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 201, i32 38 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 235, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 236, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 237, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 238, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 241, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [27 x i8] c"es8316_left_hpmux_controls\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 171, i32 38 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 243, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant [28 x i8] c"es8316_right_hpmux_controls\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 177, i32 38 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 245, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant [20 x i8] c"es8316_out_left_mix\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 181, i32 38 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 248, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [21 x i8] c"es8316_out_right_mix\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 185, i32 38 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 251, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 253, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 256, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 258, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 260, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 262, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 265, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 267, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 269, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 274, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 276, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 279, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 280, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant [20 x i8] c"es8316_dapm_widgets\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 204, i32 41 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 144, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant [25 x i8] c"es8316_analog_input_enum\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 138, i32 30 }
@___asan_gen_.535 = private unnamed_addr constant [21 x i8] c"es8316_analog_in_txt\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 131, i32 27 }
@___asan_gen_.538 = private unnamed_addr constant [24 x i8] c"es8316_analog_in_values\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 137, i32 27 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 132, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 133, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 134, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 135, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant [21 x i8] c"es8316_dmic_src_enum\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 152, i32 30 }
@___asan_gen_.556 = private unnamed_addr constant [16 x i8] c"es8316_dmic_txt\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 146, i32 27 }
@___asan_gen_.559 = private unnamed_addr constant [19 x i8] c"es8316_dmic_values\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 151, i32 27 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 147, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 148, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 149, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant [23 x i8] c"es8316_dacsrc_mux_enum\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 198, i32 8 }
@___asan_gen_.574 = private unnamed_addr constant [20 x i8] c"es8316_dacsrc_texts\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 191, i32 27 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 192, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 193, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 194, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 195, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant [23 x i8] c"es8316_left_hpmux_enum\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 168, i32 8 }
@___asan_gen_.592 = private unnamed_addr constant [19 x i8] c"es8316_hpmux_texts\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 161, i32 27 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 164, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 165, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant [24 x i8] c"es8316_right_hpmux_enum\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 174, i32 8 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 182, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 183, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 186, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 187, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 717, i32 55 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 719, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 723, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 727, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 655, i32 8 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 525, i32 10 }
@___asan_gen_.653 = private unnamed_addr constant [11 x i8] c"es8316_ops\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 515, i32 37 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 534, i32 18 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 527, i32 18 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 405, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.674 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.675 = private constant [29 x i8] c"../sound/soc/codecs/es8316.c\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 410, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant [32 x i8] c"switch.table.es8316_set_dai_fmt\00", align 1
@___asan_gen_.678 = private unnamed_addr constant [36 x i8] c"switch.table.es8316_set_dai_fmt.148\00", align 1
@llvm.compiler.used = appending global [209 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_es8316_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_es8316__297_858_es8316_i2c_driver_init6, ptr @es8316_i2c_driver_exit, ptr @es8316_i2c_probe._entry, ptr @es8316_i2c_probe._entry_ptr, ptr @es8316_probe._entry, ptr @es8316_probe._entry.133, ptr @es8316_probe._entry.136, ptr @es8316_probe._entry_ptr, ptr @es8316_probe._entry_ptr.135, ptr @es8316_probe._entry_ptr.138, ptr @es8316_set_dai_fmt._entry, ptr @es8316_set_dai_fmt._entry.145, ptr @es8316_set_dai_fmt._entry_ptr, ptr @es8316_set_dai_fmt._entry_ptr.147, ptr @es8316_i2c_driver, ptr @.str, ptr @es8316_of_match, ptr @es8316_i2c_id, ptr @es8316_i2c_probe._key, ptr @es8316_regmap, ptr @.str.1, ptr @es8316_i2c_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @soc_component_dev_es8316, ptr @es8316_dai, ptr @es8316_volatile_table, ptr @es8316_volatile_ranges, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @es8316_snd_controls, ptr @es8316_dapm_routes, ptr @.str.15, ptr @hpout_vol_tlv, ptr @.compoundliteral, ptr @.str.16, ptr @hpmixer_gain_tlv, ptr @.compoundliteral.17, ptr @.str.18, ptr @dacpol, ptr @.str.19, ptr @dac_vol_tlv, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @adcpol, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @adc_vol_tlv, ptr @.compoundliteral.37, ptr @.str.38, ptr @adc_pga_gain_tlv, ptr @.compoundliteral.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @alc_max_gain_tlv, ptr @.compoundliteral.47, ptr @.str.48, ptr @alc_min_gain_tlv, ptr @.compoundliteral.49, ptr @.str.50, ptr @alc_target_tlv, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @ng_type, ptr @dacpol_txt, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @adcpol_txt, ptr @.str.67, ptr @ng_type_txt, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @es8316_analog_in_mux_controls, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @es8316_dmic_src_controls, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @es8316_dacsrc_mux_controls, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @es8316_left_hpmux_controls, ptr @.str.90, ptr @es8316_right_hpmux_controls, ptr @.str.91, ptr @es8316_out_left_mix, ptr @.str.92, ptr @es8316_out_right_mix, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @es8316_dapm_widgets, ptr @.str.107, ptr @es8316_analog_input_enum, ptr @es8316_analog_in_txt, ptr @es8316_analog_in_values, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @es8316_dmic_src_enum, ptr @es8316_dmic_txt, ptr @es8316_dmic_values, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @es8316_dacsrc_mux_enum, ptr @es8316_dacsrc_texts, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @es8316_left_hpmux_enum, ptr @es8316_hpmux_texts, ptr @.str.119, ptr @.str.120, ptr @es8316_right_hpmux_enum, ptr @.str.121, ptr @.compoundliteral.122, ptr @.str.123, ptr @.compoundliteral.124, ptr @.str.125, ptr @.compoundliteral.126, ptr @.str.127, ptr @.compoundliteral.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.137, ptr @.str.139, ptr @.str.140, ptr @es8316_ops, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @switch.table.es8316_set_dai_fmt, ptr @switch.table.es8316_set_dai_fmt.148], section "llvm.metadata"
@0 = internal global [196 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_es8316 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_volatile_ranges to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_snd_controls to i32), i32 1248, i32 1536, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_dapm_routes to i32), i32 2444, i32 3072, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpout_vol_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpmixer_gain_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dacpol to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcpol to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_pga_gain_tlv to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alc_max_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alc_min_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alc_target_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ng_type to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dacpol_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcpol_txt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ng_type_txt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_analog_in_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_dmic_src_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_dacsrc_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_left_hpmux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_right_hpmux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_out_left_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_out_right_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_dapm_widgets to i32), i32 6660, i32 8352, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_analog_input_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_analog_in_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_analog_in_values to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_dmic_src_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_dmic_txt to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_dmic_values to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_dacsrc_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_dacsrc_texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_left_hpmux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_hpmux_texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_right_hpmux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_probe._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_probe._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es8316_set_dai_fmt._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.es8316_set_dai_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.es8316_set_dai_fmt.148 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @es8316_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @es8316_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @es8316_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @es8316_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es8316_i2c_probe(ptr noundef %i2c_client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 156, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c_client, ptr noundef nonnull @es8316_regmap, ptr noundef nonnull @es8316_i2c_probe._key, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.es8316_priv, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c_client, i32 0, i32 6
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %irq10 = getelementptr inbounds %struct.es8316_priv, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %irq10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %irq10, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @es8316_i2c_probe.__key) #6
  %6 = ptrtoint ptr %irq10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq10, align 4
  %call12 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %7, ptr noundef null, ptr noundef nonnull @es8316_irq, i32 noundef 532484, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end9.if.end19_crit_edge, label %do.end16

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %irq10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq10, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %9, i32 noundef %call12) #9
  %10 = ptrtoint ptr %irq10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -6, ptr %irq10, align 4
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %if.end9.if.end19_crit_edge
  %call21 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @soc_component_dev_es8316, ptr noundef nonnull @es8316_dai, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %call21, %if.end19 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es8316_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.es8316_priv, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !346
  tail call void @mutex_lock_nested(ptr noundef %data, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.es8316_priv, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 79, ptr noundef nonnull %flags) #6
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %jack = getelementptr inbounds %struct.es8316_priv, ptr %data, i32 0, i32 4
  %7 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %jack, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end2:                                          ; preds = %if.end
  %jd_inverted = getelementptr inbounds %struct.es8316_priv, ptr %data, i32 0, i32 9
  %9 = ptrtoint ptr %jd_inverted to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %jd_inverted, align 4, !range !347
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.end2.do.body_crit_edge, label %if.then4

if.end2.do.body_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %xor = xor i32 %6, 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %xor, ptr %flags, align 4
  br label %do.body

do.body:                                          ; preds = %if.then4, %if.end2.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es8316_irq.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@es8316_irq, %if.then10)) #6
          to label %do.end [label %if.then10], !srcloc !348

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @es8316_irq.__UNIQUE_ID_ddebug294, ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef %15) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %18 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %jack, align 4
  %status44 = getelementptr inbounds %struct.snd_soc_jack, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %status44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status44, align 4
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.end
  %and15 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then13.if.end18_crit_edge, label %if.then17

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %card.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17, i32 4
  %22 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card.i.i, align 4
  %dapm_mutex.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %23, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %dapm_mutex.i.i, i32 noundef 1) #6
  %call1.i = call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i, ptr noundef nonnull @.str.12) #6
  %call2.i = call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i, ptr noundef nonnull @.str.13) #6
  %call3.i = call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i, ptr noundef nonnull @.str.14) #6
  %call4.i = call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %dapm.i.i) #6
  %24 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card.i.i, align 4
  %dapm_mutex.i11.i = getelementptr inbounds %struct.snd_soc_card, ptr %25, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %dapm_mutex.i11.i) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then13.if.end18_crit_edge
  %26 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %jack, align 4
  %status20 = getelementptr inbounds %struct.snd_soc_jack, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %status20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status20, align 4
  %and21 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end18.out_crit_edge, label %if.then23

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  call void @snd_soc_jack_report(ptr noundef %27, i32 noundef 0, i32 noundef 16387) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es8316_irq.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@es8316_irq, %if.then37)) #6
          to label %out [label %if.then37], !srcloc !348

if.then37:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %dev38 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev38, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @es8316_irq.__UNIQUE_ID_ddebug295, ptr noundef %31, ptr noundef nonnull @.str.11) #6
  br label %out

if.else:                                          ; preds = %do.end
  %and45 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.then47, label %if.else84

if.then47:                                        ; preds = %if.else
  %dapm.i.i129 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %card.i.i130 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17, i32 4
  %32 = ptrtoint ptr %card.i.i130 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card.i.i130, align 4
  %dapm_mutex.i.i131 = getelementptr inbounds %struct.snd_soc_card, ptr %33, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %dapm_mutex.i.i131, i32 noundef 1) #6
  %call1.i132 = call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i.i129, ptr noundef nonnull @.str.14) #6
  %call2.i133 = call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i.i129, ptr noundef nonnull @.str.13) #6
  %call3.i134 = call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i.i129, ptr noundef nonnull @.str.12) #6
  %call4.i135 = call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %dapm.i.i129) #6
  %34 = ptrtoint ptr %card.i.i130 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card.i.i130, align 4
  %dapm_mutex.i11.i136 = getelementptr inbounds %struct.snd_soc_card, ptr %35, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %dapm_mutex.i11.i136) #6
  call void @msleep(i32 noundef 20) #6
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call49 = call i32 @regmap_read(ptr noundef %37, i32 noundef 79, ptr noundef nonnull %flags) #6
  %38 = ptrtoint ptr %jd_inverted to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %jd_inverted, align 4, !range !347
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool51.not = icmp eq i8 %39, 0
  br i1 %tobool51.not, label %if.then47.do.body55_crit_edge, label %if.then52

if.then47.do.body55_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body55

if.then52:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %xor53 = xor i32 %41, 4
  store i32 %xor53, ptr %flags, align 4
  br label %do.body55

do.body55:                                        ; preds = %if.then52, %if.then47.do.body55_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @es8316_irq.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@es8316_irq, %if.then67)) #6
          to label %do.end71 [label %if.then67], !srcloc !348

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #8
  %dev68 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev68, align 4
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @es8316_irq.__UNIQUE_ID_ddebug296, ptr noundef %43, ptr noundef nonnull @.str.10, i32 noundef %45) #6
  br label %do.end71

do.end71:                                         ; preds = %if.then67, %do.body55
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 4
  %and72 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.else75, label %if.then74

if.then74:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %card.i.i130 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card.i.i130, align 4
  %dapm_mutex.i.i139 = getelementptr inbounds %struct.snd_soc_card, ptr %49, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %dapm_mutex.i.i139, i32 noundef 1) #6
  %call1.i140 = call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i129, ptr noundef nonnull @.str.12) #6
  %call2.i141 = call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i129, ptr noundef nonnull @.str.13) #6
  %call3.i142 = call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i129, ptr noundef nonnull @.str.14) #6
  %call4.i143 = call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %dapm.i.i129) #6
  %50 = ptrtoint ptr %card.i.i130 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %card.i.i130, align 4
  %dapm_mutex.i11.i144 = getelementptr inbounds %struct.snd_soc_card, ptr %51, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %dapm_mutex.i11.i144) #6
  br label %out

if.else75:                                        ; preds = %do.end71
  %and76 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %52 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %jack, align 4
  br i1 %tobool77.not, label %if.else80, label %if.then78

if.then78:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #8
  call void @snd_soc_jack_report(ptr noundef %53, i32 noundef 3, i32 noundef 3) #6
  br label %out

if.else80:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #8
  call void @snd_soc_jack_report(ptr noundef %53, i32 noundef 1, i32 noundef 3) #6
  %54 = ptrtoint ptr %card.i.i130 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card.i.i130, align 4
  %dapm_mutex.i.i147 = getelementptr inbounds %struct.snd_soc_card, ptr %55, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %dapm_mutex.i.i147, i32 noundef 1) #6
  %call1.i148 = call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i129, ptr noundef nonnull @.str.12) #6
  %call2.i149 = call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i129, ptr noundef nonnull @.str.13) #6
  %call3.i150 = call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i129, ptr noundef nonnull @.str.14) #6
  %call4.i151 = call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %dapm.i.i129) #6
  %56 = ptrtoint ptr %card.i.i130 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %card.i.i130, align 4
  %dapm_mutex.i11.i152 = getelementptr inbounds %struct.snd_soc_card, ptr %57, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %dapm_mutex.i11.i152) #6
  br label %out

if.else84:                                        ; preds = %if.else
  %and87 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.else84.out_crit_edge, label %if.then89

if.else84.out_crit_edge:                          ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then89:                                        ; preds = %if.else84
  %and90 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.else94, label %if.then92

if.then92:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  call void @snd_soc_jack_report(ptr noundef %19, i32 noundef 0, i32 noundef 16384) #6
  br label %out

if.else94:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  call void @snd_soc_jack_report(ptr noundef %19, i32 noundef 16384, i32 noundef 16384) #6
  br label %out

out:                                              ; preds = %if.else94, %if.then92, %if.else84.out_crit_edge, %if.else80, %if.then78, %if.then74, %if.then37, %if.then23, %if.end18.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  call void @mutex_unlock(ptr noundef %data) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #6
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync_unlocked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es8316_probe(ptr noundef %component) #2 align 64 {
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
  %component1 = getelementptr inbounds %struct.es8316_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %component1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %component, ptr %component1, align 4
  %5 = load ptr, ptr %dev.i, align 4
  %call2 = tail call ptr @devm_clk_get_optional(ptr noundef %5, ptr noundef nonnull @.str.129) #6
  %mclk = getelementptr inbounds %struct.es8316_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %mclk, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.130) #9
  %9 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mclk, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end12, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.134) #9
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %if.end.if.end14_crit_edge
  %14 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end14.do.end21_crit_edge

if.end14.do.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

if.end.i:                                         ; preds = %if.end14
  %call1.i = tail call i32 @clk_enable(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end23, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %15) #6
  br label %do.end21

do.end21:                                         ; preds = %if.then3.i, %if.end14.do.end21_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end14.do.end21_crit_edge ]
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.137) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 0, i32 noundef 63) #6
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #6
  %call25 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 0, i32 noundef 128) #6
  tail call void @msleep(i32 noundef 30) #6
  %call26 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 12, i32 noundef 255) #6
  %call27 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 3, i32 noundef 50) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end21, %do.end
  %retval.0 = phi i32 [ %11, %do.end ], [ %retval.0.i.ph, %do.end21 ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @es8316_remove(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %mclk = getelementptr inbounds %struct.es8316_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mclk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es8316_set_jack(ptr noundef %component, ptr noundef %jack, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %jack, null
  %dev.i.i3 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i.i3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i3, align 4
  %driver_data.i.i.i4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i4, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @device_property_present(ptr noundef %1, ptr noundef nonnull @.str.139) #6
  %jd_inverted.i = getelementptr inbounds %struct.es8316_priv, ptr %3, i32 0, i32 9
  %frombool.i = zext i1 %call.i.i to i8
  %4 = ptrtoint ptr %jd_inverted.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool.i, ptr %jd_inverted.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #6
  %jack2.i = getelementptr inbounds %struct.es8316_priv, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %jack2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %jack, ptr %jack2.i, align 4
  %status.i = getelementptr inbounds %struct.snd_soc_jack, ptr %jack, i32 0, i32 4
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status.i, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.es8316_enable_jack_detect.exit_crit_edge, label %if.then.i

if.then.es8316_enable_jack_detect.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %es8316_enable_jack_detect.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dapm.i.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %card.i.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17, i32 4
  %8 = ptrtoint ptr %card.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card.i.i.i, align 4
  %dapm_mutex.i.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i.i.i, i32 noundef 1) #6
  %call1.i.i = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i.i.i, ptr noundef nonnull @.str.14) #6
  %call2.i.i = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i.i.i, ptr noundef nonnull @.str.13) #6
  %call3.i.i = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i.i.i, ptr noundef nonnull @.str.12) #6
  %call4.i.i = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %dapm.i.i.i) #6
  %10 = ptrtoint ptr %card.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card.i.i.i, align 4
  %dapm_mutex.i11.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %11, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex.i11.i.i) #6
  tail call void @msleep(i32 noundef 20) #6
  br label %es8316_enable_jack_detect.exit

es8316_enable_jack_detect.exit:                   ; preds = %if.then.i, %if.then.es8316_enable_jack_detect.exit_crit_edge
  %call4.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 78, i32 noundef 2, i32 noundef 2) #6
  tail call void @mutex_unlock(ptr noundef %3) #6
  %irq.i = getelementptr inbounds %struct.es8316_priv, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %13) #6
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i, align 4
  %call7.i = tail call i32 @es8316_irq(i32 noundef %15, ptr noundef %3) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %jack.i = getelementptr inbounds %struct.es8316_priv, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %jack.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %jack.i, align 4
  %tobool.not.i5 = icmp eq ptr %17, null
  br i1 %tobool.not.i5, label %if.else.if.end_crit_edge, label %if.end.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.else
  %irq.i6 = getelementptr inbounds %struct.es8316_priv, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %irq.i6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq.i6, align 4
  tail call void @disable_irq(i32 noundef %19) #6
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #6
  %call1.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 78, i32 noundef 2, i32 noundef 0) #6
  %20 = ptrtoint ptr %jack.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %jack.i, align 4
  %status.i7 = getelementptr inbounds %struct.snd_soc_jack, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %status.i7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status.i7, align 4
  %and.i8 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %tobool3.not.i = icmp eq i32 %and.i8, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dapm.i.i.i9 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %card.i.i.i10 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17, i32 4
  %24 = ptrtoint ptr %card.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card.i.i.i10, align 4
  %dapm_mutex.i.i.i11 = getelementptr inbounds %struct.snd_soc_card, ptr %25, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i.i.i11, i32 noundef 1) #6
  %call1.i.i12 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i.i9, ptr noundef nonnull @.str.12) #6
  %call2.i.i13 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i.i9, ptr noundef nonnull @.str.13) #6
  %call3.i.i14 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i.i.i9, ptr noundef nonnull @.str.14) #6
  %call4.i.i15 = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %dapm.i.i.i9) #6
  %26 = ptrtoint ptr %card.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card.i.i.i10, align 4
  %dapm_mutex.i11.i.i16 = getelementptr inbounds %struct.snd_soc_card, ptr %27, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex.i11.i.i16) #6
  %28 = ptrtoint ptr %jack.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %jack.i, align 4
  tail call void @snd_soc_jack_report(ptr noundef %29, i32 noundef 0, i32 noundef 16384) #6
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %30 = ptrtoint ptr %jack.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %jack.i, align 4
  tail call void @mutex_unlock(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.end6.i, %if.else.if.end_crit_edge, %es8316_enable_jack_detect.exit
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
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es8316_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %sysclk = getelementptr inbounds %struct.es8316_priv, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %freq, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq)
  %cmp = icmp eq i32 %freq, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %mclk = getelementptr inbounds %struct.es8316_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mclk, align 4
  %call4 = tail call i32 @clk_set_rate(ptr noundef %8, i32 noundef %freq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %rem = and i32 %freq, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp8 = icmp eq i32 %rem, 0
  br i1 %cmp8, label %if.then9, label %for.body.preheader.if.end11_crit_edge

for.body.preheader.if.end11_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %div42 = lshr i32 %freq, 8
  %arrayidx10 = getelementptr %struct.es8316_priv, ptr %5, i32 0, i32 7, i32 0
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div42, ptr %arrayidx10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %for.body.preheader.if.end11_crit_edge
  %count.1 = phi i32 [ 1, %if.then9 ], [ 0, %for.body.preheader.if.end11_crit_edge ]
  %div.1 = udiv i32 %freq, 384
  %10 = mul i32 %div.1, 384
  %rem.1.decomposed = sub i32 %freq, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.1.decomposed)
  %cmp8.1 = icmp eq i32 %rem.1.decomposed, 0
  br i1 %cmp8.1, label %if.then9.1, label %if.end11.if.end11.1_crit_edge

if.end11.if.end11.1_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.1

if.then9.1:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %inc.1 = add nuw nsw i32 %count.1, 1
  %arrayidx10.1 = getelementptr %struct.es8316_priv, ptr %5, i32 0, i32 7, i32 %count.1
  %11 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div.1, ptr %arrayidx10.1, align 4
  br label %if.end11.1

if.end11.1:                                       ; preds = %if.then9.1, %if.end11.if.end11.1_crit_edge
  %count.1.1 = phi i32 [ %inc.1, %if.then9.1 ], [ %count.1, %if.end11.if.end11.1_crit_edge ]
  %div.2 = udiv i32 %freq, 400
  %12 = mul i32 %div.2, 400
  %rem.2.decomposed = sub i32 %freq, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.2.decomposed)
  %cmp8.2 = icmp eq i32 %rem.2.decomposed, 0
  br i1 %cmp8.2, label %if.then9.2, label %if.end11.1.if.end11.2_crit_edge

if.end11.1.if.end11.2_crit_edge:                  ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.2

if.then9.2:                                       ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #8
  %inc.2 = add nuw nsw i32 %count.1.1, 1
  %arrayidx10.2 = getelementptr %struct.es8316_priv, ptr %5, i32 0, i32 7, i32 %count.1.1
  %13 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div.2, ptr %arrayidx10.2, align 4
  br label %if.end11.2

if.end11.2:                                       ; preds = %if.then9.2, %if.end11.1.if.end11.2_crit_edge
  %count.1.2 = phi i32 [ %inc.2, %if.then9.2 ], [ %count.1.1, %if.end11.1.if.end11.2_crit_edge ]
  %rem.3 = and i32 %freq, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.3)
  %cmp8.3 = icmp eq i32 %rem.3, 0
  br i1 %cmp8.3, label %if.then9.3, label %if.end11.2.if.end11.3_crit_edge

if.end11.2.if.end11.3_crit_edge:                  ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.3

if.then9.3:                                       ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #8
  %div.341 = lshr i32 %freq, 9
  %inc.3 = add nuw nsw i32 %count.1.2, 1
  %arrayidx10.3 = getelementptr %struct.es8316_priv, ptr %5, i32 0, i32 7, i32 %count.1.2
  %14 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div.341, ptr %arrayidx10.3, align 4
  br label %if.end11.3

if.end11.3:                                       ; preds = %if.then9.3, %if.end11.2.if.end11.3_crit_edge
  %count.1.3 = phi i32 [ %inc.3, %if.then9.3 ], [ %count.1.2, %if.end11.2.if.end11.3_crit_edge ]
  %div.4 = udiv i32 %freq, 768
  %15 = mul i32 %div.4, 768
  %rem.4.decomposed = sub i32 %freq, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.4.decomposed)
  %cmp8.4 = icmp eq i32 %rem.4.decomposed, 0
  br i1 %cmp8.4, label %if.then9.4, label %if.end11.3.if.end11.4_crit_edge

if.end11.3.if.end11.4_crit_edge:                  ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.4

if.then9.4:                                       ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #8
  %inc.4 = add nuw nsw i32 %count.1.3, 1
  %arrayidx10.4 = getelementptr %struct.es8316_priv, ptr %5, i32 0, i32 7, i32 %count.1.3
  %16 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div.4, ptr %arrayidx10.4, align 4
  br label %if.end11.4

if.end11.4:                                       ; preds = %if.then9.4, %if.end11.3.if.end11.4_crit_edge
  %count.1.4 = phi i32 [ %inc.4, %if.then9.4 ], [ %count.1.3, %if.end11.3.if.end11.4_crit_edge ]
  %rem.5 = and i32 %freq, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.5)
  %cmp8.5 = icmp eq i32 %rem.5, 0
  br i1 %cmp8.5, label %if.then9.5, label %if.end11.4.if.end11.5_crit_edge

if.end11.4.if.end11.5_crit_edge:                  ; preds = %if.end11.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.5

if.then9.5:                                       ; preds = %if.end11.4
  call void @__sanitizer_cov_trace_pc() #8
  %div.540 = lshr i32 %freq, 10
  %inc.5 = add nuw nsw i32 %count.1.4, 1
  %arrayidx10.5 = getelementptr %struct.es8316_priv, ptr %5, i32 0, i32 7, i32 %count.1.4
  %17 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div.540, ptr %arrayidx10.5, align 4
  br label %if.end11.5

if.end11.5:                                       ; preds = %if.then9.5, %if.end11.4.if.end11.5_crit_edge
  %count.1.5 = phi i32 [ %inc.5, %if.then9.5 ], [ %count.1.4, %if.end11.4.if.end11.5_crit_edge ]
  %allowed_rates13 = getelementptr inbounds %struct.es8316_priv, ptr %5, i32 0, i32 7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end11.5, %entry.cleanup.sink.split_crit_edge
  %allowed_rates13.sink = phi ptr [ %allowed_rates13, %if.end11.5 ], [ null, %entry.cleanup.sink.split_crit_edge ]
  %count.1.5.sink = phi i32 [ %count.1.5, %if.end11.5 ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %sysclk_constraints14 = getelementptr inbounds %struct.es8316_priv, ptr %5, i32 0, i32 8
  %18 = ptrtoint ptr %sysclk_constraints14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %allowed_rates13.sink, ptr %sysclk_constraints14, align 4
  %count17 = getelementptr inbounds %struct.es8316_priv, ptr %5, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %count17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %count.1.5.sink, ptr %count17, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es8316_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %and = and i32 %fmt, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and)
  %cmp.not = icmp eq i32 %and, 16384
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.143) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %fmt, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %cmp3.not = icmp eq i32 %and2, 1
  br i1 %cmp3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev8 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.146) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %and10 = lshr i32 %fmt, 8
  %6 = and i32 %and10, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %7 = icmp ult i32 %6, 5
  br i1 %7, label %switch.hole_check, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %if.end9
  %switch.maskindex = trunc i32 %6 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %8 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %switch.lobit.not = icmp eq i8 %8, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.es8316_set_dai_fmt, i32 0, i32 %6
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep53 = getelementptr inbounds [5 x i32], ptr @switch.table.es8316_set_dai_fmt.148, i32 0, i32 %6
  %10 = ptrtoint ptr %switch.gep53 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load54 = load i32, ptr %switch.gep53, align 4
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 9, i32 noundef 160, i32 noundef %switch.load) #6
  %call27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 10, i32 noundef 35, i32 noundef %switch.load54) #6
  %call30 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 11, i32 noundef 35, i32 noundef %switch.load54) #6
  %call33 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1, i32 noundef 96, i32 noundef 96) #6
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ 0, %switch.lookup ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es8316_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %cond = select i1 %tobool.not, i32 0, i32 32
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 48, i32 noundef 32, i32 noundef %cond) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es8316_pcm_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
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
  %sysclk_constraints = getelementptr inbounds %struct.es8316_priv, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %sysclk_constraints to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sysclk_constraints, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %8 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime, align 4
  %call3 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %9, i32 noundef 0, i32 noundef 11, ptr noundef %sysclk_constraints) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @es8316_pcm_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
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
  %sysclk = getelementptr inbounds %struct.es8316_priv, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %rem = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp2.not = icmp eq i32 %rem, 0
  br i1 %cmp2.not, label %cleanup, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup:                                          ; preds = %entry
  %div41 = lshr i32 %7, 8
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div41, i32 %9)
  %cmp5 = icmp eq i32 %div41, %9
  br i1 %cmp5, label %cleanup.if.end10_crit_edge, label %cleanup.for.inc_crit_edge

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup.if.end10_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %entry.for.inc_crit_edge
  %.frozen = freeze i32 %7
  %div.1 = udiv i32 %.frozen, 384
  %10 = mul i32 %div.1, 384
  %rem.1.decomposed = sub i32 %.frozen, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.1.decomposed)
  %cmp2.not.1 = icmp eq i32 %rem.1.decomposed, 0
  br i1 %cmp2.not.1, label %cleanup.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

cleanup.1:                                        ; preds = %for.inc
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.1, i32 %12)
  %cmp5.1 = icmp eq i32 %div.1, %12
  br i1 %cmp5.1, label %cleanup.1.if.end10_crit_edge, label %cleanup.1.for.inc.1_crit_edge

cleanup.1.for.inc.1_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

cleanup.1.if.end10_crit_edge:                     ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

for.inc.1:                                        ; preds = %cleanup.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %.frozen42 = freeze i32 %7
  %div.2 = udiv i32 %.frozen42, 400
  %13 = mul i32 %div.2, 400
  %rem.2.decomposed = sub i32 %.frozen42, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.2.decomposed)
  %cmp2.not.2 = icmp eq i32 %rem.2.decomposed, 0
  br i1 %cmp2.not.2, label %cleanup.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

cleanup.2:                                        ; preds = %for.inc.1
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.2, i32 %15)
  %cmp5.2 = icmp eq i32 %div.2, %15
  br i1 %cmp5.2, label %cleanup.2.if.end10_crit_edge, label %cleanup.2.for.inc.2_crit_edge

cleanup.2.for.inc.2_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

cleanup.2.if.end10_crit_edge:                     ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

for.inc.2:                                        ; preds = %cleanup.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %rem.3 = and i32 %7, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.3)
  %cmp2.not.3 = icmp eq i32 %rem.3, 0
  br i1 %cmp2.not.3, label %cleanup.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

cleanup.3:                                        ; preds = %for.inc.2
  %div.340 = lshr i32 %7, 9
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.340, i32 %17)
  %cmp5.3 = icmp eq i32 %div.340, %17
  br i1 %cmp5.3, label %cleanup.3.if.end10_crit_edge, label %cleanup.3.for.inc.3_crit_edge

cleanup.3.for.inc.3_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

cleanup.3.if.end10_crit_edge:                     ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

for.inc.3:                                        ; preds = %cleanup.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %.frozen43 = freeze i32 %7
  %div.4 = udiv i32 %.frozen43, 768
  %18 = mul i32 %div.4, 768
  %rem.4.decomposed = sub i32 %.frozen43, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.4.decomposed)
  %cmp2.not.4 = icmp eq i32 %rem.4.decomposed, 0
  br i1 %cmp2.not.4, label %cleanup.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

cleanup.4:                                        ; preds = %for.inc.3
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.4, i32 %20)
  %cmp5.4 = icmp eq i32 %div.4, %20
  br i1 %cmp5.4, label %cleanup.4.if.end10_crit_edge, label %cleanup.4.for.inc.4_crit_edge

cleanup.4.for.inc.4_crit_edge:                    ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

cleanup.4.if.end10_crit_edge:                     ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

for.inc.4:                                        ; preds = %cleanup.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %rem.5 = and i32 %7, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.5)
  %cmp2.not.5 = icmp eq i32 %rem.5, 0
  br i1 %cmp2.not.5, label %cleanup.5, label %for.inc.4.cleanup18_crit_edge

for.inc.4.cleanup18_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup18

cleanup.5:                                        ; preds = %for.inc.4
  %div.539 = lshr i32 %7, 10
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.539, i32 %22)
  %cmp5.5 = icmp eq i32 %div.539, %22
  br i1 %cmp5.5, label %cleanup.5.if.end10_crit_edge, label %cleanup.5.cleanup18_crit_edge

cleanup.5.cleanup18_crit_edge:                    ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup18

cleanup.5.if.end10_crit_edge:                     ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %cleanup.5.if.end10_crit_edge, %cleanup.4.if.end10_crit_edge, %cleanup.3.if.end10_crit_edge, %cleanup.2.if.end10_crit_edge, %cleanup.1.if.end10_crit_edge, %cleanup.if.end10_crit_edge
  %arrayidx.i.i31 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx.i.i31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end10.params_format.exit_crit_edge

if.end10.params_format.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end10
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.1.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.cleanup18_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_format.exit

for.inc.i.i.cleanup18_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup18

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.end10.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end10.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %24, %if.end10.params_format.exit_crit_edge ], [ %26, %for.inc.i.i.params_format.exit_crit_edge ]
  %27 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #6, !range !349
  %add.i.i = or i32 %27, %i.09.lcssa.i.i
  %28 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %add.i.i, label %params_format.exit.cleanup18_crit_edge [
    i32 2, label %params_format.exit.sw.epilog_crit_edge
    i32 36, label %sw.bb12
    i32 6, label %sw.bb13
    i32 10, label %sw.bb14
  ]

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

params_format.exit.cleanup18_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup18

sw.bb12:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb13:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb14:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb13, %sw.bb12, %params_format.exit.sw.epilog_crit_edge
  %wordlen.0 = phi i32 [ 16, %sw.bb14 ], [ 0, %sw.bb13 ], [ 4, %sw.bb12 ], [ 12, %params_format.exit.sw.epilog_crit_edge ]
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 11, i32 noundef 28, i32 noundef %wordlen.0) #6
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 10, i32 noundef 28, i32 noundef %wordlen.0) #6
  br label %cleanup18

cleanup18:                                        ; preds = %sw.epilog, %params_format.exit.cleanup18_crit_edge, %for.inc.i.i.cleanup18_crit_edge, %cleanup.5.cleanup18_crit_edge, %for.inc.4.cleanup18_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %params_format.exit.cleanup18_crit_edge ], [ -22, %for.inc.i.i.cleanup18_crit_edge ], [ -22, %cleanup.5.cleanup18_crit_edge ], [ -22, %for.inc.4.cleanup18_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 196)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 196)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !171, !173, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !299, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !314, !316, !318, !320, !322, !324, !326, !327, !328, !329, !331, !332, !333, !335}
!llvm.module.flags = !{!337, !338, !339, !340, !341, !342, !343, !344}
!llvm.ident = !{!345}

!0 = !{ptr @__initcall__kmod_snd_soc_es8316__297_858_es8316_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_es8316__297_858_es8316_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/es8316.c", i32 858, i32 1}
!2 = !{ptr @__exitcall_es8316_i2c_driver_exit, !1, !"__exitcall_es8316_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description298, !4, !"__UNIQUE_ID_description298", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/es8316.c", i32 860, i32 1}
!5 = !{ptr @__UNIQUE_ID_author299, !6, !"__UNIQUE_ID_author299", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/es8316.c", i32 861, i32 1}
!7 = !{ptr @__UNIQUE_ID_file300, !8, !"__UNIQUE_ID_file300", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/es8316.c", i32 862, i32 1}
!9 = !{ptr @__UNIQUE_ID_license301, !8, !"__UNIQUE_ID_license301", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/es8316.c", i32 851, i32 13}
!12 = !{ptr @es8316_i2c_driver, !13, !"es8316_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/es8316.c", i32 849, i32 26}
!14 = !{ptr @es8316_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/es8316.c", i32 806, i32 19}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @es8316_i2c_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/es8316.c", i32 811, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/es8316.c", i32 817, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @es8316_i2c_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @es8316_i2c_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @es8316_regmap, !29, !"es8316_regmap", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/es8316.c", i32 784, i32 35}
!30 = !{ptr @es8316_volatile_table, !31, !"es8316_volatile_table", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/es8316.c", i32 779, i32 41}
!32 = !{ptr @es8316_volatile_ranges, !33, !"es8316_volatile_ranges", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/es8316.c", i32 775, i32 34}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/es8316.c", i32 591, i32 2}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @es8316_irq.__UNIQUE_ID_ddebug294, !35, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/es8316.c", i32 600, i32 4}
!41 = !{ptr @es8316_irq.__UNIQUE_ID_ddebug295, !40, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!42 = !{ptr @es8316_irq.__UNIQUE_ID_ddebug296, !43, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/es8316.c", i32 608, i32 3}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/es8316.c", i32 565, i32 42}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/es8316.c", i32 566, i32 42}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/es8316.c", i32 567, i32 42}
!50 = !{ptr @soc_component_dev_es8316, !51, !"soc_component_dev_es8316", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/es8316.c", i32 760, i32 46}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/es8316.c", i32 89, i32 2}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/es8316.c", i32 91, i32 2}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/es8316.c", i32 94, i32 2}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/es8316.c", i32 95, i32 2}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/es8316.c", i32 97, i32 2}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/es8316.c", i32 98, i32 2}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/es8316.c", i32 99, i32 2}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/es8316.c", i32 100, i32 2}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/es8316.c", i32 101, i32 2}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/es8316.c", i32 102, i32 2}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/es8316.c", i32 104, i32 2}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/es8316.c", i32 105, i32 2}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/es8316.c", i32 106, i32 2}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/es8316.c", i32 108, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/es8316.c", i32 110, i32 2}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/es8316.c", i32 111, i32 2}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/es8316.c", i32 113, i32 2}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/es8316.c", i32 114, i32 2}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/es8316.c", i32 116, i32 2}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/es8316.c", i32 118, i32 2}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/es8316.c", i32 120, i32 2}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/es8316.c", i32 121, i32 2}
!96 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/es8316.c", i32 122, i32 2}
!98 = !{ptr @.str.58, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/es8316.c", i32 123, i32 2}
!100 = !{ptr @.str.60, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/es8316.c", i32 125, i32 2}
!102 = !{ptr @.str.62, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/es8316.c", i32 127, i32 2}
!104 = !{ptr @es8316_snd_controls, !105, !"es8316_snd_controls", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/es8316.c", i32 88, i32 38}
!106 = !{ptr @hpout_vol_tlv, !107, !"hpout_vol_tlv", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/es8316.c", i32 70, i32 14}
!108 = !{ptr @hpmixer_gain_tlv, !109, !"hpmixer_gain_tlv", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/es8316.c", i32 56, i32 14}
!110 = !{ptr @dacpol, !111, !"dacpol", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/es8316.c", i32 85, i32 30}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/es8316.c", i32 84, i32 4}
!114 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/es8316.c", i32 84, i32 14}
!116 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/es8316.c", i32 84, i32 26}
!118 = !{ptr @.str.66, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/es8316.c", i32 84, i32 38}
!120 = !{ptr @dacpol_txt, !121, !"dacpol_txt", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/es8316.c", i32 83, i32 26}
!122 = !{ptr @dac_vol_tlv, !123, !"dac_vol_tlv", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/es8316.c", i32 51, i32 14}
!124 = !{ptr @adcpol, !125, !"adcpol", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/es8316.c", i32 81, i32 30}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/es8316.c", i32 80, i32 54}
!128 = !{ptr @adcpol_txt, !129, !"adcpol_txt", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/es8316.c", i32 80, i32 27}
!130 = !{ptr @adc_vol_tlv, !131, !"adc_vol_tlv", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/es8316.c", i32 52, i32 14}
!132 = !{ptr @adc_pga_gain_tlv, !133, !"adc_pga_gain_tlv", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/es8316.c", i32 61, i32 14}
!134 = !{ptr @alc_max_gain_tlv, !135, !"alc_max_gain_tlv", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/es8316.c", i32 53, i32 14}
!136 = !{ptr @alc_min_gain_tlv, !137, !"alc_min_gain_tlv", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/es8316.c", i32 54, i32 14}
!138 = !{ptr @alc_target_tlv, !139, !"alc_target_tlv", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/es8316.c", i32 55, i32 14}
!140 = !{ptr @ng_type, !141, !"ng_type", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/es8316.c", i32 77, i32 30}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/es8316.c", i32 76, i32 4}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/es8316.c", i32 76, i32 25}
!146 = !{ptr @ng_type_txt, !147, !"ng_type_txt", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/es8316.c", i32 75, i32 27}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/es8316.c", i32 209, i32 2}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/es8316.c", i32 210, i32 2}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/es8316.c", i32 211, i32 2}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/es8316.c", i32 214, i32 2}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/es8316.c", i32 217, i32 2}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/es8316.c", i32 218, i32 2}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/es8316.c", i32 219, i32 2}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/es8316.c", i32 220, i32 2}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/es8316.c", i32 222, i32 2}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/es8316.c", i32 223, i32 2}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/es8316.c", i32 227, i32 2}
!170 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/es8316.c", i32 229, i32 2}
!173 = !{ptr @.str.83, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/es8316.c", i32 232, i32 2}
!176 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/es8316.c", i32 235, i32 2}
!178 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/es8316.c", i32 236, i32 2}
!180 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/es8316.c", i32 237, i32 2}
!182 = !{ptr @.str.88, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/es8316.c", i32 238, i32 2}
!184 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/es8316.c", i32 241, i32 2}
!186 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/es8316.c", i32 243, i32 2}
!188 = !{ptr @.str.91, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/es8316.c", i32 245, i32 2}
!190 = !{ptr @.str.92, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/es8316.c", i32 248, i32 2}
!192 = !{ptr @.str.93, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/es8316.c", i32 251, i32 2}
!194 = !{ptr @.str.94, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/es8316.c", i32 253, i32 2}
!196 = !{ptr @.str.95, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/es8316.c", i32 256, i32 2}
!198 = !{ptr @.str.96, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/es8316.c", i32 258, i32 2}
!200 = !{ptr @.str.97, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/es8316.c", i32 260, i32 2}
!202 = !{ptr @.str.98, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/es8316.c", i32 262, i32 2}
!204 = !{ptr @.str.99, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/es8316.c", i32 265, i32 2}
!206 = !{ptr @.str.100, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/es8316.c", i32 267, i32 2}
!208 = !{ptr @.str.101, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/es8316.c", i32 269, i32 2}
!210 = !{ptr @.str.102, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/es8316.c", i32 274, i32 2}
!212 = !{ptr @.str.103, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/es8316.c", i32 276, i32 2}
!214 = !{ptr @.str.104, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/es8316.c", i32 279, i32 2}
!216 = !{ptr @.str.105, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/es8316.c", i32 280, i32 2}
!218 = !{ptr @es8316_dapm_widgets, !219, !"es8316_dapm_widgets", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/es8316.c", i32 204, i32 41}
!220 = !{ptr @.str.107, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/es8316.c", i32 144, i32 2}
!222 = !{ptr @es8316_analog_in_mux_controls, !223, !"es8316_analog_in_mux_controls", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/es8316.c", i32 143, i32 38}
!224 = !{ptr @es8316_analog_input_enum, !225, !"es8316_analog_input_enum", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/es8316.c", i32 138, i32 30}
!226 = !{ptr @.str.108, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/es8316.c", i32 132, i32 3}
!228 = !{ptr @.str.109, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/es8316.c", i32 133, i32 3}
!230 = !{ptr @.str.110, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/es8316.c", i32 134, i32 3}
!232 = !{ptr @.str.111, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/es8316.c", i32 135, i32 3}
!234 = !{ptr @es8316_analog_in_txt, !235, !"es8316_analog_in_txt", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/es8316.c", i32 131, i32 27}
!236 = !{ptr @es8316_analog_in_values, !237, !"es8316_analog_in_values", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/es8316.c", i32 137, i32 27}
!238 = !{ptr @es8316_dmic_src_controls, !239, !"es8316_dmic_src_controls", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/es8316.c", i32 157, i32 38}
!240 = !{ptr @es8316_dmic_src_enum, !241, !"es8316_dmic_src_enum", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/es8316.c", i32 152, i32 30}
!242 = !{ptr @.str.112, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/es8316.c", i32 147, i32 3}
!244 = !{ptr @.str.113, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/es8316.c", i32 148, i32 3}
!246 = !{ptr @.str.114, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/es8316.c", i32 149, i32 3}
!248 = !{ptr @es8316_dmic_txt, !249, !"es8316_dmic_txt", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/es8316.c", i32 146, i32 27}
!250 = !{ptr @es8316_dmic_values, !251, !"es8316_dmic_values", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/es8316.c", i32 151, i32 27}
!252 = !{ptr @es8316_dacsrc_mux_controls, !253, !"es8316_dacsrc_mux_controls", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/es8316.c", i32 201, i32 38}
!254 = !{ptr @es8316_dacsrc_mux_enum, !255, !"es8316_dacsrc_mux_enum", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/es8316.c", i32 198, i32 8}
!256 = !{ptr @.str.115, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/es8316.c", i32 192, i32 2}
!258 = !{ptr @.str.116, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/es8316.c", i32 193, i32 2}
!260 = !{ptr @.str.117, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/es8316.c", i32 194, i32 2}
!262 = !{ptr @.str.118, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/es8316.c", i32 195, i32 2}
!264 = !{ptr @es8316_dacsrc_texts, !265, !"es8316_dacsrc_texts", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/es8316.c", i32 191, i32 27}
!266 = !{ptr @es8316_left_hpmux_controls, !267, !"es8316_left_hpmux_controls", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/es8316.c", i32 171, i32 38}
!268 = !{ptr @es8316_left_hpmux_enum, !269, !"es8316_left_hpmux_enum", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/es8316.c", i32 168, i32 8}
!270 = !{ptr @.str.119, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/es8316.c", i32 164, i32 2}
!272 = !{ptr @.str.120, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/es8316.c", i32 165, i32 2}
!274 = !{ptr @es8316_hpmux_texts, !275, !"es8316_hpmux_texts", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/es8316.c", i32 161, i32 27}
!276 = !{ptr @es8316_right_hpmux_controls, !277, !"es8316_right_hpmux_controls", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/es8316.c", i32 177, i32 38}
!278 = !{ptr @es8316_right_hpmux_enum, !279, !"es8316_right_hpmux_enum", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/es8316.c", i32 174, i32 8}
!280 = !{ptr @.str.121, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/es8316.c", i32 182, i32 2}
!282 = !{ptr @.str.123, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/es8316.c", i32 183, i32 2}
!284 = !{ptr @es8316_out_left_mix, !285, !"es8316_out_left_mix", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/es8316.c", i32 181, i32 38}
!286 = !{ptr @.str.125, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/es8316.c", i32 186, i32 2}
!288 = !{ptr @.str.127, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/es8316.c", i32 187, i32 2}
!290 = !{ptr @es8316_out_right_mix, !291, !"es8316_out_right_mix", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/es8316.c", i32 185, i32 38}
!292 = !{ptr @es8316_dapm_routes, !293, !"es8316_dapm_routes", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/es8316.c", i32 283, i32 40}
!294 = !{ptr @.str.129, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/es8316.c", i32 717, i32 55}
!296 = !{ptr @.str.130, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/es8316.c", i32 719, i32 3}
!298 = !{ptr @.str.131, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @.str.132, !297, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @es8316_probe._entry, !297, !"_entry", i1 false, i1 false}
!301 = !{ptr @es8316_probe._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.134, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/es8316.c", i32 723, i32 3}
!304 = !{ptr @es8316_probe._entry.133, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @es8316_probe._entry_ptr.135, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.137, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/es8316.c", i32 727, i32 3}
!308 = !{ptr @es8316_probe._entry.136, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @es8316_probe._entry_ptr.138, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.139, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/es8316.c", i32 655, i32 8}
!312 = !{ptr @.str.140, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/es8316.c", i32 525, i32 10}
!314 = !{ptr @.str.141, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/es8316.c", i32 534, i32 18}
!316 = !{ptr @.str.142, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/es8316.c", i32 527, i32 18}
!318 = !{ptr @es8316_dai, !319, !"es8316_dai", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/es8316.c", i32 524, i32 34}
!320 = !{ptr @es8316_ops, !321, !"es8316_ops", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/es8316.c", i32 515, i32 37}
!322 = distinct !{null, !323, !"supported_mclk_lrck_ratios", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/es8316.c", i32 31, i32 27}
!324 = !{ptr @.str.143, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/es8316.c", i32 405, i32 3}
!326 = !{ptr @.str.144, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @es8316_set_dai_fmt._entry, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @es8316_set_dai_fmt._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.146, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/es8316.c", i32 410, i32 3}
!331 = !{ptr @es8316_set_dai_fmt._entry.145, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @es8316_set_dai_fmt._entry_ptr.147, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @es8316_of_match, !334, !"es8316_of_match", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/es8316.c", i32 833, i32 34}
!335 = !{ptr @es8316_i2c_id, !336, !"es8316_i2c_id", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/es8316.c", i32 826, i32 35}
!337 = !{i32 1, !"wchar_size", i32 2}
!338 = !{i32 1, !"min_enum_size", i32 4}
!339 = !{i32 8, !"branch-target-enforcement", i32 0}
!340 = !{i32 8, !"sign-return-address", i32 0}
!341 = !{i32 8, !"sign-return-address-all", i32 0}
!342 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!343 = !{i32 7, !"uwtable", i32 1}
!344 = !{i32 7, !"frame-pointer", i32 2}
!345 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!346 = !{!"auto-init"}
!347 = !{i8 0, i8 2}
!348 = !{i64 2148978537, i64 2148978542, i64 2148978555, i64 2148978599, i64 2148978633, i64 2148978654}
!349 = !{i32 0, i32 33}
