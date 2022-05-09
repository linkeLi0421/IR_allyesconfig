; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/da9055.c_pt.bc'
source_filename = "../sound/soc/codecs/da9055.c"
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
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.pll_div = type { i32, i32, i8, i8, i8, i8 }
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
%struct.da9055_priv = type { ptr, i32, i32, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.da9055_platform_data = type { i8, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.87, [128 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.87 = type { %union.anon.89 }
%union.anon.89 = type { [64 x i64] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.92, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.92 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_da9055__294_1540_da9055_i2c_driver_init6 = internal global ptr @da9055_i2c_driver_init, section ".initcall6.init", align 4
@da9055_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @da9055_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @da9055_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @da9055_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_da9055_i2c_driver_exit = internal global ptr @da9055_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [52 x i8] c"snd_soc_da9055.description=ASoC DA9055 Codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [48 x i8] c"snd_soc_da9055.author=David Chen, Ashish Chavan\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [52 x i8] c"snd_soc_da9055.file=sound/soc/codecs/snd-soc-da9055\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [27 x i8] c"snd_soc_da9055.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da9055-codec\00", [19 x i8] zeroinitializer }, align 32
@da9055_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9055-codec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@da9055_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"da9055-codec\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@da9055_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@da9055_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @da9055_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da9055_reg_defaults, i32 73, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"da9055:1493:(&da9055_regmap_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@da9055_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1496, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap_init() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9055_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/da9055.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9055_i2c_probe._entry_ptr = internal global ptr @da9055_i2c_probe._entry, section ".printk_index", align 4
@soc_component_dev_da9055 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @da9055_snd_controls, i32 66, ptr @da9055_dapm_widgets, i32 38, ptr @da9055_audio_map, i32 64, ptr @da9055_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da9055_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@da9055_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.280, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @da9055_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.209, i64 68719477828, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.214, i64 68719477828, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@da9055_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1504, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to register da9055 component: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@da9055_i2c_probe._entry_ptr.9 = internal global ptr @da9055_i2c_probe._entry.7, section ".printk_index", align 4
@da9055_reg_defaults = internal constant { [73 x %struct.reg_default], [152 x i8] } { [73 x %struct.reg_default] [%struct.reg_default { i32 33, i32 16 }, %struct.reg_default { i32 34, i32 10 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 12 }, %struct.reg_default { i32 40, i32 1 }, %struct.reg_default { i32 41, i32 8 }, %struct.reg_default { i32 42, i32 50 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 48, i32 53 }, %struct.reg_default { i32 49, i32 53 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 3 }, %struct.reg_default { i32 53, i32 3 }, %struct.reg_default { i32 54, i32 111 }, %struct.reg_default { i32 55, i32 111 }, %struct.reg_default { i32 56, i32 128 }, %struct.reg_default { i32 57, i32 1 }, %struct.reg_default { i32 58, i32 1 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 65, i32 136 }, %struct.reg_default { i32 66, i32 136 }, %struct.reg_default { i32 67, i32 8 }, %struct.reg_default { i32 68, i32 128 }, %struct.reg_default { i32 69, i32 111 }, %struct.reg_default { i32 70, i32 111 }, %struct.reg_default { i32 71, i32 97 }, %struct.reg_default { i32 72, i32 53 }, %struct.reg_default { i32 73, i32 53 }, %struct.reg_default { i32 74, i32 53 }, %struct.reg_default { i32 75, i32 0 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 96, i32 68 }, %struct.reg_default { i32 97, i32 68 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 64 }, %struct.reg_default { i32 100, i32 64 }, %struct.reg_default { i32 101, i32 64 }, %struct.reg_default { i32 102, i32 64 }, %struct.reg_default { i32 103, i32 64 }, %struct.reg_default { i32 104, i32 64 }, %struct.reg_default { i32 105, i32 72 }, %struct.reg_default { i32 106, i32 64 }, %struct.reg_default { i32 107, i32 65 }, %struct.reg_default { i32 108, i32 64 }, %struct.reg_default { i32 109, i32 64 }, %struct.reg_default { i32 110, i32 16 }, %struct.reg_default { i32 111, i32 16 }, %struct.reg_default { i32 144, i32 128 }, %struct.reg_default { i32 146, i32 2 }, %struct.reg_default { i32 147, i32 0 }, %struct.reg_default { i32 153, i32 0 }, %struct.reg_default { i32 154, i32 0 }, %struct.reg_default { i32 155, i32 0 }, %struct.reg_default { i32 156, i32 63 }, %struct.reg_default { i32 157, i32 0 }, %struct.reg_default { i32 158, i32 63 }, %struct.reg_default { i32 159, i32 255 }, %struct.reg_default { i32 160, i32 113 }, %struct.reg_default { i32 161, i32 0 }, %struct.reg_default { i32 162, i32 0 }, %struct.reg_default { i32 166, i32 0 }, %struct.reg_default { i32 167, i32 0 }, %struct.reg_default { i32 171, i32 0 }, %struct.reg_default { i32 172, i32 0 }, %struct.reg_default { i32 173, i32 0 }, %struct.reg_default { i32 175, i32 8 }, %struct.reg_default { i32 176, i32 0 }, %struct.reg_default { i32 177, i32 0 }, %struct.reg_default { i32 178, i32 0 }], [152 x i8] zeroinitializer }, align 32
@da9055_snd_controls = internal constant { [66 x %struct.snd_kcontrol_new], [768 x i8] } { [66 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @aux_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @mixin_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @digital_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @digital_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @hp_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @lineout_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da9055_adc_hpf_cutoff to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da9055_adc_vf_cutoff to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da9055_dac_hpf_cutoff to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da9055_dac_vf_cutoff to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da9055_dac_soft_mute_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.79 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da9055_gain_ramping_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da9055_dac_ng_setup_time to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da9055_dac_ng_rampup_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da9055_dac_ng_rampdown_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @da9055_put_alc_sw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.99 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @da9055_put_alc_sw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.101 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.105 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.107 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_threshold_tlv }, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_threshold_tlv }, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_threshold_tlv }, i32 ptrtoint (ptr @.compoundliteral.113 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.115 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.117 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_analog_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.119 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_analog_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.121 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da9055_attack_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.123, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da9055_release_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da9055_hold_time to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da9055_integ_attack_rate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da9055_integ_release_rate to i32) }], [768 x i8] zeroinitializer }, align 32
@da9055_audio_map = internal constant { [64 x %struct.snd_soc_dapm_route], [832 x i8] } { [64 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.195, ptr @.str.233, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr @.str.234, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr @.str.235, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr @.str.236, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr @.str.237, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr @.str.238, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr @.str.236, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr null, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr null, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.200, ptr null, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.241, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.243, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.239, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.243, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.241, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.245, ptr @.str.200, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.249, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr null, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr null, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr null, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr null, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.213, ptr null, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr null, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr @.str.251, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr @.str.252, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr @.str.253, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr @.str.254, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr @.str.251, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr @.str.252, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr @.str.253, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr @.str.254, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr null, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr null, ptr @.str.212, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr @.str.239, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr @.str.249, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr @.str.257, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr @.str.261, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr @.str.263, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr @.str.265, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr @.str.259, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.245, ptr @.str.200, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.257, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.249, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.272, ptr @.str.200, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.265, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.263, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.270, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.223, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.220, ptr @.str.276, ptr @.str.223, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr null, ptr @.str.220, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr null, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.228, ptr null, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.224, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.221, ptr @.str.276, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.227, ptr null, ptr @.str.221, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.227, ptr null, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr null, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.224, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.222, ptr @.str.276, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr null, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr null, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }], [832 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Volume\00", [21 x i8] zeroinitializer }, align 32
@mic_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 57, i32 58, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Aux Volume\00", [21 x i8] zeroinitializer }, align 32
@aux_vol_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 16, i32 1, i32 8, i32 -5400, i32 0, i32 17, i32 63, i32 1, i32 8, i32 -5400, i32 150], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 48, i32 49, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mixin PGA Volume\00", [47 x i8] zeroinitializer }, align 32
@mixin_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -450, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 52, i32 53, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC Volume\00", [21 x i8] zeroinitializer }, align 32
@digital_gain_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 7, i32 1, i32 8, i32 -9999999, i32 65536, i32 8, i32 127, i32 1, i32 8, i32 -7800, i32 75], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 54, i32 55, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 69, i32 70, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Volume\00", [47 x i8] zeroinitializer }, align 32
@hp_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5700, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 72, i32 73, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Lineout Volume\00", [17 x i8] zeroinitializer }, align 32
@lineout_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4800, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 74, i32 74, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC EQ Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 67, i32 67, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC EQ1 Volume\00", [17 x i8] zeroinitializer }, align 32
@eq_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1050, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 65, i32 65, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC EQ2 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 65, i32 65, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC EQ3 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 66, i32 66, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC EQ4 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 66, i32 66, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC EQ5 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 67, i32 67, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC HPF Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 56, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC HPF Cutoff\00", [17 x i8] zeroinitializer }, align 32
@da9055_adc_hpf_cutoff = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 56, i8 4, i8 4, i32 4, i32 3, ptr @da9055_hpf_cutoff_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADC Voice Mode Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 56, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Voice Cutoff\00", [47 x i8] zeroinitializer }, align 32
@da9055_adc_vf_cutoff = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 56, i8 0, i8 0, i32 8, i32 7, ptr @da9055_vf_cutoff_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC HPF Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 68, i32 68, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC HPF Cutoff\00", [17 x i8] zeroinitializer }, align 32
@da9055_dac_hpf_cutoff = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 68, i8 4, i8 4, i32 4, i32 3, ptr @da9055_hpf_cutoff_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC Voice Mode Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 68, i32 68, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DAC Voice Cutoff\00", [47 x i8] zeroinitializer }, align 32
@da9055_dac_vf_cutoff = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 68, i8 0, i8 0, i32 8, i32 7, ptr @da9055_vf_cutoff_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 99, i32 100, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Aux Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 96, i32 97, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mixin PGA Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 101, i32 102, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 103, i32 104, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 108, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Lineout Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 109, i32 109, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC Soft Mute Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 64, i32 64, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC Soft Mute Rate\00", [45 x i8] zeroinitializer }, align 32
@da9055_dac_soft_mute_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 64, i8 4, i8 4, i32 7, i32 7, ptr @da9055_dac_soft_mute_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Aux ZC Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 96, i32 97, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mixin PGA ZC Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 101, i32 102, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Headphone ZC Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 108, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Lineout ZC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 109, i32 109, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Aux Gain Ramping Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 96, i32 97, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Mixin Gain Ramping Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 101, i32 102, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ADC Gain Ramping Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 103, i32 104, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DAC Gain Ramping Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 105, i32 106, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Headphone Gain Ramping Switch\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 108, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Lineout Gain Ramping Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 109, i32 109, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Gain Ramping Rate\00", [46 x i8] zeroinitializer }, align 32
@da9055_gain_ramping_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 146, i8 0, i8 0, i32 4, i32 3, ptr @da9055_gain_ramping_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC NG Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 178, i32 178, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC NG ON Threshold\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 177, i32 177, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC NG OFF Threshold\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 176, i32 176, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DAC NG Setup Time\00", [46 x i8] zeroinitializer }, align 32
@da9055_dac_ng_setup_time = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 175, i8 0, i8 0, i32 4, i32 3, ptr @da9055_dac_ng_setup_time_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC NG Rampup Rate\00", [45 x i8] zeroinitializer }, align 32
@da9055_dac_ng_rampup_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 175, i8 2, i8 2, i32 2, i32 1, ptr @da9055_dac_ng_rampup_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC NG Rampdown Rate\00", [43 x i8] zeroinitializer }, align 32
@da9055_dac_ng_rampdown_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 175, i8 3, i8 3, i32 2, i32 1, ptr @da9055_dac_ng_rampdown_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC Left Invert\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 153, i32 153, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DAC Right Invert\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 153, i32 153, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 51, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ALC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 3, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ALC Sync Mode Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ALC Offset Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 43, i32 43, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ALC Anticlip Mode Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 161, i32 161, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ALC Anticlip Level\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 162, i32 162, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ALC Min Threshold Volume\00", [39 x i8] zeroinitializer }, align 32
@alc_threshold_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9450, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 157, i32 157, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ALC Max Threshold Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 158, i32 158, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ALC Noise Threshold Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 156, i32 156, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ALC Max Gain Volume\00", [44 x i8] zeroinitializer }, align 32
@alc_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 159, i32 159, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ALC Max Attenuation Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 159, i32 159, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ALC Min Analog Gain Volume\00", [37 x i8] zeroinitializer }, align 32
@alc_analog_gain_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 0, i32 1, i32 8, i32 -9999999, i32 65536, i32 1, i32 7, i32 1, i32 8, i32 0, i32 600], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 160, i32 160, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ALC Max Analog Gain Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 160, i32 160, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ALC Attack Rate\00", [16 x i8] zeroinitializer }, align 32
@da9055_attack_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 154, i8 0, i8 0, i32 13, i32 15, ptr @da9055_attack_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ALC Release Rate\00", [47 x i8] zeroinitializer }, align 32
@da9055_release_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 154, i8 4, i8 4, i32 11, i32 15, ptr @da9055_release_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ALC Hold Time\00", [18 x i8] zeroinitializer }, align 32
@da9055_hold_time = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 155, i8 0, i8 0, i32 16, i32 15, ptr @da9055_hold_time_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ALC Integ Attack Rate\00", [42 x i8] zeroinitializer }, align 32
@da9055_integ_attack_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 155, i8 4, i8 4, i32 4, i32 3, ptr @da9055_signal_tracking_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ALC Integ Release Rate\00", [41 x i8] zeroinitializer }, align 32
@da9055_integ_release_rate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 155, i8 6, i8 6, i32 4, i32 3, ptr @da9055_signal_tracking_rate_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@da9055_hpf_cutoff_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130], [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Fs/24000\00", [23 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Fs/12000\00", [23 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Fs/6000\00", [24 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Fs/3000\00", [24 x i8] zeroinitializer }, align 32
@da9055_vf_cutoff_txt = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138], [32 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.5Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"25Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"50Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"100Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"150Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"200Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"300Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"400Hz\00", [26 x i8] zeroinitializer }, align 32
@da9055_dac_soft_mute_rate_txt = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145], [36 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"8\00", [30 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"16\00", [29 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"32\00", [29 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"64\00", [29 x i8] zeroinitializer }, align 32
@da9055_gain_ramping_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149], [16 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nominal rate\00", [19 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nominal rate * 4\00", [47 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nominal rate * 8\00", [47 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nominal rate / 8\00", [47 x i8] zeroinitializer }, align 32
@da9055_dac_ng_setup_time_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153], [16 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"256 samples\00", [20 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"512 samples\00", [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1024 samples\00", [19 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"2048 samples\00", [19 x i8] zeroinitializer }, align 32
@da9055_dac_ng_rampup_txt = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.154, ptr @.str.155], [24 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.02 ms/dB\00", [21 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.16 ms/dB\00", [21 x i8] zeroinitializer }, align 32
@da9055_dac_ng_rampdown_txt = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.156, ptr @.str.157], [24 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.64 ms/dB\00", [21 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"20.48 ms/dB\00", [20 x i8] zeroinitializer }, align 32
@da9055_attack_rate_txt = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170], [44 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"44/fs\00", [26 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"88/fs\00", [26 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"176/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"352/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"704/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1408/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2816/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"5632/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"11264/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"22528/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"45056/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"90112/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"180224/fs\00", [22 x i8] zeroinitializer }, align 32
@da9055_release_rate_txt = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170], [52 x i8] zeroinitializer }, align 32
@da9055_hold_time_txt = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186], [32 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"62/fs\00", [26 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"124/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"248/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"496/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"992/fs\00", [25 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1984/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3968/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"7936/fs\00", [24 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"15872/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"31744/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"63488/fs\00", [23 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"126976/fs\00", [22 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"253952/fs\00", [22 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"507904/fs\00", [22 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1015808/fs\00", [21 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2031616/fs\00", [21 x i8] zeroinitializer }, align 32
@da9055_signal_tracking_rate_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190], [16 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1/4\00", [28 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1/16\00", [27 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1/256\00", [26 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1/65536\00", [24 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC1\00", [27 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC2\00", [27 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUXL\00", [27 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUXR\00", [27 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mic Left Source\00", [16 x i8] zeroinitializer }, align 32
@da9055_mic_l_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da9055_mic_l_src to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mic Right Source\00", [47 x i8] zeroinitializer }, align 32
@da9055_mic_r_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da9055_mic_r_src to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Left\00", [23 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Mic Right\00", [22 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Aux Left\00", [23 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Aux Right\00", [22 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MIXIN Left\00", [21 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIXIN Right\00", [20 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Bias\00", [23 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AIF\00", [28 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Charge Pump\00", [20 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"In Mixer Left\00", [18 x i8] zeroinitializer }, align 32
@da9055_dapm_mixinl_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.240 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.241, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.242 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.244 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"In Mixer Right\00", [17 x i8] zeroinitializer }, align 32
@da9055_dapm_mixinr_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.246 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.247 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.241, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.248 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.250 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC Left\00", [23 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC Right\00", [22 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC Left Source\00", [16 x i8] zeroinitializer }, align 32
@da9055_dac_l_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da9055_dac_l_src to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DAC Right Source\00", [47 x i8] zeroinitializer }, align 32
@da9055_dac_r_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da9055_dac_r_src to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AIFIN Left\00", [21 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AIFIN Right\00", [20 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC Left\00", [23 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC Right\00", [22 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Out Mixer Left\00", [17 x i8] zeroinitializer }, align 32
@da9055_dapm_mixoutl_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.255 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.256 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.257, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.258 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.259, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.260 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.261, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.262 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.263, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.264 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.265, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.266 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Out Mixer Right\00", [16 x i8] zeroinitializer }, align 32
@da9055_dapm_mixoutr_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.267 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.257, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.268 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.269 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.270, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.271 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.272, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.273 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.265, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.274 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.263, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.275 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Headphone Left Enable\00", [42 x i8] zeroinitializer }, align 32
@da9055_dapm_hp_l_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.276, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.277 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Headphone Right Enable\00", [41 x i8] zeroinitializer }, align 32
@da9055_dapm_hp_r_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.276, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.278 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Lineout Enable\00", [17 x i8] zeroinitializer }, align 32
@da9055_dapm_lineout_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.276, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.279 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIXOUT Left\00", [20 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MIXOUT Right\00", [19 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Lineout\00", [24 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headphone Left\00", [17 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Headphone Right\00", [16 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPL\00", [28 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPR\00", [28 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LINE\00", [27 x i8] zeroinitializer }, align 32
@da9055_dapm_widgets = internal constant { [38 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1704 x i8] } { [38 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.191, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.192, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.193, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.194, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.195, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da9055_mic_l_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.196, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da9055_mic_r_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.197, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 99, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.198, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.199, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 96, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.200, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 97, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.201, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 101, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.202, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.203, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.204, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 41, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.205, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 71, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.206, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @da9055_dapm_mixinl_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.207, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @da9055_dapm_mixinr_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.208, ptr @.str.209, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 103, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.210, ptr @.str.209, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 104, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.211, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da9055_dac_l_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.212, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da9055_dac_r_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.213, ptr @.str.214, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.215, ptr @.str.214, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.216, ptr @.str.214, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 105, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.217, ptr @.str.214, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 106, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.218, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @da9055_dapm_mixoutl_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.219, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @da9055_dapm_mixoutr_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.220, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da9055_dapm_hp_l_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.221, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da9055_dapm_hp_r_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.222, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @da9055_dapm_lineout_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.223, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 110, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.224, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 111, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.225, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 109, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.226, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 107, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.227, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 108, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.228, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.229, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.230, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1704 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Route\00", [26 x i8] zeroinitializer }, align 32
@da9055_mic_l_src = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 50, i8 4, i8 4, i32 4, i32 3, ptr @da9055_mic_l_src_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@da9055_mic_l_src_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236], [16 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MIC1_P_N\00", [23 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIC1_P\00", [25 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIC1_N\00", [25 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIC2_L\00", [25 x i8] zeroinitializer }, align 32
@da9055_mic_r_src = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 51, i8 4, i8 4, i32 3, i32 3, ptr @da9055_mic_r_src_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@da9055_mic_r_src_txt = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.237, ptr @.str.238, ptr @.str.236], [20 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MIC2_R_L\00", [23 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIC2_R\00", [25 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Aux Left Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.240 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mic Left Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.242 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mic Right Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.244 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Aux Right Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.246 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.247 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.248 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mixin Left Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.250 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@da9055_dac_l_src = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 42, i8 0, i8 0, i32 4, i32 3, ptr @da9055_dac_src_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@da9055_dac_src_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254], [16 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADC output left\00", [16 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC output right\00", [47 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AIF input left\00", [17 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AIF input right\00", [16 x i8] zeroinitializer }, align 32
@da9055_dac_r_src = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 42, i8 4, i8 4, i32 4, i32 3, ptr @da9055_dac_src_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.255 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.256 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mixin Right Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.258 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC Left Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.260 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Aux Left Invert Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.262 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Mixin Left Invert Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.264 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Mixin Right Invert Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.266 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.267 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.268 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.269 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DAC Right Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.271 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Aux Right Invert Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.273 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.274 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.275 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.277 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 107, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.278 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 108, i32 108, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.279 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 109, i32 109, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da9055-hifi\00", [20 x i8] zeroinitializer }, align 32
@da9055_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @da9055_set_dai_sysclk, ptr @da9055_set_dai_pll, ptr null, ptr null, ptr @da9055_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da9055_mute, ptr null, ptr null, ptr @da9055_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@da9055_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.282, ptr @.str.4, i32 1258, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported MCLK value %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"da9055_set_dai_sysclk\00", [42 x i8] zeroinitializer }, align 32
@da9055_set_dai_sysclk._entry_ptr = internal global ptr @da9055_set_dai_sysclk._entry, section ".printk_index", align 4
@da9055_set_dai_sysclk._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @.str.282, ptr @.str.4, i32 1263, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown clock source %d\0A\00", [39 x i8] zeroinitializer }, align 32
@da9055_set_dai_sysclk._entry_ptr.285 = internal global ptr @da9055_set_dai_sysclk._entry.283, section ".printk_index", align 4
@da9055_pll_div = internal constant { [27 x %struct.pll_div], [92 x i8] } { [27 x %struct.pll_div] [%struct.pll_div { i32 11289600, i32 2822400, i8 0, i8 0, i8 32, i8 1 }, %struct.pll_div { i32 12000000, i32 2822400, i8 3, i8 97, i8 30, i8 1 }, %struct.pll_div { i32 12288000, i32 2822400, i8 12, i8 -52, i8 29, i8 1 }, %struct.pll_div { i32 13000000, i32 2822400, i8 25, i8 69, i8 27, i8 1 }, %struct.pll_div { i32 13500000, i32 2822400, i8 24, i8 86, i8 26, i8 1 }, %struct.pll_div { i32 14400000, i32 2822400, i8 2, i8 -48, i8 25, i8 1 }, %struct.pll_div { i32 19200000, i32 2822400, i8 26, i8 28, i8 18, i8 1 }, %struct.pll_div { i32 19680000, i32 2822400, i8 11, i8 109, i8 18, i8 1 }, %struct.pll_div { i32 19800000, i32 2822400, i8 7, i8 -35, i8 18, i8 1 }, %struct.pll_div { i32 11289600, i32 3072000, i8 26, i8 -114, i8 34, i8 1 }, %struct.pll_div { i32 12000000, i32 3072000, i8 24, i8 -109, i8 32, i8 1 }, %struct.pll_div { i32 12288000, i32 3072000, i8 0, i8 0, i8 32, i8 1 }, %struct.pll_div { i32 13000000, i32 3072000, i8 7, i8 -22, i8 30, i8 1 }, %struct.pll_div { i32 13500000, i32 3072000, i8 4, i8 17, i8 29, i8 1 }, %struct.pll_div { i32 14400000, i32 3072000, i8 9, i8 -48, i8 27, i8 1 }, %struct.pll_div { i32 19200000, i32 3072000, i8 15, i8 92, i8 20, i8 1 }, %struct.pll_div { i32 19680000, i32 3072000, i8 31, i8 96, i8 19, i8 1 }, %struct.pll_div { i32 19800000, i32 3072000, i8 27, i8 -128, i8 19, i8 1 }, %struct.pll_div { i32 11289600, i32 2822400, i8 13, i8 71, i8 33, i8 0 }, %struct.pll_div { i32 12000000, i32 2822400, i8 13, i8 -6, i8 31, i8 0 }, %struct.pll_div { i32 12288000, i32 2822400, i8 22, i8 102, i8 30, i8 0 }, %struct.pll_div { i32 13000000, i32 2822400, i8 0, i8 -104, i8 29, i8 0 }, %struct.pll_div { i32 13500000, i32 2822400, i8 30, i8 51, i8 27, i8 0 }, %struct.pll_div { i32 14400000, i32 2822400, i8 6, i8 80, i8 26, i8 0 }, %struct.pll_div { i32 19200000, i32 2822400, i8 20, i8 -68, i8 19, i8 0 }, %struct.pll_div { i32 19680000, i32 2822400, i8 5, i8 102, i8 19, i8 0 }, %struct.pll_div { i32 19800000, i32 2822400, i8 1, i8 -82, i8 19, i8 0 }], [92 x i8] zeroinitializer }, align 32
@da9055_set_dai_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.287, ptr @.str.4, i32 1317, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error in setting up PLL\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"da9055_set_dai_pll\00", [45 x i8] zeroinitializer }, align 32
@da9055_set_dai_pll._entry_ptr = internal global ptr @da9055_set_dai_pll._entry, section ".printk_index", align 4
@switch.table.da9055_set_dai_fmt = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 2, i32 1, i32 3], [16 x i8] zeroinitializer }, align 32
@switch.table.da9055_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 4, i32 8, i32 0, i32 12], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 174]
@__sancov_gen_cov_switch_values.288 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.289 = internal global [11 x i64] [i64 9, i64 32, i64 11289600, i64 12000000, i64 12288000, i64 13000000, i64 13500000, i64 14400000, i64 19200000, i64 19680000, i64 19800000]
@__sancov_gen_cov_switch_values.290 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.291 = internal global [12 x i64] [i64 10, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000]
@___asan_gen_.292 = private unnamed_addr constant [18 x i8] c"da9055_i2c_driver\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 1531, i32 26 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 1533, i32 11 }
@___asan_gen_.298 = private unnamed_addr constant [16 x i8] c"da9055_of_match\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 1523, i32 34 }
@___asan_gen_.301 = private unnamed_addr constant [14 x i8] c"da9055_i2c_id\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 1516, i32 35 }
@___asan_gen_.304 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [21 x i8] c"da9055_regmap_config\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 1466, i32 35 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 1493, i32 19 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 1496, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant [25 x i8] c"soc_component_dev_da9055\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 1451, i32 46 }
@___asan_gen_.334 = private unnamed_addr constant [11 x i8] c"da9055_dai\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 1331, i32 34 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 1503, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant [20 x i8] c"da9055_reg_defaults\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 944, i32 33 }
@___asan_gen_.346 = private unnamed_addr constant [20 x i8] c"da9055_snd_controls\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 544, i32 38 }
@___asan_gen_.349 = private unnamed_addr constant [17 x i8] c"da9055_audio_map\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 848, i32 40 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 547, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant [12 x i8] c"mic_vol_tlv\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 306, i32 14 }
@___asan_gen_.358 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 550, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant [12 x i8] c"aux_vol_tlv\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 288, i32 14 }
@___asan_gen_.365 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 553, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [15 x i8] c"mixin_gain_tlv\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 307, i32 14 }
@___asan_gen_.372 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 556, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [17 x i8] c"digital_gain_tlv\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 294, i32 14 }
@___asan_gen_.379 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 560, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 563, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant [11 x i8] c"hp_vol_tlv\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 309, i32 14 }
@___asan_gen_.390 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 566, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant [16 x i8] c"lineout_vol_tlv\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 310, i32 14 }
@___asan_gen_.397 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 570, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 571, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant [12 x i8] c"eq_gain_tlv\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 308, i32 14 }
@___asan_gen_.408 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 573, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 575, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 577, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 579, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 583, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 584, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant [22 x i8] c"da9055_adc_hpf_cutoff\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 322, i32 8 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 585, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 586, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [21 x i8] c"da9055_adc_vf_cutoff\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 333, i32 8 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 588, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 589, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant [22 x i8] c"da9055_dac_hpf_cutoff\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 319, i32 8 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 590, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 591, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant [21 x i8] c"da9055_dac_vf_cutoff\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 330, i32 8 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 594, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 596, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 598, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 600, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 602, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 604, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 605, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 606, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant [26 x i8] c"da9055_dac_soft_mute_rate\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 377, i32 8 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 609, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 611, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 613, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 615, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 618, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 620, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 622, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 624, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 626, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 628, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 629, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant [25 x i8] c"da9055_gain_ramping_rate\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 342, i32 8 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 632, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 633, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 635, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 637, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant [25 x i8] c"da9055_dac_ng_setup_time\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 350, i32 8 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 638, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant [26 x i8] c"da9055_dac_ng_rampup_rate\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 359, i32 8 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 639, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant [28 x i8] c"da9055_dac_ng_rampdown_rate\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 368, i32 8 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 642, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 643, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 646, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 650, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 652, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 654, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 655, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 657, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 659, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant [18 x i8] c"alc_threshold_tlv\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 311, i32 14 }
@___asan_gen_.613 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 661, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 663, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 665, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant [13 x i8] c"alc_gain_tlv\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 312, i32 14 }
@___asan_gen_.628 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 667, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 669, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant [20 x i8] c"alc_analog_gain_tlv\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 300, i32 14 }
@___asan_gen_.639 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 672, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 675, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant [19 x i8] c"da9055_attack_rate\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 428, i32 8 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 676, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant [20 x i8] c"da9055_release_rate\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 437, i32 8 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 677, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant [17 x i8] c"da9055_hold_time\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 447, i32 8 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 682, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant [25 x i8] c"da9055_integ_attack_rate\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 414, i32 8 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 687, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant [26 x i8] c"da9055_integ_release_rate\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 418, i32 8 }
@___asan_gen_.674 = private unnamed_addr constant [22 x i8] c"da9055_hpf_cutoff_txt\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 315, i32 27 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 316, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 316, i32 14 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 316, i32 26 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 316, i32 37 }
@___asan_gen_.689 = private unnamed_addr constant [21 x i8] c"da9055_vf_cutoff_txt\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 326, i32 27 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 327, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 327, i32 11 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 327, i32 19 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 327, i32 27 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 327, i32 36 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 327, i32 45 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 327, i32 54 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 327, i32 63 }
@___asan_gen_.716 = private unnamed_addr constant [30 x i8] c"da9055_dac_soft_mute_rate_txt\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 373, i32 27 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 374, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 374, i32 7 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 374, i32 12 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 374, i32 17 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 374, i32 22 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 374, i32 28 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 374, i32 34 }
@___asan_gen_.740 = private unnamed_addr constant [24 x i8] c"da9055_gain_ramping_txt\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 337, i32 27 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 338, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 338, i32 18 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 338, i32 38 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 339, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant [29 x i8] c"da9055_dac_ng_setup_time_txt\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 346, i32 27 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 347, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 347, i32 17 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 347, i32 32 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 347, i32 48 }
@___asan_gen_.770 = private unnamed_addr constant [25 x i8] c"da9055_dac_ng_rampup_txt\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 355, i32 27 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 356, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 356, i32 16 }
@___asan_gen_.779 = private unnamed_addr constant [27 x i8] c"da9055_dac_ng_rampdown_txt\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 364, i32 27 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 365, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 365, i32 16 }
@___asan_gen_.788 = private unnamed_addr constant [23 x i8] c"da9055_attack_rate_txt\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 423, i32 27 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 424, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 424, i32 11 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 424, i32 20 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 424, i32 30 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 424, i32 40 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 424, i32 50 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 424, i32 61 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 425, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 425, i32 13 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 425, i32 25 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 425, i32 37 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 425, i32 49 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 425, i32 61 }
@___asan_gen_.830 = private unnamed_addr constant [24 x i8] c"da9055_release_rate_txt\00", align 1
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 432, i32 27 }
@___asan_gen_.833 = private unnamed_addr constant [21 x i8] c"da9055_hold_time_txt\00", align 1
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 441, i32 27 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 442, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 442, i32 11 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 442, i32 21 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 442, i32 31 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 442, i32 41 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 442, i32 51 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 442, i32 62 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 443, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 443, i32 13 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 443, i32 25 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 443, i32 37 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 443, i32 49 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 444, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 444, i32 15 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 444, i32 28 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 444, i32 42 }
@___asan_gen_.884 = private unnamed_addr constant [32 x i8] c"da9055_signal_tracking_rate_txt\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 410, i32 27 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 411, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 411, i32 9 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 411, i32 17 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 411, i32 26 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 767, i32 2 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 768, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 769, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 770, i32 2 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 773, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant [26 x i8] c"da9055_mic_l_mux_controls\00", align 1
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 693, i32 38 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 775, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant [26 x i8] c"da9055_mic_r_mux_controls\00", align 1
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 697, i32 38 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 779, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 780, i32 2 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 781, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 782, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 783, i32 2 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 784, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 786, i32 2 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 787, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 788, i32 2 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 791, i32 2 }
@___asan_gen_.953 = private unnamed_addr constant [28 x i8] c"da9055_dapm_mixinl_controls\00", align 1
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 701, i32 38 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 794, i32 2 }
@___asan_gen_.959 = private unnamed_addr constant [28 x i8] c"da9055_dapm_mixinr_controls\00", align 1
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 708, i32 38 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 799, i32 2 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 800, i32 2 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 805, i32 2 }
@___asan_gen_.974 = private unnamed_addr constant [26 x i8] c"da9055_dac_l_mux_controls\00", align 1
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 716, i32 38 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 807, i32 2 }
@___asan_gen_.980 = private unnamed_addr constant [26 x i8] c"da9055_dac_r_mux_controls\00", align 1
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 720, i32 38 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 811, i32 2 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 812, i32 2 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 815, i32 2 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 816, i32 2 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 819, i32 2 }
@___asan_gen_.1001 = private unnamed_addr constant [29 x i8] c"da9055_dapm_mixoutl_controls\00", align 1
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 724, i32 38 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 822, i32 2 }
@___asan_gen_.1007 = private unnamed_addr constant [29 x i8] c"da9055_dapm_mixoutr_controls\00", align 1
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 738, i32 38 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 827, i32 2 }
@___asan_gen_.1013 = private unnamed_addr constant [25 x i8] c"da9055_dapm_hp_l_control\00", align 1
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 752, i32 38 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 829, i32 2 }
@___asan_gen_.1019 = private unnamed_addr constant [25 x i8] c"da9055_dapm_hp_r_control\00", align 1
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 755, i32 38 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 831, i32 2 }
@___asan_gen_.1025 = private unnamed_addr constant [28 x i8] c"da9055_dapm_lineout_control\00", align 1
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 759, i32 38 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 835, i32 2 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 836, i32 2 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 837, i32 2 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 838, i32 2 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 839, i32 2 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 842, i32 2 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 843, i32 2 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 844, i32 2 }
@___asan_gen_.1052 = private unnamed_addr constant [20 x i8] c"da9055_dapm_widgets\00", align 1
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 763, i32 41 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 694, i32 1 }
@___asan_gen_.1058 = private unnamed_addr constant [17 x i8] c"da9055_mic_l_src\00", align 1
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 398, i32 8 }
@___asan_gen_.1061 = private unnamed_addr constant [21 x i8] c"da9055_mic_l_src_txt\00", align 1
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 394, i32 27 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 395, i32 2 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 395, i32 14 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 395, i32 24 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 395, i32 34 }
@___asan_gen_.1076 = private unnamed_addr constant [17 x i8] c"da9055_mic_r_src\00", align 1
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 406, i32 8 }
@___asan_gen_.1079 = private unnamed_addr constant [21 x i8] c"da9055_mic_r_src_txt\00", align 1
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 402, i32 27 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 403, i32 2 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 403, i32 14 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 702, i32 2 }
@___asan_gen_.1091 = private unnamed_addr constant [21 x i8] c".compoundliteral.240\00", align 1
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 703, i32 2 }
@___asan_gen_.1095 = private unnamed_addr constant [21 x i8] c".compoundliteral.242\00", align 1
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 704, i32 2 }
@___asan_gen_.1099 = private unnamed_addr constant [21 x i8] c".compoundliteral.244\00", align 1
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 709, i32 2 }
@___asan_gen_.1103 = private unnamed_addr constant [21 x i8] c".compoundliteral.246\00", align 1
@___asan_gen_.1104 = private unnamed_addr constant [21 x i8] c".compoundliteral.247\00", align 1
@___asan_gen_.1105 = private unnamed_addr constant [21 x i8] c".compoundliteral.248\00", align 1
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 712, i32 2 }
@___asan_gen_.1109 = private unnamed_addr constant [21 x i8] c".compoundliteral.250\00", align 1
@___asan_gen_.1110 = private unnamed_addr constant [17 x i8] c"da9055_dac_l_src\00", align 1
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 387, i32 8 }
@___asan_gen_.1113 = private unnamed_addr constant [19 x i8] c"da9055_dac_src_txt\00", align 1
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 382, i32 27 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 383, i32 2 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 383, i32 21 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 383, i32 41 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 384, i32 2 }
@___asan_gen_.1128 = private unnamed_addr constant [17 x i8] c"da9055_dac_r_src\00", align 1
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 390, i32 8 }
@___asan_gen_.1131 = private unnamed_addr constant [21 x i8] c".compoundliteral.255\00", align 1
@___asan_gen_.1132 = private unnamed_addr constant [21 x i8] c".compoundliteral.256\00", align 1
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 727, i32 2 }
@___asan_gen_.1136 = private unnamed_addr constant [21 x i8] c".compoundliteral.258\00", align 1
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 728, i32 2 }
@___asan_gen_.1140 = private unnamed_addr constant [21 x i8] c".compoundliteral.260\00", align 1
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 729, i32 2 }
@___asan_gen_.1144 = private unnamed_addr constant [21 x i8] c".compoundliteral.262\00", align 1
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 731, i32 2 }
@___asan_gen_.1148 = private unnamed_addr constant [21 x i8] c".compoundliteral.264\00", align 1
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 733, i32 2 }
@___asan_gen_.1152 = private unnamed_addr constant [21 x i8] c".compoundliteral.266\00", align 1
@___asan_gen_.1153 = private unnamed_addr constant [21 x i8] c".compoundliteral.267\00", align 1
@___asan_gen_.1154 = private unnamed_addr constant [21 x i8] c".compoundliteral.268\00", align 1
@___asan_gen_.1155 = private unnamed_addr constant [21 x i8] c".compoundliteral.269\00", align 1
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 742, i32 2 }
@___asan_gen_.1159 = private unnamed_addr constant [21 x i8] c".compoundliteral.271\00", align 1
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 743, i32 2 }
@___asan_gen_.1163 = private unnamed_addr constant [21 x i8] c".compoundliteral.273\00", align 1
@___asan_gen_.1164 = private unnamed_addr constant [21 x i8] c".compoundliteral.274\00", align 1
@___asan_gen_.1165 = private unnamed_addr constant [21 x i8] c".compoundliteral.275\00", align 1
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 753, i32 1 }
@___asan_gen_.1169 = private unnamed_addr constant [21 x i8] c".compoundliteral.277\00", align 1
@___asan_gen_.1170 = private unnamed_addr constant [21 x i8] c".compoundliteral.278\00", align 1
@___asan_gen_.1171 = private unnamed_addr constant [21 x i8] c".compoundliteral.279\00", align 1
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 1332, i32 10 }
@___asan_gen_.1175 = private unnamed_addr constant [15 x i8] c"da9055_dai_ops\00", align 1
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 1322, i32 37 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 1257, i32 4 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 1263, i32 3 }
@___asan_gen_.1193 = private unnamed_addr constant [15 x i8] c"da9055_pll_div\00", align 1
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 249, i32 29 }
@___asan_gen_.1196 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1202 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1203 = private constant [29 x i8] c"../sound/soc/codecs/da9055.c\00", align 1
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1203, i32 1317, i32 2 }
@___asan_gen_.1205 = private unnamed_addr constant [32 x i8] c"switch.table.da9055_set_dai_fmt\00", align 1
@___asan_gen_.1206 = private unnamed_addr constant [30 x i8] c"switch.table.da9055_hw_params\00", align 1
@llvm.compiler.used = appending global [369 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_da9055_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_da9055__294_1540_da9055_i2c_driver_init6, ptr @da9055_i2c_driver_exit, ptr @da9055_i2c_probe._entry, ptr @da9055_i2c_probe._entry.7, ptr @da9055_i2c_probe._entry_ptr, ptr @da9055_i2c_probe._entry_ptr.9, ptr @da9055_set_dai_pll._entry, ptr @da9055_set_dai_pll._entry_ptr, ptr @da9055_set_dai_sysclk._entry, ptr @da9055_set_dai_sysclk._entry.283, ptr @da9055_set_dai_sysclk._entry_ptr, ptr @da9055_set_dai_sysclk._entry_ptr.285, ptr @da9055_i2c_driver, ptr @.str, ptr @da9055_of_match, ptr @da9055_i2c_id, ptr @da9055_i2c_probe._key, ptr @da9055_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @soc_component_dev_da9055, ptr @da9055_dai, ptr @.str.8, ptr @da9055_reg_defaults, ptr @da9055_snd_controls, ptr @da9055_audio_map, ptr @.str.10, ptr @mic_vol_tlv, ptr @.compoundliteral, ptr @.str.11, ptr @aux_vol_tlv, ptr @.compoundliteral.12, ptr @.str.13, ptr @mixin_gain_tlv, ptr @.compoundliteral.14, ptr @.str.15, ptr @digital_gain_tlv, ptr @.compoundliteral.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @hp_vol_tlv, ptr @.compoundliteral.20, ptr @.str.21, ptr @lineout_vol_tlv, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @eq_gain_tlv, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @da9055_adc_hpf_cutoff, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @da9055_adc_vf_cutoff, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @da9055_dac_hpf_cutoff, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @da9055_dac_vf_cutoff, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @da9055_dac_soft_mute_rate, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @.compoundliteral.75, ptr @.str.76, ptr @.compoundliteral.77, ptr @.str.78, ptr @.compoundliteral.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.str.82, ptr @da9055_gain_ramping_rate, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.compoundliteral.86, ptr @.str.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @da9055_dac_ng_setup_time, ptr @.str.90, ptr @da9055_dac_ng_rampup_rate, ptr @.str.91, ptr @da9055_dac_ng_rampdown_rate, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.str.98, ptr @.compoundliteral.99, ptr @.str.100, ptr @.compoundliteral.101, ptr @.str.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @.compoundliteral.107, ptr @.str.108, ptr @alc_threshold_tlv, ptr @.compoundliteral.109, ptr @.str.110, ptr @.compoundliteral.111, ptr @.str.112, ptr @.compoundliteral.113, ptr @.str.114, ptr @alc_gain_tlv, ptr @.compoundliteral.115, ptr @.str.116, ptr @.compoundliteral.117, ptr @.str.118, ptr @alc_analog_gain_tlv, ptr @.compoundliteral.119, ptr @.str.120, ptr @.compoundliteral.121, ptr @.str.122, ptr @da9055_attack_rate, ptr @.str.123, ptr @da9055_release_rate, ptr @.str.124, ptr @da9055_hold_time, ptr @.str.125, ptr @da9055_integ_attack_rate, ptr @.str.126, ptr @da9055_integ_release_rate, ptr @da9055_hpf_cutoff_txt, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @da9055_vf_cutoff_txt, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @da9055_dac_soft_mute_rate_txt, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @da9055_gain_ramping_txt, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @da9055_dac_ng_setup_time_txt, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @da9055_dac_ng_rampup_txt, ptr @.str.154, ptr @.str.155, ptr @da9055_dac_ng_rampdown_txt, ptr @.str.156, ptr @.str.157, ptr @da9055_attack_rate_txt, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @da9055_release_rate_txt, ptr @da9055_hold_time_txt, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @da9055_signal_tracking_rate_txt, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @da9055_mic_l_mux_controls, ptr @.str.196, ptr @da9055_mic_r_mux_controls, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @da9055_dapm_mixinl_controls, ptr @.str.207, ptr @da9055_dapm_mixinr_controls, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @da9055_dac_l_mux_controls, ptr @.str.212, ptr @da9055_dac_r_mux_controls, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @da9055_dapm_mixoutl_controls, ptr @.str.219, ptr @da9055_dapm_mixoutr_controls, ptr @.str.220, ptr @da9055_dapm_hp_l_control, ptr @.str.221, ptr @da9055_dapm_hp_r_control, ptr @.str.222, ptr @da9055_dapm_lineout_control, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @da9055_dapm_widgets, ptr @.str.232, ptr @da9055_mic_l_src, ptr @da9055_mic_l_src_txt, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @da9055_mic_r_src, ptr @da9055_mic_r_src_txt, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.compoundliteral.240, ptr @.str.241, ptr @.compoundliteral.242, ptr @.str.243, ptr @.compoundliteral.244, ptr @.str.245, ptr @.compoundliteral.246, ptr @.compoundliteral.247, ptr @.compoundliteral.248, ptr @.str.249, ptr @.compoundliteral.250, ptr @da9055_dac_l_src, ptr @da9055_dac_src_txt, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @da9055_dac_r_src, ptr @.compoundliteral.255, ptr @.compoundliteral.256, ptr @.str.257, ptr @.compoundliteral.258, ptr @.str.259, ptr @.compoundliteral.260, ptr @.str.261, ptr @.compoundliteral.262, ptr @.str.263, ptr @.compoundliteral.264, ptr @.str.265, ptr @.compoundliteral.266, ptr @.compoundliteral.267, ptr @.compoundliteral.268, ptr @.compoundliteral.269, ptr @.str.270, ptr @.compoundliteral.271, ptr @.str.272, ptr @.compoundliteral.273, ptr @.compoundliteral.274, ptr @.compoundliteral.275, ptr @.str.276, ptr @.compoundliteral.277, ptr @.compoundliteral.278, ptr @.compoundliteral.279, ptr @.str.280, ptr @da9055_dai_ops, ptr @.str.281, ptr @.str.282, ptr @.str.284, ptr @da9055_pll_div, ptr @.str.286, ptr @.str.287, ptr @switch.table.da9055_set_dai_fmt, ptr @switch.table.da9055_hw_params], section "llvm.metadata"
@0 = internal global [357 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_da9055 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_reg_defaults to i32), i32 584, i32 736, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_snd_controls to i32), i32 3168, i32 3936, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_audio_map to i32), i32 3328, i32 4160, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_vol_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixin_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_gain_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lineout_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_adc_hpf_cutoff to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_adc_vf_cutoff to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dac_hpf_cutoff to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dac_vf_cutoff to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dac_soft_mute_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_gain_ramping_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dac_ng_setup_time to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dac_ng_rampup_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dac_ng_rampdown_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alc_threshold_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alc_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alc_analog_gain_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_attack_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_release_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_hold_time to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_integ_attack_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_integ_release_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_hpf_cutoff_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_vf_cutoff_txt to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dac_soft_mute_rate_txt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_gain_ramping_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dac_ng_setup_time_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dac_ng_rampup_txt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dac_ng_rampdown_txt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_attack_rate_txt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_release_rate_txt to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_hold_time_txt to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_signal_tracking_rate_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_mic_l_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_mic_r_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dapm_mixinl_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dapm_mixinr_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dac_l_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dac_r_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dapm_mixoutl_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dapm_mixoutr_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dapm_hp_l_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dapm_hp_r_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dapm_lineout_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dapm_widgets to i32), i32 6840, i32 8544, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_mic_l_src to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_mic_l_src_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_mic_r_src to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_mic_r_src_txt to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.240 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.242 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.244 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.246 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.247 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.248 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.250 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dac_l_src to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dac_src_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dac_r_src to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.255 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.256 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.258 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.260 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.262 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.264 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.266 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.267 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.268 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.269 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.271 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.273 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.274 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.275 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.277 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.278 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.279 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_set_dai_sysclk._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_pll_div to i32), i32 324, i32 416, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_set_dai_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9055_set_dai_fmt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9055_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @da9055_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9055_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @da9055_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pdata5 = getelementptr inbounds %struct.da9055_priv, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %pdata5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %pdata5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call7 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @da9055_regmap_config, ptr noundef nonnull @da9055_i2c_probe._key, ptr noundef nonnull @.str.1) #6
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %5) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %call16 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_da9055, ptr noundef nonnull @da9055_dai, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %do.end20, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call16) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.end14.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then10 ], [ -12, %entry.cleanup_crit_edge ], [ %call16, %do.end20 ], [ %call16, %if.end14.cleanup_crit_edge ]
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @da9055_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 2, label %entry.return_crit_edge
    i32 3, label %entry.return_crit_edge1
    i32 4, label %entry.return_crit_edge2
    i32 5, label %entry.return_crit_edge3
    i32 6, label %entry.return_crit_edge4
    i32 7, label %entry.return_crit_edge5
    i32 8, label %entry.return_crit_edge6
    i32 9, label %entry.return_crit_edge7
    i32 10, label %entry.return_crit_edge8
    i32 11, label %entry.return_crit_edge9
    i32 12, label %entry.return_crit_edge10
    i32 13, label %entry.return_crit_edge11
    i32 14, label %entry.return_crit_edge12
    i32 15, label %entry.return_crit_edge13
    i32 16, label %entry.return_crit_edge14
    i32 174, label %entry.return_crit_edge15
  ]

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_probe(ptr noundef %component) #2 align 64 {
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
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 96, i32 noundef 32, i32 noundef 32) #6
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 97, i32 noundef 32, i32 noundef 32) #6
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 101, i32 noundef 32, i32 noundef 32) #6
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 102, i32 noundef 32, i32 noundef 32) #6
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 103, i32 noundef 32, i32 noundef 32) #6
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 104, i32 noundef 32, i32 noundef 32) #6
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 105, i32 noundef 32, i32 noundef 32) #6
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 106, i32 noundef 32, i32 noundef 32) #6
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 107, i32 noundef 32, i32 noundef 32) #6
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 108, i32 noundef 32, i32 noundef 32) #6
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 109, i32 noundef 32, i32 noundef 32) #6
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 101, i32 noundef 8, i32 noundef 8) #6
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 102, i32 noundef 8, i32 noundef 8) #6
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 110, i32 noundef 8, i32 noundef 8) #6
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 111, i32 noundef 8, i32 noundef 8) #6
  %call16 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 39, i32 noundef 4) #6
  %pdata = getelementptr inbounds %struct.da9055_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4, !range !568
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool18.not = icmp eq i8 %7, 0
  %. = select i1 %tobool18.not, i32 0, i32 64
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 51, i32 noundef 64, i32 noundef %.) #6
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata, align 4
  %micbias = getelementptr inbounds %struct.da9055_platform_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %micbias to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %micbias, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %switch = icmp ult i32 %11, 4
  br i1 %switch, label %sw.bb, label %if.then.if.end26_crit_edge

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw nsw i32 %11, 4
  %call25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 147, i32 noundef 48, i32 noundef %shl) #6
  br label %if.end26

