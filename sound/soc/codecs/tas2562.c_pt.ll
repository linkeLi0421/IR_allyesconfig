; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/tas2562.c_pt.bc'
source_filename = "../sound/soc/codecs/tas2562.c"
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
%struct.reg_default = type { i32, i32 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.tas2562_data = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.97, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.97 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.92, [128 x i8] }
%union.anon.92 = type { %union.anon.94 }
%union.anon.94 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_tas2562__295_824_tas2562_i2c_driver_init6 = internal global ptr @tas2562_i2c_driver_init, section ".initcall6.init", align 4
@tas2562_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tas2562_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tas2562_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tas2562_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tas2562_i2c_driver_exit = internal global ptr @tas2562_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author296 = internal constant [51 x i8] c"snd_soc_tas2562.author=Dan Murphy <dmurphy@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [59 x i8] c"snd_soc_tas2562.description=TAS2562 Audio amplifier driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [54 x i8] c"snd_soc_tas2562.file=sound/soc/codecs/snd-soc-tas2562\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [28 x i8] c"snd_soc_tas2562.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tas2562\00", [24 x i8] zeroinitializer }, align 32
@tas2562_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tas2562\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tas2563\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tas2564\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tas2110\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@tas2562_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tas2562\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tas2563\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"tas2564\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"tas2110\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@tas2562_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tas2562_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 640, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tas2562_reg_defaults, i32 10, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @tas2562_ranges, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"tas2562:774:(&tas2562_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@tas2562_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 777, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tas2562_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/tas2562.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tas2562_probe._entry_ptr = internal global ptr @tas2562_probe._entry, section ".printk_index", align 4
@soc_component_dev_tas2110 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @tas2562_snd_controls, i32 2, ptr @tas2110_dapm_widgets, i32 4, ptr @tas2110_audio_map, i32 6, ptr @tas2562_codec_probe, ptr null, ptr @tas2562_suspend, ptr @tas2562_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tas2562_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@tas2562_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.37, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tas2562_speaker_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.38, i64 78, i32 8190, i32 0, i32 0, i32 0, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.23, i64 78, i32 8190, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@soc_component_dev_tas2562 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @tas2562_snd_controls, i32 2, ptr @tas2562_dapm_widgets, i32 8, ptr @tas2562_audio_map, i32 8, ptr @tas2562_codec_probe, ptr null, ptr @tas2562_suspend, ptr @tas2562_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tas2562_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"shut-down\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,imon-slot-no\00", [16 x i8] zeroinitializer }, align 32
@tas2562_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 736, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Property %s is missing setting default slot\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tas2562_parse_dt\00", [47 x i8] zeroinitializer }, align 32
@tas2562_parse_dt._entry_ptr = internal global ptr @tas2562_parse_dt._entry, section ".printk_index", align 4
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,vmon-slot-no\00", [16 x i8] zeroinitializer }, align 32
@tas2562_parse_dt._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 745, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tas2562_parse_dt._entry_ptr.15 = internal global ptr @tas2562_parse_dt._entry.13, section ".printk_index", align 4
@tas2562_parse_dt._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.4, i32 750, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Vsense slot must be greater than Isense slot\0A\00", [50 x i8] zeroinitializer }, align 32
@tas2562_parse_dt._entry_ptr.18 = internal global ptr @tas2562_parse_dt._entry.16, section ".printk_index", align 4
@tas2562_reg_defaults = internal constant { [10 x %struct.reg_default], [48 x i8] } { [10 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 14 }, %struct.reg_default { i32 3, i32 32 }, %struct.reg_default { i32 6, i32 9 }, %struct.reg_default { i32 7, i32 2 }, %struct.reg_default { i32 268, i32 64 }, %struct.reg_default { i32 269, i32 64 }, %struct.reg_default { i32 270, i32 0 }, %struct.reg_default { i32 271, i32 0 }], [48 x i8] zeroinitializer }, align 32
@tas2562_ranges = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 640, i32 0, i32 255, i32 0, i32 0, i32 128 }], [32 x i8] zeroinitializer }, align 32
@tas2562_snd_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @tas2562_dac_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @tas2562_volume_control_get, ptr @tas2562_volume_control_put, %union.anon.98 { ptr @dvc_tlv }, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }], [32 x i8] zeroinitializer }, align 32
@tas2110_audio_map = internal constant { [6 x %struct.snd_soc_dapm_route], [72 x i8] } { [6 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.24, ptr @.str.29, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.24, ptr @.str.30, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.24, ptr @.str.31, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.24, ptr @.str.32, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.25, ptr null, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.26, ptr null, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }], [72 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Amp Gain Volume\00", [16 x i8] zeroinitializer }, align 32
@tas2562_dac_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 850, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 28, i32 28, i32 3, i32 3, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Digital Volume Control\00", [41 x i8] zeroinitializer }, align 32
@dvc_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -11000, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 110, i32 110, i32 268, i32 268, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@float_vol_db_lookup = internal constant { [55 x i32], [36 x i8] } { [55 x i32] [i32 3395, i32 4274, i32 5381, i32 6759, i32 8529, i32 10737, i32 13517, i32 17017, i32 21423, i32 26971, i32 26971, i32 42746, i32 53814, i32 67748, i32 85290, i32 107374, i32 135176, i32 170176, i32 214239, i32 269711, i32 339546, i32 427464, i32 538145, i32 677485, i32 852903, i32 1073741, i32 1351760, i32 1701766, i32 2142396, i32 2697117, i32 3395469, i32 4274643, i32 5381456, i32 6774852, i32 8529034, i32 10737418, i32 13517608, i32 17017661, i32 21423965, i32 26971175, i32 33954697, i32 42746431, i32 53814569, i32 67748528, i32 85290344, i32 135176086, i32 170176610, i32 214239659, i32 269711751, i32 339546978, i32 427464319, i32 538145694, i32 677485289, i32 852903447, i32 1073741824], [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ASI1\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ASI1 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ASI1 Sel\00", [23 x i8] zeroinitializer }, align 32
@tas2562_asi1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @tas2562_ASI1_src_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OUT\00", [28 x i8] zeroinitializer }, align 32
@tas2110_dapm_widgets = internal constant { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [176 x i8] } { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.22, ptr @.str.23, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.24, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @tas2562_asi1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.25, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @tas2562_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.26, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [176 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ASI1 Source\00", [20 x i8] zeroinitializer }, align 32
@tas2562_ASI1_src_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 4, i8 4, i32 4, i32 3, ptr @tas2562_ASI1_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@tas2562_ASI1_src = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I2C offset\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LeftRightDiv2\00", [18 x i8] zeroinitializer }, align 32
@tas2562_dac_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 480, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Not supported evevt\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tas2562_dac_event\00", [46 x i8] zeroinitializer }, align 32
@tas2562_dac_event._entry_ptr = internal global ptr @tas2562_dac_event._entry, section ".printk_index", align 4
@tas2562_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 92, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wrong power level setting %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tas2562_set_bias_level\00", [41 x i8] zeroinitializer }, align 32
@tas2562_set_bias_level._entry_ptr = internal global ptr @tas2562_set_bias_level._entry, section ".printk_index", align 4
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tas2562-amplifier\00", [46 x i8] zeroinitializer }, align 32
@tas2562_speaker_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @tas2562_set_dai_fmt, ptr null, ptr @tas2562_set_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tas2562_mute, ptr null, ptr null, ptr @tas2562_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ASI1 Capture\00", [19 x i8] zeroinitializer }, align 32
@tas2562_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 353, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ASI format Inverse is not found\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tas2562_set_dai_fmt\00", [44 x i8] zeroinitializer }, align 32
@tas2562_set_dai_fmt._entry_ptr = internal global ptr @tas2562_set_dai_fmt._entry, section ".printk_index", align 4
@tas2562_set_dai_fmt._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.4, i32 361, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to set RX edge\0A\00", [41 x i8] zeroinitializer }, align 32
@tas2562_set_dai_fmt._entry_ptr.43 = internal global ptr @tas2562_set_dai_fmt._entry.41, section ".printk_index", align 4
@tas2562_set_dai_fmt._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.4, i32 375, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DAI Format is not found, fmt=0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@tas2562_set_dai_fmt._entry_ptr.46 = internal global ptr @tas2562_set_dai_fmt._entry.44, section ".printk_index", align 4
@tas2562_set_dai_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 186, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx masks must not be 0\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tas2562_set_dai_tdm_slot\00", [39 x i8] zeroinitializer }, align 32
@tas2562_set_dai_tdm_slot._entry_ptr = internal global ptr @tas2562_set_dai_tdm_slot._entry, section ".printk_index", align 4
@tas2562_set_dai_tdm_slot._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.4, i32 236, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"slot width not supported\00", [39 x i8] zeroinitializer }, align 32
@tas2562_set_dai_tdm_slot._entry_ptr.51 = internal global ptr @tas2562_set_dai_tdm_slot._entry.49, section ".printk_index", align 4
@tas2562_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 326, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set bitwidth failed, %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tas2562_hw_params\00", [46 x i8] zeroinitializer }, align 32
@tas2562_hw_params._entry_ptr = internal global ptr @tas2562_hw_params._entry, section ".printk_index", align 4
@tas2562_hw_params._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.4, i32 332, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"set sample rate failed, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tas2562_hw_params._entry_ptr.56 = internal global ptr @tas2562_hw_params._entry.54, section ".printk_index", align 4
@tas2562_set_bitwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 285, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported bitwidth format\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tas2562_set_bitwidth\00", [43 x i8] zeroinitializer }, align 32
@tas2562_set_bitwidth._entry_ptr = internal global ptr @tas2562_set_bitwidth._entry, section ".printk_index", align 4
@tas2562_set_samplerate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 163, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s, unsupported sample rate, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tas2562_set_samplerate\00", [41 x i8] zeroinitializer }, align 32
@tas2562_set_samplerate._entry_ptr = internal global ptr @tas2562_set_samplerate._entry, section ".printk_index", align 4
@tas2562_audio_map = internal constant { [8 x %struct.snd_soc_dapm_route], [96 x i8] } { [8 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.24, ptr @.str.29, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.24, ptr @.str.30, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.24, ptr @.str.31, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.24, ptr @.str.32, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.25, ptr null, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.26, ptr null, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.66, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr @.str.66, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }], [96 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ISENSE\00", [25 x i8] zeroinitializer }, align 32
@isense_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VSENSE\00", [25 x i8] zeroinitializer }, align 32
@vsense_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VMON\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IMON\00", [27 x i8] zeroinitializer }, align 32
@tas2562_dapm_widgets = internal constant { [8 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [352 x i8] } { [8 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.22, ptr @.str.23, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.24, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @tas2562_asi1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.25, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @tas2562_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @isense_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @vsense_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 25, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 25, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.26, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [352 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@switch.table.tas2562_set_dai_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 0, i32 0, i32 2, i32 0], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.71 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 6, i64 10]
@__sancov_gen_cov_switch_values.73 = internal global [16 x i64] [i64 14, i64 32, i64 7350, i64 8000, i64 14700, i64 16000, i64 22050, i64 24000, i64 29400, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c"tas2562_i2c_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 815, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 817, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"tas2562_of_match\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 805, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant [11 x i8] c"tas2562_id\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 795, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [22 x i8] c"tas2562_regmap_config\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 690, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 774, i32 17 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 777, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [26 x i8] c"soc_component_dev_tas2110\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 578, i32 46 }
@___asan_gen_.116 = private unnamed_addr constant [12 x i8] c"tas2562_dai\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 643, i32 34 }
@___asan_gen_.119 = private unnamed_addr constant [26 x i8] c"soc_component_dev_tas2562\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 618, i32 46 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 707, i32 51 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 720, i32 52 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 732, i32 46 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 735, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 741, i32 46 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 744, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 750, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [21 x i8] c"tas2562_reg_defaults\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 677, i32 33 }
@___asan_gen_.158 = private unnamed_addr constant [15 x i8] c"tas2562_ranges\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 665, i32 38 }
@___asan_gen_.161 = private unnamed_addr constant [21 x i8] c"tas2562_snd_controls\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 545, i32 38 }
@___asan_gen_.164 = private unnamed_addr constant [18 x i8] c"tas2110_audio_map\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 569, i32 40 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 546, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [16 x i8] c"tas2562_dac_tlv\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 535, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 550, i32 11 }
@___asan_gen_.177 = private unnamed_addr constant [8 x i8] c"dvc_tlv\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 533, i32 14 }
@___asan_gen_.180 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [20 x i8] c"float_vol_db_lookup\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 33, i32 27 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 562, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 563, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"tas2562_asi1_mux\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 451, i32 38 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 564, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 566, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [21 x i8] c"tas2110_dapm_widgets\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 561, i32 41 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 452, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [22 x i8] c"tas2562_ASI1_src_enum\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 448, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"tas2562_ASI1_src\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 444, i32 27 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 445, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 445, i32 16 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 445, i32 24 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 445, i32 33 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 480, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 91, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 645, i32 11 }
@___asan_gen_.247 = private unnamed_addr constant [24 x i8] c"tas2562_speaker_dai_ops\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 635, i32 37 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 655, i32 22 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 353, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 361, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 374, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 186, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 236, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 326, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 332, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 285, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 162, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant [18 x i8] c"tas2562_audio_map\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 607, i32 40 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 600, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [14 x i8] c"isense_switch\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 537, i32 38 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 601, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant [14 x i8] c"vsense_switch\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 541, i32 38 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 602, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 603, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant [21 x i8] c"tas2562_dapm_widgets\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 595, i32 41 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.347 = private constant [30 x i8] c"../sound/soc/codecs/tas2562.c\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 538, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [33 x i8] c"switch.table.tas2562_set_dai_fmt\00", align 1
@llvm.compiler.used = appending global [118 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_tas2562_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_tas2562__295_824_tas2562_i2c_driver_init6, ptr @tas2562_dac_event._entry, ptr @tas2562_dac_event._entry_ptr, ptr @tas2562_hw_params._entry, ptr @tas2562_hw_params._entry.54, ptr @tas2562_hw_params._entry_ptr, ptr @tas2562_hw_params._entry_ptr.56, ptr @tas2562_i2c_driver_exit, ptr @tas2562_parse_dt._entry, ptr @tas2562_parse_dt._entry.13, ptr @tas2562_parse_dt._entry.16, ptr @tas2562_parse_dt._entry_ptr, ptr @tas2562_parse_dt._entry_ptr.15, ptr @tas2562_parse_dt._entry_ptr.18, ptr @tas2562_probe._entry, ptr @tas2562_probe._entry_ptr, ptr @tas2562_set_bias_level._entry, ptr @tas2562_set_bias_level._entry_ptr, ptr @tas2562_set_bitwidth._entry, ptr @tas2562_set_bitwidth._entry_ptr, ptr @tas2562_set_dai_fmt._entry, ptr @tas2562_set_dai_fmt._entry.41, ptr @tas2562_set_dai_fmt._entry.44, ptr @tas2562_set_dai_fmt._entry_ptr, ptr @tas2562_set_dai_fmt._entry_ptr.43, ptr @tas2562_set_dai_fmt._entry_ptr.46, ptr @tas2562_set_dai_tdm_slot._entry, ptr @tas2562_set_dai_tdm_slot._entry.49, ptr @tas2562_set_dai_tdm_slot._entry_ptr, ptr @tas2562_set_dai_tdm_slot._entry_ptr.51, ptr @tas2562_set_samplerate._entry, ptr @tas2562_set_samplerate._entry_ptr, ptr @tas2562_i2c_driver, ptr @.str, ptr @tas2562_of_match, ptr @tas2562_id, ptr @tas2562_probe._key, ptr @tas2562_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @soc_component_dev_tas2110, ptr @tas2562_dai, ptr @soc_component_dev_tas2562, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @tas2562_reg_defaults, ptr @tas2562_ranges, ptr @tas2562_snd_controls, ptr @tas2110_audio_map, ptr @.str.19, ptr @tas2562_dac_tlv, ptr @.compoundliteral, ptr @.str.20, ptr @dvc_tlv, ptr @.compoundliteral.21, ptr @float_vol_db_lookup, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @tas2562_asi1_mux, ptr @.str.25, ptr @.str.26, ptr @tas2110_dapm_widgets, ptr @.str.28, ptr @tas2562_ASI1_src_enum, ptr @tas2562_ASI1_src, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @tas2562_speaker_dai_ops, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @tas2562_audio_map, ptr @.str.61, ptr @isense_switch, ptr @.str.62, ptr @vsense_switch, ptr @.str.63, ptr @.str.64, ptr @tas2562_dapm_widgets, ptr @.str.66, ptr @.compoundliteral.67, ptr @.compoundliteral.68, ptr @switch.table.tas2562_set_dai_fmt], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_tas2110 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_tas2562 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_parse_dt._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_parse_dt._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_reg_defaults to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_snd_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2110_audio_map to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_dac_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvc_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @float_vol_db_lookup to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_asi1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2110_dapm_widgets to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_ASI1_src_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_ASI1_src to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_dac_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_speaker_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_set_dai_fmt._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_set_dai_fmt._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_set_dai_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_set_dai_tdm_slot._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_hw_params._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_set_bitwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_set_samplerate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_audio_map to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isense_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsense_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas2562_dapm_widgets to i32), i32 1440, i32 1792, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tas2562_set_dai_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2562_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tas2562_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tas2562_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @tas2562_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2562_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 36, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %client2 = getelementptr inbounds %struct.tas2562_data, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %client2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %client2, align 4
  %dev4 = getelementptr inbounds %struct.tas2562_data, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev4, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %model_id = getelementptr inbounds %struct.tas2562_data, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %model_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %model_id, align 4
  %call.i38 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 7) #6
  %sdz_gpio.i = getelementptr inbounds %struct.tas2562_data, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %sdz_gpio.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i38, ptr %sdz_gpio.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end8.i

if.then.i:                                        ; preds = %if.end
  %cmp.i = icmp eq ptr %call.i38, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i, label %if.then.i.tas2562_parse_dt.exit_crit_edge, label %if.end8.thread.i

if.then.i.tas2562_parse_dt.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2562_parse_dt.exit

if.end8.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %sdz_gpio.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %sdz_gpio.i, align 4
  br label %if.then11.i

if.end8.i:                                        ; preds = %if.end
  %cmp10.i = icmp eq ptr %call.i38, null
  br i1 %cmp10.i, label %if.end8.i.if.then11.i_crit_edge, label %if.end8.i.if.end24.i_crit_edge

if.end8.i.if.end24.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.end8.i.if.then11.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i

if.then11.i:                                      ; preds = %if.end8.i.if.then11.i_crit_edge, %if.end8.thread.i
  %call12.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef 7) #6
  %7 = ptrtoint ptr %sdz_gpio.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call12.i, ptr %sdz_gpio.i, align 4
  %cmp19.i = icmp eq ptr %call12.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp19.i, label %if.then11.i.tas2562_parse_dt.exit_crit_edge, label %if.end22.i

if.then11.i.tas2562_parse_dt.exit_crit_edge:      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2562_parse_dt.exit

if.end22.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %sdz_gpio.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sdz_gpio.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end22.i, %if.end8.i.if.end24.i_crit_edge
  %9 = ptrtoint ptr %model_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %model_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp25.i = icmp eq i32 %10, 3
  br i1 %cmp25.i, label %if.end24.i.tas2562_parse_dt.exit_crit_edge, label %if.end27.i

if.end24.i.tas2562_parse_dt.exit_crit_edge:       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2562_parse_dt.exit

if.end27.i:                                       ; preds = %if.end24.i
  %fwnode.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 28
  %11 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fwnode.i, align 4
  %i_sense_slot.i = getelementptr inbounds %struct.tas2562_data, ptr %call.i, i32 0, i32 6
  %call.i.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef %12, ptr noundef nonnull @.str.9, ptr noundef %i_sense_slot.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end27.i.if.end31.i_crit_edge, label %do.end.i

if.end27.i.if.end31.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

do.end.i:                                         ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9) #9
  %13 = ptrtoint ptr %i_sense_slot.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %i_sense_slot.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end.i, %if.end27.i.if.end31.i_crit_edge
  %14 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fwnode.i, align 4
  %v_sense_slot.i = getelementptr inbounds %struct.tas2562_data, ptr %call.i, i32 0, i32 5
  %call.i2.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef %15, ptr noundef nonnull @.str.12, ptr noundef %v_sense_slot.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool34.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool34.not.i, label %if.end31.i.if.end40.i_crit_edge, label %do.end38.i

if.end31.i.if.end40.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

do.end38.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #9
  %16 = ptrtoint ptr %v_sense_slot.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %v_sense_slot.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.end38.i, %if.end31.i.if.end40.i_crit_edge
  %17 = ptrtoint ptr %v_sense_slot.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %v_sense_slot.i, align 4
  %19 = ptrtoint ptr %i_sense_slot.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_sense_slot.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp43.i = icmp slt i32 %18, %20
  br i1 %cmp43.i, label %do.end47.i, label %if.end40.i.tas2562_parse_dt.exit_crit_edge

if.end40.i.tas2562_parse_dt.exit_crit_edge:       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2562_parse_dt.exit

do.end47.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #9
  br label %tas2562_parse_dt.exit

tas2562_parse_dt.exit:                            ; preds = %do.end47.i, %if.end40.i.tas2562_parse_dt.exit_crit_edge, %if.end24.i.tas2562_parse_dt.exit_crit_edge, %if.then11.i.tas2562_parse_dt.exit_crit_edge, %if.then.i.tas2562_parse_dt.exit_crit_edge
  %call6 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tas2562_regmap_config, ptr noundef nonnull @tas2562_probe._key, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.tas2562_data, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call6, ptr %regmap, align 4
  %cmp.i39 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i39, label %if.then9, label %if.end12

if.then9:                                         ; preds = %tas2562_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %22) #9
  br label %cleanup

if.end12:                                         ; preds = %tas2562_parse_dt.exit
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %23 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i, align 4
  %24 = ptrtoint ptr %model_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %model_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp = icmp eq i32 %25, 3
  br i1 %cmp, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @soc_component_dev_tas2110, ptr noundef nonnull @tas2562_dai, i32 noundef 1) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @soc_component_dev_tas2562, ptr noundef nonnull @tas2562_dai, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then15, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %if.then9 ], [ %call16, %if.then15 ], [ %call18, %if.end17 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2562_codec_probe(ptr noundef %component) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %component, ptr %3, align 4
  %sdz_gpio = getelementptr inbounds %struct.tas2562_data, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %sdz_gpio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdz_gpio, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %6, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2, i32 noundef 3, i32 noundef 1) #6
  %7 = tail call i32 @llvm.smin.i32(i32 %call3, i32 0)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2562_suspend(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.tas2562_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #6
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %7) #6
  %sdz_gpio = getelementptr inbounds %struct.tas2562_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %sdz_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdz_gpio, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %9, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2562_resume(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %sdz_gpio = getelementptr inbounds %struct.tas2562_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sdz_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdz_gpio, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regmap = getelementptr inbounds %struct.tas2562_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext false) #6
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regcache_sync(ptr noundef %9) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2562_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %do.end [
    i32 3, label %sw.bb
    i32 1, label %entry.sw.bb2_crit_edge
    i32 2, label %entry.sw.bb2_crit_edge10
    i32 0, label %sw.bb4
  ]

