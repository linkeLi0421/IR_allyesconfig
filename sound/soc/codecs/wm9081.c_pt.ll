; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm9081.c_pt.bc'
source_filename = "../sound/soc/codecs/wm9081.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.anon.108 = type { i32, i32 }
%struct.anon.109 = type { i32, i32, i16, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.110 = type { i32, i32 }
%struct.anon.111 = type { i32, i32 }
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
%struct.wm9081_priv = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.wm9081_pdata }
%struct.wm9081_pdata = type { i8, i8, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.92, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.92 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.87, [128 x i8] }
%union.anon.87 = type { %union.anon.89 }
%union.anon.89 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct._fll_div = type { i16, i16, i16, i16, i16 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.wm9081_retune_mobile_setting = type { ptr, i32, [20 x i16] }

@__initcall__kmod_snd_soc_wm9081__310_1381_wm9081_i2c_driver_init6 = internal global ptr @wm9081_i2c_driver_init, section ".initcall6.init", align 4
@wm9081_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wm9081_i2c_probe, ptr @wm9081_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm9081_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_wm9081_i2c_driver_exit = internal global ptr @wm9081_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description311 = internal constant [46 x i8] c"snd_soc_wm9081.description=ASoC WM9081 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author312 = internal constant [71 x i8] c"snd_soc_wm9081.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file313 = internal constant [52 x i8] c"snd_soc_wm9081.file=sound/soc/codecs/snd-soc-wm9081\00", section ".modinfo", align 1
@__UNIQUE_ID_license314 = internal constant [27 x i8] c"snd_soc_wm9081.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm9081\00", [25 x i8] zeroinitializer }, align 32
@wm9081_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm9081\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wm9081_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm9081_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @wm9081_readable_register, ptr @wm9081_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 61, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm9081_reg, i32 53, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wm9081:1316:(&wm9081_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@wm9081_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1319, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap_init() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm9081_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/wm9081.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm9081_i2c_probe._entry_ptr = internal global ptr @wm9081_i2c_probe._entry, section ".printk_index", align 4
@wm9081_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1325, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read chip ID: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wm9081_i2c_probe._entry_ptr.9 = internal global ptr @wm9081_i2c_probe._entry.7, section ".printk_index", align 4
@wm9081_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1329, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Device is not a WM9081: ID=0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@wm9081_i2c_probe._entry_ptr.12 = internal global ptr @wm9081_i2c_probe._entry.10, section ".printk_index", align 4
@wm9081_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1335, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to issue reset\0A\00", [41 x i8] zeroinitializer }, align 32
@wm9081_i2c_probe._entry_ptr.15 = internal global ptr @wm9081_i2c_probe._entry.13, section ".printk_index", align 4
@soc_component_dev_wm9081 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @wm9081_snd_controls, i32 27, ptr @wm9081_dapm_widgets, i32 14, ptr @wm9081_audio_paths, i32 17, ptr @wm9081_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm9081_set_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm9081_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wm9081_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.152, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm9081_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.139, i64 68719477828, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@wm9081_reg = internal constant { [53 x %struct.reg_default], [120 x i8] } { [53 x %struct.reg_default] [%struct.reg_default { i32 2, i32 185 }, %struct.reg_default { i32 3, i32 185 }, %struct.reg_default { i32 4, i32 1 }, %struct.reg_default { i32 5, i32 104 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 475 }, %struct.reg_default { i32 10, i32 24 }, %struct.reg_default { i32 11, i32 384 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 56 }, %struct.reg_default { i32 14, i32 16384 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 512 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 516 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 2 }, %struct.reg_default { i32 24, i32 8 }, %struct.reg_default { i32 25, i32 34 }, %struct.reg_default { i32 27, i32 6 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 192 }, %struct.reg_default { i32 31, i32 8 }, %struct.reg_default { i32 32, i32 2479 }, %struct.reg_default { i32 33, i32 16897 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 2 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 4042 }, %struct.reg_default { i32 45, i32 1024 }, %struct.reg_default { i32 46, i32 184 }, %struct.reg_default { i32 47, i32 7861 }, %struct.reg_default { i32 48, i32 61765 }, %struct.reg_default { i32 49, i32 2933 }, %struct.reg_default { i32 50, i32 453 }, %struct.reg_default { i32 51, i32 5790 }, %struct.reg_default { i32 52, i32 63529 }, %struct.reg_default { i32 53, i32 1965 }, %struct.reg_default { i32 54, i32 4355 }, %struct.reg_default { i32 55, i32 7256 }, %struct.reg_default { i32 56, i32 62323 }, %struct.reg_default { i32 57, i32 2644 }, %struct.reg_default { i32 58, i32 1368 }, %struct.reg_default { i32 59, i32 1380 }, %struct.reg_default { i32 60, i32 1369 }, %struct.reg_default { i32 61, i32 16384 }], [120 x i8] zeroinitializer }, align 32
@wm9081_snd_controls = internal constant { [27 x %struct.snd_kcontrol_new], [336 x i8] } { [27 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @in_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @in_tlv }, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @drc_high to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @drc_low to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @drc_in_tlv }, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @drc_out_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @drc_min_tlv }, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @drc_max_tlv }, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @drc_atk to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @drc_dcy to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @drc_qr_tlv }, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @drc_qr_dcy to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @drc_startup_tlv }, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @dac_deemph to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @speaker_mode_get, ptr @speaker_mode_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @speaker_mode to i32) }], [336 x i8] zeroinitializer }, align 32
@wm9081_audio_paths = internal constant { [17 x %struct.snd_soc_dapm_route], [204 x i8] } { [17 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.110, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.112, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.114, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr null, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }], [204 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IN1 Volume\00", [21 x i8] zeroinitializer }, align 32
@in_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IN2 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Playback Volume\00", [16 x i8] zeroinitializer }, align 32
@dac_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7200, i32 65611], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 30, i32 30, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LINEOUT Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LINEOUT ZC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LINEOUT Volume\00", [17 x i8] zeroinitializer }, align 32
@out_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5700, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 2, i32 2, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DRC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 15, i32 15, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DRC High Slope\00", [17 x i8] zeroinitializer }, align 32
@drc_high = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 34, i8 3, i8 3, i32 6, i32 7, ptr @drc_high_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DRC Low Slope\00", [18 x i8] zeroinitializer }, align 32
@drc_low = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 34, i8 0, i8 0, i32 5, i32 7, ptr @drc_low_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DRC Input Volume\00", [47 x i8] zeroinitializer }, align 32
@drc_in_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4500, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 60, i32 60, i32 35, i32 35, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DRC Output Volume\00", [46 x i8] zeroinitializer }, align 32
@drc_out_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2250, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 30, i32 30, i32 35, i32 35, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DRC Minimum Volume\00", [45 x i8] zeroinitializer }, align 32
@drc_min_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1800, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 33, i32 33, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DRC Maximum Volume\00", [45 x i8] zeroinitializer }, align 32
@drc_max_tlv = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 3, i32 96, i32 0, i32 0, i32 1, i32 8, i32 1200, i32 0, i32 1, i32 1, i32 1, i32 8, i32 1800, i32 0, i32 2, i32 2, i32 1, i32 8, i32 2400, i32 0, i32 3, i32 3, i32 1, i32 8, i32 3600, i32 0], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 33, i32 33, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DRC Attack\00", [21 x i8] zeroinitializer }, align 32
@drc_atk = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 33, i8 12, i8 12, i32 12, i32 15, ptr @drc_atk_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DRC Decay\00", [22 x i8] zeroinitializer }, align 32
@drc_dcy = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 33, i8 8, i8 8, i32 9, i32 15, ptr @drc_dcy_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DRC Quick Release Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DRC Quick Release Volume\00", [39 x i8] zeroinitializer }, align 32
@drc_qr_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 1200, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 33, i32 33, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DRC Quick Release Decay\00", [40 x i8] zeroinitializer }, align 32
@drc_qr_dcy = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 33, i8 4, i8 4, i32 3, i32 3, ptr @drc_qr_dcy_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DRC Startup Volume\00", [45 x i8] zeroinitializer }, align 32
@drc_startup_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -300, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 18, i32 18, i32 32, i32 32, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EQ Switch\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Speaker DC Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 5, i32 5, i32 9, i32 9, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Speaker AC Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 5, i32 5, i32 9, i32 9, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Speaker ZC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 3, i32 3, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC Deemphasis\00", [17 x i8] zeroinitializer }, align 32
@dac_deemph = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 31, i8 1, i8 1, i32 4, i32 3, ptr @dac_deemph_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Speaker Mode\00", [19 x i8] zeroinitializer }, align 32
@speaker_mode = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 10, i8 6, i8 6, i32 2, i32 1, ptr @speaker_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@drc_high_text = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1/2\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1/4\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1/8\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1/16\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@drc_low_text = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67], [44 x i8] zeroinitializer }, align 32
@drc_atk_text = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.68, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"181us\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"363us\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"726us\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.45ms\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.9ms\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"5.8ms\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"11.6ms\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"23.2ms\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"46.4ms\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"92.8ms\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"185.6ms\00", [24 x i8] zeroinitializer }, align 32
@drc_dcy_text = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87], [60 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"186ms\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"372ms\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"743ms\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.49s\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.97s\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"5.94s\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"11.89s\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"23.78s\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"47.56s\00", [25 x i8] zeroinitializer }, align 32
@drc_qr_dcy_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.88, ptr @.str.71, ptr @.str.73], [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.725ms\00", [24 x i8] zeroinitializer }, align 32
@dac_deemph_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92], [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32kHz\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"44.1kHz\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"48kHz\00", [26 x i8] zeroinitializer }, align 32
@speaker_mode_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.93, ptr @.str.94], [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Class D\00", [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Class AB\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IN1\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IN2\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Mixer\00", [26 x i8] zeroinitializer }, align 32
@mixer = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.113 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.115 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LINEOUT PGA\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Speaker PGA\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Speaker\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LINEOUT\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKN\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKP\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLK_SYS\00", [24 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLK_DSP\00", [24 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TOCLK\00", [26 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TSENSE\00", [25 x i8] zeroinitializer }, align 32
@wm9081_dapm_widgets = internal constant { [14 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [616 x i8] } { [14 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 11, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 5, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 11, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 11, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 11, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 14, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @clk_sys_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 14, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 14, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 11, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [616 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IN1 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IN2 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Playback Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@clk_sys_event.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.117, ptr @.str.4, ptr @.str.118, i8 0, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_wm9081\00", [17 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_sys_event\00", [18 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Using %dHz MCLK\0A\00", [47 x i8] zeroinitializer }, align 32
@clk_sys_event.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.117, ptr @.str.4, ptr @.str.119, i8 0, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Using %dHz MCLK with FLL\0A\00", [38 x i8] zeroinitializer }, align 32
@clk_sys_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.117, ptr @.str.4, i32 745, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"System clock not configured\0A\00", [35 x i8] zeroinitializer }, align 32
@clk_sys_event._entry_ptr = internal global ptr @clk_sys_event._entry, section ".printk_index", align 4
@clk_sys_rates = internal constant { [10 x %struct.anon.108], [48 x i8] } { [10 x %struct.anon.108] [%struct.anon.108 { i32 64, i32 0 }, %struct.anon.108 { i32 128, i32 1 }, %struct.anon.108 { i32 192, i32 2 }, %struct.anon.108 { i32 256, i32 3 }, %struct.anon.108 { i32 384, i32 4 }, %struct.anon.108 { i32 512, i32 5 }, %struct.anon.108 { i32 768, i32 6 }, %struct.anon.108 { i32 1024, i32 7 }, %struct.anon.108 { i32 1408, i32 8 }, %struct.anon.108 { i32 1536, i32 9 }], [48 x i8] zeroinitializer }, align 32
@configure_clock.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.121, ptr @.str.4, ptr @.str.122, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"configure_clock\00", [16 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CLK_SYS is %dHz\0A\00", [47 x i8] zeroinitializer }, align 32
@wm9081_set_fll.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.123, ptr @.str.4, ptr @.str.124, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm9081_set_fll\00", [17 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FLL disabled\0A\00", [18 x i8] zeroinitializer }, align 32
@wm9081_set_fll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.4, i32 580, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown FLL ID %d\0A\00", [45 x i8] zeroinitializer }, align 32
@wm9081_set_fll._entry_ptr = internal global ptr @wm9081_set_fll._entry, section ".printk_index", align 4
@wm9081_set_fll.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.123, ptr @.str.4, ptr @.str.126, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"FLL enabled at %dHz->%dHz\0A\00", [37 x i8] zeroinitializer }, align 32
@fll_factors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.4, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Can't scale %dMHz input down to <=13.5MHz\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fll_factors\00", [20 x i8] zeroinitializer }, align 32
@fll_factors._entry_ptr = internal global ptr @fll_factors._entry, section ".printk_index", align 4
@fll_factors.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.128, ptr @.str.4, ptr @.str.129, i8 0, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Fref=%u Fout=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@fll_factors._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.128, ptr @.str.4, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Unable to find FLL_OUTDIV for Fout=%uHz\0A\00", [53 x i8] zeroinitializer }, align 32
@fll_factors._entry_ptr.132 = internal global ptr @fll_factors._entry.130, section ".printk_index", align 4
@fll_factors.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.128, ptr @.str.4, ptr @.str.133, i8 0, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Fvco=%dHz\0A\00", [21 x i8] zeroinitializer }, align 32
@fll_fratios = internal constant { [5 x %struct.anon.109], [48 x i8] } { [5 x %struct.anon.109] [%struct.anon.109 { i32 0, i32 64000, i16 4, i32 16 }, %struct.anon.109 { i32 64000, i32 128000, i16 3, i32 8 }, %struct.anon.109 { i32 128000, i32 256000, i16 2, i32 4 }, %struct.anon.109 { i32 256000, i32 1000000, i16 1, i32 2 }, %struct.anon.109 { i32 1000000, i32 13500000, i16 0, i32 1 }], [48 x i8] zeroinitializer }, align 32
@fll_factors._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.128, ptr @.str.4, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Unable to find FLL_FRATIO for Fref=%uHz\0A\00", [53 x i8] zeroinitializer }, align 32
@fll_factors._entry_ptr.136 = internal global ptr @fll_factors._entry.134, section ".printk_index", align 4
@fll_factors.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.128, ptr @.str.4, ptr @.str.137, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Nmod=%d\0A\00", [23 x i8] zeroinitializer }, align 32
@fll_factors.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.128, ptr @.str.4, ptr @.str.138, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"N=%x K=%x FLL_FRATIO=%x FLL_OUTDIV=%x FLL_CLK_REF_DIV=%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AIF\00", [28 x i8] zeroinitializer }, align 32
@wm9081_probe.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.140, ptr @.str.4, ptr @.str.141, i8 1, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm9081_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No ReTune Mobile data, using normal EQ\0A\00", [56 x i8] zeroinitializer }, align 32
@wm9081_eq_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.143 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.145 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.147 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.149 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.150, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.151 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ1 Volume\00", [21 x i8] zeroinitializer }, align 32
@eq_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 42, i32 42, i32 11, i32 11, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ2 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 42, i32 42, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ3 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 42, i32 42, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ4 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 43, i32 43, i32 11, i32 11, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ5 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 43, i32 43, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.152 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm9081-hifi\00", [20 x i8] zeroinitializer }, align 32
@wm9081_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @wm9081_set_dai_fmt, ptr null, ptr @wm9081_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm9081_mute, ptr null, ptr null, ptr @wm9081_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@wm9081_hw_params.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.153, ptr @.str.4, ptr @.str.154, i8 1, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm9081_hw_params\00", [47 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Target BCLK is %dHz\0A\00", [43 x i8] zeroinitializer }, align 32
@wm9081_hw_params.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.153, ptr @.str.4, ptr @.str.155, i8 1, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Selected CLK_SYS_RATIO of %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sample_rates = internal constant { [11 x %struct.anon.110], [40 x i8] } { [11 x %struct.anon.110] [%struct.anon.110 { i32 8000, i32 0 }, %struct.anon.110 { i32 11025, i32 1 }, %struct.anon.110 { i32 12000, i32 2 }, %struct.anon.110 { i32 16000, i32 3 }, %struct.anon.110 { i32 22050, i32 4 }, %struct.anon.110 { i32 24000, i32 5 }, %struct.anon.110 { i32 32000, i32 6 }, %struct.anon.110 { i32 44100, i32 7 }, %struct.anon.110 { i32 48000, i32 8 }, %struct.anon.110 { i32 88200, i32 9 }, %struct.anon.110 { i32 96000, i32 10 }], [40 x i8] zeroinitializer }, align 32
@wm9081_hw_params.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.153, ptr @.str.4, ptr @.str.156, i8 1, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Selected SAMPLE_RATE of %dHz\0A\00", [34 x i8] zeroinitializer }, align 32
@bclk_divs = internal constant { [21 x %struct.anon.111], [56 x i8] } { [21 x %struct.anon.111] [%struct.anon.111 { i32 10, i32 0 }, %struct.anon.111 { i32 15, i32 1 }, %struct.anon.111 { i32 20, i32 2 }, %struct.anon.111 { i32 30, i32 3 }, %struct.anon.111 { i32 40, i32 4 }, %struct.anon.111 { i32 50, i32 5 }, %struct.anon.111 { i32 55, i32 6 }, %struct.anon.111 { i32 60, i32 7 }, %struct.anon.111 { i32 80, i32 8 }, %struct.anon.111 { i32 100, i32 9 }, %struct.anon.111 { i32 110, i32 10 }, %struct.anon.111 { i32 120, i32 11 }, %struct.anon.111 { i32 160, i32 12 }, %struct.anon.111 { i32 200, i32 13 }, %struct.anon.111 { i32 220, i32 14 }, %struct.anon.111 { i32 240, i32 15 }, %struct.anon.111 { i32 250, i32 16 }, %struct.anon.111 { i32 300, i32 17 }, %struct.anon.111 { i32 320, i32 18 }, %struct.anon.111 { i32 440, i32 19 }, %struct.anon.111 { i32 480, i32 20 }], [56 x i8] zeroinitializer }, align 32
@wm9081_hw_params.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.153, ptr @.str.4, ptr @.str.157, i8 1, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Selected BCLK_DIV of %d for %dHz BCLK\0A\00", [57 x i8] zeroinitializer }, align 32
@wm9081_hw_params.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.153, ptr @.str.4, ptr @.str.158, i8 1, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.158 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LRCLK_RATE is %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wm9081_hw_params.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.116, ptr @.str.153, ptr @.str.4, ptr @.str.159, i8 1, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ReTune Mobile %s tuned for %dHz\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [57 x i64] [i64 55, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 16, i64 17, i64 18, i64 19, i64 20, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 38, i64 39, i64 40, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61]
@__sancov_gen_cov_switch_values.160 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.164 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.165 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.167 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.168 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.169 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@___asan_gen_.170 = private unnamed_addr constant [18 x i8] c"wm9081_i2c_driver\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1372, i32 26 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1374, i32 11 }
@___asan_gen_.176 = private unnamed_addr constant [14 x i8] c"wm9081_i2c_id\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1366, i32 35 }
@___asan_gen_.179 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [14 x i8] c"wm9081_regmap\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1290, i32 35 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1316, i32 19 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1319, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1325, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1329, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1335, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [25 x i8] c"soc_component_dev_wm9081\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1275, i32 46 }
@___asan_gen_.227 = private unnamed_addr constant [11 x i8] c"wm9081_dai\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1243, i32 34 }
@___asan_gen_.230 = private unnamed_addr constant [11 x i8] c"wm9081_reg\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 29, i32 33 }
@___asan_gen_.233 = private unnamed_addr constant [20 x i8] c"wm9081_snd_controls\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 387, i32 38 }
@___asan_gen_.236 = private unnamed_addr constant [19 x i8] c"wm9081_audio_paths\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 789, i32 40 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 388, i32 1 }
@___asan_gen_.242 = private unnamed_addr constant [7 x i8] c"in_tlv\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 253, i32 14 }
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 389, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 391, i32 1 }
@___asan_gen_.253 = private unnamed_addr constant [8 x i8] c"dac_tlv\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 254, i32 14 }
@___asan_gen_.256 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 393, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 394, i32 1 }
@___asan_gen_.264 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 395, i32 1 }
@___asan_gen_.268 = private unnamed_addr constant [8 x i8] c"out_tlv\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 255, i32 14 }
@___asan_gen_.271 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 397, i32 1 }
@___asan_gen_.275 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 398, i32 1 }
@___asan_gen_.279 = private unnamed_addr constant [9 x i8] c"drc_high\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 266, i32 8 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 399, i32 1 }
@___asan_gen_.285 = private unnamed_addr constant [8 x i8] c"drc_low\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 276, i32 8 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 400, i32 1 }
@___asan_gen_.291 = private unnamed_addr constant [11 x i8] c"drc_in_tlv\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 239, i32 14 }
@___asan_gen_.294 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 401, i32 1 }
@___asan_gen_.298 = private unnamed_addr constant [12 x i8] c"drc_out_tlv\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 240, i32 14 }
@___asan_gen_.301 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 402, i32 1 }
@___asan_gen_.305 = private unnamed_addr constant [12 x i8] c"drc_min_tlv\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 241, i32 14 }
@___asan_gen_.308 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 403, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant [12 x i8] c"drc_max_tlv\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 242, i32 14 }
@___asan_gen_.315 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 404, i32 1 }
@___asan_gen_.319 = private unnamed_addr constant [8 x i8] c"drc_atk\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 293, i32 8 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 405, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant [8 x i8] c"drc_dcy\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 307, i32 8 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 406, i32 1 }
@___asan_gen_.331 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 407, i32 1 }
@___asan_gen_.335 = private unnamed_addr constant [11 x i8] c"drc_qr_tlv\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 248, i32 14 }
@___asan_gen_.338 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 408, i32 1 }
@___asan_gen_.342 = private unnamed_addr constant [11 x i8] c"drc_qr_dcy\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 315, i32 8 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 409, i32 1 }
@___asan_gen_.348 = private unnamed_addr constant [16 x i8] c"drc_startup_tlv\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 249, i32 14 }
@___asan_gen_.351 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 411, i32 1 }
@___asan_gen_.355 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 413, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 414, i32 1 }
@___asan_gen_.363 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 415, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 416, i32 1 }
@___asan_gen_.371 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 417, i32 1 }
@___asan_gen_.375 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 419, i32 1 }
@___asan_gen_.379 = private unnamed_addr constant [11 x i8] c"dac_deemph\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 324, i32 8 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 420, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant [13 x i8] c"speaker_mode\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 332, i32 8 }
@___asan_gen_.388 = private unnamed_addr constant [14 x i8] c"drc_high_text\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 257, i32 20 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 258, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 259, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 260, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 261, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 262, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 263, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant [13 x i8] c"drc_low_text\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 268, i32 20 }
@___asan_gen_.412 = private unnamed_addr constant [13 x i8] c"drc_atk_text\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 278, i32 20 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 279, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 281, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 282, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 283, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 284, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 285, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 286, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 287, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 288, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 289, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 290, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant [13 x i8] c"drc_dcy_text\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 295, i32 20 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 296, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 297, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 298, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 299, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 300, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 301, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 302, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 303, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 304, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant [16 x i8] c"drc_qr_dcy_text\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 309, i32 20 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 310, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [16 x i8] c"dac_deemph_text\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 317, i32 20 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 318, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 319, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 320, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 321, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant [18 x i8] c"speaker_mode_text\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 327, i32 20 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 328, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 329, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 764, i32 1 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 765, i32 1 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 767, i32 1 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 769, i32 1 }
@___asan_gen_.520 = private unnamed_addr constant [6 x i8] c"mixer\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 431, i32 38 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 772, i32 1 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 774, i32 1 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 775, i32 1 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 777, i32 1 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 778, i32 1 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 779, i32 1 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 781, i32 1 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 783, i32 1 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 784, i32 1 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 785, i32 1 }
@___asan_gen_.553 = private unnamed_addr constant [20 x i8] c"wm9081_dapm_widgets\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 763, i32 41 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 432, i32 1 }
@___asan_gen_.559 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 433, i32 1 }
@___asan_gen_.563 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 434, i32 1 }
@___asan_gen_.567 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 738, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 741, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 745, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant [14 x i8] c"clk_sys_rates\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 88, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 724, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 560, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 580, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 628, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 476, i32 4 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 483, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 495, i32 4 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 502, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant [12 x i8] c"fll_fratios\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 454, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 513, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 522, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 537, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 792, i32 17 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1266, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant [19 x i8] c"wm9081_eq_controls\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 423, i32 38 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 424, i32 1 }
@___asan_gen_.661 = private unnamed_addr constant [7 x i8] c"eq_tlv\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 251, i32 14 }
@___asan_gen_.664 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 425, i32 1 }
@___asan_gen_.668 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 426, i32 1 }
@___asan_gen_.672 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 427, i32 1 }
@___asan_gen_.676 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 428, i32 1 }
@___asan_gen_.680 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1244, i32 10 }
@___asan_gen_.684 = private unnamed_addr constant [15 x i8] c"wm9081_dai_ops\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1232, i32 37 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1047, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1065, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant [13 x i8] c"sample_rates\00", align 1
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 104, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1081, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant [10 x i8] c"bclk_divs\00", align 1
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 121, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1100, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1105, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.712 = private constant [29 x i8] c"../sound/soc/codecs/wm9081.c\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1126, i32 3 }
@llvm.compiler.used = appending global [216 x ptr] [ptr @__UNIQUE_ID_author312, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file313, ptr @__UNIQUE_ID_license314, ptr @__exitcall_wm9081_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_wm9081__310_1381_wm9081_i2c_driver_init6, ptr @clk_sys_event._entry, ptr @clk_sys_event._entry_ptr, ptr @fll_factors._entry, ptr @fll_factors._entry.130, ptr @fll_factors._entry.134, ptr @fll_factors._entry_ptr, ptr @fll_factors._entry_ptr.132, ptr @fll_factors._entry_ptr.136, ptr @wm9081_i2c_driver_exit, ptr @wm9081_i2c_probe._entry, ptr @wm9081_i2c_probe._entry.10, ptr @wm9081_i2c_probe._entry.13, ptr @wm9081_i2c_probe._entry.7, ptr @wm9081_i2c_probe._entry_ptr, ptr @wm9081_i2c_probe._entry_ptr.12, ptr @wm9081_i2c_probe._entry_ptr.15, ptr @wm9081_i2c_probe._entry_ptr.9, ptr @wm9081_set_fll._entry, ptr @wm9081_set_fll._entry_ptr, ptr @wm9081_i2c_driver, ptr @.str, ptr @wm9081_i2c_id, ptr @wm9081_i2c_probe._key, ptr @wm9081_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @soc_component_dev_wm9081, ptr @wm9081_dai, ptr @wm9081_reg, ptr @wm9081_snd_controls, ptr @wm9081_audio_paths, ptr @.str.16, ptr @in_tlv, ptr @.compoundliteral, ptr @.str.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @dac_tlv, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @out_tlv, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @drc_high, ptr @.str.30, ptr @drc_low, ptr @.str.31, ptr @drc_in_tlv, ptr @.compoundliteral.32, ptr @.str.33, ptr @drc_out_tlv, ptr @.compoundliteral.34, ptr @.str.35, ptr @drc_min_tlv, ptr @.compoundliteral.36, ptr @.str.37, ptr @drc_max_tlv, ptr @.compoundliteral.38, ptr @.str.39, ptr @drc_atk, ptr @.str.40, ptr @drc_dcy, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @drc_qr_tlv, ptr @.compoundliteral.44, ptr @.str.45, ptr @drc_qr_dcy, ptr @.str.46, ptr @drc_startup_tlv, ptr @.compoundliteral.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @dac_deemph, ptr @.str.61, ptr @speaker_mode, ptr @drc_high_text, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @drc_low_text, ptr @drc_atk_text, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @drc_dcy_text, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @drc_qr_dcy_text, ptr @.str.88, ptr @dac_deemph_text, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @speaker_mode_text, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @mixer, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @wm9081_dapm_widgets, ptr @.str.110, ptr @.compoundliteral.111, ptr @.str.112, ptr @.compoundliteral.113, ptr @.str.114, ptr @.compoundliteral.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @clk_sys_rates, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.133, ptr @fll_fratios, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @wm9081_eq_controls, ptr @.str.142, ptr @eq_tlv, ptr @.compoundliteral.143, ptr @.str.144, ptr @.compoundliteral.145, ptr @.str.146, ptr @.compoundliteral.147, ptr @.str.148, ptr @.compoundliteral.149, ptr @.str.150, ptr @.compoundliteral.151, ptr @.str.152, ptr @wm9081_dai_ops, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @sample_rates, ptr @.str.156, ptr @bclk_divs, ptr @.str.157, ptr @.str.158, ptr @.str.159], section "llvm.metadata"
@0 = internal global [200 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9081_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9081_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9081_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9081_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9081_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9081_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9081_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9081_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_wm9081 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9081_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9081_reg to i32), i32 424, i32 544, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9081_snd_controls to i32), i32 1296, i32 1632, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9081_audio_paths to i32), i32 884, i32 1088, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_high to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_low to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_in_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_out_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_min_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_max_tlv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_atk to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_dcy to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_qr_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_qr_dcy to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_startup_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_deemph to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speaker_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_high_text to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_low_text to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_atk_text to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_dcy_text to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drc_qr_dcy_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_deemph_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speaker_mode_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixer to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9081_dapm_widgets to i32), i32 2520, i32 3136, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_sys_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_sys_rates to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9081_set_fll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_factors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_factors._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_fratios to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_factors._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9081_eq_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm9081_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_rates to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bclk_divs to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm9081_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wm9081_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm9081_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @wm9081_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm9081_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !367
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @wm9081_regmap, ptr noundef nonnull @wm9081_i2c_probe._key, ptr noundef nonnull @.str.1) #8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %3) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = call i32 @regmap_read(ptr noundef %call1, i32 noundef 0, ptr noundef nonnull %reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call10) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36993, i32 %5)
  %cmp18.not = icmp eq i32 %5, 36993
  br i1 %cmp18.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %5) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %call.i87 = call i32 @regmap_write(ptr noundef %7, i32 noundef 0, i32 noundef 36993) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %cmp27 = icmp slt i32 %call.i87, 0
  br i1 %cmp27, label %do.end31, label %if.end33

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %8 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end33.if.end39_crit_edge, label %if.then36

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %pdata = getelementptr inbounds %struct.wm9081_priv, ptr %call.i, i32 0, i32 10
  %10 = call ptr @memcpy(ptr %pdata, ptr %9, i32 12)
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33.if.end39_crit_edge
  %pdata40 = getelementptr inbounds %struct.wm9081_priv, ptr %call.i, i32 0, i32 10
  %11 = ptrtoint ptr %pdata40 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pdata40, align 4, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool41.not = icmp eq i8 %12, 0
  %spec.store.select = select i1 %tobool41.not, i32 0, i32 32768
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.store.select, ptr %reg, align 4
  %irq_cmos = getelementptr inbounds %struct.wm9081_priv, ptr %call.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %irq_cmos to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %irq_cmos, align 1, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool45.not = icmp eq i8 %15, 0
  br i1 %tobool45.not, label %if.then46, label %if.end39.if.end48_crit_edge

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then46:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %or47 = or i32 %spec.store.select, 1
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or47, ptr %reg, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end39.if.end48_crit_edge
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg, align 4
  %call.i89 = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 29, i32 noundef 32769, i32 noundef %20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  call void @regcache_cache_only(ptr noundef %22, i1 noundef zeroext true) #8
  %call53 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_wm9081, ptr noundef nonnull @wm9081_dai, i32 noundef 1) #8
  %23 = call i32 @llvm.smin.i32(i32 %call53, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end31, %do.end22, %do.end15, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then4 ], [ %call10, %do.end15 ], [ -22, %do.end22 ], [ %call.i87, %do.end31 ], [ -12, %entry.cleanup_crit_edge ], [ %23, %if.end48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm9081_i2c_remove(ptr nocapture noundef readnone %client) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm9081_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge1
    i32 3, label %entry.return_crit_edge2
    i32 4, label %entry.return_crit_edge3
    i32 5, label %entry.return_crit_edge4
    i32 7, label %entry.return_crit_edge5
    i32 8, label %entry.return_crit_edge6
    i32 9, label %entry.return_crit_edge7
    i32 10, label %entry.return_crit_edge8
    i32 11, label %entry.return_crit_edge9
    i32 12, label %entry.return_crit_edge10
    i32 13, label %entry.return_crit_edge11
    i32 14, label %entry.return_crit_edge12
    i32 16, label %entry.return_crit_edge13
    i32 17, label %entry.return_crit_edge14
    i32 18, label %entry.return_crit_edge15
    i32 19, label %entry.return_crit_edge16
    i32 20, label %entry.return_crit_edge17
    i32 22, label %entry.return_crit_edge18
    i32 23, label %entry.return_crit_edge19
    i32 24, label %entry.return_crit_edge20
    i32 25, label %entry.return_crit_edge21
    i32 26, label %entry.return_crit_edge22
    i32 27, label %entry.return_crit_edge23
    i32 28, label %entry.return_crit_edge24
    i32 29, label %entry.return_crit_edge25
    i32 30, label %entry.return_crit_edge26
    i32 31, label %entry.return_crit_edge27
    i32 32, label %entry.return_crit_edge28
    i32 33, label %entry.return_crit_edge29
    i32 34, label %entry.return_crit_edge30
    i32 35, label %entry.return_crit_edge31
    i32 38, label %entry.return_crit_edge32
    i32 39, label %entry.return_crit_edge33
    i32 40, label %entry.return_crit_edge34
    i32 42, label %entry.return_crit_edge35
    i32 43, label %entry.return_crit_edge36
    i32 44, label %entry.return_crit_edge37
    i32 45, label %entry.return_crit_edge38
    i32 46, label %entry.return_crit_edge39
    i32 47, label %entry.return_crit_edge40
    i32 48, label %entry.return_crit_edge41
    i32 49, label %entry.return_crit_edge42
    i32 50, label %entry.return_crit_edge43
    i32 51, label %entry.return_crit_edge44
    i32 52, label %entry.return_crit_edge45
    i32 53, label %entry.return_crit_edge46
    i32 54, label %entry.return_crit_edge47
    i32 55, label %entry.return_crit_edge48
    i32 56, label %entry.return_crit_edge49
    i32 57, label %entry.return_crit_edge50
    i32 58, label %entry.return_crit_edge51
    i32 59, label %entry.return_crit_edge52
    i32 60, label %entry.return_crit_edge53
    i32 61, label %entry.return_crit_edge54
  ]

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm9081_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg)
  %switch.selectcmp.case1 = icmp eq i32 %reg, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %reg)
  %switch.selectcmp.case2 = icmp eq i32 %reg, 26
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  ret i1 %switch.selectcmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm9081_probe(ptr noundef %component) #2 align 64 {
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
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2, i32 noundef 64, i32 noundef 64) #8
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 3, i32 noundef 64, i32 noundef 64) #8
  %num_retune_configs = getelementptr inbounds %struct.wm9081_priv, ptr %3, i32 0, i32 10, i32 3
  %4 = ptrtoint ptr %num_retune_configs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_retune_configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9081_probe.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9081_probe, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !369

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9081_probe.__UNIQUE_ID_ddebug309, ptr noundef %7, ptr noundef nonnull @.str.141) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %call8 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @wm9081_eq_controls, i32 noundef 5) #8
  br label %if.end9