if.end26:                                         ; preds = %sw.bb, %if.then.if.end26_crit_edge, %entry.if.end26_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.288)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %1 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %sw.bb1.sw.epilog.sink.split_crit_edge, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 136, %sw.bb1.sw.epilog.sink.split_crit_edge ], [ %level, %entry.sw.epilog.sink.split_crit_edge ]
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 35, i32 noundef 136, i32 noundef %.sink) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb1.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_put_alc_sw(ptr noundef %kcontrol, ptr noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %3, i32 noundef 99) #6
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %3, i32 noundef 100) #6
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 99, i32 noundef 64, i32 noundef 64) #6
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 100, i32 noundef 64, i32 noundef 64) #6
  %call6 = tail call i32 @snd_soc_component_read(ptr noundef %3, i32 noundef 103) #6
  %call8 = tail call i32 @snd_soc_component_read(ptr noundef %3, i32 noundef 104) #6
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 103, i32 noundef 128, i32 noundef 128) #6
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 104, i32 noundef 128, i32 noundef 128) #6
  %call12 = tail call fastcc i32 @da9055_get_alc_data(ptr noundef %3, i8 noundef zeroext 0)
  %call13 = tail call fastcc i32 @da9055_get_alc_data(ptr noundef %3, i8 noundef zeroext -128)
  %sub = sub i32 0, %call12
  %sub14 = sub i32 0, %call13
  %and = lshr i32 %sub, 8
  %conv16 = and i32 %and, 255
  %call17 = tail call i32 @snd_soc_component_write(ptr noundef %3, i32 noundef 166, i32 noundef %conv16) #6
  %and18 = lshr i32 %sub, 16
  %conv20 = and i32 %and18, 3
  %call22 = tail call i32 @snd_soc_component_write(ptr noundef %3, i32 noundef 167, i32 noundef %conv20) #6
  %and23 = lshr i32 %sub14, 8
  %conv26 = and i32 %and23, 255
  %call27 = tail call i32 @snd_soc_component_write(ptr noundef %3, i32 noundef 171, i32 noundef %conv26) #6
  %and28 = lshr i32 %sub14, 16
  %conv30 = and i32 %and28, 3
  %call32 = tail call i32 @snd_soc_component_write(ptr noundef %3, i32 noundef 172, i32 noundef %conv30) #6
  %conv33 = and i32 %call6, 255
  %call34 = tail call i32 @snd_soc_component_write(ptr noundef %3, i32 noundef 103, i32 noundef %conv33) #6
  %conv35 = and i32 %call8, 255
  %call36 = tail call i32 @snd_soc_component_write(ptr noundef %3, i32 noundef 104, i32 noundef %conv35) #6
  %conv37 = and i32 %call1, 255
  %call38 = tail call i32 @snd_soc_component_write(ptr noundef %3, i32 noundef 99, i32 noundef %conv37) #6
  %conv39 = and i32 %call2, 255
  %call40 = tail call i32 @snd_soc_component_write(ptr noundef %3, i32 noundef 100, i32 noundef %conv39) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call41 = tail call i32 @snd_soc_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #6
  ret i32 %call41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @da9055_get_alc_data(ptr noundef %component, i8 noundef zeroext %reg_val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv2 = zext i8 %reg_val to i32
  %or = or i32 %conv2, 2
  %or7 = or i32 %conv2, 3
  %call = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %conv2) #6
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or) #6
  %call5 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #6
  %call8 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or7) #6
  %call9 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #6
  %shl = shl i32 %call5, 8
  %shl10 = shl i32 %call9, 16
  %or11 = or i32 %shl10, %shl
  %call.1 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %conv2) #6
  %call4.1 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or) #6
  %call5.1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #6
  %call8.1 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or7) #6
  %call9.1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #6
  %shl.1 = shl i32 %call5.1, 8
  %shl10.1 = shl i32 %call9.1, 16
  %or11.1 = or i32 %shl10.1, %shl.1
  %add.1 = add i32 %or11.1, %or11
  %call.2 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %conv2) #6
  %call4.2 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or) #6
  %call5.2 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #6
  %call8.2 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or7) #6
  %call9.2 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #6
  %shl.2 = shl i32 %call5.2, 8
  %shl10.2 = shl i32 %call9.2, 16
  %or11.2 = or i32 %shl10.2, %shl.2
  %add.2 = add i32 %or11.2, %add.1
  %call.3 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %conv2) #6
  %call4.3 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or) #6
  %call5.3 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #6
  %call8.3 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or7) #6
  %call9.3 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #6
  %shl.3 = shl i32 %call5.3, 8
  %shl10.3 = shl i32 %call9.3, 16
  %or11.3 = or i32 %shl10.3, %shl.3
  %add.3 = add i32 %or11.3, %add.2
  %call.4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %conv2) #6
  %call4.4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or) #6
  %call5.4 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #6
  %call8.4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 173, i32 noundef %or7) #6
  %call9.4 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 174) #6
  %shl.4 = shl i32 %call5.4, 8
  %shl10.4 = shl i32 %call9.4, 16
  %or11.4 = or i32 %shl10.4, %shl.4
  %add.4 = add i32 %or11.4, %add.3
  %div = sdiv i32 %add.4, 5
  ret i32 %div
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_id)
  %cond = icmp eq i32 %clk_id, 0
  br i1 %cond, label %sw.bb, label %do.end6