entry.sw.bb2_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2, i32 noundef 3, i32 noundef 0) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge10
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2, i32 noundef 3, i32 noundef 1) #6
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2, i32 noundef 3, i32 noundef 2) #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.tas2562_data, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.35, i32 noundef %level) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb4, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb4 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tas2562_volume_control_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
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
  %volume_lvl = getelementptr inbounds %struct.tas2562_data, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %volume_lvl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %volume_lvl, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2562_volume_control_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %div = sdiv i32 %7, 2
  %arrayidx2 = getelementptr [55 x i32], ptr @float_vol_db_lookup, i32 0, i32 %div
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %and = and i32 %9, 255
  %call3 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 271, i32 noundef %and) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %9, 8
  %and4 = and i32 %shr, 255
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 270, i32 noundef %and4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %shr9 = lshr i32 %9, 16
  %and10 = and i32 %shr9, 255
  %call11 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 269, i32 noundef %and10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %shr15 = lshr i32 %9, 24
  %call17 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 268, i32 noundef %shr15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  %volume_lvl = getelementptr inbounds %struct.tas2562_data, ptr %5, i32 0, i32 7
  %12 = ptrtoint ptr %volume_lvl to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %volume_lvl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ %call3, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call11, %if.end8.cleanup_crit_edge ], [ %call17, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2562_dac_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %event, label %do.end [
    i32 2, label %entry.end_crit_edge
    i32 4, label %sw.bb3
  ]

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.tas2562_data, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.33) #9
  br label %cleanup