if.end9:                                          ; preds = %do.end, %entry.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm9081_set_sysclk(ptr nocapture noundef readonly %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_id.off = add i32 %clk_id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %clk_id.off)
  %switch = icmp ult i32 %clk_id.off, 2
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %sysclk_source = getelementptr inbounds %struct.wm9081_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sysclk_source to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %clk_id, ptr %sysclk_source, align 4
  %mclk_rate = getelementptr inbounds %struct.wm9081_priv, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %freq, ptr %mclk_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm9081_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb14
    i32 2, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 6, i32 noundef 2) #8
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 16, i32 noundef 0) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %sw.bb3.if.end_crit_edge

sw.bb3.if.end_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.bb3
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  tail call void @regcache_cache_only(ptr noundef %8, i1 noundef zeroext false) #8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %call6 = tail call i32 @regcache_sync(ptr noundef %10) #8
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 8, i32 noundef 4, i32 noundef 0) #8
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 66, i32 noundef 66) #8
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 14, i32 noundef 14) #8
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then
  %__ms.034 = phi i32 [ 100, %if.then ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.034, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 8, i32 noundef 0) #8
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 64, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %while.end, %sw.bb3.if.end_crit_edge
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 6, i32 noundef 4) #8
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 16, i32 noundef 16) #8
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 66, i32 noundef 64) #8
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 14, i32 noundef 8) #8
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 8, i32 noundef 4, i32 noundef 4) #8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  tail call void @regcache_cache_only(ptr noundef %13, i1 noundef zeroext true) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %if.end, %sw.bb, %entry.sw.epilog_crit_edge
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
define internal i32 @speaker_mode_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 10) #8
  %and = lshr i32 %call1, 6
  %and.lobit = and i32 %and, 1
  %2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and.lobit, ptr %2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speaker_mode_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 11) #8
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 10) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %and = lshr i32 %call2, 6
  %and.lobit = and i32 %and, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and.lobit)
  %cmp3 = icmp eq i32 %3, %and.lobit
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and5 = and i32 %call1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  %and12 = and i32 %call2, -89
  %reg2.0.v = select i1 %tobool10.not, i32 24, i32 64
  %reg2.0 = or i32 %reg2.0.v, %and12
  %call16 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 10, i32 noundef %reg2.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sys_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %sysclk_source = getelementptr inbounds %struct.wm9081_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %sysclk_source to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk_source, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %7, label %do.end26 [
    i32 1, label %do.body
    i32 2, label %do.body6
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_sys_event.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_sys_event, %if.then)) #8
          to label %sw.epilog [label %if.then], !srcloc !369

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %mclk_rate = getelementptr inbounds %struct.wm9081_priv, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mclk_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @clk_sys_event.__UNIQUE_ID_ddebug301, ptr noundef %10, ptr noundef nonnull @.str.118, i32 noundef %12) #8
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clk_sys_event.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_sys_event, %if.then18)) #8
          to label %sw.epilog [label %if.then18], !srcloc !369

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %mclk_rate20 = getelementptr inbounds %struct.wm9081_priv, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %mclk_rate20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mclk_rate20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @clk_sys_event.__UNIQUE_ID_ddebug302, ptr noundef %14, ptr noundef nonnull @.str.119, i32 noundef %16) #8
  br label %sw.epilog