sw.bb:                                            ; preds = %entry
  %6 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.289)
  switch i32 %freq, label %do.end [
    i32 11289600, label %sw.bb.sw.bb2_crit_edge
    i32 12000000, label %sw.bb.sw.bb2_crit_edge14
    i32 12288000, label %sw.bb.sw.bb2_crit_edge15
    i32 13000000, label %sw.bb.sw.bb2_crit_edge16
    i32 13500000, label %sw.bb.sw.bb2_crit_edge17
    i32 14400000, label %sw.bb.sw.bb2_crit_edge18
    i32 19200000, label %sw.bb.sw.bb2_crit_edge19
    i32 19680000, label %sw.bb.sw.bb2_crit_edge20
    i32 19800000, label %sw.bb.sw.bb2_crit_edge21
  ]

sw.bb.sw.bb2_crit_edge21:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge20:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge19:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge18:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge17:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge16:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge15:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge14:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb.sw.bb2_crit_edge, %sw.bb.sw.bb2_crit_edge14, %sw.bb.sw.bb2_crit_edge15, %sw.bb.sw.bb2_crit_edge16, %sw.bb.sw.bb2_crit_edge17, %sw.bb.sw.bb2_crit_edge18, %sw.bb.sw.bb2_crit_edge19, %sw.bb.sw.bb2_crit_edge20, %sw.bb.sw.bb2_crit_edge21
  %mclk_rate = getelementptr inbounds %struct.da9055_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %freq, ptr %mclk_rate, align 4
  br label %cleanup

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.281, i32 noundef %freq) #9
  br label %cleanup

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev7 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 2
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.284, i32 noundef %clk_id) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %do.end, %sw.bb2
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb2 ], [ -22, %do.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_set_dai_pll(ptr nocapture noundef readonly %codec_dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %fref, i32 noundef %fout) #2 align 64 {
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
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 39, i32 noundef 128, i32 noundef 0) #6
  %master = getelementptr inbounds %struct.da9055_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %master, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2822400, i32 %fout)
  %cmp.not = icmp eq i32 %fout, 2822400
  %or.cond = or i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %entry.for.body_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [27 x %struct.pll_div], ptr @da9055_pll_div, i32 0, i32 %indvars.iv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %fref)
  %cmp6 = icmp eq i32 %9, %fref
  br i1 %cmp6, label %land.lhs.true8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true8:                                   ; preds = %for.body
  %mode = getelementptr [27 x %struct.pll_div], ptr @da9055_pll_div, i32 0, i32 %indvars.iv, i32 5
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mode, align 1
  %conv12 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv12)
  %cmp13 = icmp eq i32 %7, %conv12
  br i1 %cmp13, label %land.lhs.true15, label %land.lhs.true8.for.inc_crit_edge