end:                                              ; preds = %sw.bb3, %entry.end_crit_edge
  %.sink = phi i32 [ 2, %sw.bb3 ], [ 1, %entry.end_crit_edge ]
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 2, i32 noundef 3, i32 noundef %.sink) #6
  %9 = tail call i32 @llvm.smin.i32(i32 %call4, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %9, %end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2562_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
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
  %and = and i32 %fmt, 3840
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %and, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 768, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.tas2562_data, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.39) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %asi_cfg_1.0 = phi i32 [ 1, %sw.bb2 ], [ %and, %entry.sw.epilog_crit_edge ]
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 7, i32 noundef 1, i32 noundef %asi_cfg_1.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end9, label %if.end

do.end9:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %dev10 = getelementptr inbounds %struct.tas2562_data, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.42) #9
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %and11 = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 5
  br i1 %11, label %switch.hole_check, label %if.end.do.end17_crit_edge

if.end.do.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.end17:                                         ; preds = %switch.hole_check.do.end17_crit_edge, %if.end.do.end17_crit_edge
  %dev18 = getelementptr inbounds %struct.tas2562_data, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.45, i32 noundef %fmt) #9
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %14 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %switch.lobit.not = icmp eq i8 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end17_crit_edge, label %switch.lookup

switch.hole_check.do.end17_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.tas2562_set_dai_fmt, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 7, i32 noundef 62, i32 noundef %switch.load) #6
  %16 = tail call i32 @llvm.smin.i32(i32 %call21, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end17, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call5, %do.end9 ], [ -22, %do.end17 ], [ %16, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2562_set_dai_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_mask)
  %tobool.not = icmp eq i32 %tx_mask, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.47) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %slots)
  %cmp = icmp eq i32 %slots, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tx_mask)
  %cmp3.not = icmp eq i32 %tx_mask, 1
  br i1 %cmp3.not, label %if.then2.if.end12_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2.if.end12_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = tail call i32 @llvm.cttz.i32(i32 %tx_mask, i1 true) #6, !range !187
  %shl = shl nuw i32 1, %6
  %neg = xor i32 %shl, -1
  %and = and i32 %neg, %tx_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp7 = icmp eq i32 %and, 0
  %7 = tail call i32 @llvm.cttz.i32(i32 %and, i1 true) #6, !range !187
  %spec.select = select i1 %cmp7, i32 %6, i32 %7
  %phi.bo = shl nuw nsw i32 %spec.select, 4
  %8 = or i32 %phi.bo, %6
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then2.if.end12_crit_edge
  %or = phi i32 [ %8, %if.else ], [ 0, %if.then2.if.end12_crit_edge ]
  %call14 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 9, i32 noundef %or) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %9 = tail call i32 @llvm.fshl.i32(i32 %slot_width, i32 %slot_width, i32 29)
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %9, label %sw.epilog.thread [
    i32 2, label %if.end17.sw.epilog_crit_edge
    i32 3, label %sw.bb19
    i32 4, label %sw.bb21
    i32 0, label %if.end17.if.end29_crit_edge
  ]

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %dev26 = getelementptr inbounds %struct.tas2562_data, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.50) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb19, %if.end17.sw.epilog_crit_edge
  %.sink = phi i32 [ 2, %sw.bb21 ], [ 1, %sw.bb19 ], [ 0, %if.end17.sw.epilog_crit_edge ]
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 8, i32 noundef 3, i32 noundef %.sink) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp27 = icmp slt i32 %call22, 0
  br i1 %cmp27, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end29_crit_edge