do.end26:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.120) #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.then18, %do.body6, %if.then, %do.body
  %17 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %event, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb28
    i32 8, label %sw.bb30
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb28:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = tail call fastcc i32 @configure_clock(ptr noundef %add.ptr.i)
  br label %cleanup

sw.bb30:                                          ; preds = %sw.epilog
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i, align 4
  %fll_fref.i = getelementptr inbounds %struct.wm9081_priv, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %fll_fref.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fll_fref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp eq i32 %23, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb30.if.end.i_crit_edge

sw.bb30.if.end.i_crit_edge:                       ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb30
  %fll_fout.i = getelementptr inbounds %struct.wm9081_priv, ptr %21, i32 0, i32 8
  %24 = ptrtoint ptr %fll_fout.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fll_fout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp1.i = icmp eq i32 %25, 0
  br i1 %cmp1.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %sw.bb30.if.end.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9081_set_fll.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clk_sys_event, %if.then7.i)) #8
          to label %do.end.i [label %if.then7.i], !srcloc !369

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9081_set_fll.__UNIQUE_ID_ddebug298, ptr noundef %27, ptr noundef nonnull @.str.124) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %if.end.i
  %28 = ptrtoint ptr %fll_fref.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %fll_fref.i, align 4
  %fll_fout10.i = getelementptr inbounds %struct.wm9081_priv, ptr %21, i32 0, i32 8
  %29 = ptrtoint ptr %fll_fout10.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %fll_fout10.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %land.lhs.true.i.cleanup_crit_edge, %sw.bb28, %sw.epilog.cleanup_crit_edge, %do.end26
  %retval.0 = phi i32 [ -22, %do.end26 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.bb28 ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @configure_clock(ptr noundef %component) unnamed_addr #2 align 64 {
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
  %sysclk_source = getelementptr inbounds %struct.wm9081_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sysclk_source to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysclk_source, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mclk_rate = getelementptr inbounds %struct.wm9081_priv, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12225000, i32 %8)
  %cmp = icmp sgt i32 %8, 12225000
  %div124126 = zext i1 %cmp to i32
  %spec.select149 = lshr i32 %8, %div124126
  %9 = getelementptr inbounds %struct.wm9081_priv, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select149, ptr %9, align 4
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i, align 4
  %fll_fref.i = getelementptr inbounds %struct.wm9081_priv, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %fll_fref.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fll_fref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.if.end.i_crit_edge

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %fll_fout.i = getelementptr inbounds %struct.wm9081_priv, ptr %14, i32 0, i32 8
  %17 = ptrtoint ptr %fll_fout.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fll_fout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1.i = icmp eq i32 %18, 0
  br i1 %cmp1.i, label %land.lhs.true.i.sw.epilog_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9081_set_fll.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@configure_clock, %if.then7.i)) #8
          to label %do.end.i [label %if.then7.i], !srcloc !369

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9081_set_fll.__UNIQUE_ID_ddebug298, ptr noundef %20, ptr noundef nonnull @.str.124) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %if.end.i
  %21 = ptrtoint ptr %fll_fref.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %fll_fref.i, align 4
  %fll_fout10.i = getelementptr inbounds %struct.wm9081_priv, ptr %14, i32 0, i32 8
  %22 = ptrtoint ptr %fll_fout10.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %fll_fout10.i, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %master = getelementptr inbounds %struct.wm9081_priv, ptr %3, i32 0, i32 6
  %23 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %master, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %sw.bb5.if.else18_crit_edge, label %land.lhs.true

sw.bb5.if.else18_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else18

land.lhs.true:                                    ; preds = %sw.bb5
  %bclk = getelementptr inbounds %struct.wm9081_priv, ptr %3, i32 0, i32 5
  %25 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool6.not = icmp eq i32 %26, 0
  br i1 %tobool6.not, label %land.lhs.true.if.else18_crit_edge, label %for.cond.preheader

land.lhs.true.if.else18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else18

for.cond.preheader:                               ; preds = %land.lhs.true
  %fs = getelementptr inbounds %struct.wm9081_priv, ptr %3, i32 0, i32 4
  %27 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fs, align 4
  %mul = shl i32 %28, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %26)
  %cmp10.not = icmp sge i32 %mul, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul)
  %cmp12 = icmp sgt i32 %mul, 3000000
  %or.cond = and i1 %cmp10.not, %cmp12
  br i1 %or.cond, label %for.cond.preheader.if.end40_crit_edge, label %for.inc

for.cond.preheader.if.end40_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc:                                          ; preds = %for.cond.preheader
  %mul.1 = shl i32 %28, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1, i32 %26)
  %cmp10.not.1 = icmp sge i32 %mul.1, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul.1)
  %cmp12.1 = icmp sgt i32 %mul.1, 3000000
  %or.cond.1 = and i1 %cmp10.not.1, %cmp12.1
  br i1 %or.cond.1, label %for.inc.if.end40_crit_edge, label %for.inc.1

for.inc.if.end40_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc.1:                                        ; preds = %for.inc
  %mul.2 = mul i32 %28, 192
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2, i32 %26)
  %cmp10.not.2 = icmp sge i32 %mul.2, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul.2)
  %cmp12.2 = icmp sgt i32 %mul.2, 3000000
  %or.cond.2 = and i1 %cmp10.not.2, %cmp12.2
  br i1 %or.cond.2, label %for.inc.1.if.end40_crit_edge, label %for.inc.2

for.inc.1.if.end40_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc.2:                                        ; preds = %for.inc.1
  %mul.3 = shl i32 %28, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.3, i32 %26)
  %cmp10.not.3 = icmp sge i32 %mul.3, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul.3)
  %cmp12.3 = icmp sgt i32 %mul.3, 3000000
  %or.cond.3 = and i1 %cmp10.not.3, %cmp12.3
  br i1 %or.cond.3, label %for.inc.2.if.end40_crit_edge, label %for.inc.3

for.inc.2.if.end40_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc.3:                                        ; preds = %for.inc.2
  %mul.4 = mul i32 %28, 384
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.4, i32 %26)
  %cmp10.not.4 = icmp sge i32 %mul.4, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul.4)
  %cmp12.4 = icmp sgt i32 %mul.4, 3000000
  %or.cond.4 = and i1 %cmp10.not.4, %cmp12.4
  br i1 %or.cond.4, label %for.inc.3.if.end40_crit_edge, label %for.inc.4

for.inc.3.if.end40_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc.4:                                        ; preds = %for.inc.3
  %mul.5 = shl i32 %28, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.5, i32 %26)
  %cmp10.not.5 = icmp sge i32 %mul.5, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul.5)
  %cmp12.5 = icmp sgt i32 %mul.5, 3000000
  %or.cond.5 = and i1 %cmp10.not.5, %cmp12.5
  br i1 %or.cond.5, label %for.inc.4.if.end40_crit_edge, label %for.inc.5