land.lhs.true8.for.inc_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true15:                                  ; preds = %land.lhs.true8
  %fout18 = getelementptr [27 x %struct.pll_div], ptr @da9055_pll_div, i32 0, i32 %indvars.iv, i32 1
  %12 = ptrtoint ptr %fout18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fout18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %fout)
  %cmp19 = icmp eq i32 %13, %fout
  br i1 %cmp19, label %if.end33, label %land.lhs.true15.for.inc_crit_edge

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true15.for.inc_crit_edge, %land.lhs.true8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 27
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end33:                                         ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  %frac_top = getelementptr [27 x %struct.pll_div], ptr @da9055_pll_div, i32 0, i32 %indvars.iv, i32 2
  %14 = ptrtoint ptr %frac_top to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %frac_top, align 4
  %frac_bot = getelementptr [27 x %struct.pll_div], ptr @da9055_pll_div, i32 0, i32 %indvars.iv, i32 3
  %16 = ptrtoint ptr %frac_bot to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %frac_bot, align 1
  %integer = getelementptr [27 x %struct.pll_div], ptr @da9055_pll_div, i32 0, i32 %indvars.iv, i32 4
  %18 = ptrtoint ptr %integer to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %integer, align 2
  %phi.cast = zext i8 %15 to i32
  %phi.cast60 = zext i8 %17 to i32
  %phi.cast61 = zext i8 %19 to i32
  %call35 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 36, i32 noundef %phi.cast) #6
  %call37 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 37, i32 noundef %phi.cast60) #6
  %call39 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 38, i32 noundef %phi.cast61) #6
  br label %cleanup

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.286) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end33
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
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
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.290)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.epilog_crit_edge
    i16 16384, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %aif_clk_mode.0 = phi i32 [ 0, %sw.bb2 ], [ 128, %entry.sw.epilog_crit_edge ]
  %mode.0 = phi i32 [ 0, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ]
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 39) #6
  %and4 = and i32 %call3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %land.lhs.true

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %sw.epilog
  %master = getelementptr inbounds %struct.da9055_priv, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %master, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mode.0)
  %cmp.not = icmp eq i32 %9, %mode.0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %master7 = getelementptr inbounds %struct.da9055_priv, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %master7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mode.0, ptr %master7, align 4
  %and8 = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 4
  br i1 %11, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.da9055_set_dai_fmt, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 40, i32 noundef 131, i32 noundef %aif_clk_mode.0) #6
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 41, i32 noundef 3, i32 noundef %switch.load) #6
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %. = select i1 %tobool.not, i32 0, i32 64
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 105, i32 noundef 64, i32 noundef %.) #6
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 106, i32 noundef 64, i32 noundef %.) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %7, %entry.if.then.i.i.i_crit_edge ], [ %10, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #6, !range !569
  %add.i.i.i = or i32 %8, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #6
  %11 = add i32 %call1.i, -16
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %13 = icmp ult i32 %12, 5
  br i1 %13, label %switch.hole_check, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %12 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %14 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %switch.lobit.not = icmp eq i8 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.da9055_hw_params, i32 0, i32 %12
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 41, i32 noundef 12, i32 noundef %switch.load) #6
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.291)
  switch i32 %17, label %switch.lookup.cleanup_crit_edge [
    i32 8000, label %switch.lookup.sw.epilog19_crit_edge
    i32 11025, label %sw.bb9
    i32 12000, label %sw.bb10
    i32 16000, label %sw.bb11
    i32 22050, label %sw.bb12
    i32 32000, label %sw.bb13
    i32 44100, label %sw.bb14
    i32 48000, label %sw.bb15
    i32 88200, label %sw.bb16
    i32 96000, label %sw.bb17
  ]