sw.epilog.if.end29_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %sw.epilog.if.end29_crit_edge, %if.end17.if.end29_crit_edge
  %v_sense_slot = getelementptr inbounds %struct.tas2562_data, ptr %5, i32 0, i32 5
  %13 = ptrtoint ptr %v_sense_slot to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v_sense_slot, align 4
  %call30 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 11, i32 noundef 63, i32 noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %i_sense_slot = getelementptr inbounds %struct.tas2562_data, ptr %5, i32 0, i32 6
  %15 = ptrtoint ptr %i_sense_slot to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_sense_slot, align 4
  %call34 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12, i32 noundef 63, i32 noundef %16) #6
  %17 = tail call i32 @llvm.smin.i32(i32 %call34, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end29.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread, %if.end12.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then2.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call22, %sw.epilog.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %17, %if.end33 ], [ -22, %sw.epilog.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2562_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp ne i32 %mute, 0
  %cond = zext i1 %tobool.not to i32
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 2, i32 noundef 3, i32 noundef %cond) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas2562_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.params_format.exit_crit_edge

entry.params_format.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.do.end.i_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_format.exit

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %entry.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %7, %entry.params_format.exit_crit_edge ], [ %9, %for.inc.i.i.params_format.exit_crit_edge ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #6, !range !187
  %add.i.i = or i32 %10, %i.09.lcssa.i.i
  %11 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %add.i.i, label %params_format.exit.do.end.i_crit_edge [
    i32 2, label %params_format.exit.sw.epilog.i_crit_edge
    i32 6, label %sw.bb1.i
    i32 10, label %sw.bb4.i
  ]

params_format.exit.sw.epilog.i_crit_edge:         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

params_format.exit.do.end.i_crit_edge:            ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

sw.bb1.i:                                         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.end.i:                                         ; preds = %params_format.exit.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge
  %dev.i24 = getelementptr inbounds %struct.tas2562_data, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i24, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.57) #9
  br label %do.end

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb1.i, %params_format.exit.sw.epilog.i_crit_edge
  %.sink42.i = phi i32 [ 12, %sw.bb4.i ], [ 8, %sw.bb1.i ], [ 0, %params_format.exit.sw.epilog.i_crit_edge ]
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %call6.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %15, i32 noundef 8, i32 noundef 12, i32 noundef %.sink42.i) #6
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %call8.i = tail call i32 @snd_soc_component_read(ptr noundef %17, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 0
  br i1 %cmp.i, label %sw.epilog.i.do.end_crit_edge, label %if.end.i

sw.epilog.i.do.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %sw.epilog.i
  %and.i = shl i32 %call8.i, 4
  %18 = and i32 %and.i, 64
  %19 = xor i32 %18, 64
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %call12.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %21, i32 noundef 11, i32 noundef 64, i32 noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end.i.do.end_crit_edge, label %tas2562_set_bitwidth.exit

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

tas2562_set_bitwidth.exit:                        ; preds = %if.end.i
  %and16.i = shl i32 %call8.i, 3
  %22 = and i32 %and16.i, 64
  %23 = xor i32 %22, 64
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 4
  %call22.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %25, i32 noundef 12, i32 noundef 64, i32 noundef %23) #6
  %26 = tail call i32 @llvm.smin.i32(i32 %call22.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call22.i)
  %tobool.not = icmp sgt i32 %call22.i, -1
  br i1 %tobool.not, label %if.end, label %tas2562_set_bitwidth.exit.do.end_crit_edge