for.inc.4.if.end40_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc.5:                                        ; preds = %for.inc.4
  %mul.6 = mul i32 %28, 768
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.6, i32 %26)
  %cmp10.not.6 = icmp sge i32 %mul.6, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul.6)
  %cmp12.6 = icmp sgt i32 %mul.6, 3000000
  %or.cond.6 = and i1 %cmp10.not.6, %cmp12.6
  br i1 %or.cond.6, label %for.inc.5.if.end40_crit_edge, label %for.inc.6

for.inc.5.if.end40_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc.6:                                        ; preds = %for.inc.5
  %mul.7 = shl i32 %28, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.7, i32 %26)
  %cmp10.not.7 = icmp sge i32 %mul.7, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul.7)
  %cmp12.7 = icmp sgt i32 %mul.7, 3000000
  %or.cond.7 = and i1 %cmp10.not.7, %cmp12.7
  br i1 %or.cond.7, label %for.inc.6.if.end40_crit_edge, label %for.inc.7

for.inc.6.if.end40_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc.7:                                        ; preds = %for.inc.6
  %mul.8 = mul i32 %28, 1408
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.8, i32 %26)
  %cmp10.not.8 = icmp sge i32 %mul.8, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul.8)
  %cmp12.8 = icmp sgt i32 %mul.8, 3000000
  %or.cond.8 = and i1 %cmp10.not.8, %cmp12.8
  br i1 %or.cond.8, label %for.inc.7.if.end40_crit_edge, label %for.inc.8

for.inc.7.if.end40_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc.8:                                        ; preds = %for.inc.7
  %mul.9 = mul i32 %28, 1536
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.9, i32 %26)
  %cmp10.not.9 = icmp sge i32 %mul.9, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul.9)
  %cmp12.9 = icmp sgt i32 %mul.9, 3000000
  %or.cond.9 = and i1 %cmp10.not.9, %cmp12.9
  br i1 %or.cond.9, label %for.inc.8.if.end40_crit_edge, label %for.inc.8.cleanup_crit_edge

for.inc.8.cleanup_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.8.if.end40_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.else18:                                        ; preds = %land.lhs.true.if.else18_crit_edge, %sw.bb5.if.else18_crit_edge
  %fs19 = getelementptr inbounds %struct.wm9081_priv, ptr %3, i32 0, i32 4
  %29 = ptrtoint ptr %fs19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fs19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool20.not = icmp eq i32 %30, 0
  br i1 %tobool20.not, label %if.else18.if.end40_crit_edge, label %for.body24.preheader

if.else18.if.end40_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.body24.preheader:                             ; preds = %if.else18
  %mul28 = shl i32 %30, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul28)
  %cmp29 = icmp sgt i32 %mul28, 3000000
  br i1 %cmp29, label %for.body24.preheader.if.end40_crit_edge, label %for.inc32

for.body24.preheader.if.end40_crit_edge:          ; preds = %for.body24.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc32:                                        ; preds = %for.body24.preheader
  %mul28.1 = shl i32 %30, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul28.1)
  %cmp29.1 = icmp sgt i32 %mul28.1, 3000000
  br i1 %cmp29.1, label %for.inc32.if.end40_crit_edge, label %for.inc32.1

for.inc32.if.end40_crit_edge:                     ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc32.1:                                      ; preds = %for.inc32
  %mul28.2 = mul i32 %30, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul28.2)
  %cmp29.2 = icmp sgt i32 %mul28.2, 3000000
  br i1 %cmp29.2, label %for.inc32.1.if.end40_crit_edge, label %for.inc32.2

for.inc32.1.if.end40_crit_edge:                   ; preds = %for.inc32.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc32.2:                                      ; preds = %for.inc32.1
  %mul28.3 = shl i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul28.3)
  %cmp29.3 = icmp sgt i32 %mul28.3, 3000000
  br i1 %cmp29.3, label %for.inc32.2.if.end40_crit_edge, label %for.inc32.3

for.inc32.2.if.end40_crit_edge:                   ; preds = %for.inc32.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc32.3:                                      ; preds = %for.inc32.2
  %mul28.4 = mul i32 %30, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul28.4)
  %cmp29.4 = icmp sgt i32 %mul28.4, 3000000
  br i1 %cmp29.4, label %for.inc32.3.if.end40_crit_edge, label %for.inc32.4

for.inc32.3.if.end40_crit_edge:                   ; preds = %for.inc32.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc32.4:                                      ; preds = %for.inc32.3
  %mul28.5 = shl i32 %30, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul28.5)
  %cmp29.5 = icmp sgt i32 %mul28.5, 3000000
  br i1 %cmp29.5, label %for.inc32.4.if.end40_crit_edge, label %for.inc32.5

for.inc32.4.if.end40_crit_edge:                   ; preds = %for.inc32.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc32.5:                                      ; preds = %for.inc32.4
  %mul28.6 = mul i32 %30, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul28.6)
  %cmp29.6 = icmp sgt i32 %mul28.6, 3000000
  br i1 %cmp29.6, label %for.inc32.5.if.end40_crit_edge, label %for.inc32.6

for.inc32.5.if.end40_crit_edge:                   ; preds = %for.inc32.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc32.6:                                      ; preds = %for.inc32.5
  %mul28.7 = shl i32 %30, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul28.7)
  %cmp29.7 = icmp sgt i32 %mul28.7, 3000000
  br i1 %cmp29.7, label %for.inc32.6.if.end40_crit_edge, label %for.inc32.7

for.inc32.6.if.end40_crit_edge:                   ; preds = %for.inc32.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc32.7:                                      ; preds = %for.inc32.6
  %mul28.8 = mul i32 %30, 1408
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul28.8)
  %cmp29.8 = icmp sgt i32 %mul28.8, 3000000
  br i1 %cmp29.8, label %for.inc32.7.if.end40_crit_edge, label %for.inc32.8

for.inc32.7.if.end40_crit_edge:                   ; preds = %for.inc32.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.inc32.8:                                      ; preds = %for.inc32.7
  %mul28.9 = mul i32 %30, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %mul28.9)
  %cmp29.9 = icmp sgt i32 %mul28.9, 3000000
  br i1 %cmp29.9, label %for.inc32.8.if.end40_crit_edge, label %for.inc32.8.cleanup_crit_edge

for.inc32.8.cleanup_crit_edge:                    ; preds = %for.inc32.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc32.8.if.end40_crit_edge:                   ; preds = %for.inc32.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.end40:                                         ; preds = %for.inc32.8.if.end40_crit_edge, %for.inc32.7.if.end40_crit_edge, %for.inc32.6.if.end40_crit_edge, %for.inc32.5.if.end40_crit_edge, %for.inc32.4.if.end40_crit_edge, %for.inc32.3.if.end40_crit_edge, %for.inc32.2.if.end40_crit_edge, %for.inc32.1.if.end40_crit_edge, %for.inc32.if.end40_crit_edge, %for.body24.preheader.if.end40_crit_edge, %if.else18.if.end40_crit_edge, %for.inc.8.if.end40_crit_edge, %for.inc.7.if.end40_crit_edge, %for.inc.6.if.end40_crit_edge, %for.inc.5.if.end40_crit_edge, %for.inc.4.if.end40_crit_edge, %for.inc.3.if.end40_crit_edge, %for.inc.2.if.end40_crit_edge, %for.inc.1.if.end40_crit_edge, %for.inc.if.end40_crit_edge, %for.cond.preheader.if.end40_crit_edge
  %new_sysclk.4 = phi i32 [ 12288000, %if.else18.if.end40_crit_edge ], [ %mul28, %for.body24.preheader.if.end40_crit_edge ], [ %mul28.1, %for.inc32.if.end40_crit_edge ], [ %mul28.2, %for.inc32.1.if.end40_crit_edge ], [ %mul28.3, %for.inc32.2.if.end40_crit_edge ], [ %mul28.4, %for.inc32.3.if.end40_crit_edge ], [ %mul28.5, %for.inc32.4.if.end40_crit_edge ], [ %mul28.6, %for.inc32.5.if.end40_crit_edge ], [ %mul28.7, %for.inc32.6.if.end40_crit_edge ], [ %mul28.8, %for.inc32.7.if.end40_crit_edge ], [ %mul28.9, %for.inc32.8.if.end40_crit_edge ], [ %mul, %for.cond.preheader.if.end40_crit_edge ], [ %mul.1, %for.inc.if.end40_crit_edge ], [ %mul.2, %for.inc.1.if.end40_crit_edge ], [ %mul.3, %for.inc.2.if.end40_crit_edge ], [ %mul.4, %for.inc.3.if.end40_crit_edge ], [ %mul.5, %for.inc.4.if.end40_crit_edge ], [ %mul.6, %for.inc.5.if.end40_crit_edge ], [ %mul.7, %for.inc.6.if.end40_crit_edge ], [ %mul.8, %for.inc.7.if.end40_crit_edge ], [ %mul.9, %for.inc.8.if.end40_crit_edge ]
  %mclk_rate41 = getelementptr inbounds %struct.wm9081_priv, ptr %3, i32 0, i32 2
  %31 = ptrtoint ptr %mclk_rate41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mclk_rate41, align 4
  %call42 = tail call fastcc i32 @wm9081_set_fll(ptr noundef %component, i32 noundef 2, i32 noundef %32, i32 noundef %new_sysclk.4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.end40.sw.epilog.thread_crit_edge, label %if.else46

if.end40.sw.epilog.thread_crit_edge:              ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.else46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %mclk_rate41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mclk_rate41, align 4
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %if.else46, %if.end40.sw.epilog.thread_crit_edge
  %new_sysclk.4.sink = phi i32 [ %34, %if.else46 ], [ %new_sysclk.4, %if.end40.sw.epilog.thread_crit_edge ]
  %tobool57.not.ph = phi i32 [ 0, %if.else46 ], [ 8192, %if.end40.sw.epilog.thread_crit_edge ]
  %sysclk_rate45 = getelementptr inbounds %struct.wm9081_priv, ptr %3, i32 0, i32 3
  %35 = ptrtoint ptr %sysclk_rate45 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %new_sysclk.4.sink, ptr %sysclk_rate45, align 4
  %call50140 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 12) #8
  %and142 = and i32 %call50140, -129
  br label %36

sw.epilog:                                        ; preds = %do.end.i, %land.lhs.true.i.sw.epilog_crit_edge
  %call50 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 12) #8
  %and = and i32 %call50, -129
  br i1 %cmp, label %sw.epilog._crit_edge, label %sw.epilog._crit_edge151

sw.epilog._crit_edge151:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %36

sw.epilog._crit_edge:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %37

36:                                               ; preds = %sw.epilog._crit_edge151, %sw.epilog.thread
  %and148 = phi i32 [ %and142, %sw.epilog.thread ], [ %and, %sw.epilog._crit_edge151 ]
  %tobool57.not146 = phi i32 [ %tobool57.not.ph, %sw.epilog.thread ], [ 0, %sw.epilog._crit_edge151 ]
  %ret.0144 = phi i32 [ %call42, %sw.epilog.thread ], [ 0, %sw.epilog._crit_edge151 ]
  br label %37

37:                                               ; preds = %36, %sw.epilog._crit_edge
  %and147 = phi i32 [ %and148, %36 ], [ %and, %sw.epilog._crit_edge ]
  %tobool57.not145 = phi i32 [ %tobool57.not146, %36 ], [ 0, %sw.epilog._crit_edge ]
  %ret.0143 = phi i32 [ %ret.0144, %36 ], [ 0, %sw.epilog._crit_edge ]
  %38 = phi i32 [ 0, %36 ], [ 128, %sw.epilog._crit_edge ]
  %spec.select = or i32 %and147, %38
  %call55 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 12, i32 noundef %spec.select) #8
  %call56 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 14) #8
  %and61 = and i32 %call56, -8193
  %reg.1 = or i32 %and61, %tobool57.not145
  %call63 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 14, i32 noundef %reg.1) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @configure_clock.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@configure_clock, %if.then68)) #8
          to label %cleanup [label %if.then68], !srcloc !369

if.then68:                                        ; preds = %37
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  %sysclk_rate69 = getelementptr inbounds %struct.wm9081_priv, ptr %3, i32 0, i32 3
  %41 = ptrtoint ptr %sysclk_rate69 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sysclk_rate69, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @configure_clock.__UNIQUE_ID_ddebug300, ptr noundef %40, ptr noundef nonnull @.str.122, i32 noundef %42) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %37, %for.inc32.8.cleanup_crit_edge, %for.inc.8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.0143, %if.then68 ], [ %ret.0143, %37 ], [ -22, %for.inc.8.cleanup_crit_edge ], [ -22, %for.inc32.8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm9081_set_fll(ptr noundef %component, i32 noundef %fll_id, i32 noundef %Fref, i32 noundef %Fout) unnamed_addr #2 align 64 {
entry:
  %fll_div = alloca %struct._fll_div, align 2
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
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %fll_div) #8
  %4 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 1
  %5 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 2
  %6 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 3
  %7 = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 4
  %fll_fref = getelementptr inbounds %struct.wm9081_priv, ptr %3, i32 0, i32 7
  %8 = call ptr @memset(ptr %fll_div, i32 255, i32 10)
  %9 = ptrtoint ptr %fll_fref to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fll_fref, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %Fref)
  %cmp = icmp eq i32 %10, %Fref
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fll_fout = getelementptr inbounds %struct.wm9081_priv, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %fll_fout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fll_fout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %Fout)
  %cmp1 = icmp eq i32 %12, %Fout
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %Fout)
  %cmp2 = icmp eq i32 %Fout, 0
  br i1 %cmp2, label %do.body, label %if.end11

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9081_set_fll.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9081_set_fll, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !369

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9081_set_fll.__UNIQUE_ID_ddebug298, ptr noundef %14, ptr noundef nonnull @.str.124) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %15 = ptrtoint ptr %fll_fref to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %fll_fref, align 4
  %fll_fout10 = getelementptr inbounds %struct.wm9081_priv, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %fll_fout10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %fll_fout10, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = call fastcc i32 @fll_factors(ptr noundef nonnull %fll_div, i32 noundef %Fref, i32 noundef %Fout)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fll_id)
  %cond = icmp eq i32 %fll_id, 2
  br i1 %cond, label %sw.bb, label %do.end23

sw.bb:                                            ; preds = %if.end15
  %call25 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 14) #8
  %and26 = and i32 %call25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %sw.bb.if.end31_crit_edge, label %if.then28

sw.bb.if.end31_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.125, i32 noundef %fll_id) #11
  br label %cleanup