switch.lookup.sw.epilog19_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog19

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb9:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog19

sw.bb10:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog19

sw.bb11:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog19

sw.bb12:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog19

sw.bb13:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog19

sw.bb14:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog19

sw.bb15:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog19

sw.bb16:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog19

sw.bb17:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog19

sw.epilog19:                                      ; preds = %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %switch.lookup.sw.epilog19_crit_edge
  %fs.0 = phi i32 [ 15, %sw.bb17 ], [ 14, %sw.bb16 ], [ 11, %sw.bb15 ], [ 10, %sw.bb14 ], [ 9, %sw.bb13 ], [ 6, %sw.bb12 ], [ 5, %sw.bb11 ], [ 3, %sw.bb10 ], [ 2, %sw.bb9 ], [ 1, %switch.lookup.sw.epilog19_crit_edge ]
  %sysclk.0 = phi i32 [ 3072000, %sw.bb17 ], [ 2822400, %sw.bb16 ], [ 3072000, %sw.bb15 ], [ 2822400, %sw.bb14 ], [ 3072000, %sw.bb13 ], [ 2822400, %sw.bb12 ], [ 3072000, %sw.bb11 ], [ 3072000, %sw.bb10 ], [ 2822400, %sw.bb9 ], [ 3072000, %switch.lookup.sw.epilog19_crit_edge ]
  %mclk_rate = getelementptr inbounds %struct.da9055_priv, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  %.fs.0 = select i1 %tobool.not, i32 11, i32 %fs.0
  %call22 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 34, i32 noundef %.fs.0) #6
  %21 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool24.not = icmp eq i32 %22, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %sysclk.0)
  %cmp.not = icmp eq i32 %22, %sysclk.0
  %or.cond = or i1 %tobool24.not, %cmp.not
  br i1 %or.cond, label %if.else34, label %if.then27