tas2562_set_bitwidth.exit.do.end_crit_edge:       ; preds = %tas2562_set_bitwidth.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %tas2562_set_bitwidth.exit.do.end_crit_edge, %if.end.i.do.end_crit_edge, %sw.epilog.i.do.end_crit_edge, %do.end.i
  %retval.0.i35 = phi i32 [ %26, %tas2562_set_bitwidth.exit.do.end_crit_edge ], [ %call12.i, %if.end.i.do.end_crit_edge ], [ %call8.i, %sw.epilog.i.do.end_crit_edge ], [ -22, %do.end.i ]
  %dev = getelementptr inbounds %struct.tas2562_data, ptr %5, i32 0, i32 3
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.52, i32 noundef %retval.0.i35) #9
  br label %cleanup

if.end:                                           ; preds = %tas2562_set_bitwidth.exit
  %arrayidx.i.i25 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %arrayidx.i.i25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i25, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %30, label %do.end10 [
    i32 7350, label %if.end.tas2562_set_samplerate.exit.thread_crit_edge
    i32 8000, label %sw.bb1.i26
    i32 14700, label %sw.bb2.i
    i32 16000, label %sw.bb3.i
    i32 22050, label %sw.bb4.i27
    i32 24000, label %sw.bb5.i
    i32 29400, label %sw.bb6.i
    i32 32000, label %sw.bb7.i
    i32 44100, label %sw.bb8.i
    i32 48000, label %sw.bb9.i
    i32 88200, label %sw.bb10.i
    i32 96000, label %sw.bb11.i
    i32 176400, label %sw.bb12.i
    i32 192000, label %sw.bb13.i
  ]