if.then28:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %and29 = and i32 %call25, -2
  %call30 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 14, i32 noundef %and29) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %sw.bb.if.end31_crit_edge
  %call32 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 16) #8
  %conv36 = and i32 %call32, 65534
  %call38 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 16, i32 noundef %conv36) #8
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool39.not = icmp eq i16 %20, 0
  %or42 = or i32 %conv36, 4
  %conv46 = and i32 %call32, 65530
  %reg1.0 = select i1 %tobool39.not, i32 %conv46, i32 %or42
  %call49 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 16, i32 noundef %reg1.0) #8
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %4, align 2
  %conv50 = zext i16 %22 to i32
  %shl = shl nuw nsw i32 %conv50, 8
  %23 = ptrtoint ptr %fll_div to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %fll_div, align 2
  %conv51 = zext i16 %24 to i32
  %or53 = or i32 %shl, %conv51
  %call54 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 17, i32 noundef %or53) #8
  %conv56 = zext i16 %20 to i32
  %call57 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 18, i32 noundef %conv56) #8
  %call58 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 19) #8
  %conv62 = and i32 %call58, 32799
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %6, align 2
  %conv63 = zext i16 %26 to i32
  %shl64 = shl nuw nsw i32 %conv63, 5
  %shl64.masked = and i32 %shl64, 65504
  %conv68 = or i32 %shl64.masked, %conv62
  %call69 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 19, i32 noundef %conv68) #8
  %27 = and i32 %call16, 65508
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %5, align 2
  %conv73 = zext i16 %29 to i32
  %shl74 = shl nuw nsw i32 %conv73, 3
  %shl74.masked = and i32 %shl74, 65528
  %conv77 = or i32 %27, %shl74.masked
  %conv78 = or i32 %conv77, 1
  %call79 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 20, i32 noundef %conv78) #8
  %call80 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 19, i32 noundef 15, i32 noundef 0) #8
  %or82 = or i32 %reg1.0, 1
  %call83 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 16, i32 noundef %or82) #8
  br i1 %tobool27.not, label %if.end31.do.body89_crit_edge, label %if.then86

if.end31.do.body89_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body89

if.then86:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call87 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 14, i32 noundef %call25) #8
  br label %do.body89

do.body89:                                        ; preds = %if.then86, %if.end31.do.body89_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9081_set_fll.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9081_set_fll, %if.then101)) #8
          to label %do.end105 [label %if.then101], !srcloc !369

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9081_set_fll.__UNIQUE_ID_ddebug299, ptr noundef %31, ptr noundef nonnull @.str.126, i32 noundef %Fref, i32 noundef %Fout) #8
  br label %do.end105

do.end105:                                        ; preds = %if.then101, %do.body89
  %32 = ptrtoint ptr %fll_fref to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %Fref, ptr %fll_fref, align 4
  %fll_fout107 = getelementptr inbounds %struct.wm9081_priv, ptr %3, i32 0, i32 8
  %33 = ptrtoint ptr %fll_fout107 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %Fout, ptr %fll_fout107, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end105, %do.end23, %if.end11.cleanup_crit_edge, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end105 ], [ -22, %do.end23 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %fll_div) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fll_factors(ptr nocapture noundef %fll_div, i32 noundef %Fref, i32 noundef %Fout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500000, i32 %Fref)
  %cmp = icmp ugt i32 %Fref, 13500000
  br i1 %cmp, label %while.body, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %entry
  %div1.1504 = lshr i32 %Fref, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000001, i32 %Fref)
  %cmp.1 = icmp ugt i32 %Fref, 27000001
  br i1 %cmp.1, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.1:                                     ; preds = %while.body
  %div1.2505 = lshr i32 %Fref, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 54000003, i32 %Fref)
  %cmp.2 = icmp ugt i32 %Fref, 54000003
  br i1 %cmp.2, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  %div1.3506 = lshr i32 %Fref, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 108000007, i32 %Fref)
  %cmp.3 = icmp ugt i32 %Fref, 108000007
  br i1 %cmp.3, label %while.body.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %Fref) #11
  br label %cleanup

while.end:                                        ; preds = %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %div.0.lcssa = phi i16 [ 0, %entry.while.end_crit_edge ], [ 1, %while.body.while.end_crit_edge ], [ 2, %while.body.1.while.end_crit_edge ], [ 4, %while.body.2.while.end_crit_edge ]
  %div1.lcssa = phi i32 [ %Fref, %entry.while.end_crit_edge ], [ %div1.1504, %while.body.while.end_crit_edge ], [ %div1.2505, %while.body.1.while.end_crit_edge ], [ %div1.3506, %while.body.2.while.end_crit_edge ]
  %fll_clk_ref_div = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 2
  %0 = ptrtoint ptr %fll_clk_ref_div to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %div.0.lcssa, ptr %fll_clk_ref_div, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then9)) #8
          to label %do.end12 [label %if.then9], !srcloc !369

if.then9:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.129, i32 noundef %Fref, i32 noundef %Fout) #8
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %while.end
  %target.0 = shl i32 %Fout, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %target.0)
  %cmp16 = icmp ult i32 %target.0, 90000000
  br i1 %cmp16, label %while.body18, label %do.end12.while.end29_crit_edge

do.end12.while.end29_crit_edge:                   ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end29

while.body18:                                     ; preds = %do.end12
  %target.0.1 = shl i32 %Fout, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %target.0.1)
  %cmp16.1 = icmp ult i32 %target.0.1, 90000000
  br i1 %cmp16.1, label %while.body18.1, label %while.body18.while.end29_crit_edge

while.body18.while.end29_crit_edge:               ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end29

while.body18.1:                                   ; preds = %while.body18
  %target.0.2 = shl i32 %Fout, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %target.0.2)
  %cmp16.2 = icmp ult i32 %target.0.2, 90000000
  br i1 %cmp16.2, label %while.body18.2, label %while.body18.1.while.end29_crit_edge

while.body18.1.while.end29_crit_edge:             ; preds = %while.body18.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end29

while.body18.2:                                   ; preds = %while.body18.1
  %target.0.3 = shl i32 %Fout, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %target.0.3)
  %cmp16.3 = icmp ult i32 %target.0.3, 90000000
  br i1 %cmp16.3, label %while.body18.3, label %while.body18.2.while.end29_crit_edge

while.body18.2.while.end29_crit_edge:             ; preds = %while.body18.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end29

while.body18.3:                                   ; preds = %while.body18.2
  %target.0.4 = shl i32 %Fout, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %target.0.4)
  %cmp16.4 = icmp ult i32 %target.0.4, 90000000
  br i1 %cmp16.4, label %while.body18.4, label %while.body18.3.while.end29_crit_edge

while.body18.3.while.end29_crit_edge:             ; preds = %while.body18.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end29

while.body18.4:                                   ; preds = %while.body18.3
  %target.0.5 = shl i32 %Fout, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %target.0.5)
  %cmp16.5 = icmp ult i32 %target.0.5, 90000000
  br i1 %cmp16.5, label %while.body18.5, label %while.body18.4.while.end29_crit_edge

while.body18.4.while.end29_crit_edge:             ; preds = %while.body18.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end29

while.body18.5:                                   ; preds = %while.body18.4
  %target.0.6 = shl i32 %Fout, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %target.0.6)
  %cmp16.6 = icmp ult i32 %target.0.6, 90000000
  br i1 %cmp16.6, label %while.body18.6, label %while.body18.5.while.end29_crit_edge

while.body18.5.while.end29_crit_edge:             ; preds = %while.body18.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end29

while.body18.6:                                   ; preds = %while.body18.5
  %target.0.7 = shl i32 %Fout, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %target.0.7)
  %cmp16.7 = icmp ult i32 %target.0.7, 90000000
  br i1 %cmp16.7, label %while.body18.7, label %while.body18.6.while.end29_crit_edge

while.body18.6.while.end29_crit_edge:             ; preds = %while.body18.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end29

while.body18.7:                                   ; preds = %while.body18.6
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %Fout) #11
  br label %cleanup

while.end29:                                      ; preds = %while.body18.6.while.end29_crit_edge, %while.body18.5.while.end29_crit_edge, %while.body18.4.while.end29_crit_edge, %while.body18.3.while.end29_crit_edge, %while.body18.2.while.end29_crit_edge, %while.body18.1.while.end29_crit_edge, %while.body18.while.end29_crit_edge, %do.end12.while.end29_crit_edge
  %div.1.lcssa = phi i16 [ 0, %do.end12.while.end29_crit_edge ], [ 1, %while.body18.while.end29_crit_edge ], [ 2, %while.body18.1.while.end29_crit_edge ], [ 3, %while.body18.2.while.end29_crit_edge ], [ 4, %while.body18.3.while.end29_crit_edge ], [ 5, %while.body18.4.while.end29_crit_edge ], [ 6, %while.body18.5.while.end29_crit_edge ], [ 7, %while.body18.6.while.end29_crit_edge ]
  %target.0.lcssa = phi i32 [ %target.0, %do.end12.while.end29_crit_edge ], [ %target.0.1, %while.body18.while.end29_crit_edge ], [ %target.0.2, %while.body18.1.while.end29_crit_edge ], [ %target.0.3, %while.body18.2.while.end29_crit_edge ], [ %target.0.4, %while.body18.3.while.end29_crit_edge ], [ %target.0.5, %while.body18.4.while.end29_crit_edge ], [ %target.0.6, %while.body18.5.while.end29_crit_edge ], [ %target.0.7, %while.body18.6.while.end29_crit_edge ]
  %fll_outdiv = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 1
  %1 = ptrtoint ptr %fll_outdiv to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %div.1.lcssa, ptr %fll_outdiv, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then43)) #8
          to label %land.lhs.true [label %if.then43], !srcloc !369

if.then43:                                        ; preds = %while.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.133, i32 noundef %target.0.lcssa) #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then43, %while.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %div1.lcssa)
  %cmp52.not = icmp ugt i32 %div1.lcssa, 64000
  br i1 %cmp52.not, label %land.lhs.true.1, label %land.lhs.true.if.end69_crit_edge

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

land.lhs.true.1:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 128000, i32 %div1.lcssa)
  %cmp52.not.1 = icmp ugt i32 %div1.lcssa, 128000
  br i1 %cmp52.not.1, label %land.lhs.true.2, label %land.lhs.true.1.if.end69_crit_edge

land.lhs.true.1.if.end69_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

land.lhs.true.2:                                  ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256000, i32 %div1.lcssa)
  %cmp52.not.2 = icmp ugt i32 %div1.lcssa, 256000
  br i1 %cmp52.not.2, label %land.lhs.true.3, label %land.lhs.true.2.if.end69_crit_edge

land.lhs.true.2.if.end69_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %div1.lcssa)
  %cmp52.not.3 = icmp ugt i32 %div1.lcssa, 1000000
  br i1 %cmp52.not.3, label %land.lhs.true.4, label %land.lhs.true.3.if.end69_crit_edge

land.lhs.true.3.if.end69_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

land.lhs.true.4:                                  ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500000, i32 %div1.lcssa)
  %cmp52.not.4 = icmp ugt i32 %div1.lcssa, 13500000
  br i1 %cmp52.not.4, label %do.end66, label %land.lhs.true.4.if.end69_crit_edge

land.lhs.true.4.if.end69_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

do.end66:                                         ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #10
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, i32 noundef %div1.lcssa) #11
  br label %cleanup

if.end69:                                         ; preds = %land.lhs.true.4.if.end69_crit_edge, %land.lhs.true.3.if.end69_crit_edge, %land.lhs.true.2.if.end69_crit_edge, %land.lhs.true.1.if.end69_crit_edge, %land.lhs.true.if.end69_crit_edge
  %i.0497.lcssa = phi i32 [ 0, %land.lhs.true.if.end69_crit_edge ], [ 1, %land.lhs.true.1.if.end69_crit_edge ], [ 2, %land.lhs.true.2.if.end69_crit_edge ], [ 3, %land.lhs.true.3.if.end69_crit_edge ], [ 4, %land.lhs.true.4.if.end69_crit_edge ]
  %fll_fratio = getelementptr [5 x %struct.anon.109], ptr @fll_fratios, i32 0, i32 %i.0497.lcssa, i32 2
  %2 = ptrtoint ptr %fll_fratio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fll_fratio, align 4
  %4 = ptrtoint ptr %fll_div to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %fll_div, align 2
  %ratio = getelementptr [5 x %struct.anon.109], ptr @fll_fratios, i32 0, i32 %i.0497.lcssa, i32 3
  %5 = ptrtoint ptr %ratio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ratio, align 4
  %div58 = udiv i32 %target.0.lcssa, %6
  %div58.frozen = freeze i32 %div58
  %div70 = udiv i32 %div58.frozen, %div1.lcssa
  %conv71 = trunc i32 %div70 to i16
  %n = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 3
  %7 = ptrtoint ptr %n to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv71, ptr %n, align 2
  %8 = mul i32 %div70, %div1.lcssa
  %rem.decomposed = sub i32 %div58.frozen, %8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then84)) #8
          to label %do.end87 [label %if.then84], !srcloc !369

if.then84:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.137, i32 noundef %rem.decomposed) #8
  br label %do.end87

do.end87:                                         ; preds = %if.then84, %if.end69
  %conv88 = zext i32 %rem.decomposed to i64
  %mul89 = mul nuw nsw i64 %conv88, 655360
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul89)
  %cmp265 = icmp ult i64 %mul89, 4294967296
  br i1 %cmp265, label %if.then273, label %if.else279, !prof !370

if.then273:                                       ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #10
  %conv274 = trunc i64 %mul89 to i32
  %div277 = udiv i32 %conv274, %div1.lcssa
  br label %if.end283

if.else279:                                       ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div1.lcssa, i64 %mul89) #12, !srcloc !371
  %asmresult1.i = extractvalue { i64, i64 } %9, 1
  %extract.t489 = trunc i64 %asmresult1.i to i32
  br label %if.end283

if.end283:                                        ; preds = %if.else279, %if.then273
  %Kpart.0.off0 = phi i32 [ %div277, %if.then273 ], [ %extract.t489, %if.else279 ]
  %rem287 = urem i32 %Kpart.0.off0, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem287)
  %cmp288 = icmp ugt i32 %rem287, 4
  %add291 = add i32 %Kpart.0.off0, 5
  %spec.select = select i1 %cmp288, i32 %add291, i32 %Kpart.0.off0
  %div293 = udiv i32 %spec.select, 10
  %conv294 = trunc i32 %div293 to i16
  %k = getelementptr inbounds %struct._fll_div, ptr %fll_div, i32 0, i32 4
  %10 = ptrtoint ptr %k to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv294, ptr %k, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then307)) #8
          to label %cleanup [label %if.then307], !srcloc !369

if.then307:                                       ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %n to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %n, align 2
  %conv309 = zext i16 %12 to i32
  %13 = ptrtoint ptr %k to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %k, align 2
  %conv311 = zext i16 %14 to i32
  %15 = ptrtoint ptr %fll_div to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %fll_div, align 2
  %conv313 = zext i16 %16 to i32
  %17 = ptrtoint ptr %fll_outdiv to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %fll_outdiv, align 2
  %conv315 = zext i16 %18 to i32
  %19 = ptrtoint ptr %fll_clk_ref_div to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %fll_clk_ref_div, align 2
  %conv317 = zext i16 %20 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.138, i32 noundef %conv309, i32 noundef %conv311, i32 noundef %conv313, i32 noundef %conv315, i32 noundef %conv317) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then307, %if.end283, %do.end66, %while.body18.7, %while.body.3
  %retval.0 = phi i32 [ -22, %while.body.3 ], [ -22, %while.body18.7 ], [ -22, %do.end66 ], [ 0, %if.then307 ], [ 0, %if.end283 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm9081_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
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
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 23) #8
  %and = and i32 %call2, -244
  %and3 = and i32 %fmt, 61440
  %6 = add nsw i32 %and3, -4096
  %7 = lshr exact i32 %6, 12
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 3, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb4
    i32 2, label %sw.bb6
    i32 0, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %and, 32
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or7 = or i32 %and, 64
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or10 = or i32 %and, 96
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb6, %sw.bb4, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 1, %sw.bb9 ], [ 1, %sw.bb6 ], [ 1, %sw.bb4 ], [ 0, %entry.sw.epilog_crit_edge ]
  %aif2.0 = phi i32 [ %or10, %sw.bb9 ], [ %or7, %sw.bb6 ], [ %or, %sw.bb4 ], [ %and, %entry.sw.epilog_crit_edge ]
  %master11 = getelementptr inbounds %struct.wm9081_priv, ptr %5, i32 0, i32 6
  %9 = ptrtoint ptr %master11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %master11, align 4
  %and12 = and i32 %fmt, 15
  %10 = zext i32 %and12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %and12, label %sw.epilog.cleanup_crit_edge [
    i32 5, label %sw.bb13
    i32 4, label %sw.epilog.sw.bb24_crit_edge
    i32 1, label %sw.bb17
    i32 2, label %sw.epilog.sw.bb30_crit_edge
    i32 3, label %sw.bb19
  ]