if.then27:                                        ; preds = %sw.epilog19
  %master = getelementptr inbounds %struct.da9055_priv, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %master, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool28.not = icmp eq i32 %24, 0
  br i1 %tobool28.not, label %if.then29, label %if.else31

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 39, i32 noundef 192, i32 noundef 192) #6
  br label %cleanup

if.else31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 39, i32 noundef 128, i32 noundef 128) #6
  br label %cleanup

if.else34:                                        ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 39, i32 noundef 128, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else34, %if.else31, %if.then29, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %params_width.exit.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ 0, %if.then29 ], [ 0, %if.else31 ], [ 0, %if.else34 ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 357)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 357)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !404, !406, !408, !410, !412, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !542, !543, !544, !546, !547, !548, !550, !551, !552, !553, !555, !557}
!llvm.module.flags = !{!559, !560, !561, !562, !563, !564, !565, !566}
!llvm.ident = !{!567}

!0 = !{ptr @__initcall__kmod_snd_soc_da9055__294_1540_da9055_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_da9055__294_1540_da9055_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/da9055.c", i32 1540, i32 1}
!2 = !{ptr @__exitcall_da9055_i2c_driver_exit, !1, !"__exitcall_da9055_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/da9055.c", i32 1542, i32 1}
!5 = !{ptr @__UNIQUE_ID_author296, !6, !"__UNIQUE_ID_author296", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/da9055.c", i32 1543, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/da9055.c", i32 1544, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/da9055.c", i32 1533, i32 11}
!12 = !{ptr @da9055_i2c_driver, !13, !"da9055_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/da9055.c", i32 1531, i32 26}
!14 = !{ptr @da9055_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/da9055.c", i32 1493, i32 19}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/da9055.c", i32 1496, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @da9055_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @da9055_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/da9055.c", i32 1503, i32 3}
!27 = !{ptr @da9055_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @da9055_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @da9055_regmap_config, !30, !"da9055_regmap_config", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/da9055.c", i32 1466, i32 35}
!31 = !{ptr @da9055_reg_defaults, !32, !"da9055_reg_defaults", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/da9055.c", i32 944, i32 33}
!33 = !{ptr @soc_component_dev_da9055, !34, !"soc_component_dev_da9055", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/da9055.c", i32 1451, i32 46}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/da9055.c", i32 547, i32 2}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/da9055.c", i32 550, i32 2}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/da9055.c", i32 553, i32 2}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/da9055.c", i32 556, i32 2}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/da9055.c", i32 560, i32 2}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/da9055.c", i32 563, i32 2}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/da9055.c", i32 566, i32 2}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/da9055.c", i32 570, i32 2}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/da9055.c", i32 571, i32 2}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/da9055.c", i32 573, i32 2}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/da9055.c", i32 575, i32 2}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/da9055.c", i32 577, i32 2}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/da9055.c", i32 579, i32 2}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/da9055.c", i32 583, i32 2}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/da9055.c", i32 584, i32 2}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/da9055.c", i32 585, i32 2}
!67 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/da9055.c", i32 586, i32 2}
!69 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/da9055.c", i32 588, i32 2}
!71 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/da9055.c", i32 589, i32 2}
!73 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/da9055.c", i32 590, i32 2}
!75 = !{ptr @.str.46, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/da9055.c", i32 591, i32 2}
!77 = !{ptr @.str.47, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/da9055.c", i32 594, i32 2}
!79 = !{ptr @.str.49, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/da9055.c", i32 596, i32 2}
!81 = !{ptr @.str.51, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/da9055.c", i32 598, i32 2}
!83 = !{ptr @.str.53, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/da9055.c", i32 600, i32 2}
!85 = !{ptr @.str.55, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/da9055.c", i32 602, i32 2}
!87 = !{ptr @.str.57, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/da9055.c", i32 604, i32 2}
!89 = !{ptr @.str.59, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/da9055.c", i32 605, i32 2}
!91 = !{ptr @.str.61, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/da9055.c", i32 606, i32 2}
!93 = !{ptr @.str.62, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/da9055.c", i32 609, i32 2}
!95 = !{ptr @.str.64, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/da9055.c", i32 611, i32 2}
!97 = !{ptr @.str.66, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/da9055.c", i32 613, i32 2}
!99 = !{ptr @.str.68, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/da9055.c", i32 615, i32 2}
!101 = !{ptr @.str.70, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/da9055.c", i32 618, i32 2}
!103 = !{ptr @.str.72, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/da9055.c", i32 620, i32 2}
!105 = !{ptr @.str.74, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/da9055.c", i32 622, i32 2}
!107 = !{ptr @.str.76, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/da9055.c", i32 624, i32 2}
!109 = !{ptr @.str.78, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/da9055.c", i32 626, i32 2}
!111 = !{ptr @.str.80, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/da9055.c", i32 628, i32 2}
!113 = !{ptr @.str.82, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/da9055.c", i32 629, i32 2}
!115 = !{ptr @.str.83, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/da9055.c", i32 632, i32 2}
!117 = !{ptr @.str.85, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/da9055.c", i32 633, i32 2}
!119 = !{ptr @.str.87, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/da9055.c", i32 635, i32 2}
!121 = !{ptr @.str.89, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/da9055.c", i32 637, i32 2}
!123 = !{ptr @.str.90, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/da9055.c", i32 638, i32 2}
!125 = !{ptr @.str.91, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/da9055.c", i32 639, i32 2}
!127 = !{ptr @.str.92, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/da9055.c", i32 642, i32 2}
!129 = !{ptr @.str.94, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/da9055.c", i32 643, i32 2}
!131 = !{ptr @.str.96, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/da9055.c", i32 646, i32 2}
!133 = !{ptr @.str.98, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/da9055.c", i32 650, i32 2}
!135 = !{ptr @.str.100, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/da9055.c", i32 652, i32 2}
!137 = !{ptr @.str.102, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/da9055.c", i32 654, i32 2}
!139 = !{ptr @.str.104, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/da9055.c", i32 655, i32 2}
!141 = !{ptr @.str.106, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/da9055.c", i32 657, i32 2}
!143 = !{ptr @.str.108, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/da9055.c", i32 659, i32 2}
!145 = !{ptr @.str.110, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/da9055.c", i32 661, i32 2}
!147 = !{ptr @.str.112, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/da9055.c", i32 663, i32 2}
!149 = !{ptr @.str.114, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/da9055.c", i32 665, i32 2}
!151 = !{ptr @.str.116, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/da9055.c", i32 667, i32 2}
!153 = !{ptr @.str.118, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/da9055.c", i32 669, i32 2}
!155 = !{ptr @.str.120, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/da9055.c", i32 672, i32 2}
!157 = !{ptr @.str.122, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/da9055.c", i32 675, i32 2}
!159 = !{ptr @.str.123, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/da9055.c", i32 676, i32 2}
!161 = !{ptr @.str.124, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/da9055.c", i32 677, i32 2}
!163 = !{ptr @.str.125, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/da9055.c", i32 682, i32 2}
!165 = !{ptr @.str.126, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/da9055.c", i32 687, i32 2}
!167 = !{ptr @da9055_snd_controls, !168, !"da9055_snd_controls", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/da9055.c", i32 544, i32 38}
!169 = !{ptr @mic_vol_tlv, !170, !"mic_vol_tlv", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/da9055.c", i32 306, i32 14}
!171 = !{ptr @aux_vol_tlv, !172, !"aux_vol_tlv", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/da9055.c", i32 288, i32 14}
!173 = !{ptr @mixin_gain_tlv, !174, !"mixin_gain_tlv", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/da9055.c", i32 307, i32 14}
!175 = !{ptr @digital_gain_tlv, !176, !"digital_gain_tlv", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/da9055.c", i32 294, i32 14}
!177 = !{ptr @hp_vol_tlv, !178, !"hp_vol_tlv", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/da9055.c", i32 309, i32 14}
!179 = !{ptr @lineout_vol_tlv, !180, !"lineout_vol_tlv", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/da9055.c", i32 310, i32 14}
!181 = !{ptr @eq_gain_tlv, !182, !"eq_gain_tlv", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/da9055.c", i32 308, i32 14}
!183 = !{ptr @da9055_adc_hpf_cutoff, !184, !"da9055_adc_hpf_cutoff", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/da9055.c", i32 322, i32 8}
!185 = !{ptr @.str.127, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/da9055.c", i32 316, i32 2}
!187 = !{ptr @.str.128, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/da9055.c", i32 316, i32 14}
!189 = !{ptr @.str.129, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/da9055.c", i32 316, i32 26}
!191 = !{ptr @.str.130, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/da9055.c", i32 316, i32 37}
!193 = !{ptr @da9055_hpf_cutoff_txt, !194, !"da9055_hpf_cutoff_txt", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/da9055.c", i32 315, i32 27}
!195 = !{ptr @da9055_adc_vf_cutoff, !196, !"da9055_adc_vf_cutoff", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/da9055.c", i32 333, i32 8}
!197 = !{ptr @.str.131, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/da9055.c", i32 327, i32 2}
!199 = !{ptr @.str.132, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/da9055.c", i32 327, i32 11}
!201 = !{ptr @.str.133, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/da9055.c", i32 327, i32 19}
!203 = !{ptr @.str.134, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/da9055.c", i32 327, i32 27}
!205 = !{ptr @.str.135, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/da9055.c", i32 327, i32 36}
!207 = !{ptr @.str.136, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/da9055.c", i32 327, i32 45}
!209 = !{ptr @.str.137, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/da9055.c", i32 327, i32 54}
!211 = !{ptr @.str.138, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/da9055.c", i32 327, i32 63}
!213 = !{ptr @da9055_vf_cutoff_txt, !214, !"da9055_vf_cutoff_txt", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/da9055.c", i32 326, i32 27}
!215 = !{ptr @da9055_dac_hpf_cutoff, !216, !"da9055_dac_hpf_cutoff", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/da9055.c", i32 319, i32 8}
!217 = !{ptr @da9055_dac_vf_cutoff, !218, !"da9055_dac_vf_cutoff", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/da9055.c", i32 330, i32 8}
!219 = !{ptr @da9055_dac_soft_mute_rate, !220, !"da9055_dac_soft_mute_rate", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/da9055.c", i32 377, i32 8}
!221 = !{ptr @.str.139, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/da9055.c", i32 374, i32 2}
!223 = !{ptr @.str.140, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/da9055.c", i32 374, i32 7}
!225 = !{ptr @.str.141, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/da9055.c", i32 374, i32 12}
!227 = !{ptr @.str.142, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/da9055.c", i32 374, i32 17}
!229 = !{ptr @.str.143, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/da9055.c", i32 374, i32 22}
!231 = !{ptr @.str.144, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/da9055.c", i32 374, i32 28}
!233 = !{ptr @.str.145, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/da9055.c", i32 374, i32 34}
!235 = !{ptr @da9055_dac_soft_mute_rate_txt, !236, !"da9055_dac_soft_mute_rate_txt", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/da9055.c", i32 373, i32 27}
!237 = !{ptr @da9055_gain_ramping_rate, !238, !"da9055_gain_ramping_rate", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/da9055.c", i32 342, i32 8}
!239 = !{ptr @.str.146, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/da9055.c", i32 338, i32 2}
!241 = !{ptr @.str.147, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/da9055.c", i32 338, i32 18}
!243 = !{ptr @.str.148, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/da9055.c", i32 338, i32 38}
!245 = !{ptr @.str.149, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/da9055.c", i32 339, i32 2}
!247 = !{ptr @da9055_gain_ramping_txt, !248, !"da9055_gain_ramping_txt", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/da9055.c", i32 337, i32 27}
!249 = !{ptr @da9055_dac_ng_setup_time, !250, !"da9055_dac_ng_setup_time", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/da9055.c", i32 350, i32 8}
!251 = !{ptr @.str.150, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/da9055.c", i32 347, i32 2}
!253 = !{ptr @.str.151, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/da9055.c", i32 347, i32 17}
!255 = !{ptr @.str.152, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/da9055.c", i32 347, i32 32}
!257 = !{ptr @.str.153, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/da9055.c", i32 347, i32 48}
!259 = !{ptr @da9055_dac_ng_setup_time_txt, !260, !"da9055_dac_ng_setup_time_txt", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/da9055.c", i32 346, i32 27}
!261 = !{ptr @da9055_dac_ng_rampup_rate, !262, !"da9055_dac_ng_rampup_rate", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/da9055.c", i32 359, i32 8}
!263 = !{ptr @.str.154, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/da9055.c", i32 356, i32 2}
!265 = !{ptr @.str.155, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/da9055.c", i32 356, i32 16}
!267 = !{ptr @da9055_dac_ng_rampup_txt, !268, !"da9055_dac_ng_rampup_txt", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/da9055.c", i32 355, i32 27}
!269 = !{ptr @da9055_dac_ng_rampdown_rate, !270, !"da9055_dac_ng_rampdown_rate", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/da9055.c", i32 368, i32 8}
!271 = !{ptr @.str.156, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/da9055.c", i32 365, i32 2}
!273 = !{ptr @.str.157, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/da9055.c", i32 365, i32 16}
!275 = !{ptr @da9055_dac_ng_rampdown_txt, !276, !"da9055_dac_ng_rampdown_txt", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/da9055.c", i32 364, i32 27}
!277 = !{ptr @alc_threshold_tlv, !278, !"alc_threshold_tlv", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/da9055.c", i32 311, i32 14}
!279 = !{ptr @alc_gain_tlv, !280, !"alc_gain_tlv", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/da9055.c", i32 312, i32 14}
!281 = !{ptr @alc_analog_gain_tlv, !282, !"alc_analog_gain_tlv", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/da9055.c", i32 300, i32 14}
!283 = !{ptr @da9055_attack_rate, !284, !"da9055_attack_rate", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/da9055.c", i32 428, i32 8}
!285 = !{ptr @.str.158, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/da9055.c", i32 424, i32 2}
!287 = !{ptr @.str.159, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/da9055.c", i32 424, i32 11}
!289 = !{ptr @.str.160, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/da9055.c", i32 424, i32 20}
!291 = !{ptr @.str.161, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/da9055.c", i32 424, i32 30}
!293 = !{ptr @.str.162, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/da9055.c", i32 424, i32 40}
!295 = !{ptr @.str.163, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/da9055.c", i32 424, i32 50}
!297 = !{ptr @.str.164, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/da9055.c", i32 424, i32 61}
!299 = !{ptr @.str.165, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/da9055.c", i32 425, i32 2}
!301 = !{ptr @.str.166, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/da9055.c", i32 425, i32 13}
!303 = !{ptr @.str.167, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/da9055.c", i32 425, i32 25}
!305 = !{ptr @.str.168, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/da9055.c", i32 425, i32 37}
!307 = !{ptr @.str.169, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/da9055.c", i32 425, i32 49}
!309 = !{ptr @.str.170, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/da9055.c", i32 425, i32 61}
!311 = !{ptr @da9055_attack_rate_txt, !312, !"da9055_attack_rate_txt", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/da9055.c", i32 423, i32 27}
!313 = !{ptr @da9055_release_rate, !314, !"da9055_release_rate", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/da9055.c", i32 437, i32 8}
!315 = !{ptr @da9055_release_rate_txt, !316, !"da9055_release_rate_txt", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/da9055.c", i32 432, i32 27}
!317 = !{ptr @da9055_hold_time, !318, !"da9055_hold_time", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/da9055.c", i32 447, i32 8}
!319 = !{ptr @.str.171, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/da9055.c", i32 442, i32 2}
!321 = !{ptr @.str.172, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/da9055.c", i32 442, i32 11}
!323 = !{ptr @.str.173, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/da9055.c", i32 442, i32 21}
!325 = !{ptr @.str.174, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/da9055.c", i32 442, i32 31}
!327 = !{ptr @.str.175, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/da9055.c", i32 442, i32 41}
!329 = !{ptr @.str.176, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/da9055.c", i32 442, i32 51}
!331 = !{ptr @.str.177, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/da9055.c", i32 442, i32 62}
!333 = !{ptr @.str.178, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/da9055.c", i32 443, i32 2}
!335 = !{ptr @.str.179, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/da9055.c", i32 443, i32 13}
!337 = !{ptr @.str.180, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/da9055.c", i32 443, i32 25}
!339 = !{ptr @.str.181, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/da9055.c", i32 443, i32 37}
!341 = !{ptr @.str.182, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/da9055.c", i32 443, i32 49}
!343 = !{ptr @.str.183, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/da9055.c", i32 444, i32 2}
!345 = !{ptr @.str.184, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/da9055.c", i32 444, i32 15}
!347 = !{ptr @.str.185, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/da9055.c", i32 444, i32 28}
!349 = !{ptr @.str.186, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/da9055.c", i32 444, i32 42}
!351 = !{ptr @da9055_hold_time_txt, !352, !"da9055_hold_time_txt", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/da9055.c", i32 441, i32 27}
!353 = !{ptr @da9055_integ_attack_rate, !354, !"da9055_integ_attack_rate", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/da9055.c", i32 414, i32 8}
!355 = !{ptr @.str.187, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/da9055.c", i32 411, i32 2}
!357 = !{ptr @.str.188, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/da9055.c", i32 411, i32 9}
!359 = !{ptr @.str.189, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/da9055.c", i32 411, i32 17}
!361 = !{ptr @.str.190, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/da9055.c", i32 411, i32 26}
!363 = !{ptr @da9055_signal_tracking_rate_txt, !364, !"da9055_signal_tracking_rate_txt", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/da9055.c", i32 410, i32 27}
!365 = !{ptr @da9055_integ_release_rate, !366, !"da9055_integ_release_rate", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/da9055.c", i32 418, i32 8}
!367 = !{ptr @.str.191, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/da9055.c", i32 767, i32 2}
!369 = !{ptr @.str.192, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/da9055.c", i32 768, i32 2}
!371 = !{ptr @.str.193, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/da9055.c", i32 769, i32 2}
!373 = !{ptr @.str.194, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/da9055.c", i32 770, i32 2}
!375 = !{ptr @.str.195, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/da9055.c", i32 773, i32 2}
!377 = !{ptr @.str.196, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/da9055.c", i32 775, i32 2}
!379 = !{ptr @.str.197, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/da9055.c", i32 779, i32 2}
!381 = !{ptr @.str.198, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/da9055.c", i32 780, i32 2}
!383 = !{ptr @.str.199, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/da9055.c", i32 781, i32 2}
!385 = !{ptr @.str.200, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/da9055.c", i32 782, i32 2}
!387 = !{ptr @.str.201, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/da9055.c", i32 783, i32 2}
!389 = !{ptr @.str.202, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/da9055.c", i32 784, i32 2}
!391 = !{ptr @.str.203, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/da9055.c", i32 786, i32 2}
!393 = !{ptr @.str.204, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/da9055.c", i32 787, i32 2}
!395 = !{ptr @.str.205, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/da9055.c", i32 788, i32 2}
!397 = !{ptr @.str.206, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/da9055.c", i32 791, i32 2}
!399 = !{ptr @.str.207, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/da9055.c", i32 794, i32 2}
!401 = !{ptr @.str.208, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/da9055.c", i32 799, i32 2}
!403 = !{ptr @.str.209, !402, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @.str.210, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../sound/soc/codecs/da9055.c", i32 800, i32 2}
!406 = !{ptr @.str.211, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../sound/soc/codecs/da9055.c", i32 805, i32 2}
!408 = !{ptr @.str.212, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/soc/codecs/da9055.c", i32 807, i32 2}
!410 = !{ptr @.str.213, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../sound/soc/codecs/da9055.c", i32 811, i32 2}
!412 = !{ptr @.str.214, !411, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @.str.215, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/da9055.c", i32 812, i32 2}
!415 = !{ptr @.str.216, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/da9055.c", i32 815, i32 2}
!417 = !{ptr @.str.217, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/da9055.c", i32 816, i32 2}
!419 = !{ptr @.str.218, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../sound/soc/codecs/da9055.c", i32 819, i32 2}
!421 = !{ptr @.str.219, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../sound/soc/codecs/da9055.c", i32 822, i32 2}
!423 = !{ptr @.str.220, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../sound/soc/codecs/da9055.c", i32 827, i32 2}
!425 = !{ptr @.str.221, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../sound/soc/codecs/da9055.c", i32 829, i32 2}
!427 = !{ptr @.str.222, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../sound/soc/codecs/da9055.c", i32 831, i32 2}
!429 = !{ptr @.str.223, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../sound/soc/codecs/da9055.c", i32 835, i32 2}
!431 = !{ptr @.str.224, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/da9055.c", i32 836, i32 2}
!433 = !{ptr @.str.225, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../sound/soc/codecs/da9055.c", i32 837, i32 2}
!435 = !{ptr @.str.226, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../sound/soc/codecs/da9055.c", i32 838, i32 2}
!437 = !{ptr @.str.227, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../sound/soc/codecs/da9055.c", i32 839, i32 2}
!439 = !{ptr @.str.228, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../sound/soc/codecs/da9055.c", i32 842, i32 2}
!441 = !{ptr @.str.229, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../sound/soc/codecs/da9055.c", i32 843, i32 2}
!443 = !{ptr @.str.230, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../sound/soc/codecs/da9055.c", i32 844, i32 2}
!445 = !{ptr @da9055_dapm_widgets, !446, !"da9055_dapm_widgets", i1 false, i1 false}
!446 = !{!"../sound/soc/codecs/da9055.c", i32 763, i32 41}
!447 = !{ptr @.str.232, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../sound/soc/codecs/da9055.c", i32 694, i32 1}
!449 = !{ptr @da9055_mic_l_mux_controls, !450, !"da9055_mic_l_mux_controls", i1 false, i1 false}
!450 = !{!"../sound/soc/codecs/da9055.c", i32 693, i32 38}
!451 = !{ptr @da9055_mic_l_src, !452, !"da9055_mic_l_src", i1 false, i1 false}
!452 = !{!"../sound/soc/codecs/da9055.c", i32 398, i32 8}
!453 = !{ptr @.str.233, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../sound/soc/codecs/da9055.c", i32 395, i32 2}
!455 = !{ptr @.str.234, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../sound/soc/codecs/da9055.c", i32 395, i32 14}
!457 = !{ptr @.str.235, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../sound/soc/codecs/da9055.c", i32 395, i32 24}
!459 = !{ptr @.str.236, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../sound/soc/codecs/da9055.c", i32 395, i32 34}
!461 = !{ptr @da9055_mic_l_src_txt, !462, !"da9055_mic_l_src_txt", i1 false, i1 false}
!462 = !{!"../sound/soc/codecs/da9055.c", i32 394, i32 27}
!463 = !{ptr @da9055_mic_r_mux_controls, !464, !"da9055_mic_r_mux_controls", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/da9055.c", i32 697, i32 38}
!465 = !{ptr @da9055_mic_r_src, !466, !"da9055_mic_r_src", i1 false, i1 false}
!466 = !{!"../sound/soc/codecs/da9055.c", i32 406, i32 8}
!467 = !{ptr @.str.237, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/da9055.c", i32 403, i32 2}
!469 = !{ptr @.str.238, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../sound/soc/codecs/da9055.c", i32 403, i32 14}
!471 = !{ptr @da9055_mic_r_src_txt, !472, !"da9055_mic_r_src_txt", i1 false, i1 false}
!472 = !{!"../sound/soc/codecs/da9055.c", i32 402, i32 27}
!473 = !{ptr @.str.239, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../sound/soc/codecs/da9055.c", i32 702, i32 2}
!475 = !{ptr @.str.241, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../sound/soc/codecs/da9055.c", i32 703, i32 2}
!477 = !{ptr @.str.243, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../sound/soc/codecs/da9055.c", i32 704, i32 2}
!479 = !{ptr @da9055_dapm_mixinl_controls, !480, !"da9055_dapm_mixinl_controls", i1 false, i1 false}
!480 = !{!"../sound/soc/codecs/da9055.c", i32 701, i32 38}
!481 = !{ptr @.str.245, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../sound/soc/codecs/da9055.c", i32 709, i32 2}
!483 = !{ptr @.str.249, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../sound/soc/codecs/da9055.c", i32 712, i32 2}
!485 = !{ptr @da9055_dapm_mixinr_controls, !486, !"da9055_dapm_mixinr_controls", i1 false, i1 false}
!486 = !{!"../sound/soc/codecs/da9055.c", i32 708, i32 38}
!487 = !{ptr @da9055_dac_l_mux_controls, !488, !"da9055_dac_l_mux_controls", i1 false, i1 false}
!488 = !{!"../sound/soc/codecs/da9055.c", i32 716, i32 38}
!489 = !{ptr @da9055_dac_l_src, !490, !"da9055_dac_l_src", i1 false, i1 false}
!490 = !{!"../sound/soc/codecs/da9055.c", i32 387, i32 8}
!491 = !{ptr @.str.251, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../sound/soc/codecs/da9055.c", i32 383, i32 2}
!493 = !{ptr @.str.252, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../sound/soc/codecs/da9055.c", i32 383, i32 21}
!495 = !{ptr @.str.253, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../sound/soc/codecs/da9055.c", i32 383, i32 41}
!497 = !{ptr @.str.254, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../sound/soc/codecs/da9055.c", i32 384, i32 2}
!499 = !{ptr @da9055_dac_src_txt, !500, !"da9055_dac_src_txt", i1 false, i1 false}
!500 = !{!"../sound/soc/codecs/da9055.c", i32 382, i32 27}
!501 = !{ptr @da9055_dac_r_mux_controls, !502, !"da9055_dac_r_mux_controls", i1 false, i1 false}
!502 = !{!"../sound/soc/codecs/da9055.c", i32 720, i32 38}
!503 = !{ptr @da9055_dac_r_src, !504, !"da9055_dac_r_src", i1 false, i1 false}
!504 = !{!"../sound/soc/codecs/da9055.c", i32 390, i32 8}
!505 = !{ptr @.str.257, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../sound/soc/codecs/da9055.c", i32 727, i32 2}
!507 = !{ptr @.str.259, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../sound/soc/codecs/da9055.c", i32 728, i32 2}
!509 = !{ptr @.str.261, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../sound/soc/codecs/da9055.c", i32 729, i32 2}
!511 = !{ptr @.str.263, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../sound/soc/codecs/da9055.c", i32 731, i32 2}
!513 = !{ptr @.str.265, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../sound/soc/codecs/da9055.c", i32 733, i32 2}
!515 = !{ptr @da9055_dapm_mixoutl_controls, !516, !"da9055_dapm_mixoutl_controls", i1 false, i1 false}
!516 = !{!"../sound/soc/codecs/da9055.c", i32 724, i32 38}
!517 = !{ptr @.str.270, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../sound/soc/codecs/da9055.c", i32 742, i32 2}
!519 = !{ptr @.str.272, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../sound/soc/codecs/da9055.c", i32 743, i32 2}
!521 = !{ptr @da9055_dapm_mixoutr_controls, !522, !"da9055_dapm_mixoutr_controls", i1 false, i1 false}
!522 = !{!"../sound/soc/codecs/da9055.c", i32 738, i32 38}
!523 = !{ptr @.str.276, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../sound/soc/codecs/da9055.c", i32 753, i32 1}
!525 = !{ptr @da9055_dapm_hp_l_control, !526, !"da9055_dapm_hp_l_control", i1 false, i1 false}
!526 = !{!"../sound/soc/codecs/da9055.c", i32 752, i32 38}
!527 = !{ptr @da9055_dapm_hp_r_control, !528, !"da9055_dapm_hp_r_control", i1 false, i1 false}
!528 = !{!"../sound/soc/codecs/da9055.c", i32 755, i32 38}
!529 = !{ptr @da9055_dapm_lineout_control, !530, !"da9055_dapm_lineout_control", i1 false, i1 false}
!530 = !{!"../sound/soc/codecs/da9055.c", i32 759, i32 38}
!531 = !{ptr @da9055_audio_map, !532, !"da9055_audio_map", i1 false, i1 false}
!532 = !{!"../sound/soc/codecs/da9055.c", i32 848, i32 40}
!533 = !{ptr @.str.280, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../sound/soc/codecs/da9055.c", i32 1332, i32 10}
!535 = !{ptr @da9055_dai, !536, !"da9055_dai", i1 false, i1 false}
!536 = !{!"../sound/soc/codecs/da9055.c", i32 1331, i32 34}
!537 = !{ptr @da9055_dai_ops, !538, !"da9055_dai_ops", i1 false, i1 false}
!538 = !{!"../sound/soc/codecs/da9055.c", i32 1322, i32 37}
!539 = !{ptr @.str.281, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../sound/soc/codecs/da9055.c", i32 1257, i32 4}
!541 = !{ptr @.str.282, !540, !"<string literal>", i1 false, i1 false}
!542 = !{ptr @da9055_set_dai_sysclk._entry, !540, !"_entry", i1 false, i1 false}
!543 = !{ptr @da9055_set_dai_sysclk._entry_ptr, !540, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @.str.284, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../sound/soc/codecs/da9055.c", i32 1263, i32 3}
!546 = !{ptr @da9055_set_dai_sysclk._entry.283, !545, !"_entry", i1 false, i1 false}
!547 = !{ptr @da9055_set_dai_sysclk._entry_ptr.285, !545, !"_entry_ptr", i1 false, i1 false}
!548 = !{ptr @.str.286, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../sound/soc/codecs/da9055.c", i32 1317, i32 2}
!550 = !{ptr @.str.287, !549, !"<string literal>", i1 false, i1 false}
!551 = !{ptr @da9055_set_dai_pll._entry, !549, !"_entry", i1 false, i1 false}
!552 = !{ptr @da9055_set_dai_pll._entry_ptr, !549, !"_entry_ptr", i1 false, i1 false}
!553 = !{ptr @da9055_pll_div, !554, !"da9055_pll_div", i1 false, i1 false}
!554 = !{!"../sound/soc/codecs/da9055.c", i32 249, i32 29}
!555 = !{ptr @da9055_of_match, !556, !"da9055_of_match", i1 false, i1 false}
!556 = !{!"../sound/soc/codecs/da9055.c", i32 1523, i32 34}
!557 = !{ptr @da9055_i2c_id, !558, !"da9055_i2c_id", i1 false, i1 false}
!558 = !{!"../sound/soc/codecs/da9055.c", i32 1516, i32 35}
!559 = !{i32 1, !"wchar_size", i32 2}
!560 = !{i32 1, !"min_enum_size", i32 4}
!561 = !{i32 8, !"branch-target-enforcement", i32 0}
!562 = !{i32 8, !"sign-return-address", i32 0}
!563 = !{i32 8, !"sign-return-address-all", i32 0}
!564 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!565 = !{i32 7, !"uwtable", i32 1}
!566 = !{i32 7, !"frame-pointer", i32 2}
!567 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!568 = !{i8 0, i8 2}
!569 = !{i32 0, i32 33}