if.end.tas2562_set_samplerate.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2562_set_samplerate.exit.thread

sw.bb1.i26:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2562_set_samplerate.exit.thread

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2562_set_samplerate.exit.thread

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2562_set_samplerate.exit.thread

sw.bb4.i27:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2562_set_samplerate.exit.thread

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2562_set_samplerate.exit.thread

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2562_set_samplerate.exit.thread

sw.bb7.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2562_set_samplerate.exit.thread

sw.bb8.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2562_set_samplerate.exit.thread

sw.bb9.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2562_set_samplerate.exit.thread

sw.bb10.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2562_set_samplerate.exit.thread

sw.bb11.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2562_set_samplerate.exit.thread

sw.bb12.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2562_set_samplerate.exit.thread

sw.bb13.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tas2562_set_samplerate.exit.thread

tas2562_set_samplerate.exit.thread:               ; preds = %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i27, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i26, %if.end.tas2562_set_samplerate.exit.thread_crit_edge
  %samp_rate.0.i = phi i32 [ 12, %sw.bb13.i ], [ 12, %sw.bb12.i ], [ 10, %sw.bb11.i ], [ 10, %sw.bb10.i ], [ 8, %sw.bb9.i ], [ 8, %sw.bb8.i ], [ 6, %sw.bb7.i ], [ 6, %sw.bb6.i ], [ 4, %sw.bb5.i ], [ 4, %sw.bb4.i27 ], [ 2, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 0, %sw.bb1.i26 ], [ 0, %if.end.tas2562_set_samplerate.exit.thread_crit_edge ]
  %ramp_rate.0.i = phi i32 [ 0, %sw.bb13.i ], [ 32, %sw.bb12.i ], [ 0, %sw.bb11.i ], [ 32, %sw.bb10.i ], [ 0, %sw.bb9.i ], [ 32, %sw.bb8.i ], [ 0, %sw.bb7.i ], [ 32, %sw.bb6.i ], [ 0, %sw.bb5.i ], [ 32, %sw.bb4.i27 ], [ 0, %sw.bb3.i ], [ 32, %sw.bb2.i ], [ 0, %sw.bb1.i26 ], [ 32, %if.end.tas2562_set_samplerate.exit.thread_crit_edge ]
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %33, i32 noundef 6, i32 noundef 32, i32 noundef %ramp_rate.0.i) #6
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 4
  %call15.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %35, i32 noundef 6, i32 noundef 14, i32 noundef %samp_rate.0.i) #6
  br label %cleanup

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i28 = getelementptr inbounds %struct.tas2562_data, ptr %5, i32 0, i32 3
  %36 = ptrtoint ptr %dev.i28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i28, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %30) #9
  %38 = ptrtoint ptr %dev.i28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.55, i32 noundef -22) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %tas2562_set_samplerate.exit.thread, %do.end
  %retval.0 = phi i32 [ %retval.0.i35, %do.end ], [ -22, %do.end10 ], [ 0, %tas2562_set_samplerate.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !98, !100, !102, !103, !104, !105, !107, !109, !111, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @__initcall__kmod_snd_soc_tas2562__295_824_tas2562_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_tas2562__295_824_tas2562_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/tas2562.c", i32 824, i32 1}
!2 = !{ptr @__exitcall_tas2562_i2c_driver_exit, !1, !"__exitcall_tas2562_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author296, !4, !"__UNIQUE_ID_author296", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/tas2562.c", i32 826, i32 1}
!5 = !{ptr @__UNIQUE_ID_description297, !6, !"__UNIQUE_ID_description297", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/tas2562.c", i32 827, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/tas2562.c", i32 828, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/tas2562.c", i32 817, i32 11}
!12 = !{ptr @tas2562_i2c_driver, !13, !"tas2562_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/tas2562.c", i32 815, i32 26}
!14 = !{ptr @tas2562_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/tas2562.c", i32 774, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/tas2562.c", i32 777, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tas2562_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @tas2562_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/tas2562.c", i32 707, i32 51}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/tas2562.c", i32 720, i32 52}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/tas2562.c", i32 732, i32 46}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/tas2562.c", i32 735, i32 3}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tas2562_parse_dt._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @tas2562_parse_dt._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/tas2562.c", i32 741, i32 46}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/tas2562.c", i32 744, i32 3}
!40 = !{ptr @tas2562_parse_dt._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @tas2562_parse_dt._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/tas2562.c", i32 750, i32 3}
!44 = !{ptr @tas2562_parse_dt._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @tas2562_parse_dt._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @tas2562_regmap_config, !47, !"tas2562_regmap_config", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/tas2562.c", i32 690, i32 35}
!48 = !{ptr @tas2562_reg_defaults, !49, !"tas2562_reg_defaults", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/tas2562.c", i32 677, i32 33}
!50 = !{ptr @tas2562_ranges, !51, !"tas2562_ranges", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/tas2562.c", i32 665, i32 38}
!52 = !{ptr @soc_component_dev_tas2110, !53, !"soc_component_dev_tas2110", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/tas2562.c", i32 578, i32 46}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/tas2562.c", i32 546, i32 2}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/tas2562.c", i32 550, i32 11}
!58 = !{ptr @tas2562_snd_controls, !59, !"tas2562_snd_controls", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/tas2562.c", i32 545, i32 38}
!60 = !{ptr @tas2562_dac_tlv, !61, !"tas2562_dac_tlv", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/tas2562.c", i32 535, i32 8}
!62 = !{ptr @float_vol_db_lookup, !63, !"float_vol_db_lookup", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/tas2562.c", i32 33, i32 27}
!64 = !{ptr @dvc_tlv, !65, !"dvc_tlv", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/tas2562.c", i32 533, i32 14}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/tas2562.c", i32 562, i32 2}
!68 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/tas2562.c", i32 563, i32 2}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/tas2562.c", i32 564, i32 2}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/tas2562.c", i32 566, i32 2}
!75 = !{ptr @tas2110_dapm_widgets, !76, !"tas2110_dapm_widgets", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/tas2562.c", i32 561, i32 41}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/tas2562.c", i32 452, i32 2}
!79 = !{ptr @tas2562_asi1_mux, !80, !"tas2562_asi1_mux", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/tas2562.c", i32 451, i32 38}
!81 = !{ptr @tas2562_ASI1_src_enum, !82, !"tas2562_ASI1_src_enum", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/tas2562.c", i32 448, i32 8}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/tas2562.c", i32 445, i32 2}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/tas2562.c", i32 445, i32 16}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/tas2562.c", i32 445, i32 24}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/tas2562.c", i32 445, i32 33}
!91 = !{ptr @tas2562_ASI1_src, !92, !"tas2562_ASI1_src", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/tas2562.c", i32 444, i32 27}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/tas2562.c", i32 480, i32 3}
!95 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @tas2562_dac_event._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @tas2562_dac_event._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @tas2110_audio_map, !99, !"tas2110_audio_map", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/tas2562.c", i32 569, i32 40}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/tas2562.c", i32 91, i32 3}
!102 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @tas2562_set_bias_level._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @tas2562_set_bias_level._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/tas2562.c", i32 645, i32 11}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/tas2562.c", i32 655, i32 22}
!109 = !{ptr @tas2562_dai, !110, !"tas2562_dai", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/tas2562.c", i32 643, i32 34}
!111 = !{ptr @tas2562_speaker_dai_ops, !112, !"tas2562_speaker_dai_ops", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/tas2562.c", i32 635, i32 37}
!113 = !{ptr @.str.39, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/tas2562.c", i32 353, i32 3}
!115 = !{ptr @.str.40, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @tas2562_set_dai_fmt._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @tas2562_set_dai_fmt._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/tas2562.c", i32 361, i32 3}
!120 = !{ptr @tas2562_set_dai_fmt._entry.41, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @tas2562_set_dai_fmt._entry_ptr.43, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/tas2562.c", i32 374, i32 3}
!124 = !{ptr @tas2562_set_dai_fmt._entry.44, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @tas2562_set_dai_fmt._entry_ptr.46, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/tas2562.c", i32 186, i32 3}
!128 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @tas2562_set_dai_tdm_slot._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @tas2562_set_dai_tdm_slot._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/tas2562.c", i32 236, i32 3}
!133 = !{ptr @tas2562_set_dai_tdm_slot._entry.49, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @tas2562_set_dai_tdm_slot._entry_ptr.51, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/tas2562.c", i32 326, i32 3}
!137 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @tas2562_hw_params._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @tas2562_hw_params._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/tas2562.c", i32 332, i32 3}
!142 = !{ptr @tas2562_hw_params._entry.54, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @tas2562_hw_params._entry_ptr.56, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.57, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/tas2562.c", i32 285, i32 3}
!146 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @tas2562_set_bitwidth._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @tas2562_set_bitwidth._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/tas2562.c", i32 162, i32 3}
!151 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @tas2562_set_samplerate._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @tas2562_set_samplerate._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @soc_component_dev_tas2562, !155, !"soc_component_dev_tas2562", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/tas2562.c", i32 618, i32 46}
!156 = !{ptr @.str.61, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/tas2562.c", i32 600, i32 2}
!158 = !{ptr @.str.62, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/tas2562.c", i32 601, i32 2}
!160 = !{ptr @.str.63, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/tas2562.c", i32 602, i32 2}
!162 = !{ptr @.str.64, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/tas2562.c", i32 603, i32 2}
!164 = !{ptr @tas2562_dapm_widgets, !165, !"tas2562_dapm_widgets", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/tas2562.c", i32 595, i32 41}
!166 = !{ptr @.str.66, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/tas2562.c", i32 538, i32 2}
!168 = !{ptr @isense_switch, !169, !"isense_switch", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/tas2562.c", i32 537, i32 38}
!170 = !{ptr @vsense_switch, !171, !"vsense_switch", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/tas2562.c", i32 541, i32 38}
!172 = !{ptr @tas2562_audio_map, !173, !"tas2562_audio_map", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/tas2562.c", i32 607, i32 40}
!174 = !{ptr @tas2562_of_match, !175, !"tas2562_of_match", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/tas2562.c", i32 805, i32 34}
!176 = !{ptr @tas2562_id, !177, !"tas2562_id", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/tas2562.c", i32 795, i32 35}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{i32 0, i32 33}