sw.epilog.sw.bb30_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

sw.epilog.sw.bb24_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb13:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %or14 = or i32 %aif2.0, 16
  br label %sw.bb24

sw.bb17:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %or18 = or i32 %aif2.0, 2
  br label %sw.bb30

sw.bb19:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %or20 = or i32 %aif2.0, 1
  br label %sw.bb30

sw.bb24:                                          ; preds = %sw.bb13, %sw.epilog.sw.bb24_crit_edge
  %aif2.1 = phi i32 [ %aif2.0, %sw.epilog.sw.bb24_crit_edge ], [ %or14, %sw.bb13 ]
  %or16 = or i32 %aif2.1, 3
  %and25 = and i32 %fmt, 3840
  %11 = zext i32 %and25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %and25, label %sw.bb24.cleanup_crit_edge [
    i32 0, label %sw.bb24.sw.epilog41_crit_edge
    i32 768, label %sw.bb26
  ]

sw.bb24.sw.epilog41_crit_edge:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog41

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb26:                                          ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  %or27 = or i32 %aif2.1, 131
  br label %sw.epilog41

sw.bb30:                                          ; preds = %sw.bb19, %sw.bb17, %sw.epilog.sw.bb30_crit_edge
  %aif2.2.ph = phi i32 [ %or18, %sw.bb17 ], [ %aif2.0, %sw.epilog.sw.bb30_crit_edge ], [ %or20, %sw.bb19 ]
  %and31 = lshr i32 %fmt, 8
  %12 = and i32 %and31, 15
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %12, label %sw.bb30.cleanup_crit_edge [
    i32 0, label %sw.bb30.sw.epilog41_crit_edge
    i32 4, label %sw.bb32
    i32 3, label %sw.bb34
    i32 2, label %sw.bb36
  ]

sw.bb30.sw.epilog41_crit_edge:                    ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog41

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb32:                                          ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  %or33 = or i32 %aif2.2.ph, 144
  br label %sw.epilog41

sw.bb34:                                          ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  %or35 = or i32 %aif2.2.ph, 128
  br label %sw.epilog41

sw.bb36:                                          ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  %or37 = or i32 %aif2.2.ph, 16
  br label %sw.epilog41

sw.epilog41:                                      ; preds = %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb30.sw.epilog41_crit_edge, %sw.bb26, %sw.bb24.sw.epilog41_crit_edge
  %aif2.3 = phi i32 [ %or37, %sw.bb36 ], [ %or35, %sw.bb34 ], [ %or33, %sw.bb32 ], [ %aif2.2.ph, %sw.bb30.sw.epilog41_crit_edge ], [ %or27, %sw.bb26 ], [ %or16, %sw.bb24.sw.epilog41_crit_edge ]
  %call42 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 23, i32 noundef %aif2.3) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog41, %sw.bb30.cleanup_crit_edge, %sw.bb24.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog41 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.bb24.cleanup_crit_edge ], [ -22, %sw.bb30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm9081_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
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
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %slots)
  %6 = icmp ugt i32 %slots, 4
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call2, -61
  %tdm_width = getelementptr inbounds %struct.wm9081_priv, ptr %5, i32 0, i32 9
  %7 = ptrtoint ptr %tdm_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %slot_width, ptr %tdm_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slots)
  %cmp4 = icmp eq i32 %slots, 0
  %slots.op = shl nuw nsw i32 %slots, 2
  %slots.op.op = add nsw i32 %slots.op, -4
  %shl = select i1 %cmp4, i32 0, i32 %slots.op.op
  %or = or i32 %and, %shl
  %8 = zext i32 %rx_mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %rx_mask, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb
    i32 4, label %sw.bb8
    i32 8, label %sw.bb10
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or7 = or i32 %or, 16
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or9 = or i32 %or, 32
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or11 = or i32 %or, 48
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb8, %sw.bb, %if.end.sw.epilog_crit_edge
  %aif1.0 = phi i32 [ %or11, %sw.bb10 ], [ %or9, %sw.bb8 ], [ %or7, %sw.bb ], [ %or, %if.end.sw.epilog_crit_edge ]
  %call12 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 22, i32 noundef %aif1.0) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm9081_mute(ptr nocapture noundef readonly %codec_dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %and = and i32 %call, -9
  %masksel = select i1 %tobool.not, i32 0, i32 8
  %reg.0 = or i32 %and, %masksel
  %call2 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 31, i32 noundef %reg.0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm9081_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 13) #8
  %and = and i32 %call2, -256
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 22) #8
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 23) #8
  %and5 = and i32 %call4, -13
  %call6 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 24) #8
  %and7 = and i32 %call6, -32
  %call8 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 25) #8
  %and9 = and i32 %call8, -2048
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %fs = getelementptr inbounds %struct.wm9081_priv, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fs, align 4
  %tdm_width = getelementptr inbounds %struct.wm9081_priv, ptr %5, i32 0, i32 9
  %9 = ptrtoint ptr %tdm_width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tdm_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and11 = lshr i32 %call3, 2
  %shr = and i32 %and11, 3
  %add = add nuw nsw i32 %shr, 1
  %mul = mul i32 %7, %add
  %mul14 = mul i32 %mul, %10
  %bclk = getelementptr inbounds %struct.wm9081_priv, ptr %5, i32 0, i32 5
  %11 = ptrtoint ptr %bclk to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul14, ptr %bclk, align 4
  br label %do.body

if.else:                                          ; preds = %entry
  %mul16 = shl i32 %7, 1
  %bclk17 = getelementptr inbounds %struct.wm9081_priv, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %bclk17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul16, ptr %bclk17, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.else.if.then.i.i.i_crit_edge

if.else.if.then.i.i.i_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.else.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.else.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %14, %if.else.if.then.i.i.i_crit_edge ], [ %17, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %15 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !372
  %add.i.i.i = or i32 %15, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.else
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.1.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #8
  %18 = add i32 %call1.i, -16
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 30)
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %19, label %params_width.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb21
    i32 2, label %sw.bb24
    i32 4, label %sw.bb28
  ]

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %bclk17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bclk17, align 4
  %mul20 = shl i32 %22, 4
  store i32 %mul20, ptr %bclk17, align 4
  br label %do.body

sw.bb21:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %bclk17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bclk17, align 4
  %mul23 = mul i32 %24, 20
  store i32 %mul23, ptr %bclk17, align 4
  %or = or i32 %and5, 4
  br label %do.body

sw.bb24:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %bclk17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bclk17, align 4
  %mul26 = mul i32 %26, 24
  store i32 %mul26, ptr %bclk17, align 4
  %or27 = or i32 %and5, 8
  br label %do.body

sw.bb28:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %bclk17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bclk17, align 4
  %mul30 = shl i32 %28, 5
  store i32 %mul30, ptr %bclk17, align 4
  %or31 = or i32 %call4, 12
  br label %do.body

do.body:                                          ; preds = %sw.bb28, %sw.bb24, %sw.bb21, %sw.bb, %if.then
  %aif2.0 = phi i32 [ %and5, %if.then ], [ %or31, %sw.bb28 ], [ %or27, %sw.bb24 ], [ %or, %sw.bb21 ], [ %and5, %sw.bb ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9081_hw_params.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9081_hw_params, %if.then36)) #8
          to label %do.end [label %if.then36], !srcloc !369

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %bclk37 = getelementptr inbounds %struct.wm9081_priv, ptr %5, i32 0, i32 5
  %31 = ptrtoint ptr %bclk37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bclk37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9081_hw_params.__UNIQUE_ID_ddebug303, ptr noundef %30, ptr noundef nonnull @.str.154, i32 noundef %32) #8
  br label %do.end

do.end:                                           ; preds = %if.then36, %do.body
  %call39 = tail call fastcc i32 @configure_clock(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp.not = icmp eq i32 %call39, 0
  br i1 %cmp.not, label %if.end41, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %do.end
  %sysclk_rate = getelementptr inbounds %struct.wm9081_priv, ptr %5, i32 0, i32 3
  %33 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sysclk_rate, align 4
  %div = sdiv i32 %34, 64
  %35 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fs, align 4
  %sub = sub i32 %div, %36
  %37 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %div49 = sdiv i32 %34, 128
  %sub51 = sub i32 %div49, %36
  %38 = tail call i32 @llvm.abs.i32(i32 %sub51, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %37)
  %cmp59 = icmp slt i32 %38, %37
  %39 = tail call i32 @llvm.smin.i32(i32 %38, i32 %37)
  %best.1 = zext i1 %cmp59 to i32
  %div49.1 = sdiv i32 %34, 192
  %sub51.1 = sub i32 %div49.1, %36
  %40 = tail call i32 @llvm.abs.i32(i32 %sub51.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %39)
  %cmp59.1 = icmp slt i32 %40, %39
  %41 = tail call i32 @llvm.smin.i32(i32 %40, i32 %39)
  %best.1.1 = select i1 %cmp59.1, i32 2, i32 %best.1
  %div49.2 = sdiv i32 %34, 256
  %sub51.2 = sub i32 %div49.2, %36
  %42 = tail call i32 @llvm.abs.i32(i32 %sub51.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %41)
  %cmp59.2 = icmp slt i32 %42, %41
  %43 = tail call i32 @llvm.smin.i32(i32 %42, i32 %41)
  %best.1.2 = select i1 %cmp59.2, i32 3, i32 %best.1.1
  %div49.3 = sdiv i32 %34, 384
  %sub51.3 = sub i32 %div49.3, %36
  %44 = tail call i32 @llvm.abs.i32(i32 %sub51.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %43)
  %cmp59.3 = icmp slt i32 %44, %43
  %45 = tail call i32 @llvm.smin.i32(i32 %44, i32 %43)
  %best.1.3 = select i1 %cmp59.3, i32 4, i32 %best.1.2
  %div49.4 = sdiv i32 %34, 512
  %sub51.4 = sub i32 %div49.4, %36
  %46 = tail call i32 @llvm.abs.i32(i32 %sub51.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %45)
  %cmp59.4 = icmp slt i32 %46, %45
  %47 = tail call i32 @llvm.smin.i32(i32 %46, i32 %45)
  %best.1.4 = select i1 %cmp59.4, i32 5, i32 %best.1.3
  %div49.5 = sdiv i32 %34, 768
  %sub51.5 = sub i32 %div49.5, %36
  %48 = tail call i32 @llvm.abs.i32(i32 %sub51.5, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %47)
  %cmp59.5 = icmp slt i32 %48, %47
  %49 = tail call i32 @llvm.smin.i32(i32 %48, i32 %47)
  %best.1.5 = select i1 %cmp59.5, i32 6, i32 %best.1.4
  %div49.6 = sdiv i32 %34, 1024
  %sub51.6 = sub i32 %div49.6, %36
  %50 = tail call i32 @llvm.abs.i32(i32 %sub51.6, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %49)
  %cmp59.6 = icmp slt i32 %50, %49
  %51 = tail call i32 @llvm.smin.i32(i32 %50, i32 %49)
  %best.1.6 = select i1 %cmp59.6, i32 7, i32 %best.1.5
  %div49.7 = sdiv i32 %34, 1408
  %sub51.7 = sub i32 %div49.7, %36
  %52 = tail call i32 @llvm.abs.i32(i32 %sub51.7, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %51)
  %cmp59.7 = icmp slt i32 %52, %51
  %53 = tail call i32 @llvm.smin.i32(i32 %52, i32 %51)
  %best.1.7 = select i1 %cmp59.7, i32 8, i32 %best.1.6
  %div49.8 = sdiv i32 %34, 1536
  %sub51.8 = sub i32 %div49.8, %36
  %54 = tail call i32 @llvm.abs.i32(i32 %sub51.8, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %53)
  %cmp59.8 = icmp slt i32 %54, %53
  %best.1.8 = select i1 %cmp59.8, i32 9, i32 %best.1.7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9081_hw_params.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9081_hw_params, %if.then74)) #8
          to label %do.end80 [label %if.then74], !srcloc !369

if.then74:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i, align 4
  %arrayidx76 = getelementptr [10 x %struct.anon.108], ptr @clk_sys_rates, i32 0, i32 %best.1.8
  %57 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx76, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9081_hw_params.__UNIQUE_ID_ddebug304, ptr noundef %56, ptr noundef nonnull @.str.155, i32 noundef %58) #8
  br label %do.end80

do.end80:                                         ; preds = %if.then74, %if.end41
  %clk_sys_rate = getelementptr [10 x %struct.anon.108], ptr @clk_sys_rates, i32 0, i32 %best.1.8, i32 1
  %59 = ptrtoint ptr %clk_sys_rate to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %clk_sys_rate, align 4
  %shl = shl i32 %60, 4
  %61 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fs, align 4
  %sub85 = add i32 %62, -8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub85)
  %cmp87 = icmp slt i32 %sub85, 0
  %sub89 = sub i32 8000, %62
  %cond92 = select i1 %cmp87, i32 %sub89, i32 %sub85
  %sub99 = add i32 %62, -11025
  %63 = tail call i32 @llvm.abs.i32(i32 %sub99, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %cond92)
  %cmp107 = icmp slt i32 %63, %cond92
  %64 = tail call i32 @llvm.smin.i32(i32 %63, i32 %cond92)
  %best.3 = zext i1 %cmp107 to i32
  %sub99.1 = add i32 %62, -12000
  %65 = tail call i32 @llvm.abs.i32(i32 %sub99.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %64)
  %cmp107.1 = icmp slt i32 %65, %64
  %66 = tail call i32 @llvm.smin.i32(i32 %65, i32 %64)
  %best.3.1 = select i1 %cmp107.1, i32 2, i32 %best.3
  %sub99.2 = add i32 %62, -16000
  %67 = tail call i32 @llvm.abs.i32(i32 %sub99.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %66)
  %cmp107.2 = icmp slt i32 %67, %66
  %68 = tail call i32 @llvm.smin.i32(i32 %67, i32 %66)
  %best.3.2 = select i1 %cmp107.2, i32 3, i32 %best.3.1
  %sub99.3 = add i32 %62, -22050
  %69 = tail call i32 @llvm.abs.i32(i32 %sub99.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %68)
  %cmp107.3 = icmp slt i32 %69, %68
  %70 = tail call i32 @llvm.smin.i32(i32 %69, i32 %68)
  %best.3.3 = select i1 %cmp107.3, i32 4, i32 %best.3.2
  %sub99.4 = add i32 %62, -24000
  %71 = tail call i32 @llvm.abs.i32(i32 %sub99.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %70)
  %cmp107.4 = icmp slt i32 %71, %70
  %72 = tail call i32 @llvm.smin.i32(i32 %71, i32 %70)
  %best.3.4 = select i1 %cmp107.4, i32 5, i32 %best.3.3
  %sub99.5 = add i32 %62, -32000
  %73 = tail call i32 @llvm.abs.i32(i32 %sub99.5, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %72)
  %cmp107.5 = icmp slt i32 %73, %72
  %74 = tail call i32 @llvm.smin.i32(i32 %73, i32 %72)
  %best.3.5 = select i1 %cmp107.5, i32 6, i32 %best.3.4
  %sub99.6 = add i32 %62, -44100
  %75 = tail call i32 @llvm.abs.i32(i32 %sub99.6, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %74)
  %cmp107.6 = icmp slt i32 %75, %74
  %76 = tail call i32 @llvm.smin.i32(i32 %75, i32 %74)
  %best.3.6 = select i1 %cmp107.6, i32 7, i32 %best.3.5
  %sub99.7 = add i32 %62, -48000
  %77 = tail call i32 @llvm.abs.i32(i32 %sub99.7, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %76)
  %cmp107.7 = icmp slt i32 %77, %76
  %78 = tail call i32 @llvm.smin.i32(i32 %77, i32 %76)
  %best.3.7 = select i1 %cmp107.7, i32 8, i32 %best.3.6
  %sub99.8 = add i32 %62, -88200
  %79 = tail call i32 @llvm.abs.i32(i32 %sub99.8, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %78)
  %cmp107.8 = icmp slt i32 %79, %78
  %80 = tail call i32 @llvm.smin.i32(i32 %79, i32 %78)
  %best.3.8 = select i1 %cmp107.8, i32 9, i32 %best.3.7
  %sub99.9 = add i32 %62, -96000
  %81 = tail call i32 @llvm.abs.i32(i32 %sub99.9, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %80)
  %cmp107.9 = icmp slt i32 %81, %80
  %best.3.9 = select i1 %cmp107.9, i32 10, i32 %best.3.8
  %or82 = or i32 %shl, %and
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9081_hw_params.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9081_hw_params, %if.then125)) #8
          to label %do.end131 [label %if.then125], !srcloc !369

if.then125:                                       ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i, align 4
  %arrayidx127 = getelementptr [11 x %struct.anon.110], ptr @sample_rates, i32 0, i32 %best.3.9
  %84 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx127, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9081_hw_params.__UNIQUE_ID_ddebug305, ptr noundef %83, ptr noundef nonnull @.str.156, i32 noundef %85) #8
  br label %do.end131

do.end131:                                        ; preds = %if.then125, %do.end80
  %sample_rate = getelementptr [11 x %struct.anon.110], ptr @sample_rates, i32 0, i32 %best.3.9, i32 1
  %86 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sample_rate, align 4
  %or134 = or i32 %or82, %87
  %88 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sysclk_rate, align 4
  %mul139 = mul i32 %89, 10
  %bclk143 = getelementptr inbounds %struct.wm9081_priv, ptr %5, i32 0, i32 5
  %90 = ptrtoint ptr %bclk143 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bclk143, align 4
  br label %for.body137

for.body137:                                      ; preds = %if.end147.for.body137_crit_edge, %do.end131
  %i.2453 = phi i32 [ 0, %do.end131 ], [ %inc152, %if.end147.for.body137_crit_edge ]
  %best.4452 = phi i32 [ 0, %do.end131 ], [ %spec.select423, %if.end147.for.body137_crit_edge ]
  %best_val.4451 = phi i32 [ 2147483647, %do.end131 ], [ %94, %if.end147.for.body137_crit_edge ]
  %arrayidx140 = getelementptr [21 x %struct.anon.111], ptr @bclk_divs, i32 0, i32 %i.2453
  %92 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx140, align 4
  %div142 = sdiv i32 %mul139, %93
  %sub144 = sub i32 %div142, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub144)
  %cmp145 = icmp slt i32 %sub144, 0
  br i1 %cmp145, label %for.body137.for.end153_crit_edge, label %if.end147

for.body137.for.end153_crit_edge:                 ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end153

if.end147:                                        ; preds = %for.body137
  call void @__sanitizer_cov_trace_cmp4(i32 %sub144, i32 %best_val.4451)
  %cmp148 = icmp slt i32 %sub144, %best_val.4451
  %94 = tail call i32 @llvm.smin.i32(i32 %sub144, i32 %best_val.4451)
  %spec.select423 = select i1 %cmp148, i32 %i.2453, i32 %best.4452
  %inc152 = add nuw nsw i32 %i.2453, 1
  %exitcond.not = icmp eq i32 %inc152, 21
  br i1 %exitcond.not, label %if.end147.for.end153_crit_edge, label %if.end147.for.body137_crit_edge

if.end147.for.body137_crit_edge:                  ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body137

if.end147.for.end153_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end153

for.end153:                                       ; preds = %if.end147.for.end153_crit_edge, %for.body137.for.end153_crit_edge
  %best.4.lcssa = phi i32 [ %best.4452, %for.body137.for.end153_crit_edge ], [ %spec.select423, %if.end147.for.end153_crit_edge ]
  %95 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %sysclk_rate, align 4
  %mul155 = mul i32 %96, 10
  %arrayidx156 = getelementptr [21 x %struct.anon.111], ptr @bclk_divs, i32 0, i32 %best.4.lcssa
  %97 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx156, align 4
  %div158 = sdiv i32 %mul155, %98
  %99 = ptrtoint ptr %bclk143 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %div158, ptr %bclk143, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9081_hw_params.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9081_hw_params, %if.then172)) #8
          to label %do.end179 [label %if.then172], !srcloc !369

if.then172:                                       ; preds = %for.end153
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i, align 4
  %102 = ptrtoint ptr %bclk143 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bclk143, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9081_hw_params.__UNIQUE_ID_ddebug306, ptr noundef %101, ptr noundef nonnull @.str.157, i32 noundef %98, i32 noundef %103) #8
  br label %do.end179

do.end179:                                        ; preds = %if.then172, %for.end153
  %bclk_div = getelementptr [21 x %struct.anon.111], ptr @bclk_divs, i32 0, i32 %best.4.lcssa, i32 1
  %104 = ptrtoint ptr %bclk_div to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bclk_div, align 4
  %or181 = or i32 %105, %and7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9081_hw_params.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9081_hw_params, %if.then194)) #8
          to label %do.end201 [label %if.then194], !srcloc !369

if.then194:                                       ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev.i, align 4
  %108 = ptrtoint ptr %bclk143 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bclk143, align 4
  %110 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %fs, align 4
  %div198 = sdiv i32 %109, %111
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9081_hw_params.__UNIQUE_ID_ddebug307, ptr noundef %107, ptr noundef nonnull @.str.158, i32 noundef %div198) #8
  br label %do.end201

do.end201:                                        ; preds = %if.then194, %do.end179
  %112 = ptrtoint ptr %bclk143 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %bclk143, align 4
  %114 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %fs, align 4
  %div204 = sdiv i32 %113, %115
  %or205 = or i32 %div204, %and9
  %num_retune_configs = getelementptr inbounds %struct.wm9081_priv, ptr %5, i32 0, i32 10, i32 3
  %116 = ptrtoint ptr %num_retune_configs to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %num_retune_configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool206.not = icmp eq i32 %117, 0
  br i1 %tobool206.not, label %do.end201.if.end287_crit_edge, label %if.then207

do.end201.if.end287_crit_edge:                    ; preds = %do.end201
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end287

if.then207:                                       ; preds = %do.end201
  %retune_configs = getelementptr inbounds %struct.wm9081_priv, ptr %5, i32 0, i32 10, i32 2
  %118 = ptrtoint ptr %retune_configs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %retune_configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp224454 = icmp sgt i32 %117, 0
  br i1 %cmp224454, label %for.body225.preheader, label %if.then207.for.end244_crit_edge

if.then207.for.end244_crit_edge:                  ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end244

for.body225.preheader:                            ; preds = %if.then207
  %rate212 = getelementptr inbounds %struct.wm9081_retune_mobile_setting, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %rate212 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rate212, align 4
  %sub214 = sub i32 %121, %115
  %122 = tail call i32 @llvm.abs.i32(i32 %sub214, i1 false)
  br label %for.body225

for.body225:                                      ; preds = %for.body225.for.body225_crit_edge, %for.body225.preheader
  %i.3457 = phi i32 [ %inc243, %for.body225.for.body225_crit_edge ], [ 0, %for.body225.preheader ]
  %best.6456 = phi i32 [ %best.7, %for.body225.for.body225_crit_edge ], [ 0, %for.body225.preheader ]
  %best_val.6455 = phi i32 [ %126, %for.body225.for.body225_crit_edge ], [ %122, %for.body225.preheader ]
  %rate229 = getelementptr %struct.wm9081_retune_mobile_setting, ptr %119, i32 %i.3457, i32 1
  %123 = ptrtoint ptr %rate229 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rate229, align 4
  %sub231 = sub i32 %124, %115
  %125 = tail call i32 @llvm.abs.i32(i32 %sub231, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %best_val.6455)
  %cmp239 = icmp slt i32 %125, %best_val.6455
  %126 = tail call i32 @llvm.smin.i32(i32 %125, i32 %best_val.6455)
  %best.7 = select i1 %cmp239, i32 %i.3457, i32 %best.6456
  %inc243 = add nuw nsw i32 %i.3457, 1
  %exitcond459.not = icmp eq i32 %inc243, %117
  br i1 %exitcond459.not, label %for.body225.for.end244_crit_edge, label %for.body225.for.body225_crit_edge

for.body225.for.body225_crit_edge:                ; preds = %for.body225
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body225

for.body225.for.end244_crit_edge:                 ; preds = %for.body225
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end244

for.end244:                                       ; preds = %for.body225.for.end244_crit_edge, %if.then207.for.end244_crit_edge
  %best.6.lcssa = phi i32 [ 0, %if.then207.for.end244_crit_edge ], [ %best.7, %for.body225.for.end244_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm9081_hw_params.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm9081_hw_params, %if.then259)) #8
          to label %do.end264 [label %if.then259], !srcloc !369

if.then259:                                       ; preds = %for.end244
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx246 = getelementptr %struct.wm9081_retune_mobile_setting, ptr %119, i32 %best.6.lcssa
  %127 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev.i, align 4
  %129 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx246, align 4
  %rate261 = getelementptr %struct.wm9081_retune_mobile_setting, ptr %119, i32 %best.6.lcssa, i32 1
  %131 = ptrtoint ptr %rate261 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rate261, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm9081_hw_params.__UNIQUE_ID_ddebug308, ptr noundef %128, ptr noundef nonnull @.str.159, ptr noundef %130, i32 noundef %132) #8
  br label %do.end264

do.end264:                                        ; preds = %if.then259, %for.end244
  %call265 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 42) #8
  %and266 = and i32 %call265, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266)
  %tobool268.not = icmp eq i32 %and266, 0
  br i1 %tobool268.not, label %do.end264.for.body274.preheader_crit_edge, label %if.then269

do.end264.for.body274.preheader_crit_edge:        ; preds = %do.end264
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body274.preheader

if.then269:                                       ; preds = %do.end264
  call void @__sanitizer_cov_trace_pc() #10
  %call270 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 42, i32 noundef 0) #8
  br label %for.body274.preheader

for.body274.preheader:                            ; preds = %if.then269, %do.end264.for.body274.preheader_crit_edge
  br label %for.body274

for.body274:                                      ; preds = %for.body274.for.body274_crit_edge, %for.body274.preheader
  %i.4458 = phi i32 [ %inc279, %for.body274.for.body274_crit_edge ], [ 1, %for.body274.preheader ]
  %add275 = add nuw nsw i32 %i.4458, 42
  %arrayidx276 = getelementptr %struct.wm9081_retune_mobile_setting, ptr %119, i32 %best.6.lcssa, i32 2, i32 %i.4458
  %133 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %arrayidx276, align 2
  %conv = zext i16 %134 to i32
  %call277 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add275, i32 noundef %conv) #8
  %inc279 = add nuw nsw i32 %i.4458, 1
  %exitcond460.not = icmp eq i32 %inc279, 20
  br i1 %exitcond460.not, label %for.end280, label %for.body274.for.body274_crit_edge

for.body274.for.body274_crit_edge:                ; preds = %for.body274
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body274

for.end280:                                       ; preds = %for.body274
  call void @__sanitizer_cov_trace_pc() #10
  %config281 = getelementptr %struct.wm9081_retune_mobile_setting, ptr %119, i32 %best.6.lcssa, i32 2
  %135 = ptrtoint ptr %config281 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %config281, align 4
  %137 = and i16 %136, -2
  %and284 = zext i16 %137 to i32
  %or285 = or i32 %and266, %and284
  %call286 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 42, i32 noundef %or285) #8
  br label %if.end287

if.end287:                                        ; preds = %for.end280, %do.end201.if.end287_crit_edge
  %call288 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 13, i32 noundef %or134) #8
  %call289 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 23, i32 noundef %aif2.0) #8
  %call290 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 24, i32 noundef %or181) #8
  %call291 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 25, i32 noundef %or205) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end287, %do.end.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end287 ], [ -22, %params_width.exit.cleanup_crit_edge ], [ %call39, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 200)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 200)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !252, !253, !254, !256, !257, !259, !260, !261, !263, !264, !265, !267, !269, !270, !271, !273, !274, !275, !277, !278, !280, !281, !282, !283, !285, !286, !288, !289, !290, !292, !293, !295, !296, !297, !299, !300, !302, !303, !305, !307, !309, !311, !312, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !336, !337, !339, !340, !342, !343, !345, !346, !348, !349, !351, !352, !354, !356}
!llvm.module.flags = !{!358, !359, !360, !361, !362, !363, !364, !365}
!llvm.ident = !{!366}

!0 = !{ptr @__initcall__kmod_snd_soc_wm9081__310_1381_wm9081_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_wm9081__310_1381_wm9081_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm9081.c", i32 1381, i32 1}
!2 = !{ptr @__exitcall_wm9081_i2c_driver_exit, !1, !"__exitcall_wm9081_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description311, !4, !"__UNIQUE_ID_description311", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/wm9081.c", i32 1383, i32 1}
!5 = !{ptr @__UNIQUE_ID_author312, !6, !"__UNIQUE_ID_author312", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/wm9081.c", i32 1384, i32 1}
!7 = !{ptr @__UNIQUE_ID_file313, !8, !"__UNIQUE_ID_file313", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/wm9081.c", i32 1385, i32 1}
!9 = !{ptr @__UNIQUE_ID_license314, !8, !"__UNIQUE_ID_license314", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/wm9081.c", i32 1374, i32 11}
!12 = !{ptr @wm9081_i2c_driver, !13, !"wm9081_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/wm9081.c", i32 1372, i32 26}
!14 = !{ptr @wm9081_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/wm9081.c", i32 1316, i32 19}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/wm9081.c", i32 1319, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @wm9081_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @wm9081_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/wm9081.c", i32 1325, i32 3}
!27 = !{ptr @wm9081_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @wm9081_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/wm9081.c", i32 1329, i32 3}
!31 = !{ptr @wm9081_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @wm9081_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/wm9081.c", i32 1335, i32 3}
!35 = !{ptr @wm9081_i2c_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @wm9081_i2c_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @wm9081_regmap, !38, !"wm9081_regmap", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/wm9081.c", i32 1290, i32 35}
!39 = !{ptr @wm9081_reg, !40, !"wm9081_reg", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/wm9081.c", i32 29, i32 33}
!41 = !{ptr @soc_component_dev_wm9081, !42, !"soc_component_dev_wm9081", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/wm9081.c", i32 1275, i32 46}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/wm9081.c", i32 388, i32 1}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/wm9081.c", i32 389, i32 1}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/wm9081.c", i32 391, i32 1}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/wm9081.c", i32 393, i32 1}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/wm9081.c", i32 394, i32 1}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/wm9081.c", i32 395, i32 1}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/wm9081.c", i32 397, i32 1}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/wm9081.c", i32 398, i32 1}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/wm9081.c", i32 399, i32 1}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/wm9081.c", i32 400, i32 1}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/wm9081.c", i32 401, i32 1}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/wm9081.c", i32 402, i32 1}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/wm9081.c", i32 403, i32 1}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/wm9081.c", i32 404, i32 1}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/wm9081.c", i32 405, i32 1}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/wm9081.c", i32 406, i32 1}
!75 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/wm9081.c", i32 407, i32 1}
!77 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/wm9081.c", i32 408, i32 1}
!79 = !{ptr @.str.46, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/wm9081.c", i32 409, i32 1}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/wm9081.c", i32 411, i32 1}
!83 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/wm9081.c", i32 413, i32 1}
!85 = !{ptr @.str.52, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/wm9081.c", i32 414, i32 1}
!87 = !{ptr @.str.54, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/wm9081.c", i32 415, i32 1}
!89 = !{ptr @.str.56, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/wm9081.c", i32 416, i32 1}
!91 = !{ptr @.str.58, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/wm9081.c", i32 417, i32 1}
!93 = !{ptr @.str.60, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/wm9081.c", i32 419, i32 1}
!95 = !{ptr @.str.61, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/wm9081.c", i32 420, i32 1}
!97 = !{ptr @wm9081_snd_controls, !98, !"wm9081_snd_controls", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/wm9081.c", i32 387, i32 38}
!99 = !{ptr @in_tlv, !100, !"in_tlv", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/wm9081.c", i32 253, i32 14}
!101 = !{ptr @dac_tlv, !102, !"dac_tlv", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/wm9081.c", i32 254, i32 14}
!103 = !{ptr @out_tlv, !104, !"out_tlv", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/wm9081.c", i32 255, i32 14}
!105 = !{ptr @drc_high, !106, !"drc_high", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/wm9081.c", i32 266, i32 8}
!107 = !{ptr @.str.62, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/wm9081.c", i32 258, i32 2}
!109 = !{ptr @.str.63, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/wm9081.c", i32 259, i32 2}
!111 = !{ptr @.str.64, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/wm9081.c", i32 260, i32 2}
!113 = !{ptr @.str.65, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/wm9081.c", i32 261, i32 2}
!115 = !{ptr @.str.66, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/wm9081.c", i32 262, i32 2}
!117 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/wm9081.c", i32 263, i32 2}
!119 = !{ptr @drc_high_text, !120, !"drc_high_text", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/wm9081.c", i32 257, i32 20}
!121 = !{ptr @drc_low, !122, !"drc_low", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/wm9081.c", i32 276, i32 8}
!123 = !{ptr @drc_low_text, !124, !"drc_low_text", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/wm9081.c", i32 268, i32 20}
!125 = !{ptr @drc_in_tlv, !126, !"drc_in_tlv", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/wm9081.c", i32 239, i32 14}
!127 = !{ptr @drc_out_tlv, !128, !"drc_out_tlv", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/wm9081.c", i32 240, i32 14}
!129 = !{ptr @drc_min_tlv, !130, !"drc_min_tlv", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/wm9081.c", i32 241, i32 14}
!131 = !{ptr @drc_max_tlv, !132, !"drc_max_tlv", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/wm9081.c", i32 242, i32 14}
!133 = !{ptr @drc_atk, !134, !"drc_atk", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/wm9081.c", i32 293, i32 8}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/wm9081.c", i32 279, i32 2}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/wm9081.c", i32 281, i32 2}
!139 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/wm9081.c", i32 282, i32 2}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/wm9081.c", i32 283, i32 2}
!143 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/wm9081.c", i32 284, i32 2}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/wm9081.c", i32 285, i32 2}
!147 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/wm9081.c", i32 286, i32 2}
!149 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/wm9081.c", i32 287, i32 2}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/wm9081.c", i32 288, i32 2}
!153 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/wm9081.c", i32 289, i32 2}
!155 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/wm9081.c", i32 290, i32 2}
!157 = !{ptr @drc_atk_text, !158, !"drc_atk_text", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/wm9081.c", i32 278, i32 20}
!159 = !{ptr @drc_dcy, !160, !"drc_dcy", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/wm9081.c", i32 307, i32 8}
!161 = !{ptr @.str.79, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/wm9081.c", i32 296, i32 2}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/wm9081.c", i32 297, i32 2}
!165 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/wm9081.c", i32 298, i32 2}
!167 = !{ptr @.str.82, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/wm9081.c", i32 299, i32 2}
!169 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/wm9081.c", i32 300, i32 2}
!171 = !{ptr @.str.84, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/wm9081.c", i32 301, i32 2}
!173 = !{ptr @.str.85, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/wm9081.c", i32 302, i32 2}
!175 = !{ptr @.str.86, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/wm9081.c", i32 303, i32 2}
!177 = !{ptr @.str.87, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/wm9081.c", i32 304, i32 2}
!179 = !{ptr @drc_dcy_text, !180, !"drc_dcy_text", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/wm9081.c", i32 295, i32 20}
!181 = !{ptr @drc_qr_tlv, !182, !"drc_qr_tlv", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/wm9081.c", i32 248, i32 14}
!183 = !{ptr @drc_qr_dcy, !184, !"drc_qr_dcy", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/wm9081.c", i32 315, i32 8}
!185 = !{ptr @.str.88, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/wm9081.c", i32 310, i32 2}
!187 = !{ptr @drc_qr_dcy_text, !188, !"drc_qr_dcy_text", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/wm9081.c", i32 309, i32 20}
!189 = !{ptr @drc_startup_tlv, !190, !"drc_startup_tlv", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/wm9081.c", i32 249, i32 14}
!191 = !{ptr @dac_deemph, !192, !"dac_deemph", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/wm9081.c", i32 324, i32 8}
!193 = !{ptr @.str.89, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/wm9081.c", i32 318, i32 2}
!195 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/wm9081.c", i32 319, i32 2}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/wm9081.c", i32 320, i32 2}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/wm9081.c", i32 321, i32 2}
!201 = !{ptr @dac_deemph_text, !202, !"dac_deemph_text", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/wm9081.c", i32 317, i32 20}
!203 = !{ptr @speaker_mode, !204, !"speaker_mode", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/wm9081.c", i32 332, i32 8}
!205 = !{ptr @.str.93, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/wm9081.c", i32 328, i32 2}
!207 = !{ptr @.str.94, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/wm9081.c", i32 329, i32 2}
!209 = !{ptr @speaker_mode_text, !210, !"speaker_mode_text", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/wm9081.c", i32 327, i32 20}
!211 = !{ptr @.str.95, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/wm9081.c", i32 764, i32 1}
!213 = !{ptr @.str.96, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/wm9081.c", i32 765, i32 1}
!215 = !{ptr @.str.97, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/wm9081.c", i32 767, i32 1}
!217 = !{ptr @.str.98, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/wm9081.c", i32 769, i32 1}
!219 = !{ptr @.str.99, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/wm9081.c", i32 772, i32 1}
!221 = !{ptr @.str.100, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/wm9081.c", i32 774, i32 1}
!223 = !{ptr @.str.101, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/wm9081.c", i32 775, i32 1}
!225 = !{ptr @.str.102, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/wm9081.c", i32 777, i32 1}
!227 = !{ptr @.str.103, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/wm9081.c", i32 778, i32 1}
!229 = !{ptr @.str.104, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/wm9081.c", i32 779, i32 1}
!231 = !{ptr @.str.105, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/wm9081.c", i32 781, i32 1}
!233 = !{ptr @.str.106, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/wm9081.c", i32 783, i32 1}
!235 = !{ptr @.str.107, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/wm9081.c", i32 784, i32 1}
!237 = !{ptr @.str.108, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/wm9081.c", i32 785, i32 1}
!239 = !{ptr @wm9081_dapm_widgets, !240, !"wm9081_dapm_widgets", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/wm9081.c", i32 763, i32 41}
!241 = !{ptr @.str.110, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/wm9081.c", i32 432, i32 1}
!243 = !{ptr @.str.112, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/wm9081.c", i32 433, i32 1}
!245 = !{ptr @.str.114, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/wm9081.c", i32 434, i32 1}
!247 = !{ptr @mixer, !248, !"mixer", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/wm9081.c", i32 431, i32 38}
!249 = !{ptr @.str.116, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/wm9081.c", i32 738, i32 3}
!251 = !{ptr @.str.117, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.118, !250, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @clk_sys_event.__UNIQUE_ID_ddebug301, !250, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!254 = !{ptr @.str.119, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/wm9081.c", i32 741, i32 3}
!256 = !{ptr @clk_sys_event.__UNIQUE_ID_ddebug302, !255, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!257 = !{ptr @.str.120, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/wm9081.c", i32 745, i32 3}
!259 = !{ptr @clk_sys_event._entry, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @clk_sys_event._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.121, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/wm9081.c", i32 724, i32 2}
!263 = !{ptr @.str.122, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @configure_clock.__UNIQUE_ID_ddebug300, !262, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!265 = !{ptr @clk_sys_rates, !266, !"clk_sys_rates", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/wm9081.c", i32 88, i32 3}
!267 = !{ptr @.str.123, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/wm9081.c", i32 560, i32 3}
!269 = !{ptr @.str.124, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @wm9081_set_fll.__UNIQUE_ID_ddebug298, !268, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!271 = !{ptr @.str.125, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/wm9081.c", i32 580, i32 3}
!273 = !{ptr @wm9081_set_fll._entry, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @wm9081_set_fll._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.126, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/wm9081.c", i32 628, i32 2}
!277 = !{ptr @wm9081_set_fll.__UNIQUE_ID_ddebug299, !276, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!278 = !{ptr @.str.127, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/wm9081.c", i32 476, i32 4}
!280 = !{ptr @.str.128, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @fll_factors._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @fll_factors._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.129, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/wm9081.c", i32 483, i32 2}
!285 = !{ptr @fll_factors.__UNIQUE_ID_ddebug294, !284, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!286 = !{ptr @.str.131, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/wm9081.c", i32 495, i32 4}
!288 = !{ptr @fll_factors._entry.130, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @fll_factors._entry_ptr.132, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.133, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/wm9081.c", i32 502, i32 2}
!292 = !{ptr @fll_factors.__UNIQUE_ID_ddebug295, !291, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!293 = !{ptr @.str.135, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/wm9081.c", i32 513, i32 3}
!295 = !{ptr @fll_factors._entry.134, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @fll_factors._entry_ptr.136, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.137, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/wm9081.c", i32 522, i32 2}
!299 = !{ptr @fll_factors.__UNIQUE_ID_ddebug296, !298, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!300 = !{ptr @.str.138, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/wm9081.c", i32 537, i32 2}
!302 = !{ptr @fll_factors.__UNIQUE_ID_ddebug297, !301, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!303 = !{ptr @fll_fratios, !304, !"fll_fratios", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/wm9081.c", i32 454, i32 3}
!305 = !{ptr @.str.139, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/wm9081.c", i32 792, i32 17}
!307 = !{ptr @wm9081_audio_paths, !308, !"wm9081_audio_paths", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/wm9081.c", i32 789, i32 40}
!309 = !{ptr @.str.140, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/wm9081.c", i32 1266, i32 3}
!311 = !{ptr @.str.141, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @wm9081_probe.__UNIQUE_ID_ddebug309, !310, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!313 = !{ptr @.str.142, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/wm9081.c", i32 424, i32 1}
!315 = !{ptr @.str.144, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/wm9081.c", i32 425, i32 1}
!317 = !{ptr @.str.146, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/wm9081.c", i32 426, i32 1}
!319 = !{ptr @.str.148, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/wm9081.c", i32 427, i32 1}
!321 = !{ptr @.str.150, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/wm9081.c", i32 428, i32 1}
!323 = !{ptr @wm9081_eq_controls, !324, !"wm9081_eq_controls", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/wm9081.c", i32 423, i32 38}
!325 = !{ptr @eq_tlv, !326, !"eq_tlv", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/wm9081.c", i32 251, i32 14}
!327 = !{ptr @.str.152, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/wm9081.c", i32 1244, i32 10}
!329 = !{ptr @wm9081_dai, !330, !"wm9081_dai", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/wm9081.c", i32 1243, i32 34}
!331 = !{ptr @wm9081_dai_ops, !332, !"wm9081_dai_ops", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/wm9081.c", i32 1232, i32 37}
!333 = !{ptr @.str.153, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/wm9081.c", i32 1047, i32 2}
!335 = !{ptr @.str.154, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @wm9081_hw_params.__UNIQUE_ID_ddebug303, !334, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!337 = !{ptr @.str.155, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/wm9081.c", i32 1065, i32 2}
!339 = !{ptr @wm9081_hw_params.__UNIQUE_ID_ddebug304, !338, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!340 = !{ptr @.str.156, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/wm9081.c", i32 1081, i32 2}
!342 = !{ptr @wm9081_hw_params.__UNIQUE_ID_ddebug305, !341, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!343 = !{ptr @.str.157, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/wm9081.c", i32 1100, i32 2}
!345 = !{ptr @wm9081_hw_params.__UNIQUE_ID_ddebug306, !344, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!346 = !{ptr @.str.158, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/wm9081.c", i32 1105, i32 2}
!348 = !{ptr @wm9081_hw_params.__UNIQUE_ID_ddebug307, !347, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!349 = !{ptr @.str.159, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/wm9081.c", i32 1126, i32 3}
!351 = !{ptr @wm9081_hw_params.__UNIQUE_ID_ddebug308, !350, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!352 = !{ptr @sample_rates, !353, !"sample_rates", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/wm9081.c", i32 104, i32 3}
!354 = !{ptr @bclk_divs, !355, !"bclk_divs", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/wm9081.c", i32 121, i32 3}
!356 = !{ptr @wm9081_i2c_id, !357, !"wm9081_i2c_id", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/wm9081.c", i32 1366, i32 35}
!358 = !{i32 1, !"wchar_size", i32 2}
!359 = !{i32 1, !"min_enum_size", i32 4}
!360 = !{i32 8, !"branch-target-enforcement", i32 0}
!361 = !{i32 8, !"sign-return-address", i32 0}
!362 = !{i32 8, !"sign-return-address-all", i32 0}
!363 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!364 = !{i32 7, !"uwtable", i32 1}
!365 = !{i32 7, !"frame-pointer", i32 2}
!366 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!367 = !{!"auto-init"}
!368 = !{i8 0, i8 2}
!369 = !{i64 2148988218, i64 2148988223, i64 2148988236, i64 2148988280, i64 2148988314, i64 2148988335}
!370 = !{!"branch_weights", i32 2000, i32 1}
!371 = !{i64 2148221265, i64 2148221545, i64 2148221879, i64 2148222213}
!372 = !{i32 0, i32 33}
